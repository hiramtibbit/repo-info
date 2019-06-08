## `nats:latest`

```console
$ docker pull nats@sha256:ebd3ab5502ea623d1647eccc102cf5e9bd6c090ab3bfe4685d128141a44f89af
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
$ docker pull nats@sha256:391fb7b913e3bc1d1ccd1a9333bbcac54dc17d7f2e0dab1dd93d45c7a237e7e2
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.4 MB (3389670 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2e53e1586a72f3325a0664e97572dfe598a3957059e1f3243c23c70a14fa388b`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["-c","nats-server.conf"]`

```dockerfile
# Sat, 08 Jun 2019 21:49:37 GMT
COPY file:187750a2f8d32084eb3cc57437e59fcc12a715bea697bb3669a6d6e552889aa7 in /nats-server 
# Sat, 08 Jun 2019 21:49:38 GMT
COPY file:bbf7451965f536dac3b70d8c890ffa47de20f4293b62aa28cb0cd84498d5e7dc in nats-server.conf 
# Sat, 08 Jun 2019 21:49:38 GMT
EXPOSE 4222 6222 8222
# Sat, 08 Jun 2019 21:49:38 GMT
ENTRYPOINT ["/nats-server"]
# Sat, 08 Jun 2019 21:49:39 GMT
CMD ["-c" "nats-server.conf"]
```

-	Layers:
	-	`sha256:d9a9b6977701f18be8a891950993e50ba963b72778c7a8def6657a8f9427ff72`  
		Last Modified: Sat, 08 Jun 2019 21:49:48 GMT  
		Size: 3.4 MB (3389192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6850078c77f69089eab817f450930233b1cb8c0d5b119a4a9d27f6086404aa57`  
		Last Modified: Sat, 08 Jun 2019 21:49:47 GMT  
		Size: 478.0 B  
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
