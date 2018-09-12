<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `notary`

-	[`notary:server`](#notaryserver)
-	[`notary:server-0.2.0`](#notaryserver-020)
-	[`notary:server-0.3.0`](#notaryserver-030)
-	[`notary:server-0.4.2`](#notaryserver-042)
-	[`notary:server-0.5.0`](#notaryserver-050)
-	[`notary:signer`](#notarysigner)
-	[`notary:signer-0.2.0`](#notarysigner-020)
-	[`notary:signer-0.3.0`](#notarysigner-030)
-	[`notary:signer-0.4.2`](#notarysigner-042)
-	[`notary:signer-0.5.0`](#notarysigner-050)

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

## `notary:server-0.2.0`

```console
$ docker pull notary@sha256:780232aaef29b0ac2c0171b6e9002247151c0e199badbf0a0994aefbed872b39
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `notary:server-0.2.0` - linux; amd64

```console
$ docker pull notary@sha256:5f1a0c6f57fe5e26e99ec7627628442ad8ea3c5068ea5fde12c99b2b652bb322
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.0 MB (7988037 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dae00081c639e953d6f1f935f81bddf35fb2b80e8824cd9d4e9bfd173856f9c4`
-	Entrypoint: `["entrypoint.sh"]`
-	Default Command: `["notary-server","--help"]`

```dockerfile
# Tue, 11 Sep 2018 22:19:50 GMT
ADD file:25c10b1d1b41d46a1827ad0b0d2389c24df6d31430005ff4e9a2d84ea23ebd42 in / 
# Tue, 11 Sep 2018 22:19:50 GMT
CMD ["/bin/sh"]
# Tue, 11 Sep 2018 23:57:36 GMT
EXPOSE 4443/tcp
# Tue, 11 Sep 2018 23:58:16 GMT
COPY file:a391e5f2c14d06d975ea8318684174bd0343e8f70df4fe7df6c5f843b4577f75 in /notary/server/ 
# Tue, 11 Sep 2018 23:58:38 GMT
COPY file:bd5efe2bcf5edc978d29f7becee5c6fd4d6c3b6d5e2e97eeba683a996926ebe6 in /notary/server/ 
# Tue, 11 Sep 2018 23:58:38 GMT
COPY file:ac552ea00574aaf9d5de8e5a1abcf10c8f09012df960328db4f963f404e2d409 in /notary/server/ 
# Tue, 11 Sep 2018 23:58:38 GMT
WORKDIR /notary/server
# Tue, 11 Sep 2018 23:58:39 GMT
RUN adduser -D -H -g "" notary
# Tue, 11 Sep 2018 23:58:39 GMT
USER [notary]
# Tue, 11 Sep 2018 23:58:39 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/notary/server
# Tue, 11 Sep 2018 23:58:39 GMT
ENTRYPOINT ["entrypoint.sh"]
# Tue, 11 Sep 2018 23:58:39 GMT
CMD ["notary-server" "--help"]
```

-	Layers:
	-	`sha256:4fe2ade4980c2dda4fc95858ebb981489baec8c1e4bd282ab1c3560be8ff9bde`  
		Last Modified: Tue, 11 Sep 2018 22:21:23 GMT  
		Size: 2.2 MB (2206931 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c6bd3183e94a8667b9a7ce1722dffa973892146a615c749a788324d3ddbc6af`  
		Last Modified: Tue, 11 Sep 2018 23:59:43 GMT  
		Size: 420.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72f60ef807175949379a458930c4aa3811b786ae002a6d20ea3e1e5a729016b1`  
		Last Modified: Wed, 12 Sep 2018 00:00:04 GMT  
		Size: 5.8 MB (5779117 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2037da3ac59bf2a24c6178540f8515cb221c7cb7cf3dcbb1483b2b060e3fee70`  
		Last Modified: Wed, 12 Sep 2018 00:00:02 GMT  
		Size: 379.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17a7cd1c32600b548b662f3bdb6b396e8535782d226bae35c5e3b237df3b2a5d`  
		Last Modified: Wed, 12 Sep 2018 00:00:03 GMT  
		Size: 1.2 KB (1190 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `notary:server-0.3.0`

```console
$ docker pull notary@sha256:7d7acefa081462af0b8d5834d20804c83fc7087551650ae030094ac713a61bac
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `notary:server-0.3.0` - linux; amd64

```console
$ docker pull notary@sha256:9e48d5fae717d15da23b7a74cff9ec8ca793a3dce0a7eb28e5465d2117477eef
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.1 MB (7070021 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1a03ba43d883af769ea76ada60464ac013636ea435167231e8f9848426b1ab91`
-	Entrypoint: `["entrypoint.sh"]`
-	Default Command: `["notary-server","--help"]`

```dockerfile
# Tue, 11 Sep 2018 22:19:50 GMT
ADD file:25c10b1d1b41d46a1827ad0b0d2389c24df6d31430005ff4e9a2d84ea23ebd42 in / 
# Tue, 11 Sep 2018 22:19:50 GMT
CMD ["/bin/sh"]
# Tue, 11 Sep 2018 23:57:36 GMT
EXPOSE 4443/tcp
# Tue, 11 Sep 2018 23:58:16 GMT
COPY file:a391e5f2c14d06d975ea8318684174bd0343e8f70df4fe7df6c5f843b4577f75 in /notary/server/ 
# Tue, 11 Sep 2018 23:58:17 GMT
COPY file:00e9bd0f62e819db5a0c6b40aec0a81210342bc19af26ec3af91f9432ac13587 in /notary/server/ 
# Tue, 11 Sep 2018 23:58:17 GMT
COPY file:ac552ea00574aaf9d5de8e5a1abcf10c8f09012df960328db4f963f404e2d409 in /notary/server/ 
# Tue, 11 Sep 2018 23:58:17 GMT
WORKDIR /notary/server
# Tue, 11 Sep 2018 23:58:18 GMT
RUN adduser -D -H -g "" notary
# Tue, 11 Sep 2018 23:58:18 GMT
USER [notary]
# Tue, 11 Sep 2018 23:58:18 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/notary/server
# Tue, 11 Sep 2018 23:58:18 GMT
ENTRYPOINT ["entrypoint.sh"]
# Tue, 11 Sep 2018 23:58:19 GMT
CMD ["notary-server" "--help"]
```

-	Layers:
	-	`sha256:4fe2ade4980c2dda4fc95858ebb981489baec8c1e4bd282ab1c3560be8ff9bde`  
		Last Modified: Tue, 11 Sep 2018 22:21:23 GMT  
		Size: 2.2 MB (2206931 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c6bd3183e94a8667b9a7ce1722dffa973892146a615c749a788324d3ddbc6af`  
		Last Modified: Tue, 11 Sep 2018 23:59:43 GMT  
		Size: 420.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f976e6474cb7e5d58fbc88a6082a57412c1e2e4ac36a93ccd8e6704c34f07585`  
		Last Modified: Tue, 11 Sep 2018 23:59:45 GMT  
		Size: 4.9 MB (4861101 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bacccfb2986bfd7576c0a62e113ec7def69a3aad2c45fac844d7bdadaf4e956a`  
		Last Modified: Tue, 11 Sep 2018 23:59:45 GMT  
		Size: 379.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6458961a8bf3614e767cb3d9b2ca342084aaf0e66425117f319dc6820e4aa839`  
		Last Modified: Tue, 11 Sep 2018 23:59:43 GMT  
		Size: 1.2 KB (1190 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `notary:server-0.4.2`

```console
$ docker pull notary@sha256:cc3961c393e59658d16d795ed6eaee2054f95086aed099bdbfccc5a8db14c696
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `notary:server-0.4.2` - linux; amd64

```console
$ docker pull notary@sha256:d044334f2a6053137dfd9ea52899f9a34ffe84ebc5f4b5f792dc842c42a97810
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.2 MB (6150493 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1908f1af7ebde81b99dae3d97948d32c517c0a3ce9dffc9840c50e95c26c584a`
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
# Tue, 11 Sep 2018 23:57:55 GMT
COPY file:aaf215bc18e17d3d31ee3777da6e52ea0716f7d87f6f33f375bb918217d65f6a in /notary/server/ 
# Tue, 11 Sep 2018 23:57:55 GMT
COPY file:ac552ea00574aaf9d5de8e5a1abcf10c8f09012df960328db4f963f404e2d409 in /notary/server/ 
# Tue, 11 Sep 2018 23:57:55 GMT
WORKDIR /notary/server
# Tue, 11 Sep 2018 23:57:56 GMT
RUN adduser -D -H -g "" notary
# Tue, 11 Sep 2018 23:57:56 GMT
USER [notary]
# Tue, 11 Sep 2018 23:57:56 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/notary/server
# Tue, 11 Sep 2018 23:57:56 GMT
ENTRYPOINT ["entrypoint.sh"]
# Tue, 11 Sep 2018 23:57:56 GMT
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
	-	`sha256:459b39352c2d51648c733bd9bb79a78e96faff4dfcdb2c24cbd1b7f0850f4822`  
		Last Modified: Tue, 11 Sep 2018 23:59:28 GMT  
		Size: 3.9 MB (3941581 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e030199fbc149f115a495b518c3047a98e3e6651beab45c4b0d091aaea071d6`  
		Last Modified: Tue, 11 Sep 2018 23:59:29 GMT  
		Size: 380.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01cae25a91046db237473ff03a7fd50ec916c8f78ad37ec788b5f08e253d3b76`  
		Last Modified: Tue, 11 Sep 2018 23:59:28 GMT  
		Size: 1.2 KB (1190 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `notary:server-0.5.0`

```console
$ docker pull notary@sha256:d59e4ecc20198447a9818e7f16d0a02ba1d9905de71e5354bc8ee0017304a244
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `notary:server-0.5.0` - linux; amd64

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

## `notary:signer-0.2.0`

```console
$ docker pull notary@sha256:478c61e6aa7537cab686efcb78ba5761d75817f83a43549eb565bacfa6646937
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `notary:signer-0.2.0` - linux; amd64

```console
$ docker pull notary@sha256:3c61184aaadd7c24f489468747a51c7bb5ed899372c0f9eb3403f809d20077b0
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.8 MB (7752114 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:49055e73e1c8e6862c15b781706ece90fc2db06f82365bf1120423ce028a1356`
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
# Tue, 11 Sep 2018 23:58:47 GMT
COPY file:6806f4a48e8f380fa47dbf76a9f4ad0e8e3210043b8fa73dc9e088434743cd79 in /notary/signer/ 
# Tue, 11 Sep 2018 23:58:47 GMT
COPY file:659a7bf8bfc297520f9f4ea7e10ccff4b6686bd694f08c0471bc2da01551deb8 in /notary/signer/ 
# Tue, 11 Sep 2018 23:58:47 GMT
WORKDIR /notary/signer
# Tue, 11 Sep 2018 23:58:48 GMT
RUN adduser -D -H -g "" notary
# Tue, 11 Sep 2018 23:58:49 GMT
USER [notary]
# Tue, 11 Sep 2018 23:58:49 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/notary/signer
# Tue, 11 Sep 2018 23:58:49 GMT
ENTRYPOINT ["entrypoint.sh"]
# Tue, 11 Sep 2018 23:58:50 GMT
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
	-	`sha256:9d7afa8830cbbf6686d8eb903996aeceb99eef12a5e79b5b64f4ea099aa157cb`  
		Last Modified: Wed, 12 Sep 2018 00:00:18 GMT  
		Size: 5.5 MB (5543265 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aef04a5050c049205cf1110d00b834a8a8a8bea0cbfbd81430aecc4aab7f90eb`  
		Last Modified: Wed, 12 Sep 2018 00:00:16 GMT  
		Size: 380.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84b44d6105c92c2a6102b5a269421eb9f897145c47376517b0c001e9b66f2bbe`  
		Last Modified: Wed, 12 Sep 2018 00:00:16 GMT  
		Size: 1.2 KB (1190 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `notary:signer-0.3.0`

```console
$ docker pull notary@sha256:c93ee9b6f159373ba00c4959ab7a5bd322573a2d753f8bc7873191ce2fafb1f2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `notary:signer-0.3.0` - linux; amd64

```console
$ docker pull notary@sha256:08bf7a67dc924826c25c4952c376c25abf5d5fa4970ee3ded4322725b4429cea
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.8 MB (6784810 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:86254860e6dac860d91a2e0386724a7c5e97e83c92ec1aea5177cfa1fd2ed8db`
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
# Tue, 11 Sep 2018 23:58:28 GMT
COPY file:82acc68c6a248c805a4db0f9d4a1765d55586bee3eb5d63feb0f3f677a8bf902 in /notary/signer/ 
# Tue, 11 Sep 2018 23:58:29 GMT
COPY file:659a7bf8bfc297520f9f4ea7e10ccff4b6686bd694f08c0471bc2da01551deb8 in /notary/signer/ 
# Tue, 11 Sep 2018 23:58:29 GMT
WORKDIR /notary/signer
# Tue, 11 Sep 2018 23:58:30 GMT
RUN adduser -D -H -g "" notary
# Tue, 11 Sep 2018 23:58:30 GMT
USER [notary]
# Tue, 11 Sep 2018 23:58:30 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/notary/signer
# Tue, 11 Sep 2018 23:58:30 GMT
ENTRYPOINT ["entrypoint.sh"]
# Tue, 11 Sep 2018 23:58:31 GMT
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
	-	`sha256:72aed169e975ddeb12b3cb7627df03501f05421058782054cddd5b0390823034`  
		Last Modified: Tue, 11 Sep 2018 23:59:54 GMT  
		Size: 4.6 MB (4575962 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2685ad24d2f2fdeb8ac5b8edbc45b49d399835de29bd4542893ecfbcb769aa87`  
		Last Modified: Tue, 11 Sep 2018 23:59:53 GMT  
		Size: 380.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e2768fd176435477d0e11906379293dc9b8b102fac5c1d3b00f4e68448654c6`  
		Last Modified: Tue, 11 Sep 2018 23:59:54 GMT  
		Size: 1.2 KB (1189 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `notary:signer-0.4.2`

```console
$ docker pull notary@sha256:04fcd96af6c0ecc380b7cd059563ec1ae415cb5a6ba067894f02904ba5078ea0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `notary:signer-0.4.2` - linux; amd64

```console
$ docker pull notary@sha256:c95c6c7c5e8968743ecbba039dc593bdd6dbf34d7a9727f7f4dbdd80cb84699e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.8 MB (5778400 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ed2277b2db9e84e18d007b829b09dc54267c6f659ea2f4ae6230ec8a9e6ce7d1`
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
# Tue, 11 Sep 2018 23:58:04 GMT
COPY file:474d7f8bc88dc235a670fcf18a8fbc823a30d2d26867bcb8d7aaa1ea66d0cd00 in /notary/signer/ 
# Tue, 11 Sep 2018 23:58:04 GMT
COPY file:659a7bf8bfc297520f9f4ea7e10ccff4b6686bd694f08c0471bc2da01551deb8 in /notary/signer/ 
# Tue, 11 Sep 2018 23:58:04 GMT
WORKDIR /notary/signer
# Tue, 11 Sep 2018 23:58:05 GMT
RUN adduser -D -H -g "" notary
# Tue, 11 Sep 2018 23:58:05 GMT
USER [notary]
# Tue, 11 Sep 2018 23:58:05 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/notary/signer
# Tue, 11 Sep 2018 23:58:06 GMT
ENTRYPOINT ["entrypoint.sh"]
# Tue, 11 Sep 2018 23:58:06 GMT
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
	-	`sha256:def97dfd7ce2c534911d84250fc37f72cdbdb11658f733babd9929f64961d563`  
		Last Modified: Tue, 11 Sep 2018 23:59:36 GMT  
		Size: 3.6 MB (3569553 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30fd377b2e3965cee0d0c8b1e994e5039001267555e99fc1101a55f0733535fa`  
		Last Modified: Tue, 11 Sep 2018 23:59:35 GMT  
		Size: 380.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be6615ba2efd22cefcef90ba20d22db1cb9937dc73d16cd642b35a20f9cc8cc4`  
		Last Modified: Tue, 11 Sep 2018 23:59:36 GMT  
		Size: 1.2 KB (1188 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `notary:signer-0.5.0`

```console
$ docker pull notary@sha256:96b3233123addb3cab68946026db0fbd89e4b08459cfed859205262462695e35
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `notary:signer-0.5.0` - linux; amd64

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
