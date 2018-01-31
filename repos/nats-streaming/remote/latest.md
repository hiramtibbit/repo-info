## `nats-streaming:latest`

```console
$ docker pull nats-streaming@sha256:cef2b118820fed9808011b4212d8263a48b44d14037ae0d61b00134f456146f4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	windows version 10.0.14393.2007; amd64

### `nats-streaming:latest` - linux; amd64

```console
$ docker pull nats-streaming@sha256:9423db74188546d3def8fd0df8654e8d175259769d26481a6e697f6881405136
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3796276 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c171076e6a2b40fd968ebdf643b9d7bd2e979b2cf7df7a27c205df93ddc8eaaf`
-	Entrypoint: `["\/nats-streaming-server"]`
-	Default Command: `["-m","8222"]`

```dockerfile
# Tue, 30 Jan 2018 18:55:34 GMT
COPY file:84553dad8f364b7206c17ec0611f7abe0fd1eed3be9fe99a7b59136512ae4ef9 in /nats-streaming-server 
# Tue, 30 Jan 2018 18:55:34 GMT
EXPOSE 4222/tcp 8222/tcp
# Tue, 30 Jan 2018 18:55:34 GMT
ENTRYPOINT ["/nats-streaming-server"]
# Tue, 30 Jan 2018 18:55:34 GMT
CMD ["-m" "8222"]
```

-	Layers:
	-	`sha256:f756ceb4a227325b279ca5bc9cfc0d4752e7bf97023f860b16827e90d56ef3b4`  
		Last Modified: Tue, 30 Jan 2018 18:55:52 GMT  
		Size: 3.8 MB (3796276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `nats-streaming:latest` - linux; arm variant v7

```console
$ docker pull nats-streaming@sha256:6729d6c6e8564f6cf0c4d526aba085e281ca7a9b06db78bc66b780c053e4cf1e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3550398 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ff3d42ee17ef5d886aa4123c4ccff38243cf8a662ed3d08c1c7e771e04c5ce5b`
-	Entrypoint: `["\/nats-streaming-server"]`
-	Default Command: `["-m","8222"]`

```dockerfile
# Wed, 31 Jan 2018 00:27:48 GMT
COPY file:25bbc0831284c918762232a0b929d7076f48a359a1f6c90df86bc21216469029 in /nats-streaming-server 
# Wed, 31 Jan 2018 00:27:48 GMT
EXPOSE 4222/tcp 8222/tcp
# Wed, 31 Jan 2018 00:27:49 GMT
ENTRYPOINT ["/nats-streaming-server"]
# Wed, 31 Jan 2018 00:27:49 GMT
CMD ["-m" "8222"]
```

-	Layers:
	-	`sha256:74bb7619390ec2fc5cf148dd5115e5056cfbfbad48cb5fd631426fdbc2eb2318`  
		Last Modified: Wed, 31 Jan 2018 00:28:02 GMT  
		Size: 3.6 MB (3550398 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `nats-streaming:latest` - linux; arm64 variant v8

```console
$ docker pull nats-streaming@sha256:3c9ba1d405e5670e85dea91afa0aae0902c16f3f2d9d82969e5b7df7f4e997f0
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.5 MB (3460837 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ad0f9156762718a16e04ebb2d31303b6b532cea79088c370b79ffff0ef64885e`
-	Entrypoint: `["\/nats-streaming-server"]`
-	Default Command: `["-m","8222"]`

```dockerfile
# Wed, 31 Jan 2018 01:27:51 GMT
COPY file:8aaea2ab3023987db3ae485b311a0dfa174fc0f8b650108d5d483d9d71bbdb4d in /nats-streaming-server 
# Wed, 31 Jan 2018 01:27:52 GMT
EXPOSE 4222/tcp 8222/tcp
# Wed, 31 Jan 2018 01:27:52 GMT
ENTRYPOINT ["/nats-streaming-server"]
# Wed, 31 Jan 2018 01:27:53 GMT
CMD ["-m" "8222"]
```

-	Layers:
	-	`sha256:a6759cfe7ccb3c1a2ee75aaf97729a3fd35bb205f79ba9246202ecbcdab6f213`  
		Last Modified: Wed, 31 Jan 2018 01:28:15 GMT  
		Size: 3.5 MB (3460837 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `nats-streaming:latest` - windows version 10.0.14393.2007; amd64

```console
$ docker pull nats-streaming@sha256:75eff10899776d6cf22676e8b9b2b8b8159b7faa6d535d5b8a40b899afd4d00c
```

-	Docker Version: 17.06.1-ee-2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **406.9 MB (406893112 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1530d96d57f1bb046758437673b0da9a25da31c06c791c5b623a72d266baaf5d`
-	Default Command: `["nats-streaming-server","-m","8222"]`

```dockerfile
# Tue, 13 Dec 2016 10:47:17 GMT
RUN Apply image 10.0.14393.0
# Thu, 04 Jan 2018 20:07:02 GMT
RUN Install update 10.0.14393.2007
# Thu, 04 Jan 2018 23:30:26 GMT
RUN cmd /S /C #(nop)  ENV NATS_DOCKERIZED=1
# Thu, 04 Jan 2018 23:30:27 GMT
RUN cmd /S /C #(nop) WORKDIR C:\nats-streaming-server
# Tue, 30 Jan 2018 23:20:48 GMT
RUN cmd /S /C #(nop) COPY file:ae19dadf60c6d6e7083eeb64f689e0e35a8e3a0ac783cfd493f64ad62296e5d1 in nats-streaming-server.exe 
# Tue, 30 Jan 2018 23:20:49 GMT
RUN cmd /S /C #(nop)  EXPOSE 4222/tcp 8222/tcp
# Tue, 30 Jan 2018 23:20:49 GMT
RUN cmd /S /C #(nop)  CMD ["nats-streaming-server" "-m" "8222"]
```

-	Layers:
	-	`sha256:bce2fbc256ea437a87dadac2f69aabd25bed4f56255549090056c1131fad0277`  
		Last Modified: Tue, 13 Dec 2016 10:47:17 GMT  
		Size: 252.7 MB (252691002 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:764aee428c28f0935a6ded2a2730509373e1357648795b609b911dd46aa06257`  
		Last Modified: Thu, 04 Jan 2018 20:07:02 GMT  
		Size: 150.4 MB (150357748 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:17dbcc3dc4bd52b77b681666085b3fcd9ee5fc59df7d486ba54e0867c1b24971`  
		Last Modified: Thu, 04 Jan 2018 23:30:50 GMT  
		Size: 939.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8743e28281d5bf7f7de45ffdd8357deae9ae6c82bcf382acbef032b82f36adc1`  
		Last Modified: Thu, 04 Jan 2018 23:30:50 GMT  
		Size: 1.2 KB (1160 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:640c2accc87da727e7220f94a0b25f4de71f42c9f6d83fb98b959b44e789a174`  
		Last Modified: Tue, 30 Jan 2018 23:21:09 GMT  
		Size: 3.8 MB (3840363 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf4c49ce9265c6c7a77047c708a6583c6f49a7653d5e51a0d30e073e3e8be780`  
		Last Modified: Tue, 30 Jan 2018 23:21:07 GMT  
		Size: 946.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1c3fa0e4fb849f11aa3c720526a025a9429a52e48c70ea1316e193bbad88c81`  
		Last Modified: Tue, 30 Jan 2018 23:21:08 GMT  
		Size: 954.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
