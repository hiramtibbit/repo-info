<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `nats-streaming`

-	[`nats-streaming:0.8.0-beta`](#nats-streaming080-beta)
-	[`nats-streaming:0.8.0-beta-linux`](#nats-streaming080-beta-linux)
-	[`nats-streaming:0.8.0-beta-nanoserver`](#nats-streaming080-beta-nanoserver)
-	[`nats-streaming:0.8.0-beta-windowsservercore`](#nats-streaming080-beta-windowsservercore)
-	[`nats-streaming:latest`](#nats-streaminglatest)
-	[`nats-streaming:linux`](#nats-streaminglinux)
-	[`nats-streaming:nanoserver`](#nats-streamingnanoserver)
-	[`nats-streaming:windowsservercore`](#nats-streamingwindowsservercore)

## `nats-streaming:0.8.0-beta`

```console
$ docker pull nats-streaming@sha256:bb83514b125d8d79457e49ae2a86891b214fa8dbb7fe470a274fa5f8d0d3b9b9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	windows version 10.0.14393.2007; amd64

### `nats-streaming:0.8.0-beta` - linux; amd64

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

### `nats-streaming:0.8.0-beta` - windows version 10.0.14393.2007; amd64

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

## `nats-streaming:0.8.0-beta-linux`

```console
$ docker pull nats-streaming@sha256:d909edec90bbb0f354f6aca4f86e55aa5a34485ed9a9ee1cd0618452c718c082
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `nats-streaming:0.8.0-beta-linux` - linux; amd64

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

## `nats-streaming:0.8.0-beta-nanoserver`

```console
$ docker pull nats-streaming@sha256:2cc75e13e7974f51451602a17289c6380c1d450fcd82cc900b3d253f7c36f1b9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2007; amd64

### `nats-streaming:0.8.0-beta-nanoserver` - windows version 10.0.14393.2007; amd64

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

## `nats-streaming:0.8.0-beta-windowsservercore`

```console
$ docker pull nats-streaming@sha256:5fbb29c132fd4d539cd20b7d196de8d47b467b09f3e06ecbee288671d9276680
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2007; amd64

### `nats-streaming:0.8.0-beta-windowsservercore` - windows version 10.0.14393.2007; amd64

```console
$ docker pull nats-streaming@sha256:5eb732b34b7330e5835d0d3c44f624d8f0084433e1d4471266842ef064848354
```

-	Docker Version: 17.06.1-ee-2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 GB (5377850735 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cd5ab0ddfc38ee607b4fb23fcb60cf7c9b2a506fc44b8692f727d5f86f6f0265`
-	Default Command: `["nats-streaming-server","-m","8222"]`

```dockerfile
# Tue, 13 Dec 2016 10:53:31 GMT
RUN Apply image 10.0.14393.0
# Thu, 04 Jan 2018 20:07:32 GMT
RUN Install update 10.0.14393.2007
# Thu, 04 Jan 2018 23:30:35 GMT
RUN cmd /S /C #(nop)  ENV NATS_DOCKERIZED=1
# Thu, 04 Jan 2018 23:30:36 GMT
RUN cmd /S /C #(nop) WORKDIR C:\nats-streaming-server
# Tue, 30 Jan 2018 23:20:56 GMT
RUN cmd /S /C #(nop) COPY file:ae19dadf60c6d6e7083eeb64f689e0e35a8e3a0ac783cfd493f64ad62296e5d1 in nats-streaming-server.exe 
# Tue, 30 Jan 2018 23:20:56 GMT
RUN cmd /S /C #(nop)  EXPOSE 4222/tcp 8222/tcp
# Tue, 30 Jan 2018 23:20:57 GMT
RUN cmd /S /C #(nop)  CMD ["nats-streaming-server" "-m" "8222"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 13 Dec 2016 10:53:31 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:449343c9d7e2919413898dc8a7e8780ef164b76a3b9dd19de104706edf05113a`  
		Last Modified: Thu, 04 Jan 2018 20:07:32 GMT  
		Size: 1.3 GB (1304019288 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:992d160bd07e67042bb0ffc079852f4af6ea6cf64c81787c3b6fc0b14f6060f8`  
		Last Modified: Thu, 04 Jan 2018 23:31:02 GMT  
		Size: 1.2 KB (1173 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aab1bc3015f4327e05866390ff008dd5ecb749bfffb1ca922cb3e2ae20b02299`  
		Last Modified: Thu, 04 Jan 2018 23:31:02 GMT  
		Size: 1.4 KB (1366 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d7ddc080cd021703fd8899c3f9d2da4d253dbaf6ef235c0c63de1e992ed7319`  
		Last Modified: Tue, 30 Jan 2018 23:21:20 GMT  
		Size: 3.8 MB (3840629 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9aaf8df80c41298d43c6b186fad2f86ae8b4d08fada3ccfae9266eb693feef64`  
		Last Modified: Tue, 30 Jan 2018 23:21:19 GMT  
		Size: 1.2 KB (1181 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40362d4675708304fed9cae60f8fc44025c9ccbc7d925f9740f22a1e6e7fd681`  
		Last Modified: Tue, 30 Jan 2018 23:21:19 GMT  
		Size: 1.2 KB (1198 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nats-streaming:latest`

```console
$ docker pull nats-streaming@sha256:bb83514b125d8d79457e49ae2a86891b214fa8dbb7fe470a274fa5f8d0d3b9b9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
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

## `nats-streaming:linux`

```console
$ docker pull nats-streaming@sha256:d909edec90bbb0f354f6aca4f86e55aa5a34485ed9a9ee1cd0618452c718c082
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `nats-streaming:linux` - linux; amd64

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

## `nats-streaming:nanoserver`

```console
$ docker pull nats-streaming@sha256:2cc75e13e7974f51451602a17289c6380c1d450fcd82cc900b3d253f7c36f1b9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2007; amd64

### `nats-streaming:nanoserver` - windows version 10.0.14393.2007; amd64

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

## `nats-streaming:windowsservercore`

```console
$ docker pull nats-streaming@sha256:5fbb29c132fd4d539cd20b7d196de8d47b467b09f3e06ecbee288671d9276680
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2007; amd64

### `nats-streaming:windowsservercore` - windows version 10.0.14393.2007; amd64

```console
$ docker pull nats-streaming@sha256:5eb732b34b7330e5835d0d3c44f624d8f0084433e1d4471266842ef064848354
```

-	Docker Version: 17.06.1-ee-2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 GB (5377850735 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cd5ab0ddfc38ee607b4fb23fcb60cf7c9b2a506fc44b8692f727d5f86f6f0265`
-	Default Command: `["nats-streaming-server","-m","8222"]`

```dockerfile
# Tue, 13 Dec 2016 10:53:31 GMT
RUN Apply image 10.0.14393.0
# Thu, 04 Jan 2018 20:07:32 GMT
RUN Install update 10.0.14393.2007
# Thu, 04 Jan 2018 23:30:35 GMT
RUN cmd /S /C #(nop)  ENV NATS_DOCKERIZED=1
# Thu, 04 Jan 2018 23:30:36 GMT
RUN cmd /S /C #(nop) WORKDIR C:\nats-streaming-server
# Tue, 30 Jan 2018 23:20:56 GMT
RUN cmd /S /C #(nop) COPY file:ae19dadf60c6d6e7083eeb64f689e0e35a8e3a0ac783cfd493f64ad62296e5d1 in nats-streaming-server.exe 
# Tue, 30 Jan 2018 23:20:56 GMT
RUN cmd /S /C #(nop)  EXPOSE 4222/tcp 8222/tcp
# Tue, 30 Jan 2018 23:20:57 GMT
RUN cmd /S /C #(nop)  CMD ["nats-streaming-server" "-m" "8222"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 13 Dec 2016 10:53:31 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:449343c9d7e2919413898dc8a7e8780ef164b76a3b9dd19de104706edf05113a`  
		Last Modified: Thu, 04 Jan 2018 20:07:32 GMT  
		Size: 1.3 GB (1304019288 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:992d160bd07e67042bb0ffc079852f4af6ea6cf64c81787c3b6fc0b14f6060f8`  
		Last Modified: Thu, 04 Jan 2018 23:31:02 GMT  
		Size: 1.2 KB (1173 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aab1bc3015f4327e05866390ff008dd5ecb749bfffb1ca922cb3e2ae20b02299`  
		Last Modified: Thu, 04 Jan 2018 23:31:02 GMT  
		Size: 1.4 KB (1366 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d7ddc080cd021703fd8899c3f9d2da4d253dbaf6ef235c0c63de1e992ed7319`  
		Last Modified: Tue, 30 Jan 2018 23:21:20 GMT  
		Size: 3.8 MB (3840629 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9aaf8df80c41298d43c6b186fad2f86ae8b4d08fada3ccfae9266eb693feef64`  
		Last Modified: Tue, 30 Jan 2018 23:21:19 GMT  
		Size: 1.2 KB (1181 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40362d4675708304fed9cae60f8fc44025c9ccbc7d925f9740f22a1e6e7fd681`  
		Last Modified: Tue, 30 Jan 2018 23:21:19 GMT  
		Size: 1.2 KB (1198 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
