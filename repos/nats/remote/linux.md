## `nats:linux`

```console
$ docker pull nats@sha256:8ca28e0cb7950fcc57eb34bdf0e5ba553c4f0ca49592239ca982e03536f47bbd
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
