<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `nats`

-	[`nats:2.0.0`](#nats200)
-	[`nats:2.0.0-linux`](#nats200-linux)
-	[`nats:2.0.0-nanoserver`](#nats200-nanoserver)
-	[`nats:2.0.0-nanoserver-1809`](#nats200-nanoserver-1809)
-	[`nats:2.0.0-windowsservercore`](#nats200-windowsservercore)
-	[`nats:latest`](#natslatest)
-	[`nats:linux`](#natslinux)
-	[`nats:nanoserver`](#natsnanoserver)
-	[`nats:nanoserver-1809`](#natsnanoserver-1809)
-	[`nats:windowsservercore`](#natswindowsservercore)

## `nats:2.0.0`

```console
$ docker pull nats@sha256:ff6f7ce0851fd8e37a8fb46d54522bfc58646e6f008a77e6441fcb54a1993981
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	windows version 10.0.17134.766; amd64

### `nats:2.0.0` - linux; amd64

```console
$ docker pull nats@sha256:4b1ddb862204cdc2c3d6dd8c2b889dccd240ba2d9c1cd8df013703035211cd33
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3593729 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9faa8e834234fdaee7d722c5d72fb08f6151546fb6971b83cf4aff2c3ea7016a`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["-c","nats-server.conf"]`

```dockerfile
# Sat, 08 Jun 2019 21:20:12 GMT
COPY file:959180ee46dbcc2dc53882d7bae749f990ff3fc8815c2e6e0bc1ad9c71cd4d41 in /nats-server 
# Sat, 08 Jun 2019 21:20:12 GMT
COPY file:bbf7451965f536dac3b70d8c890ffa47de20f4293b62aa28cb0cd84498d5e7dc in nats-server.conf 
# Sat, 08 Jun 2019 21:20:12 GMT
EXPOSE 4222 6222 8222
# Sat, 08 Jun 2019 21:20:13 GMT
ENTRYPOINT ["/nats-server"]
# Sat, 08 Jun 2019 21:20:13 GMT
CMD ["-c" "nats-server.conf"]
```

-	Layers:
	-	`sha256:1e49a2313cc6fd69b8e8454a73452c72ffc39dd96a530330cb3611774cd2fff3`  
		Last Modified: Sat, 08 Jun 2019 21:20:22 GMT  
		Size: 3.6 MB (3593252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d800ba2e7ea640a59edf77af8ec3ddd085f153cac38528fb1c5a656af7e52d7a`  
		Last Modified: Sat, 08 Jun 2019 21:20:21 GMT  
		Size: 477.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `nats:2.0.0` - linux; arm variant v7

```console
$ docker pull nats@sha256:fbc235034175c34a05b6de925e885b6f88661dc66d658b2d4d39a995fc0570d0
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.4 MB (3387163 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9f082a483d72942d5a75cf6e8cdfc1bab80239d4b22a780810731a7c93875bab`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["-c","nats-server.conf"]`

```dockerfile
# Sat, 08 Jun 2019 20:57:56 GMT
COPY file:d808ecde878c89586f7b089f599f1622f30af63f649f493b9ede903e2a18c109 in /nats-server 
# Sat, 08 Jun 2019 20:57:57 GMT
COPY file:bbf7451965f536dac3b70d8c890ffa47de20f4293b62aa28cb0cd84498d5e7dc in nats-server.conf 
# Sat, 08 Jun 2019 20:57:57 GMT
EXPOSE 4222 6222 8222
# Sat, 08 Jun 2019 20:57:58 GMT
ENTRYPOINT ["/nats-server"]
# Sat, 08 Jun 2019 20:57:58 GMT
CMD ["-c" "nats-server.conf"]
```

-	Layers:
	-	`sha256:a3fe61b9d26252bc66885583c9aa1b4f2cc4edbe14f38fbf38ec5e4f25a2801d`  
		Last Modified: Sat, 08 Jun 2019 20:58:08 GMT  
		Size: 3.4 MB (3386688 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf440be8c73db84226c4a3c1105fe02b53cb0dbfd0532b03da71352d7e47259e`  
		Last Modified: Sat, 08 Jun 2019 20:58:07 GMT  
		Size: 475.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `nats:2.0.0` - linux; arm64 variant v8

```console
$ docker pull nats@sha256:db791a5a76edd68b9ff4af0153960796f4f38b248defbb88673f011f3cb1364b
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3288074 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5495c572fbfbfd78463b07f533d3ddb639e3d3d60fd5e4655c2b168d238320f8`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["-c","nats-server.conf"]`

```dockerfile
# Sat, 08 Jun 2019 21:39:43 GMT
COPY file:a9fe1e144ea57b32e4b3b9a3ce48bc3a9ee635d7b25dc19ecf84b94f867a560d in /nats-server 
# Sat, 08 Jun 2019 21:39:43 GMT
COPY file:bbf7451965f536dac3b70d8c890ffa47de20f4293b62aa28cb0cd84498d5e7dc in nats-server.conf 
# Sat, 08 Jun 2019 21:39:44 GMT
EXPOSE 4222 6222 8222
# Sat, 08 Jun 2019 21:39:44 GMT
ENTRYPOINT ["/nats-server"]
# Sat, 08 Jun 2019 21:39:44 GMT
CMD ["-c" "nats-server.conf"]
```

-	Layers:
	-	`sha256:a1afac500886d50aa0c622a8004e6f25b340ff9081688ef27f99bbab1924d818`  
		Last Modified: Sat, 08 Jun 2019 21:39:54 GMT  
		Size: 3.3 MB (3287596 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5bd4924c42f199fd41790b0f2615bb4ef5bc91487040abae12bd2a5429e165b`  
		Last Modified: Sat, 08 Jun 2019 21:39:53 GMT  
		Size: 478.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `nats:2.0.0` - windows version 10.0.17134.766; amd64

```console
$ docker pull nats@sha256:7111926d89424a21032335b48b382e6584892e259d5874c028d96cadfd1aa259
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **153.0 MB (152971752 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1f50049aeb2a97d223332a843d74e91e2bf656ed7ba9957662400624d4b8b62a`
-	Entrypoint: `["nats-server"]`
-	Default Command: `["-c","nats-server.conf"]`

```dockerfile
# Wed, 11 Apr 2018 22:12:30 GMT
RUN Apply image 1803-RTM-amd64
# Sat, 18 May 2019 18:43:10 GMT
RUN Install update 1803-amd64
# Sat, 08 Jun 2019 21:17:41 GMT
RUN cmd /S /C #(nop)  ENV NATS_DOCKERIZED=1
# Sat, 08 Jun 2019 21:17:43 GMT
RUN cmd /S /C #(nop) WORKDIR C:\nats-server
# Sat, 08 Jun 2019 21:17:44 GMT
RUN cmd /S /C #(nop) COPY file:8bda89c19209ce17886d8f819710d48f0fa30bae2ca05800ddb6f858346a4bd3 in nats-server.exe 
# Sat, 08 Jun 2019 21:17:46 GMT
RUN cmd /S /C #(nop) COPY file:bbf7451965f536dac3b70d8c890ffa47de20f4293b62aa28cb0cd84498d5e7dc in nats-server.conf 
# Sat, 08 Jun 2019 21:17:47 GMT
RUN cmd /S /C #(nop)  EXPOSE 4222 6222 8222
# Sat, 08 Jun 2019 21:17:48 GMT
RUN cmd /S /C #(nop)  ENTRYPOINT ["nats-server"]
# Sat, 08 Jun 2019 21:17:50 GMT
RUN cmd /S /C #(nop)  CMD ["-c" "nats-server.conf"]
```

-	Layers:
	-	`sha256:e46172273a4e4384e1eec7fb01091c828a256ea0f87b30f61381fba9bc511371`  
		Last Modified: Mon, 17 Sep 2018 20:23:30 GMT  
		Size: 92.8 MB (92818888 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:3d65648a54d83dbe2c837a70c7d65673aa8e1a354e4fce74a997b5345b754d43`  
		Last Modified: Sun, 19 May 2019 18:54:13 GMT  
		Size: 56.6 MB (56573043 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:e7422cca1198f11379fa5b87d7b449d8f2a2deac349fc1fbcd4626d711a3b9e5`  
		Last Modified: Sat, 08 Jun 2019 21:18:43 GMT  
		Size: 949.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:981353ba02fab53d36e079fa0e27ea05e7118a7ec1cb83fd2b5a8f98c6322369`  
		Last Modified: Sat, 08 Jun 2019 21:18:43 GMT  
		Size: 1.1 KB (1134 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:806fe5f81ece7e1faebf98127e27560ee9378d379c0148be8b06442f8a412514`  
		Last Modified: Sat, 08 Jun 2019 21:18:42 GMT  
		Size: 3.6 MB (3573322 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ab3ad1123d67893149982aa7ce945db50552d8b828fc0fb49d9e9e812f923f1`  
		Last Modified: Sat, 08 Jun 2019 21:18:41 GMT  
		Size: 1.7 KB (1656 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3be7af3e39d8064565abe916f30c058310930e8885cb345a1e12b2e42f6b19f6`  
		Last Modified: Sat, 08 Jun 2019 21:18:41 GMT  
		Size: 927.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8f340002f2a473ec67e23abe73128e2bae385d1ef9e1f06ee94a6f7bfdc131f`  
		Last Modified: Sat, 08 Jun 2019 21:18:41 GMT  
		Size: 907.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae15314390b497f803752d840c7d03b39a84cb37973006cbcc755c3602c84fe8`  
		Last Modified: Sat, 08 Jun 2019 21:18:41 GMT  
		Size: 926.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nats:2.0.0-linux`

```console
$ docker pull nats@sha256:a55cbb0a3a03967ad159fd5374efffab17a9c9bba401e8848e5fac0e375d72d5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `nats:2.0.0-linux` - linux; amd64

```console
$ docker pull nats@sha256:4b1ddb862204cdc2c3d6dd8c2b889dccd240ba2d9c1cd8df013703035211cd33
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3593729 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9faa8e834234fdaee7d722c5d72fb08f6151546fb6971b83cf4aff2c3ea7016a`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["-c","nats-server.conf"]`

```dockerfile
# Sat, 08 Jun 2019 21:20:12 GMT
COPY file:959180ee46dbcc2dc53882d7bae749f990ff3fc8815c2e6e0bc1ad9c71cd4d41 in /nats-server 
# Sat, 08 Jun 2019 21:20:12 GMT
COPY file:bbf7451965f536dac3b70d8c890ffa47de20f4293b62aa28cb0cd84498d5e7dc in nats-server.conf 
# Sat, 08 Jun 2019 21:20:12 GMT
EXPOSE 4222 6222 8222
# Sat, 08 Jun 2019 21:20:13 GMT
ENTRYPOINT ["/nats-server"]
# Sat, 08 Jun 2019 21:20:13 GMT
CMD ["-c" "nats-server.conf"]
```

-	Layers:
	-	`sha256:1e49a2313cc6fd69b8e8454a73452c72ffc39dd96a530330cb3611774cd2fff3`  
		Last Modified: Sat, 08 Jun 2019 21:20:22 GMT  
		Size: 3.6 MB (3593252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d800ba2e7ea640a59edf77af8ec3ddd085f153cac38528fb1c5a656af7e52d7a`  
		Last Modified: Sat, 08 Jun 2019 21:20:21 GMT  
		Size: 477.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `nats:2.0.0-linux` - linux; arm variant v7

```console
$ docker pull nats@sha256:fbc235034175c34a05b6de925e885b6f88661dc66d658b2d4d39a995fc0570d0
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.4 MB (3387163 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9f082a483d72942d5a75cf6e8cdfc1bab80239d4b22a780810731a7c93875bab`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["-c","nats-server.conf"]`

```dockerfile
# Sat, 08 Jun 2019 20:57:56 GMT
COPY file:d808ecde878c89586f7b089f599f1622f30af63f649f493b9ede903e2a18c109 in /nats-server 
# Sat, 08 Jun 2019 20:57:57 GMT
COPY file:bbf7451965f536dac3b70d8c890ffa47de20f4293b62aa28cb0cd84498d5e7dc in nats-server.conf 
# Sat, 08 Jun 2019 20:57:57 GMT
EXPOSE 4222 6222 8222
# Sat, 08 Jun 2019 20:57:58 GMT
ENTRYPOINT ["/nats-server"]
# Sat, 08 Jun 2019 20:57:58 GMT
CMD ["-c" "nats-server.conf"]
```

-	Layers:
	-	`sha256:a3fe61b9d26252bc66885583c9aa1b4f2cc4edbe14f38fbf38ec5e4f25a2801d`  
		Last Modified: Sat, 08 Jun 2019 20:58:08 GMT  
		Size: 3.4 MB (3386688 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf440be8c73db84226c4a3c1105fe02b53cb0dbfd0532b03da71352d7e47259e`  
		Last Modified: Sat, 08 Jun 2019 20:58:07 GMT  
		Size: 475.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `nats:2.0.0-linux` - linux; arm64 variant v8

```console
$ docker pull nats@sha256:db791a5a76edd68b9ff4af0153960796f4f38b248defbb88673f011f3cb1364b
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3288074 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5495c572fbfbfd78463b07f533d3ddb639e3d3d60fd5e4655c2b168d238320f8`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["-c","nats-server.conf"]`

```dockerfile
# Sat, 08 Jun 2019 21:39:43 GMT
COPY file:a9fe1e144ea57b32e4b3b9a3ce48bc3a9ee635d7b25dc19ecf84b94f867a560d in /nats-server 
# Sat, 08 Jun 2019 21:39:43 GMT
COPY file:bbf7451965f536dac3b70d8c890ffa47de20f4293b62aa28cb0cd84498d5e7dc in nats-server.conf 
# Sat, 08 Jun 2019 21:39:44 GMT
EXPOSE 4222 6222 8222
# Sat, 08 Jun 2019 21:39:44 GMT
ENTRYPOINT ["/nats-server"]
# Sat, 08 Jun 2019 21:39:44 GMT
CMD ["-c" "nats-server.conf"]
```

-	Layers:
	-	`sha256:a1afac500886d50aa0c622a8004e6f25b340ff9081688ef27f99bbab1924d818`  
		Last Modified: Sat, 08 Jun 2019 21:39:54 GMT  
		Size: 3.3 MB (3287596 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5bd4924c42f199fd41790b0f2615bb4ef5bc91487040abae12bd2a5429e165b`  
		Last Modified: Sat, 08 Jun 2019 21:39:53 GMT  
		Size: 478.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nats:2.0.0-nanoserver`

```console
$ docker pull nats@sha256:138256973ab25d763db068c65ed33195e20bfee825cd6cb7d562285e6df405fe
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.17134.766; amd64

### `nats:2.0.0-nanoserver` - windows version 10.0.17134.766; amd64

```console
$ docker pull nats@sha256:7111926d89424a21032335b48b382e6584892e259d5874c028d96cadfd1aa259
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **153.0 MB (152971752 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1f50049aeb2a97d223332a843d74e91e2bf656ed7ba9957662400624d4b8b62a`
-	Entrypoint: `["nats-server"]`
-	Default Command: `["-c","nats-server.conf"]`

```dockerfile
# Wed, 11 Apr 2018 22:12:30 GMT
RUN Apply image 1803-RTM-amd64
# Sat, 18 May 2019 18:43:10 GMT
RUN Install update 1803-amd64
# Sat, 08 Jun 2019 21:17:41 GMT
RUN cmd /S /C #(nop)  ENV NATS_DOCKERIZED=1
# Sat, 08 Jun 2019 21:17:43 GMT
RUN cmd /S /C #(nop) WORKDIR C:\nats-server
# Sat, 08 Jun 2019 21:17:44 GMT
RUN cmd /S /C #(nop) COPY file:8bda89c19209ce17886d8f819710d48f0fa30bae2ca05800ddb6f858346a4bd3 in nats-server.exe 
# Sat, 08 Jun 2019 21:17:46 GMT
RUN cmd /S /C #(nop) COPY file:bbf7451965f536dac3b70d8c890ffa47de20f4293b62aa28cb0cd84498d5e7dc in nats-server.conf 
# Sat, 08 Jun 2019 21:17:47 GMT
RUN cmd /S /C #(nop)  EXPOSE 4222 6222 8222
# Sat, 08 Jun 2019 21:17:48 GMT
RUN cmd /S /C #(nop)  ENTRYPOINT ["nats-server"]
# Sat, 08 Jun 2019 21:17:50 GMT
RUN cmd /S /C #(nop)  CMD ["-c" "nats-server.conf"]
```

-	Layers:
	-	`sha256:e46172273a4e4384e1eec7fb01091c828a256ea0f87b30f61381fba9bc511371`  
		Last Modified: Mon, 17 Sep 2018 20:23:30 GMT  
		Size: 92.8 MB (92818888 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:3d65648a54d83dbe2c837a70c7d65673aa8e1a354e4fce74a997b5345b754d43`  
		Last Modified: Sun, 19 May 2019 18:54:13 GMT  
		Size: 56.6 MB (56573043 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:e7422cca1198f11379fa5b87d7b449d8f2a2deac349fc1fbcd4626d711a3b9e5`  
		Last Modified: Sat, 08 Jun 2019 21:18:43 GMT  
		Size: 949.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:981353ba02fab53d36e079fa0e27ea05e7118a7ec1cb83fd2b5a8f98c6322369`  
		Last Modified: Sat, 08 Jun 2019 21:18:43 GMT  
		Size: 1.1 KB (1134 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:806fe5f81ece7e1faebf98127e27560ee9378d379c0148be8b06442f8a412514`  
		Last Modified: Sat, 08 Jun 2019 21:18:42 GMT  
		Size: 3.6 MB (3573322 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ab3ad1123d67893149982aa7ce945db50552d8b828fc0fb49d9e9e812f923f1`  
		Last Modified: Sat, 08 Jun 2019 21:18:41 GMT  
		Size: 1.7 KB (1656 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3be7af3e39d8064565abe916f30c058310930e8885cb345a1e12b2e42f6b19f6`  
		Last Modified: Sat, 08 Jun 2019 21:18:41 GMT  
		Size: 927.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8f340002f2a473ec67e23abe73128e2bae385d1ef9e1f06ee94a6f7bfdc131f`  
		Last Modified: Sat, 08 Jun 2019 21:18:41 GMT  
		Size: 907.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae15314390b497f803752d840c7d03b39a84cb37973006cbcc755c3602c84fe8`  
		Last Modified: Sat, 08 Jun 2019 21:18:41 GMT  
		Size: 926.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nats:2.0.0-nanoserver-1809`

```console
$ docker pull nats@sha256:bba32b32f71ecf8164261a66ae41e9fb5d2c5c898b8ee79a1510a7566d460de8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.17763.504; amd64

### `nats:2.0.0-nanoserver-1809` - windows version 10.0.17763.504; amd64

```console
$ docker pull nats@sha256:63582275cb6cbbd4ff17612d0d6b2db1657510272ded230f247c488567058160
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **104.1 MB (104141416 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:039ff5277c522fae13c54b420aa73a71d7927e2b2591f1884019bb6343718f85`
-	Entrypoint: `["nats-server"]`
-	Default Command: `["-c","nats-server.conf"]`

```dockerfile
# Fri, 17 May 2019 11:37:51 GMT
RUN Apply image 1809-amd64
# Sat, 08 Jun 2019 21:17:59 GMT
RUN cmd /S /C #(nop)  ENV NATS_DOCKERIZED=1
# Sat, 08 Jun 2019 21:18:01 GMT
RUN cmd /S /C #(nop) WORKDIR C:\nats-server
# Sat, 08 Jun 2019 21:18:02 GMT
RUN cmd /S /C #(nop) COPY file:8bda89c19209ce17886d8f819710d48f0fa30bae2ca05800ddb6f858346a4bd3 in nats-server.exe 
# Sat, 08 Jun 2019 21:18:04 GMT
RUN cmd /S /C #(nop) COPY file:bbf7451965f536dac3b70d8c890ffa47de20f4293b62aa28cb0cd84498d5e7dc in nats-server.conf 
# Sat, 08 Jun 2019 21:18:05 GMT
RUN cmd /S /C #(nop)  EXPOSE 4222 6222 8222
# Sat, 08 Jun 2019 21:18:06 GMT
RUN cmd /S /C #(nop)  ENTRYPOINT ["nats-server"]
# Sat, 08 Jun 2019 21:18:07 GMT
RUN cmd /S /C #(nop)  CMD ["-c" "nats-server.conf"]
```

-	Layers:
	-	`sha256:b22999bfb02f58953159d958c4df0d13bc7723b89b727eb020c785dc24a5baec`  
		Last Modified: Sun, 19 May 2019 19:10:07 GMT  
		Size: 100.6 MB (100561668 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:a3a036930439b6603bd720a9937a2a61bb7f2774a774781667de62edef6ed48f`  
		Last Modified: Sat, 08 Jun 2019 21:18:58 GMT  
		Size: 921.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4377b3c575e759132bbc993883085a4122d7105fb0a502510082144ef6b4385`  
		Last Modified: Sat, 08 Jun 2019 21:18:58 GMT  
		Size: 1.1 KB (1121 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ffb289c724abe584eda3ff6b370b4c8b5ec4a98d8c29dd0910bf02d97f10f651`  
		Last Modified: Sat, 08 Jun 2019 21:18:57 GMT  
		Size: 3.6 MB (3573330 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b428ac957c517e7c658239a97908c1647ed0244f7d3a9da2f5e32d8e7579368f`  
		Last Modified: Sat, 08 Jun 2019 21:18:56 GMT  
		Size: 1.6 KB (1636 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:922edbbfc9599c4f2e9864c9897b68f75c4c22f3bf4a0d0a987d2d87742ef78e`  
		Last Modified: Sat, 08 Jun 2019 21:18:56 GMT  
		Size: 950.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e31451c24699130e2b789124d092720da993cbb407ee2bc4f378701fe7dd698e`  
		Last Modified: Sat, 08 Jun 2019 21:18:56 GMT  
		Size: 902.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1a1c175b4777983e9ece85d5bdb66aca3fb8da3d2647f6836f0445c46b1d659`  
		Last Modified: Sat, 08 Jun 2019 21:18:56 GMT  
		Size: 888.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nats:2.0.0-windowsservercore`

```console
$ docker pull nats@sha256:0db77fd6326926f3de567325fdae5e30385f7c370f73ac88b53ec5d112c5514c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2972; amd64

### `nats:2.0.0-windowsservercore` - windows version 10.0.14393.2972; amd64

```console
$ docker pull nats@sha256:926607701969a94cb71f523ddc8f70d7e6d77ede6c3c322a822b54d69d90d757
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.7 GB (5703369590 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9bd88637d6c6408bfa76fbdbd14a323c0cfcb13a0e8d4d5dcb8369f8f96d8806`
-	Entrypoint: `["nats-server"]`
-	Default Command: `["-c","nats-server.conf"]`

```dockerfile
# Tue, 22 Nov 2016 23:24:34 GMT
RUN Apply image 1607-RTM-amd64
# Sat, 18 May 2019 22:44:29 GMT
RUN Install update ltsc2016-amd64
# Sat, 08 Jun 2019 21:18:15 GMT
RUN cmd /S /C #(nop)  ENV NATS_DOCKERIZED=1
# Sat, 08 Jun 2019 21:18:16 GMT
RUN cmd /S /C #(nop) WORKDIR C:\nats-server
# Sat, 08 Jun 2019 21:18:18 GMT
RUN cmd /S /C #(nop) COPY file:8bda89c19209ce17886d8f819710d48f0fa30bae2ca05800ddb6f858346a4bd3 in nats-server.exe 
# Sat, 08 Jun 2019 21:18:20 GMT
RUN cmd /S /C #(nop) COPY file:bbf7451965f536dac3b70d8c890ffa47de20f4293b62aa28cb0cd84498d5e7dc in nats-server.conf 
# Sat, 08 Jun 2019 21:18:21 GMT
RUN cmd /S /C #(nop)  EXPOSE 4222 6222 8222
# Sat, 08 Jun 2019 21:18:22 GMT
RUN cmd /S /C #(nop)  ENTRYPOINT ["nats-server"]
# Sat, 08 Jun 2019 21:18:23 GMT
RUN cmd /S /C #(nop)  CMD ["-c" "nats-server.conf"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 18 Sep 2018 20:20:50 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:953249f92c3ef08a99d71358fd672da16a7dcc44032ff3356502f31ec8a9c0bb`  
		Last Modified: Sun, 19 May 2019 22:50:45 GMT  
		Size: 1.6 GB (1629802216 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:d2b3ea2df942d3f383af155827b2534ca68bc36bacc70453134e1d6c7d9ef5fc`  
		Last Modified: Sat, 08 Jun 2019 21:19:14 GMT  
		Size: 1.2 KB (1198 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69a7b671afd7d916b2698282f087c5e7345e785a815e98addb4cf2a3bffd3e4a`  
		Last Modified: Sat, 08 Jun 2019 21:19:14 GMT  
		Size: 1.4 KB (1358 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e09e6f1fe2bf2b3f038d5e874ff3eb71bfc3542fb269f5f7ae4e936a672f265`  
		Last Modified: Sat, 08 Jun 2019 21:19:13 GMT  
		Size: 3.6 MB (3573470 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84280170fab21c28ec4f4edbb6a70af560e5cf8c750459943d419219af999f4b`  
		Last Modified: Sat, 08 Jun 2019 21:19:12 GMT  
		Size: 1.9 KB (1902 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd2dc884d865d102af868dec62baa532ee777db8c0dd551be76c8d0c9d69a8d0`  
		Last Modified: Sat, 08 Jun 2019 21:19:11 GMT  
		Size: 1.2 KB (1189 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d401e36b6934cac981f6fe82766229c6b16a542d0752548525f68c891a54a38a`  
		Last Modified: Sat, 08 Jun 2019 21:19:11 GMT  
		Size: 1.1 KB (1149 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e40bdc89b649cfba0006acf5336b78c9cd255bef71ceb19798246e4af13a13ff`  
		Last Modified: Sat, 08 Jun 2019 21:19:11 GMT  
		Size: 1.2 KB (1208 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nats:latest`

```console
$ docker pull nats@sha256:b7aac265ad29cef9c724ade05c95dab2ac9d33c7862d547d8d4834889e6a98c8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	windows version 10.0.17134.766; amd64

### `nats:latest` - linux; amd64

```console
$ docker pull nats@sha256:4b1ddb862204cdc2c3d6dd8c2b889dccd240ba2d9c1cd8df013703035211cd33
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3593729 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9faa8e834234fdaee7d722c5d72fb08f6151546fb6971b83cf4aff2c3ea7016a`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["-c","nats-server.conf"]`

```dockerfile
# Sat, 08 Jun 2019 21:20:12 GMT
COPY file:959180ee46dbcc2dc53882d7bae749f990ff3fc8815c2e6e0bc1ad9c71cd4d41 in /nats-server 
# Sat, 08 Jun 2019 21:20:12 GMT
COPY file:bbf7451965f536dac3b70d8c890ffa47de20f4293b62aa28cb0cd84498d5e7dc in nats-server.conf 
# Sat, 08 Jun 2019 21:20:12 GMT
EXPOSE 4222 6222 8222
# Sat, 08 Jun 2019 21:20:13 GMT
ENTRYPOINT ["/nats-server"]
# Sat, 08 Jun 2019 21:20:13 GMT
CMD ["-c" "nats-server.conf"]
```

-	Layers:
	-	`sha256:1e49a2313cc6fd69b8e8454a73452c72ffc39dd96a530330cb3611774cd2fff3`  
		Last Modified: Sat, 08 Jun 2019 21:20:22 GMT  
		Size: 3.6 MB (3593252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d800ba2e7ea640a59edf77af8ec3ddd085f153cac38528fb1c5a656af7e52d7a`  
		Last Modified: Sat, 08 Jun 2019 21:20:21 GMT  
		Size: 477.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `nats:latest` - linux; arm variant v6

```console
$ docker pull nats@sha256:b2dadb3a93a19c819fd6ca90bd892403664db156dd378d137ddaf6a2b03b084e
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.0 MB (2984355 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a586d820b9bf75c0534458931c0deca0960cd8a81c2eca141c237f2e984332ae`
-	Entrypoint: `["\/gnatsd"]`
-	Default Command: `["-c","gnatsd.conf"]`

```dockerfile
# Fri, 08 Feb 2019 08:49:37 GMT
COPY file:829caf86f46ae2fd73e35598dbc9f3023ad79fac560f23f7d19b10567a2fdc02 in /gnatsd 
# Fri, 08 Feb 2019 08:49:37 GMT
COPY file:c18d0beab1e358624ae293da9a172cc3f6faec67511d07bbd10d05b130d14c90 in gnatsd.conf 
# Fri, 08 Feb 2019 08:49:39 GMT
EXPOSE 4222 6222 8222
# Fri, 08 Feb 2019 08:49:39 GMT
ENTRYPOINT ["/gnatsd"]
# Fri, 08 Feb 2019 08:49:40 GMT
CMD ["-c" "gnatsd.conf"]
```

-	Layers:
	-	`sha256:475b0effa1dd020f27026c829620b338b77a28a6c86d2ae4670803c88cc7f685`  
		Last Modified: Fri, 08 Feb 2019 08:49:49 GMT  
		Size: 3.0 MB (2983878 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ef7fdcbd9aae6ab85b94e739501b954b4ba4762ee06d1faeaf8820fd3eec579`  
		Last Modified: Fri, 08 Feb 2019 08:49:48 GMT  
		Size: 477.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `nats:latest` - linux; arm variant v7

```console
$ docker pull nats@sha256:fbc235034175c34a05b6de925e885b6f88661dc66d658b2d4d39a995fc0570d0
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.4 MB (3387163 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9f082a483d72942d5a75cf6e8cdfc1bab80239d4b22a780810731a7c93875bab`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["-c","nats-server.conf"]`

```dockerfile
# Sat, 08 Jun 2019 20:57:56 GMT
COPY file:d808ecde878c89586f7b089f599f1622f30af63f649f493b9ede903e2a18c109 in /nats-server 
# Sat, 08 Jun 2019 20:57:57 GMT
COPY file:bbf7451965f536dac3b70d8c890ffa47de20f4293b62aa28cb0cd84498d5e7dc in nats-server.conf 
# Sat, 08 Jun 2019 20:57:57 GMT
EXPOSE 4222 6222 8222
# Sat, 08 Jun 2019 20:57:58 GMT
ENTRYPOINT ["/nats-server"]
# Sat, 08 Jun 2019 20:57:58 GMT
CMD ["-c" "nats-server.conf"]
```

-	Layers:
	-	`sha256:a3fe61b9d26252bc66885583c9aa1b4f2cc4edbe14f38fbf38ec5e4f25a2801d`  
		Last Modified: Sat, 08 Jun 2019 20:58:08 GMT  
		Size: 3.4 MB (3386688 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf440be8c73db84226c4a3c1105fe02b53cb0dbfd0532b03da71352d7e47259e`  
		Last Modified: Sat, 08 Jun 2019 20:58:07 GMT  
		Size: 475.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `nats:latest` - linux; arm64 variant v8

```console
$ docker pull nats@sha256:db791a5a76edd68b9ff4af0153960796f4f38b248defbb88673f011f3cb1364b
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3288074 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5495c572fbfbfd78463b07f533d3ddb639e3d3d60fd5e4655c2b168d238320f8`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["-c","nats-server.conf"]`

```dockerfile
# Sat, 08 Jun 2019 21:39:43 GMT
COPY file:a9fe1e144ea57b32e4b3b9a3ce48bc3a9ee635d7b25dc19ecf84b94f867a560d in /nats-server 
# Sat, 08 Jun 2019 21:39:43 GMT
COPY file:bbf7451965f536dac3b70d8c890ffa47de20f4293b62aa28cb0cd84498d5e7dc in nats-server.conf 
# Sat, 08 Jun 2019 21:39:44 GMT
EXPOSE 4222 6222 8222
# Sat, 08 Jun 2019 21:39:44 GMT
ENTRYPOINT ["/nats-server"]
# Sat, 08 Jun 2019 21:39:44 GMT
CMD ["-c" "nats-server.conf"]
```

-	Layers:
	-	`sha256:a1afac500886d50aa0c622a8004e6f25b340ff9081688ef27f99bbab1924d818`  
		Last Modified: Sat, 08 Jun 2019 21:39:54 GMT  
		Size: 3.3 MB (3287596 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5bd4924c42f199fd41790b0f2615bb4ef5bc91487040abae12bd2a5429e165b`  
		Last Modified: Sat, 08 Jun 2019 21:39:53 GMT  
		Size: 478.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `nats:latest` - windows version 10.0.17134.766; amd64

```console
$ docker pull nats@sha256:7111926d89424a21032335b48b382e6584892e259d5874c028d96cadfd1aa259
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **153.0 MB (152971752 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1f50049aeb2a97d223332a843d74e91e2bf656ed7ba9957662400624d4b8b62a`
-	Entrypoint: `["nats-server"]`
-	Default Command: `["-c","nats-server.conf"]`

```dockerfile
# Wed, 11 Apr 2018 22:12:30 GMT
RUN Apply image 1803-RTM-amd64
# Sat, 18 May 2019 18:43:10 GMT
RUN Install update 1803-amd64
# Sat, 08 Jun 2019 21:17:41 GMT
RUN cmd /S /C #(nop)  ENV NATS_DOCKERIZED=1
# Sat, 08 Jun 2019 21:17:43 GMT
RUN cmd /S /C #(nop) WORKDIR C:\nats-server
# Sat, 08 Jun 2019 21:17:44 GMT
RUN cmd /S /C #(nop) COPY file:8bda89c19209ce17886d8f819710d48f0fa30bae2ca05800ddb6f858346a4bd3 in nats-server.exe 
# Sat, 08 Jun 2019 21:17:46 GMT
RUN cmd /S /C #(nop) COPY file:bbf7451965f536dac3b70d8c890ffa47de20f4293b62aa28cb0cd84498d5e7dc in nats-server.conf 
# Sat, 08 Jun 2019 21:17:47 GMT
RUN cmd /S /C #(nop)  EXPOSE 4222 6222 8222
# Sat, 08 Jun 2019 21:17:48 GMT
RUN cmd /S /C #(nop)  ENTRYPOINT ["nats-server"]
# Sat, 08 Jun 2019 21:17:50 GMT
RUN cmd /S /C #(nop)  CMD ["-c" "nats-server.conf"]
```

-	Layers:
	-	`sha256:e46172273a4e4384e1eec7fb01091c828a256ea0f87b30f61381fba9bc511371`  
		Last Modified: Mon, 17 Sep 2018 20:23:30 GMT  
		Size: 92.8 MB (92818888 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:3d65648a54d83dbe2c837a70c7d65673aa8e1a354e4fce74a997b5345b754d43`  
		Last Modified: Sun, 19 May 2019 18:54:13 GMT  
		Size: 56.6 MB (56573043 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:e7422cca1198f11379fa5b87d7b449d8f2a2deac349fc1fbcd4626d711a3b9e5`  
		Last Modified: Sat, 08 Jun 2019 21:18:43 GMT  
		Size: 949.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:981353ba02fab53d36e079fa0e27ea05e7118a7ec1cb83fd2b5a8f98c6322369`  
		Last Modified: Sat, 08 Jun 2019 21:18:43 GMT  
		Size: 1.1 KB (1134 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:806fe5f81ece7e1faebf98127e27560ee9378d379c0148be8b06442f8a412514`  
		Last Modified: Sat, 08 Jun 2019 21:18:42 GMT  
		Size: 3.6 MB (3573322 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ab3ad1123d67893149982aa7ce945db50552d8b828fc0fb49d9e9e812f923f1`  
		Last Modified: Sat, 08 Jun 2019 21:18:41 GMT  
		Size: 1.7 KB (1656 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3be7af3e39d8064565abe916f30c058310930e8885cb345a1e12b2e42f6b19f6`  
		Last Modified: Sat, 08 Jun 2019 21:18:41 GMT  
		Size: 927.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8f340002f2a473ec67e23abe73128e2bae385d1ef9e1f06ee94a6f7bfdc131f`  
		Last Modified: Sat, 08 Jun 2019 21:18:41 GMT  
		Size: 907.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae15314390b497f803752d840c7d03b39a84cb37973006cbcc755c3602c84fe8`  
		Last Modified: Sat, 08 Jun 2019 21:18:41 GMT  
		Size: 926.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nats:linux`

```console
$ docker pull nats@sha256:688a3073ec3ac82b2913a5ea523b257aa8ad57845bf6a700783d56a512895d45
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `nats:linux` - linux; amd64

```console
$ docker pull nats@sha256:4b1ddb862204cdc2c3d6dd8c2b889dccd240ba2d9c1cd8df013703035211cd33
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3593729 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9faa8e834234fdaee7d722c5d72fb08f6151546fb6971b83cf4aff2c3ea7016a`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["-c","nats-server.conf"]`

```dockerfile
# Sat, 08 Jun 2019 21:20:12 GMT
COPY file:959180ee46dbcc2dc53882d7bae749f990ff3fc8815c2e6e0bc1ad9c71cd4d41 in /nats-server 
# Sat, 08 Jun 2019 21:20:12 GMT
COPY file:bbf7451965f536dac3b70d8c890ffa47de20f4293b62aa28cb0cd84498d5e7dc in nats-server.conf 
# Sat, 08 Jun 2019 21:20:12 GMT
EXPOSE 4222 6222 8222
# Sat, 08 Jun 2019 21:20:13 GMT
ENTRYPOINT ["/nats-server"]
# Sat, 08 Jun 2019 21:20:13 GMT
CMD ["-c" "nats-server.conf"]
```

-	Layers:
	-	`sha256:1e49a2313cc6fd69b8e8454a73452c72ffc39dd96a530330cb3611774cd2fff3`  
		Last Modified: Sat, 08 Jun 2019 21:20:22 GMT  
		Size: 3.6 MB (3593252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d800ba2e7ea640a59edf77af8ec3ddd085f153cac38528fb1c5a656af7e52d7a`  
		Last Modified: Sat, 08 Jun 2019 21:20:21 GMT  
		Size: 477.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `nats:linux` - linux; arm variant v6

```console
$ docker pull nats@sha256:b2dadb3a93a19c819fd6ca90bd892403664db156dd378d137ddaf6a2b03b084e
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.0 MB (2984355 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a586d820b9bf75c0534458931c0deca0960cd8a81c2eca141c237f2e984332ae`
-	Entrypoint: `["\/gnatsd"]`
-	Default Command: `["-c","gnatsd.conf"]`

```dockerfile
# Fri, 08 Feb 2019 08:49:37 GMT
COPY file:829caf86f46ae2fd73e35598dbc9f3023ad79fac560f23f7d19b10567a2fdc02 in /gnatsd 
# Fri, 08 Feb 2019 08:49:37 GMT
COPY file:c18d0beab1e358624ae293da9a172cc3f6faec67511d07bbd10d05b130d14c90 in gnatsd.conf 
# Fri, 08 Feb 2019 08:49:39 GMT
EXPOSE 4222 6222 8222
# Fri, 08 Feb 2019 08:49:39 GMT
ENTRYPOINT ["/gnatsd"]
# Fri, 08 Feb 2019 08:49:40 GMT
CMD ["-c" "gnatsd.conf"]
```

-	Layers:
	-	`sha256:475b0effa1dd020f27026c829620b338b77a28a6c86d2ae4670803c88cc7f685`  
		Last Modified: Fri, 08 Feb 2019 08:49:49 GMT  
		Size: 3.0 MB (2983878 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ef7fdcbd9aae6ab85b94e739501b954b4ba4762ee06d1faeaf8820fd3eec579`  
		Last Modified: Fri, 08 Feb 2019 08:49:48 GMT  
		Size: 477.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `nats:linux` - linux; arm variant v7

```console
$ docker pull nats@sha256:fbc235034175c34a05b6de925e885b6f88661dc66d658b2d4d39a995fc0570d0
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.4 MB (3387163 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9f082a483d72942d5a75cf6e8cdfc1bab80239d4b22a780810731a7c93875bab`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["-c","nats-server.conf"]`

```dockerfile
# Sat, 08 Jun 2019 20:57:56 GMT
COPY file:d808ecde878c89586f7b089f599f1622f30af63f649f493b9ede903e2a18c109 in /nats-server 
# Sat, 08 Jun 2019 20:57:57 GMT
COPY file:bbf7451965f536dac3b70d8c890ffa47de20f4293b62aa28cb0cd84498d5e7dc in nats-server.conf 
# Sat, 08 Jun 2019 20:57:57 GMT
EXPOSE 4222 6222 8222
# Sat, 08 Jun 2019 20:57:58 GMT
ENTRYPOINT ["/nats-server"]
# Sat, 08 Jun 2019 20:57:58 GMT
CMD ["-c" "nats-server.conf"]
```

-	Layers:
	-	`sha256:a3fe61b9d26252bc66885583c9aa1b4f2cc4edbe14f38fbf38ec5e4f25a2801d`  
		Last Modified: Sat, 08 Jun 2019 20:58:08 GMT  
		Size: 3.4 MB (3386688 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf440be8c73db84226c4a3c1105fe02b53cb0dbfd0532b03da71352d7e47259e`  
		Last Modified: Sat, 08 Jun 2019 20:58:07 GMT  
		Size: 475.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `nats:linux` - linux; arm64 variant v8

```console
$ docker pull nats@sha256:db791a5a76edd68b9ff4af0153960796f4f38b248defbb88673f011f3cb1364b
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3288074 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5495c572fbfbfd78463b07f533d3ddb639e3d3d60fd5e4655c2b168d238320f8`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["-c","nats-server.conf"]`

```dockerfile
# Sat, 08 Jun 2019 21:39:43 GMT
COPY file:a9fe1e144ea57b32e4b3b9a3ce48bc3a9ee635d7b25dc19ecf84b94f867a560d in /nats-server 
# Sat, 08 Jun 2019 21:39:43 GMT
COPY file:bbf7451965f536dac3b70d8c890ffa47de20f4293b62aa28cb0cd84498d5e7dc in nats-server.conf 
# Sat, 08 Jun 2019 21:39:44 GMT
EXPOSE 4222 6222 8222
# Sat, 08 Jun 2019 21:39:44 GMT
ENTRYPOINT ["/nats-server"]
# Sat, 08 Jun 2019 21:39:44 GMT
CMD ["-c" "nats-server.conf"]
```

-	Layers:
	-	`sha256:a1afac500886d50aa0c622a8004e6f25b340ff9081688ef27f99bbab1924d818`  
		Last Modified: Sat, 08 Jun 2019 21:39:54 GMT  
		Size: 3.3 MB (3287596 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5bd4924c42f199fd41790b0f2615bb4ef5bc91487040abae12bd2a5429e165b`  
		Last Modified: Sat, 08 Jun 2019 21:39:53 GMT  
		Size: 478.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nats:nanoserver`

```console
$ docker pull nats@sha256:138256973ab25d763db068c65ed33195e20bfee825cd6cb7d562285e6df405fe
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.17134.766; amd64

### `nats:nanoserver` - windows version 10.0.17134.766; amd64

```console
$ docker pull nats@sha256:7111926d89424a21032335b48b382e6584892e259d5874c028d96cadfd1aa259
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **153.0 MB (152971752 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1f50049aeb2a97d223332a843d74e91e2bf656ed7ba9957662400624d4b8b62a`
-	Entrypoint: `["nats-server"]`
-	Default Command: `["-c","nats-server.conf"]`

```dockerfile
# Wed, 11 Apr 2018 22:12:30 GMT
RUN Apply image 1803-RTM-amd64
# Sat, 18 May 2019 18:43:10 GMT
RUN Install update 1803-amd64
# Sat, 08 Jun 2019 21:17:41 GMT
RUN cmd /S /C #(nop)  ENV NATS_DOCKERIZED=1
# Sat, 08 Jun 2019 21:17:43 GMT
RUN cmd /S /C #(nop) WORKDIR C:\nats-server
# Sat, 08 Jun 2019 21:17:44 GMT
RUN cmd /S /C #(nop) COPY file:8bda89c19209ce17886d8f819710d48f0fa30bae2ca05800ddb6f858346a4bd3 in nats-server.exe 
# Sat, 08 Jun 2019 21:17:46 GMT
RUN cmd /S /C #(nop) COPY file:bbf7451965f536dac3b70d8c890ffa47de20f4293b62aa28cb0cd84498d5e7dc in nats-server.conf 
# Sat, 08 Jun 2019 21:17:47 GMT
RUN cmd /S /C #(nop)  EXPOSE 4222 6222 8222
# Sat, 08 Jun 2019 21:17:48 GMT
RUN cmd /S /C #(nop)  ENTRYPOINT ["nats-server"]
# Sat, 08 Jun 2019 21:17:50 GMT
RUN cmd /S /C #(nop)  CMD ["-c" "nats-server.conf"]
```

-	Layers:
	-	`sha256:e46172273a4e4384e1eec7fb01091c828a256ea0f87b30f61381fba9bc511371`  
		Last Modified: Mon, 17 Sep 2018 20:23:30 GMT  
		Size: 92.8 MB (92818888 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:3d65648a54d83dbe2c837a70c7d65673aa8e1a354e4fce74a997b5345b754d43`  
		Last Modified: Sun, 19 May 2019 18:54:13 GMT  
		Size: 56.6 MB (56573043 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:e7422cca1198f11379fa5b87d7b449d8f2a2deac349fc1fbcd4626d711a3b9e5`  
		Last Modified: Sat, 08 Jun 2019 21:18:43 GMT  
		Size: 949.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:981353ba02fab53d36e079fa0e27ea05e7118a7ec1cb83fd2b5a8f98c6322369`  
		Last Modified: Sat, 08 Jun 2019 21:18:43 GMT  
		Size: 1.1 KB (1134 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:806fe5f81ece7e1faebf98127e27560ee9378d379c0148be8b06442f8a412514`  
		Last Modified: Sat, 08 Jun 2019 21:18:42 GMT  
		Size: 3.6 MB (3573322 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ab3ad1123d67893149982aa7ce945db50552d8b828fc0fb49d9e9e812f923f1`  
		Last Modified: Sat, 08 Jun 2019 21:18:41 GMT  
		Size: 1.7 KB (1656 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3be7af3e39d8064565abe916f30c058310930e8885cb345a1e12b2e42f6b19f6`  
		Last Modified: Sat, 08 Jun 2019 21:18:41 GMT  
		Size: 927.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8f340002f2a473ec67e23abe73128e2bae385d1ef9e1f06ee94a6f7bfdc131f`  
		Last Modified: Sat, 08 Jun 2019 21:18:41 GMT  
		Size: 907.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae15314390b497f803752d840c7d03b39a84cb37973006cbcc755c3602c84fe8`  
		Last Modified: Sat, 08 Jun 2019 21:18:41 GMT  
		Size: 926.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nats:nanoserver-1809`

```console
$ docker pull nats@sha256:bba32b32f71ecf8164261a66ae41e9fb5d2c5c898b8ee79a1510a7566d460de8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.17763.504; amd64

### `nats:nanoserver-1809` - windows version 10.0.17763.504; amd64

```console
$ docker pull nats@sha256:63582275cb6cbbd4ff17612d0d6b2db1657510272ded230f247c488567058160
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **104.1 MB (104141416 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:039ff5277c522fae13c54b420aa73a71d7927e2b2591f1884019bb6343718f85`
-	Entrypoint: `["nats-server"]`
-	Default Command: `["-c","nats-server.conf"]`

```dockerfile
# Fri, 17 May 2019 11:37:51 GMT
RUN Apply image 1809-amd64
# Sat, 08 Jun 2019 21:17:59 GMT
RUN cmd /S /C #(nop)  ENV NATS_DOCKERIZED=1
# Sat, 08 Jun 2019 21:18:01 GMT
RUN cmd /S /C #(nop) WORKDIR C:\nats-server
# Sat, 08 Jun 2019 21:18:02 GMT
RUN cmd /S /C #(nop) COPY file:8bda89c19209ce17886d8f819710d48f0fa30bae2ca05800ddb6f858346a4bd3 in nats-server.exe 
# Sat, 08 Jun 2019 21:18:04 GMT
RUN cmd /S /C #(nop) COPY file:bbf7451965f536dac3b70d8c890ffa47de20f4293b62aa28cb0cd84498d5e7dc in nats-server.conf 
# Sat, 08 Jun 2019 21:18:05 GMT
RUN cmd /S /C #(nop)  EXPOSE 4222 6222 8222
# Sat, 08 Jun 2019 21:18:06 GMT
RUN cmd /S /C #(nop)  ENTRYPOINT ["nats-server"]
# Sat, 08 Jun 2019 21:18:07 GMT
RUN cmd /S /C #(nop)  CMD ["-c" "nats-server.conf"]
```

-	Layers:
	-	`sha256:b22999bfb02f58953159d958c4df0d13bc7723b89b727eb020c785dc24a5baec`  
		Last Modified: Sun, 19 May 2019 19:10:07 GMT  
		Size: 100.6 MB (100561668 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:a3a036930439b6603bd720a9937a2a61bb7f2774a774781667de62edef6ed48f`  
		Last Modified: Sat, 08 Jun 2019 21:18:58 GMT  
		Size: 921.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4377b3c575e759132bbc993883085a4122d7105fb0a502510082144ef6b4385`  
		Last Modified: Sat, 08 Jun 2019 21:18:58 GMT  
		Size: 1.1 KB (1121 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ffb289c724abe584eda3ff6b370b4c8b5ec4a98d8c29dd0910bf02d97f10f651`  
		Last Modified: Sat, 08 Jun 2019 21:18:57 GMT  
		Size: 3.6 MB (3573330 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b428ac957c517e7c658239a97908c1647ed0244f7d3a9da2f5e32d8e7579368f`  
		Last Modified: Sat, 08 Jun 2019 21:18:56 GMT  
		Size: 1.6 KB (1636 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:922edbbfc9599c4f2e9864c9897b68f75c4c22f3bf4a0d0a987d2d87742ef78e`  
		Last Modified: Sat, 08 Jun 2019 21:18:56 GMT  
		Size: 950.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e31451c24699130e2b789124d092720da993cbb407ee2bc4f378701fe7dd698e`  
		Last Modified: Sat, 08 Jun 2019 21:18:56 GMT  
		Size: 902.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1a1c175b4777983e9ece85d5bdb66aca3fb8da3d2647f6836f0445c46b1d659`  
		Last Modified: Sat, 08 Jun 2019 21:18:56 GMT  
		Size: 888.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nats:windowsservercore`

```console
$ docker pull nats@sha256:0db77fd6326926f3de567325fdae5e30385f7c370f73ac88b53ec5d112c5514c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2972; amd64

### `nats:windowsservercore` - windows version 10.0.14393.2972; amd64

```console
$ docker pull nats@sha256:926607701969a94cb71f523ddc8f70d7e6d77ede6c3c322a822b54d69d90d757
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.7 GB (5703369590 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9bd88637d6c6408bfa76fbdbd14a323c0cfcb13a0e8d4d5dcb8369f8f96d8806`
-	Entrypoint: `["nats-server"]`
-	Default Command: `["-c","nats-server.conf"]`

```dockerfile
# Tue, 22 Nov 2016 23:24:34 GMT
RUN Apply image 1607-RTM-amd64
# Sat, 18 May 2019 22:44:29 GMT
RUN Install update ltsc2016-amd64
# Sat, 08 Jun 2019 21:18:15 GMT
RUN cmd /S /C #(nop)  ENV NATS_DOCKERIZED=1
# Sat, 08 Jun 2019 21:18:16 GMT
RUN cmd /S /C #(nop) WORKDIR C:\nats-server
# Sat, 08 Jun 2019 21:18:18 GMT
RUN cmd /S /C #(nop) COPY file:8bda89c19209ce17886d8f819710d48f0fa30bae2ca05800ddb6f858346a4bd3 in nats-server.exe 
# Sat, 08 Jun 2019 21:18:20 GMT
RUN cmd /S /C #(nop) COPY file:bbf7451965f536dac3b70d8c890ffa47de20f4293b62aa28cb0cd84498d5e7dc in nats-server.conf 
# Sat, 08 Jun 2019 21:18:21 GMT
RUN cmd /S /C #(nop)  EXPOSE 4222 6222 8222
# Sat, 08 Jun 2019 21:18:22 GMT
RUN cmd /S /C #(nop)  ENTRYPOINT ["nats-server"]
# Sat, 08 Jun 2019 21:18:23 GMT
RUN cmd /S /C #(nop)  CMD ["-c" "nats-server.conf"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 18 Sep 2018 20:20:50 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:953249f92c3ef08a99d71358fd672da16a7dcc44032ff3356502f31ec8a9c0bb`  
		Last Modified: Sun, 19 May 2019 22:50:45 GMT  
		Size: 1.6 GB (1629802216 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:d2b3ea2df942d3f383af155827b2534ca68bc36bacc70453134e1d6c7d9ef5fc`  
		Last Modified: Sat, 08 Jun 2019 21:19:14 GMT  
		Size: 1.2 KB (1198 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69a7b671afd7d916b2698282f087c5e7345e785a815e98addb4cf2a3bffd3e4a`  
		Last Modified: Sat, 08 Jun 2019 21:19:14 GMT  
		Size: 1.4 KB (1358 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e09e6f1fe2bf2b3f038d5e874ff3eb71bfc3542fb269f5f7ae4e936a672f265`  
		Last Modified: Sat, 08 Jun 2019 21:19:13 GMT  
		Size: 3.6 MB (3573470 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84280170fab21c28ec4f4edbb6a70af560e5cf8c750459943d419219af999f4b`  
		Last Modified: Sat, 08 Jun 2019 21:19:12 GMT  
		Size: 1.9 KB (1902 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd2dc884d865d102af868dec62baa532ee777db8c0dd551be76c8d0c9d69a8d0`  
		Last Modified: Sat, 08 Jun 2019 21:19:11 GMT  
		Size: 1.2 KB (1189 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d401e36b6934cac981f6fe82766229c6b16a542d0752548525f68c891a54a38a`  
		Last Modified: Sat, 08 Jun 2019 21:19:11 GMT  
		Size: 1.1 KB (1149 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e40bdc89b649cfba0006acf5336b78c9cd255bef71ceb19798246e4af13a13ff`  
		Last Modified: Sat, 08 Jun 2019 21:19:11 GMT  
		Size: 1.2 KB (1208 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
