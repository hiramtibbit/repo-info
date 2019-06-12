## `nats:latest`

```console
$ docker pull nats@sha256:33a5a9a32e581d31a9c5706c0cba6e63dbb7fcdf4075a1c16f85484e14580b38
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	windows version 10.0.17134.829; amd64

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

### `nats:latest` - windows version 10.0.17134.829; amd64

```console
$ docker pull nats@sha256:63a866829004facaa6d771558c4362258217b04135ec149a79985b9f4152496d
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **153.8 MB (153814802 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a42963fc0f8b7ad599887211c11b1e0bffcbd70dc43bfdb3f0d6d519c8466940`
-	Entrypoint: `["nats-server"]`
-	Default Command: `["-c","nats-server.conf"]`

```dockerfile
# Wed, 11 Apr 2018 22:12:30 GMT
RUN Apply image 1803-RTM-amd64
# Sat, 08 Jun 2019 16:52:04 GMT
RUN Install update 1803-amd64
# Wed, 12 Jun 2019 13:52:10 GMT
RUN cmd /S /C #(nop)  ENV NATS_DOCKERIZED=1
# Wed, 12 Jun 2019 13:52:11 GMT
RUN cmd /S /C #(nop) WORKDIR C:\nats-server
# Wed, 12 Jun 2019 13:52:13 GMT
RUN cmd /S /C #(nop) COPY file:8bda89c19209ce17886d8f819710d48f0fa30bae2ca05800ddb6f858346a4bd3 in nats-server.exe 
# Wed, 12 Jun 2019 13:52:15 GMT
RUN cmd /S /C #(nop) COPY file:bbf7451965f536dac3b70d8c890ffa47de20f4293b62aa28cb0cd84498d5e7dc in nats-server.conf 
# Wed, 12 Jun 2019 13:52:16 GMT
RUN cmd /S /C #(nop)  EXPOSE 4222 6222 8222
# Wed, 12 Jun 2019 13:52:17 GMT
RUN cmd /S /C #(nop)  ENTRYPOINT ["nats-server"]
# Wed, 12 Jun 2019 13:52:18 GMT
RUN cmd /S /C #(nop)  CMD ["-c" "nats-server.conf"]
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
	-	`sha256:0f9bfb8d056d3f506bd3798fe7d1af023d0d30c8d27fc10681d9b60b29304c03`  
		Last Modified: Wed, 12 Jun 2019 13:53:08 GMT  
		Size: 1.1 KB (1136 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab2dc0797ab6114d6e804e9e91c06bbd6e79bc961aa055b81f26b711bffd8b95`  
		Last Modified: Wed, 12 Jun 2019 13:53:08 GMT  
		Size: 3.6 MB (3573317 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae2f0fab2fcae71abd6b0157e60e2c86872ae7c43b19b1e9ca5212566723e0e1`  
		Last Modified: Wed, 12 Jun 2019 13:53:06 GMT  
		Size: 1.7 KB (1681 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1166e6b38f1180b290eddc2ac6d8bac606e02b2aeabc567cb117369d0fd07d74`  
		Last Modified: Wed, 12 Jun 2019 13:53:06 GMT  
		Size: 919.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de9f8c4101939a067190f0e79465bf99c83b2a4109ea70190a8ced728838be68`  
		Last Modified: Wed, 12 Jun 2019 13:53:06 GMT  
		Size: 923.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c449fc7226ec521484216ece802c5faf4d94fcd16ad1d1b3b215d3abbd384073`  
		Last Modified: Wed, 12 Jun 2019 13:53:06 GMT  
		Size: 887.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
