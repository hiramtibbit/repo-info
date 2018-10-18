<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `nats-streaming`

-	[`nats-streaming:0.11.2`](#nats-streaming0112)
-	[`nats-streaming:0.11.2-linux`](#nats-streaming0112-linux)
-	[`nats-streaming:0.11.2-nanoserver`](#nats-streaming0112-nanoserver)
-	[`nats-streaming:0.11.2-windowsservercore`](#nats-streaming0112-windowsservercore)
-	[`nats-streaming:latest`](#nats-streaminglatest)
-	[`nats-streaming:linux`](#nats-streaminglinux)
-	[`nats-streaming:nanoserver`](#nats-streamingnanoserver)
-	[`nats-streaming:windowsservercore`](#nats-streamingwindowsservercore)

## `nats-streaming:0.11.2`

```console
$ docker pull nats-streaming@sha256:d70706ce2e92efa6daa193731cd3aec98aedf3c15c51c2cf5b7a6bbc80a43044
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	windows version 10.0.14393.2551; amd64

### `nats-streaming:0.11.2` - linux; amd64

```console
$ docker pull nats-streaming@sha256:6b0c76c6a6570ad066a20a32d0de15e4e023524c5eac7076fa765ec91a12ff67
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.6 MB (4642863 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fdbad19bf11e580b1ac85e830909d8f76d69afaa5ea7c9bfad9b11e9722852c8`
-	Entrypoint: `["\/nats-streaming-server"]`
-	Default Command: `["-m","8222"]`

```dockerfile
# Thu, 18 Oct 2018 00:19:49 GMT
COPY file:b1d07409ee412c0b1d850da7b2e7c8d746ef152bc800f60b65aa8991eb1c490b in /nats-streaming-server 
# Thu, 18 Oct 2018 00:19:49 GMT
EXPOSE 4222/tcp 8222/tcp
# Thu, 18 Oct 2018 00:19:49 GMT
ENTRYPOINT ["/nats-streaming-server"]
# Thu, 18 Oct 2018 00:19:49 GMT
CMD ["-m" "8222"]
```

-	Layers:
	-	`sha256:af90b4afe8a451aeb8fd868d23b13f9e57c712f79afce23afd9b7474109bab07`  
		Last Modified: Thu, 18 Oct 2018 00:20:04 GMT  
		Size: 4.6 MB (4642863 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `nats-streaming:0.11.2` - linux; arm variant v6

```console
$ docker pull nats-streaming@sha256:7e017539fea5acae9f6721b853ee545159f74be7fcacd061351f1e0b977c3d1b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.4 MB (4369225 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:80cc3d6d7bdfd2f5e6ec84e1377d3c8d9452a148a386fe99eb30d20ea5287e68`
-	Entrypoint: `["\/nats-streaming-server"]`
-	Default Command: `["-m","8222"]`

```dockerfile
# Thu, 18 Oct 2018 07:51:58 GMT
COPY file:d1cfe35474f53ac26f378dc88a0d944e12e1f19dd93aaffc13d10dbcec24c944 in /nats-streaming-server 
# Thu, 18 Oct 2018 07:52:00 GMT
EXPOSE 4222/tcp 8222/tcp
# Thu, 18 Oct 2018 07:52:01 GMT
ENTRYPOINT ["/nats-streaming-server"]
# Thu, 18 Oct 2018 07:52:01 GMT
CMD ["-m" "8222"]
```

-	Layers:
	-	`sha256:7744388340988a91a8748b31ca29603ec2d9f6540ca23e8b959e9f3a2d5caecc`  
		Last Modified: Thu, 18 Oct 2018 07:52:13 GMT  
		Size: 4.4 MB (4369225 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `nats-streaming:0.11.2` - linux; arm variant v7

```console
$ docker pull nats-streaming@sha256:3773064c3045cc5b5f13b5ea01dd25629ddea82e6ef38b904d9641807c8ca280
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.4 MB (4365215 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4157ba5bd3e5fe8dd14fc9a311ffea11d351d583a6754ba076c5bc029ea49ef0`
-	Entrypoint: `["\/nats-streaming-server"]`
-	Default Command: `["-m","8222"]`

```dockerfile
# Thu, 18 Oct 2018 12:00:04 GMT
COPY file:7e06da67855238c6d3c0a8f01647dfb417319d12bb9215fcc3ba15dce85580dc in /nats-streaming-server 
# Thu, 18 Oct 2018 12:00:04 GMT
EXPOSE 4222/tcp 8222/tcp
# Thu, 18 Oct 2018 12:00:05 GMT
ENTRYPOINT ["/nats-streaming-server"]
# Thu, 18 Oct 2018 12:00:05 GMT
CMD ["-m" "8222"]
```

-	Layers:
	-	`sha256:c415cdacdbd92ff8df33831be11e3bb15d7cf05fd47fba0d6f94d23d49570e4d`  
		Last Modified: Thu, 18 Oct 2018 12:00:19 GMT  
		Size: 4.4 MB (4365215 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `nats-streaming:0.11.2` - linux; arm64 variant v8

```console
$ docker pull nats-streaming@sha256:e9ce6d5b225a2c1add9ddc4a65001028a418d45373952aec668eff8a6b91a051
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.2 MB (4229857 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dd9ccb33dcd6b30ed8cd7ea1362d154c18f09d44458fd9166106ca414e7a66f3`
-	Entrypoint: `["\/nats-streaming-server"]`
-	Default Command: `["-m","8222"]`

```dockerfile
# Thu, 18 Oct 2018 09:03:44 GMT
COPY file:bb96676a992e9f10dc28480f26624d6502e740dcd9ec98fc35a5e9f7390eb988 in /nats-streaming-server 
# Thu, 18 Oct 2018 09:03:44 GMT
EXPOSE 4222/tcp 8222/tcp
# Thu, 18 Oct 2018 09:03:45 GMT
ENTRYPOINT ["/nats-streaming-server"]
# Thu, 18 Oct 2018 09:03:45 GMT
CMD ["-m" "8222"]
```

-	Layers:
	-	`sha256:6cef3a747ff7aaa521ae1d5e39ab03fd0698a9d1a4078bc6ab270fd4d0f68acc`  
		Last Modified: Thu, 18 Oct 2018 09:04:06 GMT  
		Size: 4.2 MB (4229857 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `nats-streaming:0.11.2` - windows version 10.0.14393.2551; amd64

```console
$ docker pull nats-streaming@sha256:bbdcf3b33160335382e9ccb52ac4b51987810203ca1cf60d4b6c34d90ea75fee
```

-	Docker Version: 17.06.2-ee-13
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **440.1 MB (440115031 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9e031c78538c19bec164723804750da318ad5a2010dcf4bacae11b200d4bcf65`
-	Default Command: `["nats-streaming-server","-m","8222"]`

```dockerfile
# Mon, 17 Sep 2018 20:04:15 GMT
RUN Apply image 10.0.14393.0
# Tue, 09 Oct 2018 18:02:39 GMT
RUN Install update 10.0.14393.2551
# Thu, 18 Oct 2018 09:15:44 GMT
RUN cmd /S /C #(nop)  ENV NATS_DOCKERIZED=1
# Thu, 18 Oct 2018 09:15:45 GMT
RUN cmd /S /C #(nop) WORKDIR C:\nats-streaming-server
# Thu, 18 Oct 2018 09:15:49 GMT
RUN cmd /S /C #(nop) COPY file:dea4869748d25bfafa57d1cd96f9ebd57fef1ffb0867640af3237f418f943f22 in nats-streaming-server.exe 
# Thu, 18 Oct 2018 09:15:50 GMT
RUN cmd /S /C #(nop)  EXPOSE 4222/tcp 8222/tcp
# Thu, 18 Oct 2018 09:15:51 GMT
RUN cmd /S /C #(nop)  CMD ["nats-streaming-server" "-m" "8222"]
```

-	Layers:
	-	`sha256:bce2fbc256ea437a87dadac2f69aabd25bed4f56255549090056c1131fad0277`  
		Last Modified: Mon, 17 Sep 2018 20:04:15 GMT  
		Size: 252.7 MB (252691002 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:6f2071dcd7294537bba55b3061704ef1370748e91982193b9e0fa4ebc114589b`  
		Last Modified: Tue, 09 Oct 2018 18:02:39 GMT  
		Size: 182.7 MB (182705816 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:4e5a796061600081460d871399481f2bc57ea00372e67fef706e894d5cd5c51d`  
		Last Modified: Thu, 18 Oct 2018 09:16:15 GMT  
		Size: 943.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:432ffeb0e9c51f071a02162afb29359d174f7a73d85a228034ff31bce4e8db20`  
		Last Modified: Thu, 18 Oct 2018 09:16:15 GMT  
		Size: 1.2 KB (1178 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8e79dd10c6097c664386acadb8c3378375c4878d4fb49da5238e08b4f493a20`  
		Last Modified: Thu, 18 Oct 2018 09:16:17 GMT  
		Size: 4.7 MB (4714192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:393cd0f68d3d25311c6c52533d4132ebd0417f82d46d904f184a4654ee496173`  
		Last Modified: Thu, 18 Oct 2018 09:16:15 GMT  
		Size: 949.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8e70d1753eb4596466ae05d24c127ea10ceab6b1556dd7ffa51102f7af7cc3e`  
		Last Modified: Thu, 18 Oct 2018 09:16:15 GMT  
		Size: 951.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nats-streaming:0.11.2-linux`

```console
$ docker pull nats-streaming@sha256:6cc021f89e10130bb4e6a5c40631e11ee06a224b27f38798a31ea0526c8f11cd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `nats-streaming:0.11.2-linux` - linux; amd64

```console
$ docker pull nats-streaming@sha256:6b0c76c6a6570ad066a20a32d0de15e4e023524c5eac7076fa765ec91a12ff67
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.6 MB (4642863 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fdbad19bf11e580b1ac85e830909d8f76d69afaa5ea7c9bfad9b11e9722852c8`
-	Entrypoint: `["\/nats-streaming-server"]`
-	Default Command: `["-m","8222"]`

```dockerfile
# Thu, 18 Oct 2018 00:19:49 GMT
COPY file:b1d07409ee412c0b1d850da7b2e7c8d746ef152bc800f60b65aa8991eb1c490b in /nats-streaming-server 
# Thu, 18 Oct 2018 00:19:49 GMT
EXPOSE 4222/tcp 8222/tcp
# Thu, 18 Oct 2018 00:19:49 GMT
ENTRYPOINT ["/nats-streaming-server"]
# Thu, 18 Oct 2018 00:19:49 GMT
CMD ["-m" "8222"]
```

-	Layers:
	-	`sha256:af90b4afe8a451aeb8fd868d23b13f9e57c712f79afce23afd9b7474109bab07`  
		Last Modified: Thu, 18 Oct 2018 00:20:04 GMT  
		Size: 4.6 MB (4642863 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `nats-streaming:0.11.2-linux` - linux; arm variant v6

```console
$ docker pull nats-streaming@sha256:7e017539fea5acae9f6721b853ee545159f74be7fcacd061351f1e0b977c3d1b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.4 MB (4369225 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:80cc3d6d7bdfd2f5e6ec84e1377d3c8d9452a148a386fe99eb30d20ea5287e68`
-	Entrypoint: `["\/nats-streaming-server"]`
-	Default Command: `["-m","8222"]`

```dockerfile
# Thu, 18 Oct 2018 07:51:58 GMT
COPY file:d1cfe35474f53ac26f378dc88a0d944e12e1f19dd93aaffc13d10dbcec24c944 in /nats-streaming-server 
# Thu, 18 Oct 2018 07:52:00 GMT
EXPOSE 4222/tcp 8222/tcp
# Thu, 18 Oct 2018 07:52:01 GMT
ENTRYPOINT ["/nats-streaming-server"]
# Thu, 18 Oct 2018 07:52:01 GMT
CMD ["-m" "8222"]
```

-	Layers:
	-	`sha256:7744388340988a91a8748b31ca29603ec2d9f6540ca23e8b959e9f3a2d5caecc`  
		Last Modified: Thu, 18 Oct 2018 07:52:13 GMT  
		Size: 4.4 MB (4369225 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `nats-streaming:0.11.2-linux` - linux; arm variant v7

```console
$ docker pull nats-streaming@sha256:3773064c3045cc5b5f13b5ea01dd25629ddea82e6ef38b904d9641807c8ca280
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.4 MB (4365215 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4157ba5bd3e5fe8dd14fc9a311ffea11d351d583a6754ba076c5bc029ea49ef0`
-	Entrypoint: `["\/nats-streaming-server"]`
-	Default Command: `["-m","8222"]`

```dockerfile
# Thu, 18 Oct 2018 12:00:04 GMT
COPY file:7e06da67855238c6d3c0a8f01647dfb417319d12bb9215fcc3ba15dce85580dc in /nats-streaming-server 
# Thu, 18 Oct 2018 12:00:04 GMT
EXPOSE 4222/tcp 8222/tcp
# Thu, 18 Oct 2018 12:00:05 GMT
ENTRYPOINT ["/nats-streaming-server"]
# Thu, 18 Oct 2018 12:00:05 GMT
CMD ["-m" "8222"]
```

-	Layers:
	-	`sha256:c415cdacdbd92ff8df33831be11e3bb15d7cf05fd47fba0d6f94d23d49570e4d`  
		Last Modified: Thu, 18 Oct 2018 12:00:19 GMT  
		Size: 4.4 MB (4365215 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `nats-streaming:0.11.2-linux` - linux; arm64 variant v8

```console
$ docker pull nats-streaming@sha256:e9ce6d5b225a2c1add9ddc4a65001028a418d45373952aec668eff8a6b91a051
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.2 MB (4229857 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dd9ccb33dcd6b30ed8cd7ea1362d154c18f09d44458fd9166106ca414e7a66f3`
-	Entrypoint: `["\/nats-streaming-server"]`
-	Default Command: `["-m","8222"]`

```dockerfile
# Thu, 18 Oct 2018 09:03:44 GMT
COPY file:bb96676a992e9f10dc28480f26624d6502e740dcd9ec98fc35a5e9f7390eb988 in /nats-streaming-server 
# Thu, 18 Oct 2018 09:03:44 GMT
EXPOSE 4222/tcp 8222/tcp
# Thu, 18 Oct 2018 09:03:45 GMT
ENTRYPOINT ["/nats-streaming-server"]
# Thu, 18 Oct 2018 09:03:45 GMT
CMD ["-m" "8222"]
```

-	Layers:
	-	`sha256:6cef3a747ff7aaa521ae1d5e39ab03fd0698a9d1a4078bc6ab270fd4d0f68acc`  
		Last Modified: Thu, 18 Oct 2018 09:04:06 GMT  
		Size: 4.2 MB (4229857 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nats-streaming:0.11.2-nanoserver`

```console
$ docker pull nats-streaming@sha256:b7cbf5b51f54f02f694bd4d9f70782168a79615e183db23389826a296b69fc8a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2551; amd64

### `nats-streaming:0.11.2-nanoserver` - windows version 10.0.14393.2551; amd64

```console
$ docker pull nats-streaming@sha256:bbdcf3b33160335382e9ccb52ac4b51987810203ca1cf60d4b6c34d90ea75fee
```

-	Docker Version: 17.06.2-ee-13
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **440.1 MB (440115031 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9e031c78538c19bec164723804750da318ad5a2010dcf4bacae11b200d4bcf65`
-	Default Command: `["nats-streaming-server","-m","8222"]`

```dockerfile
# Mon, 17 Sep 2018 20:04:15 GMT
RUN Apply image 10.0.14393.0
# Tue, 09 Oct 2018 18:02:39 GMT
RUN Install update 10.0.14393.2551
# Thu, 18 Oct 2018 09:15:44 GMT
RUN cmd /S /C #(nop)  ENV NATS_DOCKERIZED=1
# Thu, 18 Oct 2018 09:15:45 GMT
RUN cmd /S /C #(nop) WORKDIR C:\nats-streaming-server
# Thu, 18 Oct 2018 09:15:49 GMT
RUN cmd /S /C #(nop) COPY file:dea4869748d25bfafa57d1cd96f9ebd57fef1ffb0867640af3237f418f943f22 in nats-streaming-server.exe 
# Thu, 18 Oct 2018 09:15:50 GMT
RUN cmd /S /C #(nop)  EXPOSE 4222/tcp 8222/tcp
# Thu, 18 Oct 2018 09:15:51 GMT
RUN cmd /S /C #(nop)  CMD ["nats-streaming-server" "-m" "8222"]
```

-	Layers:
	-	`sha256:bce2fbc256ea437a87dadac2f69aabd25bed4f56255549090056c1131fad0277`  
		Last Modified: Mon, 17 Sep 2018 20:04:15 GMT  
		Size: 252.7 MB (252691002 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:6f2071dcd7294537bba55b3061704ef1370748e91982193b9e0fa4ebc114589b`  
		Last Modified: Tue, 09 Oct 2018 18:02:39 GMT  
		Size: 182.7 MB (182705816 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:4e5a796061600081460d871399481f2bc57ea00372e67fef706e894d5cd5c51d`  
		Last Modified: Thu, 18 Oct 2018 09:16:15 GMT  
		Size: 943.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:432ffeb0e9c51f071a02162afb29359d174f7a73d85a228034ff31bce4e8db20`  
		Last Modified: Thu, 18 Oct 2018 09:16:15 GMT  
		Size: 1.2 KB (1178 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8e79dd10c6097c664386acadb8c3378375c4878d4fb49da5238e08b4f493a20`  
		Last Modified: Thu, 18 Oct 2018 09:16:17 GMT  
		Size: 4.7 MB (4714192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:393cd0f68d3d25311c6c52533d4132ebd0417f82d46d904f184a4654ee496173`  
		Last Modified: Thu, 18 Oct 2018 09:16:15 GMT  
		Size: 949.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8e70d1753eb4596466ae05d24c127ea10ceab6b1556dd7ffa51102f7af7cc3e`  
		Last Modified: Thu, 18 Oct 2018 09:16:15 GMT  
		Size: 951.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nats-streaming:0.11.2-windowsservercore`

```console
$ docker pull nats-streaming@sha256:00c61ac80392a7bc1a97ec78a33f90811a398164feae19c157d8a9ee267b9cfd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2551; amd64

### `nats-streaming:0.11.2-windowsservercore` - windows version 10.0.14393.2551; amd64

```console
$ docker pull nats-streaming@sha256:9e5de2ff14dd62fa6eba28a2b9fa5c917764ecbf2f824e2cec307c2d35f397ae
```

-	Docker Version: 17.06.2-ee-13
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 GB (5601830368 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4f50ff5e613c087153a73fed1c5943a3d6a2f3246a5f0ff9fb8aad352f41e236`
-	Default Command: `["nats-streaming-server","-m","8222"]`

```dockerfile
# Tue, 18 Sep 2018 20:20:50 GMT
RUN Apply image 10.0.14393.0
# Tue, 09 Oct 2018 18:03:17 GMT
RUN Install update 10.0.14393.2551
# Thu, 18 Oct 2018 09:15:56 GMT
RUN cmd /S /C #(nop)  ENV NATS_DOCKERIZED=1
# Thu, 18 Oct 2018 09:15:57 GMT
RUN cmd /S /C #(nop) WORKDIR C:\nats-streaming-server
# Thu, 18 Oct 2018 09:16:00 GMT
RUN cmd /S /C #(nop) COPY file:dea4869748d25bfafa57d1cd96f9ebd57fef1ffb0867640af3237f418f943f22 in nats-streaming-server.exe 
# Thu, 18 Oct 2018 09:16:01 GMT
RUN cmd /S /C #(nop)  EXPOSE 4222/tcp 8222/tcp
# Thu, 18 Oct 2018 09:16:02 GMT
RUN cmd /S /C #(nop)  CMD ["nats-streaming-server" "-m" "8222"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 18 Sep 2018 20:20:50 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:c0f6863f3dd498ab56cdd308637630f888fe646de403284f2c5392ba885bdd8e`  
		Last Modified: Tue, 09 Oct 2018 18:03:17 GMT  
		Size: 1.5 GB (1527125035 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:1c83039b04fe98f730860b3ceade50a5642220bd1b3d54eef59d90f9baad262a`  
		Last Modified: Thu, 18 Oct 2018 09:16:27 GMT  
		Size: 1.2 KB (1196 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49727d0f415de0df86b0db647cd156cbc886744dc0d0d82e250e0cc0bc8024d9`  
		Last Modified: Thu, 18 Oct 2018 09:16:27 GMT  
		Size: 1.4 KB (1358 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8460b6a9c2fe18b92d5931a6f9c19b1321a9333e651de2b902fe4e1fc3620ba8`  
		Last Modified: Thu, 18 Oct 2018 09:16:29 GMT  
		Size: 4.7 MB (4714472 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:745b5267ddb1035b71f36a79df541c8c8d0f055b57dad1b7dc2c96af9b660555`  
		Last Modified: Thu, 18 Oct 2018 09:16:28 GMT  
		Size: 1.2 KB (1205 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2aea377447789e8efe537148621809e17a23cb7947d7dcbfef047a03129fef23`  
		Last Modified: Thu, 18 Oct 2018 09:16:27 GMT  
		Size: 1.2 KB (1202 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nats-streaming:latest`

```console
$ docker pull nats-streaming@sha256:d70706ce2e92efa6daa193731cd3aec98aedf3c15c51c2cf5b7a6bbc80a43044
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	windows version 10.0.14393.2551; amd64

### `nats-streaming:latest` - linux; amd64

```console
$ docker pull nats-streaming@sha256:6b0c76c6a6570ad066a20a32d0de15e4e023524c5eac7076fa765ec91a12ff67
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.6 MB (4642863 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fdbad19bf11e580b1ac85e830909d8f76d69afaa5ea7c9bfad9b11e9722852c8`
-	Entrypoint: `["\/nats-streaming-server"]`
-	Default Command: `["-m","8222"]`

```dockerfile
# Thu, 18 Oct 2018 00:19:49 GMT
COPY file:b1d07409ee412c0b1d850da7b2e7c8d746ef152bc800f60b65aa8991eb1c490b in /nats-streaming-server 
# Thu, 18 Oct 2018 00:19:49 GMT
EXPOSE 4222/tcp 8222/tcp
# Thu, 18 Oct 2018 00:19:49 GMT
ENTRYPOINT ["/nats-streaming-server"]
# Thu, 18 Oct 2018 00:19:49 GMT
CMD ["-m" "8222"]
```

-	Layers:
	-	`sha256:af90b4afe8a451aeb8fd868d23b13f9e57c712f79afce23afd9b7474109bab07`  
		Last Modified: Thu, 18 Oct 2018 00:20:04 GMT  
		Size: 4.6 MB (4642863 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `nats-streaming:latest` - linux; arm variant v6

```console
$ docker pull nats-streaming@sha256:7e017539fea5acae9f6721b853ee545159f74be7fcacd061351f1e0b977c3d1b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.4 MB (4369225 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:80cc3d6d7bdfd2f5e6ec84e1377d3c8d9452a148a386fe99eb30d20ea5287e68`
-	Entrypoint: `["\/nats-streaming-server"]`
-	Default Command: `["-m","8222"]`

```dockerfile
# Thu, 18 Oct 2018 07:51:58 GMT
COPY file:d1cfe35474f53ac26f378dc88a0d944e12e1f19dd93aaffc13d10dbcec24c944 in /nats-streaming-server 
# Thu, 18 Oct 2018 07:52:00 GMT
EXPOSE 4222/tcp 8222/tcp
# Thu, 18 Oct 2018 07:52:01 GMT
ENTRYPOINT ["/nats-streaming-server"]
# Thu, 18 Oct 2018 07:52:01 GMT
CMD ["-m" "8222"]
```

-	Layers:
	-	`sha256:7744388340988a91a8748b31ca29603ec2d9f6540ca23e8b959e9f3a2d5caecc`  
		Last Modified: Thu, 18 Oct 2018 07:52:13 GMT  
		Size: 4.4 MB (4369225 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `nats-streaming:latest` - linux; arm variant v7

```console
$ docker pull nats-streaming@sha256:3773064c3045cc5b5f13b5ea01dd25629ddea82e6ef38b904d9641807c8ca280
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.4 MB (4365215 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4157ba5bd3e5fe8dd14fc9a311ffea11d351d583a6754ba076c5bc029ea49ef0`
-	Entrypoint: `["\/nats-streaming-server"]`
-	Default Command: `["-m","8222"]`

```dockerfile
# Thu, 18 Oct 2018 12:00:04 GMT
COPY file:7e06da67855238c6d3c0a8f01647dfb417319d12bb9215fcc3ba15dce85580dc in /nats-streaming-server 
# Thu, 18 Oct 2018 12:00:04 GMT
EXPOSE 4222/tcp 8222/tcp
# Thu, 18 Oct 2018 12:00:05 GMT
ENTRYPOINT ["/nats-streaming-server"]
# Thu, 18 Oct 2018 12:00:05 GMT
CMD ["-m" "8222"]
```

-	Layers:
	-	`sha256:c415cdacdbd92ff8df33831be11e3bb15d7cf05fd47fba0d6f94d23d49570e4d`  
		Last Modified: Thu, 18 Oct 2018 12:00:19 GMT  
		Size: 4.4 MB (4365215 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `nats-streaming:latest` - linux; arm64 variant v8

```console
$ docker pull nats-streaming@sha256:e9ce6d5b225a2c1add9ddc4a65001028a418d45373952aec668eff8a6b91a051
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.2 MB (4229857 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dd9ccb33dcd6b30ed8cd7ea1362d154c18f09d44458fd9166106ca414e7a66f3`
-	Entrypoint: `["\/nats-streaming-server"]`
-	Default Command: `["-m","8222"]`

```dockerfile
# Thu, 18 Oct 2018 09:03:44 GMT
COPY file:bb96676a992e9f10dc28480f26624d6502e740dcd9ec98fc35a5e9f7390eb988 in /nats-streaming-server 
# Thu, 18 Oct 2018 09:03:44 GMT
EXPOSE 4222/tcp 8222/tcp
# Thu, 18 Oct 2018 09:03:45 GMT
ENTRYPOINT ["/nats-streaming-server"]
# Thu, 18 Oct 2018 09:03:45 GMT
CMD ["-m" "8222"]
```

-	Layers:
	-	`sha256:6cef3a747ff7aaa521ae1d5e39ab03fd0698a9d1a4078bc6ab270fd4d0f68acc`  
		Last Modified: Thu, 18 Oct 2018 09:04:06 GMT  
		Size: 4.2 MB (4229857 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `nats-streaming:latest` - windows version 10.0.14393.2551; amd64

```console
$ docker pull nats-streaming@sha256:bbdcf3b33160335382e9ccb52ac4b51987810203ca1cf60d4b6c34d90ea75fee
```

-	Docker Version: 17.06.2-ee-13
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **440.1 MB (440115031 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9e031c78538c19bec164723804750da318ad5a2010dcf4bacae11b200d4bcf65`
-	Default Command: `["nats-streaming-server","-m","8222"]`

```dockerfile
# Mon, 17 Sep 2018 20:04:15 GMT
RUN Apply image 10.0.14393.0
# Tue, 09 Oct 2018 18:02:39 GMT
RUN Install update 10.0.14393.2551
# Thu, 18 Oct 2018 09:15:44 GMT
RUN cmd /S /C #(nop)  ENV NATS_DOCKERIZED=1
# Thu, 18 Oct 2018 09:15:45 GMT
RUN cmd /S /C #(nop) WORKDIR C:\nats-streaming-server
# Thu, 18 Oct 2018 09:15:49 GMT
RUN cmd /S /C #(nop) COPY file:dea4869748d25bfafa57d1cd96f9ebd57fef1ffb0867640af3237f418f943f22 in nats-streaming-server.exe 
# Thu, 18 Oct 2018 09:15:50 GMT
RUN cmd /S /C #(nop)  EXPOSE 4222/tcp 8222/tcp
# Thu, 18 Oct 2018 09:15:51 GMT
RUN cmd /S /C #(nop)  CMD ["nats-streaming-server" "-m" "8222"]
```

-	Layers:
	-	`sha256:bce2fbc256ea437a87dadac2f69aabd25bed4f56255549090056c1131fad0277`  
		Last Modified: Mon, 17 Sep 2018 20:04:15 GMT  
		Size: 252.7 MB (252691002 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:6f2071dcd7294537bba55b3061704ef1370748e91982193b9e0fa4ebc114589b`  
		Last Modified: Tue, 09 Oct 2018 18:02:39 GMT  
		Size: 182.7 MB (182705816 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:4e5a796061600081460d871399481f2bc57ea00372e67fef706e894d5cd5c51d`  
		Last Modified: Thu, 18 Oct 2018 09:16:15 GMT  
		Size: 943.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:432ffeb0e9c51f071a02162afb29359d174f7a73d85a228034ff31bce4e8db20`  
		Last Modified: Thu, 18 Oct 2018 09:16:15 GMT  
		Size: 1.2 KB (1178 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8e79dd10c6097c664386acadb8c3378375c4878d4fb49da5238e08b4f493a20`  
		Last Modified: Thu, 18 Oct 2018 09:16:17 GMT  
		Size: 4.7 MB (4714192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:393cd0f68d3d25311c6c52533d4132ebd0417f82d46d904f184a4654ee496173`  
		Last Modified: Thu, 18 Oct 2018 09:16:15 GMT  
		Size: 949.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8e70d1753eb4596466ae05d24c127ea10ceab6b1556dd7ffa51102f7af7cc3e`  
		Last Modified: Thu, 18 Oct 2018 09:16:15 GMT  
		Size: 951.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nats-streaming:linux`

```console
$ docker pull nats-streaming@sha256:6cc021f89e10130bb4e6a5c40631e11ee06a224b27f38798a31ea0526c8f11cd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `nats-streaming:linux` - linux; amd64

```console
$ docker pull nats-streaming@sha256:6b0c76c6a6570ad066a20a32d0de15e4e023524c5eac7076fa765ec91a12ff67
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.6 MB (4642863 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fdbad19bf11e580b1ac85e830909d8f76d69afaa5ea7c9bfad9b11e9722852c8`
-	Entrypoint: `["\/nats-streaming-server"]`
-	Default Command: `["-m","8222"]`

```dockerfile
# Thu, 18 Oct 2018 00:19:49 GMT
COPY file:b1d07409ee412c0b1d850da7b2e7c8d746ef152bc800f60b65aa8991eb1c490b in /nats-streaming-server 
# Thu, 18 Oct 2018 00:19:49 GMT
EXPOSE 4222/tcp 8222/tcp
# Thu, 18 Oct 2018 00:19:49 GMT
ENTRYPOINT ["/nats-streaming-server"]
# Thu, 18 Oct 2018 00:19:49 GMT
CMD ["-m" "8222"]
```

-	Layers:
	-	`sha256:af90b4afe8a451aeb8fd868d23b13f9e57c712f79afce23afd9b7474109bab07`  
		Last Modified: Thu, 18 Oct 2018 00:20:04 GMT  
		Size: 4.6 MB (4642863 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `nats-streaming:linux` - linux; arm variant v6

```console
$ docker pull nats-streaming@sha256:7e017539fea5acae9f6721b853ee545159f74be7fcacd061351f1e0b977c3d1b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.4 MB (4369225 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:80cc3d6d7bdfd2f5e6ec84e1377d3c8d9452a148a386fe99eb30d20ea5287e68`
-	Entrypoint: `["\/nats-streaming-server"]`
-	Default Command: `["-m","8222"]`

```dockerfile
# Thu, 18 Oct 2018 07:51:58 GMT
COPY file:d1cfe35474f53ac26f378dc88a0d944e12e1f19dd93aaffc13d10dbcec24c944 in /nats-streaming-server 
# Thu, 18 Oct 2018 07:52:00 GMT
EXPOSE 4222/tcp 8222/tcp
# Thu, 18 Oct 2018 07:52:01 GMT
ENTRYPOINT ["/nats-streaming-server"]
# Thu, 18 Oct 2018 07:52:01 GMT
CMD ["-m" "8222"]
```

-	Layers:
	-	`sha256:7744388340988a91a8748b31ca29603ec2d9f6540ca23e8b959e9f3a2d5caecc`  
		Last Modified: Thu, 18 Oct 2018 07:52:13 GMT  
		Size: 4.4 MB (4369225 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `nats-streaming:linux` - linux; arm variant v7

```console
$ docker pull nats-streaming@sha256:3773064c3045cc5b5f13b5ea01dd25629ddea82e6ef38b904d9641807c8ca280
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.4 MB (4365215 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4157ba5bd3e5fe8dd14fc9a311ffea11d351d583a6754ba076c5bc029ea49ef0`
-	Entrypoint: `["\/nats-streaming-server"]`
-	Default Command: `["-m","8222"]`

```dockerfile
# Thu, 18 Oct 2018 12:00:04 GMT
COPY file:7e06da67855238c6d3c0a8f01647dfb417319d12bb9215fcc3ba15dce85580dc in /nats-streaming-server 
# Thu, 18 Oct 2018 12:00:04 GMT
EXPOSE 4222/tcp 8222/tcp
# Thu, 18 Oct 2018 12:00:05 GMT
ENTRYPOINT ["/nats-streaming-server"]
# Thu, 18 Oct 2018 12:00:05 GMT
CMD ["-m" "8222"]
```

-	Layers:
	-	`sha256:c415cdacdbd92ff8df33831be11e3bb15d7cf05fd47fba0d6f94d23d49570e4d`  
		Last Modified: Thu, 18 Oct 2018 12:00:19 GMT  
		Size: 4.4 MB (4365215 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `nats-streaming:linux` - linux; arm64 variant v8

```console
$ docker pull nats-streaming@sha256:e9ce6d5b225a2c1add9ddc4a65001028a418d45373952aec668eff8a6b91a051
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.2 MB (4229857 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dd9ccb33dcd6b30ed8cd7ea1362d154c18f09d44458fd9166106ca414e7a66f3`
-	Entrypoint: `["\/nats-streaming-server"]`
-	Default Command: `["-m","8222"]`

```dockerfile
# Thu, 18 Oct 2018 09:03:44 GMT
COPY file:bb96676a992e9f10dc28480f26624d6502e740dcd9ec98fc35a5e9f7390eb988 in /nats-streaming-server 
# Thu, 18 Oct 2018 09:03:44 GMT
EXPOSE 4222/tcp 8222/tcp
# Thu, 18 Oct 2018 09:03:45 GMT
ENTRYPOINT ["/nats-streaming-server"]
# Thu, 18 Oct 2018 09:03:45 GMT
CMD ["-m" "8222"]
```

-	Layers:
	-	`sha256:6cef3a747ff7aaa521ae1d5e39ab03fd0698a9d1a4078bc6ab270fd4d0f68acc`  
		Last Modified: Thu, 18 Oct 2018 09:04:06 GMT  
		Size: 4.2 MB (4229857 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nats-streaming:nanoserver`

```console
$ docker pull nats-streaming@sha256:b7cbf5b51f54f02f694bd4d9f70782168a79615e183db23389826a296b69fc8a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2551; amd64

### `nats-streaming:nanoserver` - windows version 10.0.14393.2551; amd64

```console
$ docker pull nats-streaming@sha256:bbdcf3b33160335382e9ccb52ac4b51987810203ca1cf60d4b6c34d90ea75fee
```

-	Docker Version: 17.06.2-ee-13
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **440.1 MB (440115031 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9e031c78538c19bec164723804750da318ad5a2010dcf4bacae11b200d4bcf65`
-	Default Command: `["nats-streaming-server","-m","8222"]`

```dockerfile
# Mon, 17 Sep 2018 20:04:15 GMT
RUN Apply image 10.0.14393.0
# Tue, 09 Oct 2018 18:02:39 GMT
RUN Install update 10.0.14393.2551
# Thu, 18 Oct 2018 09:15:44 GMT
RUN cmd /S /C #(nop)  ENV NATS_DOCKERIZED=1
# Thu, 18 Oct 2018 09:15:45 GMT
RUN cmd /S /C #(nop) WORKDIR C:\nats-streaming-server
# Thu, 18 Oct 2018 09:15:49 GMT
RUN cmd /S /C #(nop) COPY file:dea4869748d25bfafa57d1cd96f9ebd57fef1ffb0867640af3237f418f943f22 in nats-streaming-server.exe 
# Thu, 18 Oct 2018 09:15:50 GMT
RUN cmd /S /C #(nop)  EXPOSE 4222/tcp 8222/tcp
# Thu, 18 Oct 2018 09:15:51 GMT
RUN cmd /S /C #(nop)  CMD ["nats-streaming-server" "-m" "8222"]
```

-	Layers:
	-	`sha256:bce2fbc256ea437a87dadac2f69aabd25bed4f56255549090056c1131fad0277`  
		Last Modified: Mon, 17 Sep 2018 20:04:15 GMT  
		Size: 252.7 MB (252691002 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:6f2071dcd7294537bba55b3061704ef1370748e91982193b9e0fa4ebc114589b`  
		Last Modified: Tue, 09 Oct 2018 18:02:39 GMT  
		Size: 182.7 MB (182705816 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:4e5a796061600081460d871399481f2bc57ea00372e67fef706e894d5cd5c51d`  
		Last Modified: Thu, 18 Oct 2018 09:16:15 GMT  
		Size: 943.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:432ffeb0e9c51f071a02162afb29359d174f7a73d85a228034ff31bce4e8db20`  
		Last Modified: Thu, 18 Oct 2018 09:16:15 GMT  
		Size: 1.2 KB (1178 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8e79dd10c6097c664386acadb8c3378375c4878d4fb49da5238e08b4f493a20`  
		Last Modified: Thu, 18 Oct 2018 09:16:17 GMT  
		Size: 4.7 MB (4714192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:393cd0f68d3d25311c6c52533d4132ebd0417f82d46d904f184a4654ee496173`  
		Last Modified: Thu, 18 Oct 2018 09:16:15 GMT  
		Size: 949.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8e70d1753eb4596466ae05d24c127ea10ceab6b1556dd7ffa51102f7af7cc3e`  
		Last Modified: Thu, 18 Oct 2018 09:16:15 GMT  
		Size: 951.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nats-streaming:windowsservercore`

```console
$ docker pull nats-streaming@sha256:00c61ac80392a7bc1a97ec78a33f90811a398164feae19c157d8a9ee267b9cfd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2551; amd64

### `nats-streaming:windowsservercore` - windows version 10.0.14393.2551; amd64

```console
$ docker pull nats-streaming@sha256:9e5de2ff14dd62fa6eba28a2b9fa5c917764ecbf2f824e2cec307c2d35f397ae
```

-	Docker Version: 17.06.2-ee-13
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 GB (5601830368 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4f50ff5e613c087153a73fed1c5943a3d6a2f3246a5f0ff9fb8aad352f41e236`
-	Default Command: `["nats-streaming-server","-m","8222"]`

```dockerfile
# Tue, 18 Sep 2018 20:20:50 GMT
RUN Apply image 10.0.14393.0
# Tue, 09 Oct 2018 18:03:17 GMT
RUN Install update 10.0.14393.2551
# Thu, 18 Oct 2018 09:15:56 GMT
RUN cmd /S /C #(nop)  ENV NATS_DOCKERIZED=1
# Thu, 18 Oct 2018 09:15:57 GMT
RUN cmd /S /C #(nop) WORKDIR C:\nats-streaming-server
# Thu, 18 Oct 2018 09:16:00 GMT
RUN cmd /S /C #(nop) COPY file:dea4869748d25bfafa57d1cd96f9ebd57fef1ffb0867640af3237f418f943f22 in nats-streaming-server.exe 
# Thu, 18 Oct 2018 09:16:01 GMT
RUN cmd /S /C #(nop)  EXPOSE 4222/tcp 8222/tcp
# Thu, 18 Oct 2018 09:16:02 GMT
RUN cmd /S /C #(nop)  CMD ["nats-streaming-server" "-m" "8222"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 18 Sep 2018 20:20:50 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:c0f6863f3dd498ab56cdd308637630f888fe646de403284f2c5392ba885bdd8e`  
		Last Modified: Tue, 09 Oct 2018 18:03:17 GMT  
		Size: 1.5 GB (1527125035 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:1c83039b04fe98f730860b3ceade50a5642220bd1b3d54eef59d90f9baad262a`  
		Last Modified: Thu, 18 Oct 2018 09:16:27 GMT  
		Size: 1.2 KB (1196 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49727d0f415de0df86b0db647cd156cbc886744dc0d0d82e250e0cc0bc8024d9`  
		Last Modified: Thu, 18 Oct 2018 09:16:27 GMT  
		Size: 1.4 KB (1358 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8460b6a9c2fe18b92d5931a6f9c19b1321a9333e651de2b902fe4e1fc3620ba8`  
		Last Modified: Thu, 18 Oct 2018 09:16:29 GMT  
		Size: 4.7 MB (4714472 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:745b5267ddb1035b71f36a79df541c8c8d0f055b57dad1b7dc2c96af9b660555`  
		Last Modified: Thu, 18 Oct 2018 09:16:28 GMT  
		Size: 1.2 KB (1205 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2aea377447789e8efe537148621809e17a23cb7947d7dcbfef047a03129fef23`  
		Last Modified: Thu, 18 Oct 2018 09:16:27 GMT  
		Size: 1.2 KB (1202 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
