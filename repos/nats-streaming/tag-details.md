<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `nats-streaming`

-	[`nats-streaming:0.15.1`](#nats-streaming0151)
-	[`nats-streaming:0.15.1-linux`](#nats-streaming0151-linux)
-	[`nats-streaming:0.15.1-nanoserver`](#nats-streaming0151-nanoserver)
-	[`nats-streaming:0.15.1-nanoserver-1809`](#nats-streaming0151-nanoserver-1809)
-	[`nats-streaming:0.15.1-windowsservercore`](#nats-streaming0151-windowsservercore)
-	[`nats-streaming:latest`](#nats-streaminglatest)
-	[`nats-streaming:linux`](#nats-streaminglinux)
-	[`nats-streaming:nanoserver`](#nats-streamingnanoserver)
-	[`nats-streaming:nanoserver-1809`](#nats-streamingnanoserver-1809)
-	[`nats-streaming:windowsservercore`](#nats-streamingwindowsservercore)

## `nats-streaming:0.15.1`

```console
$ docker pull nats-streaming@sha256:0a79eb7fd19301445a981fecd42f89d045aea695ba68b04d448067b2ddaa4c18
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	windows version 10.0.17134.829; amd64

### `nats-streaming:0.15.1` - linux; amd64

```console
$ docker pull nats-streaming@sha256:2d8812318d1c4a1c7a114e4d3254419af10e5c39e515455886272c45dd7cf479
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 MB (5410613 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cda16c83dcc1185b2106a735ab128299b81e73fdcd342525e88c669b25c18432`
-	Entrypoint: `["\/nats-streaming-server"]`
-	Default Command: `["-m","8222"]`

```dockerfile
# Thu, 13 Jun 2019 20:20:37 GMT
COPY file:0c92c0c2325d8bd21bd5fe19716c69593ef1807f1de1fc5c03e212ceb3a0d4d6 in /nats-streaming-server 
# Thu, 13 Jun 2019 20:20:37 GMT
EXPOSE 4222 8222
# Thu, 13 Jun 2019 20:20:37 GMT
ENTRYPOINT ["/nats-streaming-server"]
# Thu, 13 Jun 2019 20:20:38 GMT
CMD ["-m" "8222"]
```

-	Layers:
	-	`sha256:494bab3419b7dcfee88adb9e28f4382c3b428d8d5c49ea49a59b76c0f8e45bef`  
		Last Modified: Thu, 13 Jun 2019 20:20:50 GMT  
		Size: 5.4 MB (5410613 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `nats-streaming:0.15.1` - linux; arm variant v6

```console
$ docker pull nats-streaming@sha256:97a8b1eca00078f461c86d2c73d58343ac1f1e34e15de8d3e7f59a322f218f7c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.1 MB (5101853 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bd6519f2a2341df848dc8c6b33d1696e9b5d74ea4873cb96a5bd637ba061eefe`
-	Entrypoint: `["\/nats-streaming-server"]`
-	Default Command: `["-m","8222"]`

```dockerfile
# Thu, 13 Jun 2019 20:49:46 GMT
COPY file:6c6558d6d3f3372ef437defb50c289d812bf4dab63535c93573d17a05b1c87c5 in /nats-streaming-server 
# Thu, 13 Jun 2019 20:49:46 GMT
EXPOSE 4222 8222
# Thu, 13 Jun 2019 20:49:47 GMT
ENTRYPOINT ["/nats-streaming-server"]
# Thu, 13 Jun 2019 20:49:47 GMT
CMD ["-m" "8222"]
```

-	Layers:
	-	`sha256:9c1682ef34260c265ce0abaef528cabf7597f4ea78689d8a0c063913df9718df`  
		Last Modified: Thu, 13 Jun 2019 20:49:58 GMT  
		Size: 5.1 MB (5101853 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `nats-streaming:0.15.1` - linux; arm variant v7

```console
$ docker pull nats-streaming@sha256:872c371a2a7f9800a758afe0b6778c6a4332233f4a29dd846645c8455954f996
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.1 MB (5097628 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:70466eea743ab2110a7f74bfd593d2ccc83e255bed018997f836d230d50a633e`
-	Entrypoint: `["\/nats-streaming-server"]`
-	Default Command: `["-m","8222"]`

```dockerfile
# Thu, 13 Jun 2019 19:57:52 GMT
COPY file:fadc13fd80cd6787b2ae7299aeab0a139203ffbf67754e738cae6f3322c599db in /nats-streaming-server 
# Thu, 13 Jun 2019 19:57:52 GMT
EXPOSE 4222 8222
# Thu, 13 Jun 2019 19:57:53 GMT
ENTRYPOINT ["/nats-streaming-server"]
# Thu, 13 Jun 2019 19:57:53 GMT
CMD ["-m" "8222"]
```

-	Layers:
	-	`sha256:15eda146c4fae02124076ba4c9721e1a99ad114199fdf201b5e88f79f322a3d7`  
		Last Modified: Thu, 13 Jun 2019 19:58:05 GMT  
		Size: 5.1 MB (5097628 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `nats-streaming:0.15.1` - linux; arm64 variant v8

```console
$ docker pull nats-streaming@sha256:ef3a299d4e0a6d1c2f66e87fadaf5c69440b0756976659ff0b0fa20c32dbd0aa
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.9 MB (4918132 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9958eb4484a79e37e778a10b9b20cad89bdd80fbced869859df248c1a70abdb9`
-	Entrypoint: `["\/nats-streaming-server"]`
-	Default Command: `["-m","8222"]`

```dockerfile
# Thu, 13 Jun 2019 20:40:04 GMT
COPY file:ca79e90446bb43ed1babe05db373e15fb928b35b30f155d224607d9b338e8352 in /nats-streaming-server 
# Thu, 13 Jun 2019 20:40:04 GMT
EXPOSE 4222 8222
# Thu, 13 Jun 2019 20:40:05 GMT
ENTRYPOINT ["/nats-streaming-server"]
# Thu, 13 Jun 2019 20:40:05 GMT
CMD ["-m" "8222"]
```

-	Layers:
	-	`sha256:ce799f6926855da22a93bee483c3f4a263b6eac562c2a031fa85d9a1545a2c57`  
		Last Modified: Thu, 13 Jun 2019 20:40:15 GMT  
		Size: 4.9 MB (4918132 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `nats-streaming:0.15.1` - windows version 10.0.17134.829; amd64

```console
$ docker pull nats-streaming@sha256:8a2ed294359440836bf021611451185d9518b9fc70ab3a45bf7cb3ef91bbeb0d
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **155.7 MB (155690385 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b913c6db4c2d5d0183bf6632cf46cb24dec6a0b0455eb96179c6fdc39cb1d1df`
-	Default Command: `["nats-streaming-server","-m","8222"]`

```dockerfile
# Wed, 11 Apr 2018 22:12:30 GMT
RUN Apply image 1803-RTM-amd64
# Sat, 08 Jun 2019 16:52:04 GMT
RUN Install update 1803-amd64
# Wed, 12 Jun 2019 13:52:10 GMT
RUN cmd /S /C #(nop)  ENV NATS_DOCKERIZED=1
# Thu, 13 Jun 2019 20:15:41 GMT
RUN cmd /S /C #(nop) WORKDIR C:\nats-streaming-server
# Thu, 13 Jun 2019 20:15:43 GMT
RUN cmd /S /C #(nop) COPY file:bce0965052bfd4646f9a5dc087e5bb5583494b2589991c004e1a6091f1cbae9c in nats-streaming-server.exe 
# Thu, 13 Jun 2019 20:15:46 GMT
RUN cmd /S /C #(nop)  EXPOSE 4222 8222
# Thu, 13 Jun 2019 20:15:47 GMT
RUN cmd /S /C #(nop)  CMD ["nats-streaming-server" "-m" "8222"]
```

-	Layers:
	-	`sha256:e46172273a4e4384e1eec7fb01091c828a256ea0f87b30f61381fba9bc511371`  
		Last Modified: Mon, 17 Sep 2018 20:23:30 GMT  
		Size: 92.8 MB (92818888 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:61703422ec932ddc8860cca8c8d4ee04e80e412105b5853e896aaf6bfb018eb8`  
		Last Modified: Tue, 11 Jun 2019 18:13:46 GMT  
		Size: 57.4 MB (57416125 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:24ff25890b0be7c2689e13472be3e7c84887e0056e7edd5dc8821c94275fa606`  
		Last Modified: Wed, 12 Jun 2019 13:53:08 GMT  
		Size: 926.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f635420a6c9243645deab88d551b30983c0b31d96bd17530bb15652e5f31bc3`  
		Last Modified: Thu, 13 Jun 2019 20:16:30 GMT  
		Size: 1.1 KB (1147 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59ffc94826b2fec06e6962c70d8b64cce8826cfeb161b88f181c8786f09836c1`  
		Last Modified: Thu, 13 Jun 2019 20:16:33 GMT  
		Size: 5.5 MB (5451445 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:683f8e47fa164d457136a8a478ce70c2c85e88a074f24ebee04b2a2e0771ce15`  
		Last Modified: Thu, 13 Jun 2019 20:16:30 GMT  
		Size: 954.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e252e7c4927b04f522137d21726c1f851a681447ff4d0d03afeeeb5cc2600c8b`  
		Last Modified: Thu, 13 Jun 2019 20:16:30 GMT  
		Size: 900.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nats-streaming:0.15.1-linux`

```console
$ docker pull nats-streaming@sha256:93325019d8910f34c6f48818a718cd78df5a5147ffdc98d983ce3aabd258f913
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `nats-streaming:0.15.1-linux` - linux; amd64

```console
$ docker pull nats-streaming@sha256:2d8812318d1c4a1c7a114e4d3254419af10e5c39e515455886272c45dd7cf479
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 MB (5410613 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cda16c83dcc1185b2106a735ab128299b81e73fdcd342525e88c669b25c18432`
-	Entrypoint: `["\/nats-streaming-server"]`
-	Default Command: `["-m","8222"]`

```dockerfile
# Thu, 13 Jun 2019 20:20:37 GMT
COPY file:0c92c0c2325d8bd21bd5fe19716c69593ef1807f1de1fc5c03e212ceb3a0d4d6 in /nats-streaming-server 
# Thu, 13 Jun 2019 20:20:37 GMT
EXPOSE 4222 8222
# Thu, 13 Jun 2019 20:20:37 GMT
ENTRYPOINT ["/nats-streaming-server"]
# Thu, 13 Jun 2019 20:20:38 GMT
CMD ["-m" "8222"]
```

-	Layers:
	-	`sha256:494bab3419b7dcfee88adb9e28f4382c3b428d8d5c49ea49a59b76c0f8e45bef`  
		Last Modified: Thu, 13 Jun 2019 20:20:50 GMT  
		Size: 5.4 MB (5410613 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `nats-streaming:0.15.1-linux` - linux; arm variant v6

```console
$ docker pull nats-streaming@sha256:97a8b1eca00078f461c86d2c73d58343ac1f1e34e15de8d3e7f59a322f218f7c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.1 MB (5101853 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bd6519f2a2341df848dc8c6b33d1696e9b5d74ea4873cb96a5bd637ba061eefe`
-	Entrypoint: `["\/nats-streaming-server"]`
-	Default Command: `["-m","8222"]`

```dockerfile
# Thu, 13 Jun 2019 20:49:46 GMT
COPY file:6c6558d6d3f3372ef437defb50c289d812bf4dab63535c93573d17a05b1c87c5 in /nats-streaming-server 
# Thu, 13 Jun 2019 20:49:46 GMT
EXPOSE 4222 8222
# Thu, 13 Jun 2019 20:49:47 GMT
ENTRYPOINT ["/nats-streaming-server"]
# Thu, 13 Jun 2019 20:49:47 GMT
CMD ["-m" "8222"]
```

-	Layers:
	-	`sha256:9c1682ef34260c265ce0abaef528cabf7597f4ea78689d8a0c063913df9718df`  
		Last Modified: Thu, 13 Jun 2019 20:49:58 GMT  
		Size: 5.1 MB (5101853 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `nats-streaming:0.15.1-linux` - linux; arm variant v7

```console
$ docker pull nats-streaming@sha256:872c371a2a7f9800a758afe0b6778c6a4332233f4a29dd846645c8455954f996
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.1 MB (5097628 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:70466eea743ab2110a7f74bfd593d2ccc83e255bed018997f836d230d50a633e`
-	Entrypoint: `["\/nats-streaming-server"]`
-	Default Command: `["-m","8222"]`

```dockerfile
# Thu, 13 Jun 2019 19:57:52 GMT
COPY file:fadc13fd80cd6787b2ae7299aeab0a139203ffbf67754e738cae6f3322c599db in /nats-streaming-server 
# Thu, 13 Jun 2019 19:57:52 GMT
EXPOSE 4222 8222
# Thu, 13 Jun 2019 19:57:53 GMT
ENTRYPOINT ["/nats-streaming-server"]
# Thu, 13 Jun 2019 19:57:53 GMT
CMD ["-m" "8222"]
```

-	Layers:
	-	`sha256:15eda146c4fae02124076ba4c9721e1a99ad114199fdf201b5e88f79f322a3d7`  
		Last Modified: Thu, 13 Jun 2019 19:58:05 GMT  
		Size: 5.1 MB (5097628 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `nats-streaming:0.15.1-linux` - linux; arm64 variant v8

```console
$ docker pull nats-streaming@sha256:ef3a299d4e0a6d1c2f66e87fadaf5c69440b0756976659ff0b0fa20c32dbd0aa
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.9 MB (4918132 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9958eb4484a79e37e778a10b9b20cad89bdd80fbced869859df248c1a70abdb9`
-	Entrypoint: `["\/nats-streaming-server"]`
-	Default Command: `["-m","8222"]`

```dockerfile
# Thu, 13 Jun 2019 20:40:04 GMT
COPY file:ca79e90446bb43ed1babe05db373e15fb928b35b30f155d224607d9b338e8352 in /nats-streaming-server 
# Thu, 13 Jun 2019 20:40:04 GMT
EXPOSE 4222 8222
# Thu, 13 Jun 2019 20:40:05 GMT
ENTRYPOINT ["/nats-streaming-server"]
# Thu, 13 Jun 2019 20:40:05 GMT
CMD ["-m" "8222"]
```

-	Layers:
	-	`sha256:ce799f6926855da22a93bee483c3f4a263b6eac562c2a031fa85d9a1545a2c57`  
		Last Modified: Thu, 13 Jun 2019 20:40:15 GMT  
		Size: 4.9 MB (4918132 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nats-streaming:0.15.1-nanoserver`

```console
$ docker pull nats-streaming@sha256:40d165fed24f050c4054fd90a5b993c651b1f42ea2b212ce639e6d76d6229552
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.17134.829; amd64

### `nats-streaming:0.15.1-nanoserver` - windows version 10.0.17134.829; amd64

```console
$ docker pull nats-streaming@sha256:8a2ed294359440836bf021611451185d9518b9fc70ab3a45bf7cb3ef91bbeb0d
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **155.7 MB (155690385 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b913c6db4c2d5d0183bf6632cf46cb24dec6a0b0455eb96179c6fdc39cb1d1df`
-	Default Command: `["nats-streaming-server","-m","8222"]`

```dockerfile
# Wed, 11 Apr 2018 22:12:30 GMT
RUN Apply image 1803-RTM-amd64
# Sat, 08 Jun 2019 16:52:04 GMT
RUN Install update 1803-amd64
# Wed, 12 Jun 2019 13:52:10 GMT
RUN cmd /S /C #(nop)  ENV NATS_DOCKERIZED=1
# Thu, 13 Jun 2019 20:15:41 GMT
RUN cmd /S /C #(nop) WORKDIR C:\nats-streaming-server
# Thu, 13 Jun 2019 20:15:43 GMT
RUN cmd /S /C #(nop) COPY file:bce0965052bfd4646f9a5dc087e5bb5583494b2589991c004e1a6091f1cbae9c in nats-streaming-server.exe 
# Thu, 13 Jun 2019 20:15:46 GMT
RUN cmd /S /C #(nop)  EXPOSE 4222 8222
# Thu, 13 Jun 2019 20:15:47 GMT
RUN cmd /S /C #(nop)  CMD ["nats-streaming-server" "-m" "8222"]
```

-	Layers:
	-	`sha256:e46172273a4e4384e1eec7fb01091c828a256ea0f87b30f61381fba9bc511371`  
		Last Modified: Mon, 17 Sep 2018 20:23:30 GMT  
		Size: 92.8 MB (92818888 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:61703422ec932ddc8860cca8c8d4ee04e80e412105b5853e896aaf6bfb018eb8`  
		Last Modified: Tue, 11 Jun 2019 18:13:46 GMT  
		Size: 57.4 MB (57416125 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:24ff25890b0be7c2689e13472be3e7c84887e0056e7edd5dc8821c94275fa606`  
		Last Modified: Wed, 12 Jun 2019 13:53:08 GMT  
		Size: 926.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f635420a6c9243645deab88d551b30983c0b31d96bd17530bb15652e5f31bc3`  
		Last Modified: Thu, 13 Jun 2019 20:16:30 GMT  
		Size: 1.1 KB (1147 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59ffc94826b2fec06e6962c70d8b64cce8826cfeb161b88f181c8786f09836c1`  
		Last Modified: Thu, 13 Jun 2019 20:16:33 GMT  
		Size: 5.5 MB (5451445 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:683f8e47fa164d457136a8a478ce70c2c85e88a074f24ebee04b2a2e0771ce15`  
		Last Modified: Thu, 13 Jun 2019 20:16:30 GMT  
		Size: 954.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e252e7c4927b04f522137d21726c1f851a681447ff4d0d03afeeeb5cc2600c8b`  
		Last Modified: Thu, 13 Jun 2019 20:16:30 GMT  
		Size: 900.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nats-streaming:0.15.1-nanoserver-1809`

```console
$ docker pull nats-streaming@sha256:10748e4a40949e9dbd9d70b21c9d60a64c87da2470121aeb05cf4bec6d7439ed
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.17763.557; amd64

### `nats-streaming:0.15.1-nanoserver-1809` - windows version 10.0.17763.557; amd64

```console
$ docker pull nats-streaming@sha256:e22a07bee5aa6543d57cf53b4caab0c47b79c81a175f79a44567fd2354618abc
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **105.9 MB (105901648 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7b5d48c39d8333e4b1acb0392614092c0b86744960c0b9e397c50d4d87f65bb0`
-	Default Command: `["nats-streaming-server","-m","8222"]`

```dockerfile
# Fri, 07 Jun 2019 10:43:28 GMT
RUN Apply image 1809-amd64
# Wed, 12 Jun 2019 13:52:26 GMT
RUN cmd /S /C #(nop)  ENV NATS_DOCKERIZED=1
# Thu, 13 Jun 2019 20:15:55 GMT
RUN cmd /S /C #(nop) WORKDIR C:\nats-streaming-server
# Thu, 13 Jun 2019 20:15:57 GMT
RUN cmd /S /C #(nop) COPY file:bce0965052bfd4646f9a5dc087e5bb5583494b2589991c004e1a6091f1cbae9c in nats-streaming-server.exe 
# Thu, 13 Jun 2019 20:15:59 GMT
RUN cmd /S /C #(nop)  EXPOSE 4222 8222
# Thu, 13 Jun 2019 20:16:00 GMT
RUN cmd /S /C #(nop)  CMD ["nats-streaming-server" "-m" "8222"]
```

-	Layers:
	-	`sha256:4afaf8a8c3fabe3f23cf85c8e4ec49d95c842576e4f348302edb8b7fd64d6036`  
		Last Modified: Tue, 11 Jun 2019 18:44:48 GMT  
		Size: 100.4 MB (100446304 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:b0555b451cb6e36218d853d18da9003ff58474cde0af43b4a4898b07d877b581`  
		Last Modified: Wed, 12 Jun 2019 13:53:24 GMT  
		Size: 907.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9da92db96c6cabdea782d22cfe58281f44a76324aa65e4ed91dab2f621fea17`  
		Last Modified: Thu, 13 Jun 2019 20:16:47 GMT  
		Size: 1.2 KB (1151 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6dee7d3d6cb495ba54ecc2923a7d0dc2639f65e3fb84a245b924c297b36847b`  
		Last Modified: Thu, 13 Jun 2019 20:16:49 GMT  
		Size: 5.5 MB (5451426 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b039c4324607f37b736ee07d0f89db432d6a209fb0575038d444c6a29edf0916`  
		Last Modified: Thu, 13 Jun 2019 20:16:47 GMT  
		Size: 924.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f7f25ab6a179ad93de33604bc56f82f2cd6f8aaf467a83720354b797be01e98`  
		Last Modified: Thu, 13 Jun 2019 20:16:48 GMT  
		Size: 936.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nats-streaming:0.15.1-windowsservercore`

```console
$ docker pull nats-streaming@sha256:1b62d6096215545208396250c7369f9b4f97aacde9388b6bb5ede52515404056
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.3025; amd64

### `nats-streaming:0.15.1-windowsservercore` - windows version 10.0.14393.3025; amd64

```console
$ docker pull nats-streaming@sha256:6fcb37f0f97eb7f95b640ea3335e8477fd41a73cf380323ef29efd6745139a4a
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.7 GB (5715431242 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d78a7b3c334b2260f59bb78c33dcdee4c7fc5339639efe5d2d5d8979fa862e6a`
-	Default Command: `["nats-streaming-server","-m","8222"]`

```dockerfile
# Tue, 22 Nov 2016 23:24:34 GMT
RUN Apply image 1607-RTM-amd64
# Thu, 06 Jun 2019 17:26:33 GMT
RUN Install update ltsc2016-amd64
# Wed, 12 Jun 2019 13:52:42 GMT
RUN cmd /S /C #(nop)  ENV NATS_DOCKERIZED=1
# Thu, 13 Jun 2019 20:16:07 GMT
RUN cmd /S /C #(nop) WORKDIR C:\nats-streaming-server
# Thu, 13 Jun 2019 20:16:09 GMT
RUN cmd /S /C #(nop) COPY file:bce0965052bfd4646f9a5dc087e5bb5583494b2589991c004e1a6091f1cbae9c in nats-streaming-server.exe 
# Thu, 13 Jun 2019 20:16:11 GMT
RUN cmd /S /C #(nop)  EXPOSE 4222 8222
# Thu, 13 Jun 2019 20:16:13 GMT
RUN cmd /S /C #(nop)  CMD ["nats-streaming-server" "-m" "8222"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 18 Sep 2018 20:20:50 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:b39d5d9be066f0f1bd27e6ca44acdf71d85b81b878665ee46215ddcb7ded74a0`  
		Last Modified: Tue, 11 Jun 2019 17:20:14 GMT  
		Size: 1.6 GB (1639988840 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:44c0e609957769b596fbc71a1308838095b9c61d4b9deaafe46a49c72ff9e39d`  
		Last Modified: Wed, 12 Jun 2019 13:53:40 GMT  
		Size: 1.2 KB (1171 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad67da46e6b59c4f4655d24962133efae65c78cf97d7e572ce75bd261fe83d76`  
		Last Modified: Thu, 13 Jun 2019 20:17:05 GMT  
		Size: 1.3 KB (1349 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71ff545cd84e1b4678e2cae861e0d352a370e6bdd81ce2c29b82bd10dbd7cb18`  
		Last Modified: Thu, 13 Jun 2019 20:17:04 GMT  
		Size: 5.5 MB (5451604 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:acac88082cc1e7b31f6a72ba1afd1ef76036467669f560ac77d66e9d7553c20e`  
		Last Modified: Thu, 13 Jun 2019 20:17:03 GMT  
		Size: 1.2 KB (1187 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79c92f7e072fac5562fc4761551620e75b0c65234f2b68d43da2f0eb3f2aeacd`  
		Last Modified: Thu, 13 Jun 2019 20:17:03 GMT  
		Size: 1.2 KB (1191 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nats-streaming:latest`

```console
$ docker pull nats-streaming@sha256:0a79eb7fd19301445a981fecd42f89d045aea695ba68b04d448067b2ddaa4c18
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	windows version 10.0.17134.829; amd64

### `nats-streaming:latest` - linux; amd64

```console
$ docker pull nats-streaming@sha256:2d8812318d1c4a1c7a114e4d3254419af10e5c39e515455886272c45dd7cf479
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 MB (5410613 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cda16c83dcc1185b2106a735ab128299b81e73fdcd342525e88c669b25c18432`
-	Entrypoint: `["\/nats-streaming-server"]`
-	Default Command: `["-m","8222"]`

```dockerfile
# Thu, 13 Jun 2019 20:20:37 GMT
COPY file:0c92c0c2325d8bd21bd5fe19716c69593ef1807f1de1fc5c03e212ceb3a0d4d6 in /nats-streaming-server 
# Thu, 13 Jun 2019 20:20:37 GMT
EXPOSE 4222 8222
# Thu, 13 Jun 2019 20:20:37 GMT
ENTRYPOINT ["/nats-streaming-server"]
# Thu, 13 Jun 2019 20:20:38 GMT
CMD ["-m" "8222"]
```

-	Layers:
	-	`sha256:494bab3419b7dcfee88adb9e28f4382c3b428d8d5c49ea49a59b76c0f8e45bef`  
		Last Modified: Thu, 13 Jun 2019 20:20:50 GMT  
		Size: 5.4 MB (5410613 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `nats-streaming:latest` - linux; arm variant v6

```console
$ docker pull nats-streaming@sha256:97a8b1eca00078f461c86d2c73d58343ac1f1e34e15de8d3e7f59a322f218f7c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.1 MB (5101853 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bd6519f2a2341df848dc8c6b33d1696e9b5d74ea4873cb96a5bd637ba061eefe`
-	Entrypoint: `["\/nats-streaming-server"]`
-	Default Command: `["-m","8222"]`

```dockerfile
# Thu, 13 Jun 2019 20:49:46 GMT
COPY file:6c6558d6d3f3372ef437defb50c289d812bf4dab63535c93573d17a05b1c87c5 in /nats-streaming-server 
# Thu, 13 Jun 2019 20:49:46 GMT
EXPOSE 4222 8222
# Thu, 13 Jun 2019 20:49:47 GMT
ENTRYPOINT ["/nats-streaming-server"]
# Thu, 13 Jun 2019 20:49:47 GMT
CMD ["-m" "8222"]
```

-	Layers:
	-	`sha256:9c1682ef34260c265ce0abaef528cabf7597f4ea78689d8a0c063913df9718df`  
		Last Modified: Thu, 13 Jun 2019 20:49:58 GMT  
		Size: 5.1 MB (5101853 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `nats-streaming:latest` - linux; arm variant v7

```console
$ docker pull nats-streaming@sha256:872c371a2a7f9800a758afe0b6778c6a4332233f4a29dd846645c8455954f996
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.1 MB (5097628 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:70466eea743ab2110a7f74bfd593d2ccc83e255bed018997f836d230d50a633e`
-	Entrypoint: `["\/nats-streaming-server"]`
-	Default Command: `["-m","8222"]`

```dockerfile
# Thu, 13 Jun 2019 19:57:52 GMT
COPY file:fadc13fd80cd6787b2ae7299aeab0a139203ffbf67754e738cae6f3322c599db in /nats-streaming-server 
# Thu, 13 Jun 2019 19:57:52 GMT
EXPOSE 4222 8222
# Thu, 13 Jun 2019 19:57:53 GMT
ENTRYPOINT ["/nats-streaming-server"]
# Thu, 13 Jun 2019 19:57:53 GMT
CMD ["-m" "8222"]
```

-	Layers:
	-	`sha256:15eda146c4fae02124076ba4c9721e1a99ad114199fdf201b5e88f79f322a3d7`  
		Last Modified: Thu, 13 Jun 2019 19:58:05 GMT  
		Size: 5.1 MB (5097628 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `nats-streaming:latest` - linux; arm64 variant v8

```console
$ docker pull nats-streaming@sha256:ef3a299d4e0a6d1c2f66e87fadaf5c69440b0756976659ff0b0fa20c32dbd0aa
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.9 MB (4918132 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9958eb4484a79e37e778a10b9b20cad89bdd80fbced869859df248c1a70abdb9`
-	Entrypoint: `["\/nats-streaming-server"]`
-	Default Command: `["-m","8222"]`

```dockerfile
# Thu, 13 Jun 2019 20:40:04 GMT
COPY file:ca79e90446bb43ed1babe05db373e15fb928b35b30f155d224607d9b338e8352 in /nats-streaming-server 
# Thu, 13 Jun 2019 20:40:04 GMT
EXPOSE 4222 8222
# Thu, 13 Jun 2019 20:40:05 GMT
ENTRYPOINT ["/nats-streaming-server"]
# Thu, 13 Jun 2019 20:40:05 GMT
CMD ["-m" "8222"]
```

-	Layers:
	-	`sha256:ce799f6926855da22a93bee483c3f4a263b6eac562c2a031fa85d9a1545a2c57`  
		Last Modified: Thu, 13 Jun 2019 20:40:15 GMT  
		Size: 4.9 MB (4918132 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `nats-streaming:latest` - windows version 10.0.17134.829; amd64

```console
$ docker pull nats-streaming@sha256:8a2ed294359440836bf021611451185d9518b9fc70ab3a45bf7cb3ef91bbeb0d
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **155.7 MB (155690385 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b913c6db4c2d5d0183bf6632cf46cb24dec6a0b0455eb96179c6fdc39cb1d1df`
-	Default Command: `["nats-streaming-server","-m","8222"]`

```dockerfile
# Wed, 11 Apr 2018 22:12:30 GMT
RUN Apply image 1803-RTM-amd64
# Sat, 08 Jun 2019 16:52:04 GMT
RUN Install update 1803-amd64
# Wed, 12 Jun 2019 13:52:10 GMT
RUN cmd /S /C #(nop)  ENV NATS_DOCKERIZED=1
# Thu, 13 Jun 2019 20:15:41 GMT
RUN cmd /S /C #(nop) WORKDIR C:\nats-streaming-server
# Thu, 13 Jun 2019 20:15:43 GMT
RUN cmd /S /C #(nop) COPY file:bce0965052bfd4646f9a5dc087e5bb5583494b2589991c004e1a6091f1cbae9c in nats-streaming-server.exe 
# Thu, 13 Jun 2019 20:15:46 GMT
RUN cmd /S /C #(nop)  EXPOSE 4222 8222
# Thu, 13 Jun 2019 20:15:47 GMT
RUN cmd /S /C #(nop)  CMD ["nats-streaming-server" "-m" "8222"]
```

-	Layers:
	-	`sha256:e46172273a4e4384e1eec7fb01091c828a256ea0f87b30f61381fba9bc511371`  
		Last Modified: Mon, 17 Sep 2018 20:23:30 GMT  
		Size: 92.8 MB (92818888 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:61703422ec932ddc8860cca8c8d4ee04e80e412105b5853e896aaf6bfb018eb8`  
		Last Modified: Tue, 11 Jun 2019 18:13:46 GMT  
		Size: 57.4 MB (57416125 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:24ff25890b0be7c2689e13472be3e7c84887e0056e7edd5dc8821c94275fa606`  
		Last Modified: Wed, 12 Jun 2019 13:53:08 GMT  
		Size: 926.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f635420a6c9243645deab88d551b30983c0b31d96bd17530bb15652e5f31bc3`  
		Last Modified: Thu, 13 Jun 2019 20:16:30 GMT  
		Size: 1.1 KB (1147 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59ffc94826b2fec06e6962c70d8b64cce8826cfeb161b88f181c8786f09836c1`  
		Last Modified: Thu, 13 Jun 2019 20:16:33 GMT  
		Size: 5.5 MB (5451445 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:683f8e47fa164d457136a8a478ce70c2c85e88a074f24ebee04b2a2e0771ce15`  
		Last Modified: Thu, 13 Jun 2019 20:16:30 GMT  
		Size: 954.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e252e7c4927b04f522137d21726c1f851a681447ff4d0d03afeeeb5cc2600c8b`  
		Last Modified: Thu, 13 Jun 2019 20:16:30 GMT  
		Size: 900.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nats-streaming:linux`

```console
$ docker pull nats-streaming@sha256:93325019d8910f34c6f48818a718cd78df5a5147ffdc98d983ce3aabd258f913
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `nats-streaming:linux` - linux; amd64

```console
$ docker pull nats-streaming@sha256:2d8812318d1c4a1c7a114e4d3254419af10e5c39e515455886272c45dd7cf479
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 MB (5410613 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cda16c83dcc1185b2106a735ab128299b81e73fdcd342525e88c669b25c18432`
-	Entrypoint: `["\/nats-streaming-server"]`
-	Default Command: `["-m","8222"]`

```dockerfile
# Thu, 13 Jun 2019 20:20:37 GMT
COPY file:0c92c0c2325d8bd21bd5fe19716c69593ef1807f1de1fc5c03e212ceb3a0d4d6 in /nats-streaming-server 
# Thu, 13 Jun 2019 20:20:37 GMT
EXPOSE 4222 8222
# Thu, 13 Jun 2019 20:20:37 GMT
ENTRYPOINT ["/nats-streaming-server"]
# Thu, 13 Jun 2019 20:20:38 GMT
CMD ["-m" "8222"]
```

-	Layers:
	-	`sha256:494bab3419b7dcfee88adb9e28f4382c3b428d8d5c49ea49a59b76c0f8e45bef`  
		Last Modified: Thu, 13 Jun 2019 20:20:50 GMT  
		Size: 5.4 MB (5410613 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `nats-streaming:linux` - linux; arm variant v6

```console
$ docker pull nats-streaming@sha256:97a8b1eca00078f461c86d2c73d58343ac1f1e34e15de8d3e7f59a322f218f7c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.1 MB (5101853 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bd6519f2a2341df848dc8c6b33d1696e9b5d74ea4873cb96a5bd637ba061eefe`
-	Entrypoint: `["\/nats-streaming-server"]`
-	Default Command: `["-m","8222"]`

```dockerfile
# Thu, 13 Jun 2019 20:49:46 GMT
COPY file:6c6558d6d3f3372ef437defb50c289d812bf4dab63535c93573d17a05b1c87c5 in /nats-streaming-server 
# Thu, 13 Jun 2019 20:49:46 GMT
EXPOSE 4222 8222
# Thu, 13 Jun 2019 20:49:47 GMT
ENTRYPOINT ["/nats-streaming-server"]
# Thu, 13 Jun 2019 20:49:47 GMT
CMD ["-m" "8222"]
```

-	Layers:
	-	`sha256:9c1682ef34260c265ce0abaef528cabf7597f4ea78689d8a0c063913df9718df`  
		Last Modified: Thu, 13 Jun 2019 20:49:58 GMT  
		Size: 5.1 MB (5101853 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `nats-streaming:linux` - linux; arm variant v7

```console
$ docker pull nats-streaming@sha256:872c371a2a7f9800a758afe0b6778c6a4332233f4a29dd846645c8455954f996
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.1 MB (5097628 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:70466eea743ab2110a7f74bfd593d2ccc83e255bed018997f836d230d50a633e`
-	Entrypoint: `["\/nats-streaming-server"]`
-	Default Command: `["-m","8222"]`

```dockerfile
# Thu, 13 Jun 2019 19:57:52 GMT
COPY file:fadc13fd80cd6787b2ae7299aeab0a139203ffbf67754e738cae6f3322c599db in /nats-streaming-server 
# Thu, 13 Jun 2019 19:57:52 GMT
EXPOSE 4222 8222
# Thu, 13 Jun 2019 19:57:53 GMT
ENTRYPOINT ["/nats-streaming-server"]
# Thu, 13 Jun 2019 19:57:53 GMT
CMD ["-m" "8222"]
```

-	Layers:
	-	`sha256:15eda146c4fae02124076ba4c9721e1a99ad114199fdf201b5e88f79f322a3d7`  
		Last Modified: Thu, 13 Jun 2019 19:58:05 GMT  
		Size: 5.1 MB (5097628 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `nats-streaming:linux` - linux; arm64 variant v8

```console
$ docker pull nats-streaming@sha256:ef3a299d4e0a6d1c2f66e87fadaf5c69440b0756976659ff0b0fa20c32dbd0aa
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.9 MB (4918132 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9958eb4484a79e37e778a10b9b20cad89bdd80fbced869859df248c1a70abdb9`
-	Entrypoint: `["\/nats-streaming-server"]`
-	Default Command: `["-m","8222"]`

```dockerfile
# Thu, 13 Jun 2019 20:40:04 GMT
COPY file:ca79e90446bb43ed1babe05db373e15fb928b35b30f155d224607d9b338e8352 in /nats-streaming-server 
# Thu, 13 Jun 2019 20:40:04 GMT
EXPOSE 4222 8222
# Thu, 13 Jun 2019 20:40:05 GMT
ENTRYPOINT ["/nats-streaming-server"]
# Thu, 13 Jun 2019 20:40:05 GMT
CMD ["-m" "8222"]
```

-	Layers:
	-	`sha256:ce799f6926855da22a93bee483c3f4a263b6eac562c2a031fa85d9a1545a2c57`  
		Last Modified: Thu, 13 Jun 2019 20:40:15 GMT  
		Size: 4.9 MB (4918132 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nats-streaming:nanoserver`

```console
$ docker pull nats-streaming@sha256:40d165fed24f050c4054fd90a5b993c651b1f42ea2b212ce639e6d76d6229552
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.17134.829; amd64

### `nats-streaming:nanoserver` - windows version 10.0.17134.829; amd64

```console
$ docker pull nats-streaming@sha256:8a2ed294359440836bf021611451185d9518b9fc70ab3a45bf7cb3ef91bbeb0d
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **155.7 MB (155690385 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b913c6db4c2d5d0183bf6632cf46cb24dec6a0b0455eb96179c6fdc39cb1d1df`
-	Default Command: `["nats-streaming-server","-m","8222"]`

```dockerfile
# Wed, 11 Apr 2018 22:12:30 GMT
RUN Apply image 1803-RTM-amd64
# Sat, 08 Jun 2019 16:52:04 GMT
RUN Install update 1803-amd64
# Wed, 12 Jun 2019 13:52:10 GMT
RUN cmd /S /C #(nop)  ENV NATS_DOCKERIZED=1
# Thu, 13 Jun 2019 20:15:41 GMT
RUN cmd /S /C #(nop) WORKDIR C:\nats-streaming-server
# Thu, 13 Jun 2019 20:15:43 GMT
RUN cmd /S /C #(nop) COPY file:bce0965052bfd4646f9a5dc087e5bb5583494b2589991c004e1a6091f1cbae9c in nats-streaming-server.exe 
# Thu, 13 Jun 2019 20:15:46 GMT
RUN cmd /S /C #(nop)  EXPOSE 4222 8222
# Thu, 13 Jun 2019 20:15:47 GMT
RUN cmd /S /C #(nop)  CMD ["nats-streaming-server" "-m" "8222"]
```

-	Layers:
	-	`sha256:e46172273a4e4384e1eec7fb01091c828a256ea0f87b30f61381fba9bc511371`  
		Last Modified: Mon, 17 Sep 2018 20:23:30 GMT  
		Size: 92.8 MB (92818888 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:61703422ec932ddc8860cca8c8d4ee04e80e412105b5853e896aaf6bfb018eb8`  
		Last Modified: Tue, 11 Jun 2019 18:13:46 GMT  
		Size: 57.4 MB (57416125 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:24ff25890b0be7c2689e13472be3e7c84887e0056e7edd5dc8821c94275fa606`  
		Last Modified: Wed, 12 Jun 2019 13:53:08 GMT  
		Size: 926.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f635420a6c9243645deab88d551b30983c0b31d96bd17530bb15652e5f31bc3`  
		Last Modified: Thu, 13 Jun 2019 20:16:30 GMT  
		Size: 1.1 KB (1147 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59ffc94826b2fec06e6962c70d8b64cce8826cfeb161b88f181c8786f09836c1`  
		Last Modified: Thu, 13 Jun 2019 20:16:33 GMT  
		Size: 5.5 MB (5451445 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:683f8e47fa164d457136a8a478ce70c2c85e88a074f24ebee04b2a2e0771ce15`  
		Last Modified: Thu, 13 Jun 2019 20:16:30 GMT  
		Size: 954.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e252e7c4927b04f522137d21726c1f851a681447ff4d0d03afeeeb5cc2600c8b`  
		Last Modified: Thu, 13 Jun 2019 20:16:30 GMT  
		Size: 900.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nats-streaming:nanoserver-1809`

```console
$ docker pull nats-streaming@sha256:10748e4a40949e9dbd9d70b21c9d60a64c87da2470121aeb05cf4bec6d7439ed
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.17763.557; amd64

### `nats-streaming:nanoserver-1809` - windows version 10.0.17763.557; amd64

```console
$ docker pull nats-streaming@sha256:e22a07bee5aa6543d57cf53b4caab0c47b79c81a175f79a44567fd2354618abc
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **105.9 MB (105901648 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7b5d48c39d8333e4b1acb0392614092c0b86744960c0b9e397c50d4d87f65bb0`
-	Default Command: `["nats-streaming-server","-m","8222"]`

```dockerfile
# Fri, 07 Jun 2019 10:43:28 GMT
RUN Apply image 1809-amd64
# Wed, 12 Jun 2019 13:52:26 GMT
RUN cmd /S /C #(nop)  ENV NATS_DOCKERIZED=1
# Thu, 13 Jun 2019 20:15:55 GMT
RUN cmd /S /C #(nop) WORKDIR C:\nats-streaming-server
# Thu, 13 Jun 2019 20:15:57 GMT
RUN cmd /S /C #(nop) COPY file:bce0965052bfd4646f9a5dc087e5bb5583494b2589991c004e1a6091f1cbae9c in nats-streaming-server.exe 
# Thu, 13 Jun 2019 20:15:59 GMT
RUN cmd /S /C #(nop)  EXPOSE 4222 8222
# Thu, 13 Jun 2019 20:16:00 GMT
RUN cmd /S /C #(nop)  CMD ["nats-streaming-server" "-m" "8222"]
```

-	Layers:
	-	`sha256:4afaf8a8c3fabe3f23cf85c8e4ec49d95c842576e4f348302edb8b7fd64d6036`  
		Last Modified: Tue, 11 Jun 2019 18:44:48 GMT  
		Size: 100.4 MB (100446304 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:b0555b451cb6e36218d853d18da9003ff58474cde0af43b4a4898b07d877b581`  
		Last Modified: Wed, 12 Jun 2019 13:53:24 GMT  
		Size: 907.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9da92db96c6cabdea782d22cfe58281f44a76324aa65e4ed91dab2f621fea17`  
		Last Modified: Thu, 13 Jun 2019 20:16:47 GMT  
		Size: 1.2 KB (1151 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6dee7d3d6cb495ba54ecc2923a7d0dc2639f65e3fb84a245b924c297b36847b`  
		Last Modified: Thu, 13 Jun 2019 20:16:49 GMT  
		Size: 5.5 MB (5451426 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b039c4324607f37b736ee07d0f89db432d6a209fb0575038d444c6a29edf0916`  
		Last Modified: Thu, 13 Jun 2019 20:16:47 GMT  
		Size: 924.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f7f25ab6a179ad93de33604bc56f82f2cd6f8aaf467a83720354b797be01e98`  
		Last Modified: Thu, 13 Jun 2019 20:16:48 GMT  
		Size: 936.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nats-streaming:windowsservercore`

```console
$ docker pull nats-streaming@sha256:1b62d6096215545208396250c7369f9b4f97aacde9388b6bb5ede52515404056
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.3025; amd64

### `nats-streaming:windowsservercore` - windows version 10.0.14393.3025; amd64

```console
$ docker pull nats-streaming@sha256:6fcb37f0f97eb7f95b640ea3335e8477fd41a73cf380323ef29efd6745139a4a
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.7 GB (5715431242 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d78a7b3c334b2260f59bb78c33dcdee4c7fc5339639efe5d2d5d8979fa862e6a`
-	Default Command: `["nats-streaming-server","-m","8222"]`

```dockerfile
# Tue, 22 Nov 2016 23:24:34 GMT
RUN Apply image 1607-RTM-amd64
# Thu, 06 Jun 2019 17:26:33 GMT
RUN Install update ltsc2016-amd64
# Wed, 12 Jun 2019 13:52:42 GMT
RUN cmd /S /C #(nop)  ENV NATS_DOCKERIZED=1
# Thu, 13 Jun 2019 20:16:07 GMT
RUN cmd /S /C #(nop) WORKDIR C:\nats-streaming-server
# Thu, 13 Jun 2019 20:16:09 GMT
RUN cmd /S /C #(nop) COPY file:bce0965052bfd4646f9a5dc087e5bb5583494b2589991c004e1a6091f1cbae9c in nats-streaming-server.exe 
# Thu, 13 Jun 2019 20:16:11 GMT
RUN cmd /S /C #(nop)  EXPOSE 4222 8222
# Thu, 13 Jun 2019 20:16:13 GMT
RUN cmd /S /C #(nop)  CMD ["nats-streaming-server" "-m" "8222"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 18 Sep 2018 20:20:50 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:b39d5d9be066f0f1bd27e6ca44acdf71d85b81b878665ee46215ddcb7ded74a0`  
		Last Modified: Tue, 11 Jun 2019 17:20:14 GMT  
		Size: 1.6 GB (1639988840 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:44c0e609957769b596fbc71a1308838095b9c61d4b9deaafe46a49c72ff9e39d`  
		Last Modified: Wed, 12 Jun 2019 13:53:40 GMT  
		Size: 1.2 KB (1171 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad67da46e6b59c4f4655d24962133efae65c78cf97d7e572ce75bd261fe83d76`  
		Last Modified: Thu, 13 Jun 2019 20:17:05 GMT  
		Size: 1.3 KB (1349 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71ff545cd84e1b4678e2cae861e0d352a370e6bdd81ce2c29b82bd10dbd7cb18`  
		Last Modified: Thu, 13 Jun 2019 20:17:04 GMT  
		Size: 5.5 MB (5451604 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:acac88082cc1e7b31f6a72ba1afd1ef76036467669f560ac77d66e9d7553c20e`  
		Last Modified: Thu, 13 Jun 2019 20:17:03 GMT  
		Size: 1.2 KB (1187 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79c92f7e072fac5562fc4761551620e75b0c65234f2b68d43da2f0eb3f2aeacd`  
		Last Modified: Thu, 13 Jun 2019 20:17:03 GMT  
		Size: 1.2 KB (1191 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
