<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `nats-streaming`

-	[`nats-streaming:0.14.3`](#nats-streaming0143)
-	[`nats-streaming:0.14.3-linux`](#nats-streaming0143-linux)
-	[`nats-streaming:0.14.3-nanoserver`](#nats-streaming0143-nanoserver)
-	[`nats-streaming:0.14.3-windowsservercore`](#nats-streaming0143-windowsservercore)
-	[`nats-streaming:latest`](#nats-streaminglatest)
-	[`nats-streaming:linux`](#nats-streaminglinux)
-	[`nats-streaming:nanoserver`](#nats-streamingnanoserver)
-	[`nats-streaming:windowsservercore`](#nats-streamingwindowsservercore)

## `nats-streaming:0.14.3`

```console
$ docker pull nats-streaming@sha256:77bee3faee0de7cdd79cbdd6e19bd7e9854f41e27a792731fbd44b877aba10b2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	windows version 10.0.14393.2551; amd64

### `nats-streaming:0.14.3` - linux; amd64

```console
$ docker pull nats-streaming@sha256:1aa0aaee4333071b448ea9e73ed96814a0fbe674fa6992c409fe1c96707b06eb
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.8 MB (4794032 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d07d3ae2ad78e5119943065342712f0aca80764ad8b6311badeb61984bb8ca76`
-	Entrypoint: `["\/nats-streaming-server"]`
-	Default Command: `["-m","8222"]`

```dockerfile
# Fri, 31 May 2019 21:20:25 GMT
COPY file:1c84a22984d3a8d1fa90440f2edf897f46ae06b03fe1a174407d8a9f9333ae8d in /nats-streaming-server 
# Fri, 31 May 2019 21:20:26 GMT
EXPOSE 4222 8222
# Fri, 31 May 2019 21:20:26 GMT
ENTRYPOINT ["/nats-streaming-server"]
# Fri, 31 May 2019 21:20:26 GMT
CMD ["-m" "8222"]
```

-	Layers:
	-	`sha256:9ffce7d3da47dc3a38253706e7128face790e3a2e82887d50c60adb0e4ef03d8`  
		Last Modified: Fri, 31 May 2019 21:20:38 GMT  
		Size: 4.8 MB (4794032 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `nats-streaming:0.14.3` - linux; arm64 variant v8

```console
$ docker pull nats-streaming@sha256:7a374d514873574b7d391865b965c158393c3f37fe2a2836b21967fa640e419e
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.4 MB (4363806 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7df72e271452524be1f984819db1e015449dd83f6649941f62acf6b3b3e709f9`
-	Entrypoint: `["\/nats-streaming-server"]`
-	Default Command: `["-m","8222"]`

```dockerfile
# Fri, 31 May 2019 21:39:51 GMT
COPY file:0935aaf6709e97d9b66857e18c671d47a450b9c66dab52a22e2183bc6d65b489 in /nats-streaming-server 
# Fri, 31 May 2019 21:39:51 GMT
EXPOSE 4222 8222
# Fri, 31 May 2019 21:39:51 GMT
ENTRYPOINT ["/nats-streaming-server"]
# Fri, 31 May 2019 21:39:52 GMT
CMD ["-m" "8222"]
```

-	Layers:
	-	`sha256:e34c13478ed972e4e3856be5a954e57249a36e03da34052eef2fe61a4f52e56d`  
		Last Modified: Fri, 31 May 2019 21:40:06 GMT  
		Size: 4.4 MB (4363806 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `nats-streaming:0.14.3` - windows version 10.0.14393.2551; amd64

```console
$ docker pull nats-streaming@sha256:89ba311b64c2013ed668462402dafa9bab07b6919f546fc56046840c404466e4
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **440.3 MB (440268622 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:54df2ad03f7f668580251a72ace996685fe9d5e1fa7c677ae5d74a22200fbba6`
-	Default Command: `["nats-streaming-server","-m","8222"]`

```dockerfile
# Mon, 17 Sep 2018 20:04:15 GMT
RUN Apply image 10.0.14393.0
# Tue, 09 Oct 2018 18:02:39 GMT
RUN Install update 10.0.14393.2551
# Tue, 25 Dec 2018 18:58:14 GMT
RUN cmd /S /C #(nop)  ENV NATS_DOCKERIZED=1
# Tue, 25 Dec 2018 18:58:15 GMT
RUN cmd /S /C #(nop) WORKDIR C:\nats-streaming-server
# Fri, 31 May 2019 21:16:55 GMT
RUN cmd /S /C #(nop) COPY file:8986269637e5305910301f488fc8a6c05ecd6b232ebdb75f36b40f8ef927c936 in nats-streaming-server.exe 
# Fri, 31 May 2019 21:16:57 GMT
RUN cmd /S /C #(nop)  EXPOSE 4222 8222
# Fri, 31 May 2019 21:16:58 GMT
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
	-	`sha256:1d20c4d5c8a24ed1dedf4f428bf83dbcf505730bc0af377a47b81d2a024817d2`  
		Last Modified: Tue, 25 Dec 2018 18:58:46 GMT  
		Size: 955.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d3757046450b3e3328715bdbca6c9a365573b92b486c43155522817cd384903`  
		Last Modified: Tue, 25 Dec 2018 18:58:46 GMT  
		Size: 1.2 KB (1168 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d8fa1de9f5b39fadac0db81e59215e34d40a82344c321937e77c565c65a344b`  
		Last Modified: Fri, 31 May 2019 21:17:27 GMT  
		Size: 4.9 MB (4867836 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:115a2f871707b516651aa39b7b76c0950318943d5adb3404eabaf1296fe59551`  
		Last Modified: Fri, 31 May 2019 21:17:26 GMT  
		Size: 915.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:302016b546bafcddbdfb72fa3d3f84ceaeb086a3bda9aafbe2e358a034a1e469`  
		Last Modified: Fri, 31 May 2019 21:17:26 GMT  
		Size: 930.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nats-streaming:0.14.3-linux`

```console
$ docker pull nats-streaming@sha256:ebdff007b4f813e52e36aeedd4361e0dc288e0dac5a06473aa39553d5f4adb0b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `nats-streaming:0.14.3-linux` - linux; amd64

```console
$ docker pull nats-streaming@sha256:1aa0aaee4333071b448ea9e73ed96814a0fbe674fa6992c409fe1c96707b06eb
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.8 MB (4794032 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d07d3ae2ad78e5119943065342712f0aca80764ad8b6311badeb61984bb8ca76`
-	Entrypoint: `["\/nats-streaming-server"]`
-	Default Command: `["-m","8222"]`

```dockerfile
# Fri, 31 May 2019 21:20:25 GMT
COPY file:1c84a22984d3a8d1fa90440f2edf897f46ae06b03fe1a174407d8a9f9333ae8d in /nats-streaming-server 
# Fri, 31 May 2019 21:20:26 GMT
EXPOSE 4222 8222
# Fri, 31 May 2019 21:20:26 GMT
ENTRYPOINT ["/nats-streaming-server"]
# Fri, 31 May 2019 21:20:26 GMT
CMD ["-m" "8222"]
```

-	Layers:
	-	`sha256:9ffce7d3da47dc3a38253706e7128face790e3a2e82887d50c60adb0e4ef03d8`  
		Last Modified: Fri, 31 May 2019 21:20:38 GMT  
		Size: 4.8 MB (4794032 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `nats-streaming:0.14.3-linux` - linux; arm64 variant v8

```console
$ docker pull nats-streaming@sha256:7a374d514873574b7d391865b965c158393c3f37fe2a2836b21967fa640e419e
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.4 MB (4363806 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7df72e271452524be1f984819db1e015449dd83f6649941f62acf6b3b3e709f9`
-	Entrypoint: `["\/nats-streaming-server"]`
-	Default Command: `["-m","8222"]`

```dockerfile
# Fri, 31 May 2019 21:39:51 GMT
COPY file:0935aaf6709e97d9b66857e18c671d47a450b9c66dab52a22e2183bc6d65b489 in /nats-streaming-server 
# Fri, 31 May 2019 21:39:51 GMT
EXPOSE 4222 8222
# Fri, 31 May 2019 21:39:51 GMT
ENTRYPOINT ["/nats-streaming-server"]
# Fri, 31 May 2019 21:39:52 GMT
CMD ["-m" "8222"]
```

-	Layers:
	-	`sha256:e34c13478ed972e4e3856be5a954e57249a36e03da34052eef2fe61a4f52e56d`  
		Last Modified: Fri, 31 May 2019 21:40:06 GMT  
		Size: 4.4 MB (4363806 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nats-streaming:0.14.3-nanoserver`

```console
$ docker pull nats-streaming@sha256:c51be89a1a65ab670235999475e7cf279106698c39b00e91dc2c0867725123da
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2551; amd64

### `nats-streaming:0.14.3-nanoserver` - windows version 10.0.14393.2551; amd64

```console
$ docker pull nats-streaming@sha256:89ba311b64c2013ed668462402dafa9bab07b6919f546fc56046840c404466e4
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **440.3 MB (440268622 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:54df2ad03f7f668580251a72ace996685fe9d5e1fa7c677ae5d74a22200fbba6`
-	Default Command: `["nats-streaming-server","-m","8222"]`

```dockerfile
# Mon, 17 Sep 2018 20:04:15 GMT
RUN Apply image 10.0.14393.0
# Tue, 09 Oct 2018 18:02:39 GMT
RUN Install update 10.0.14393.2551
# Tue, 25 Dec 2018 18:58:14 GMT
RUN cmd /S /C #(nop)  ENV NATS_DOCKERIZED=1
# Tue, 25 Dec 2018 18:58:15 GMT
RUN cmd /S /C #(nop) WORKDIR C:\nats-streaming-server
# Fri, 31 May 2019 21:16:55 GMT
RUN cmd /S /C #(nop) COPY file:8986269637e5305910301f488fc8a6c05ecd6b232ebdb75f36b40f8ef927c936 in nats-streaming-server.exe 
# Fri, 31 May 2019 21:16:57 GMT
RUN cmd /S /C #(nop)  EXPOSE 4222 8222
# Fri, 31 May 2019 21:16:58 GMT
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
	-	`sha256:1d20c4d5c8a24ed1dedf4f428bf83dbcf505730bc0af377a47b81d2a024817d2`  
		Last Modified: Tue, 25 Dec 2018 18:58:46 GMT  
		Size: 955.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d3757046450b3e3328715bdbca6c9a365573b92b486c43155522817cd384903`  
		Last Modified: Tue, 25 Dec 2018 18:58:46 GMT  
		Size: 1.2 KB (1168 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d8fa1de9f5b39fadac0db81e59215e34d40a82344c321937e77c565c65a344b`  
		Last Modified: Fri, 31 May 2019 21:17:27 GMT  
		Size: 4.9 MB (4867836 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:115a2f871707b516651aa39b7b76c0950318943d5adb3404eabaf1296fe59551`  
		Last Modified: Fri, 31 May 2019 21:17:26 GMT  
		Size: 915.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:302016b546bafcddbdfb72fa3d3f84ceaeb086a3bda9aafbe2e358a034a1e469`  
		Last Modified: Fri, 31 May 2019 21:17:26 GMT  
		Size: 930.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nats-streaming:0.14.3-windowsservercore`

```console
$ docker pull nats-streaming@sha256:33bd72e5c581ea6c6bd9e5832be5e22be869a7e4e64ac5d0d8163090c5585d9e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2724; amd64

### `nats-streaming:0.14.3-windowsservercore` - windows version 10.0.14393.2724; amd64

```console
$ docker pull nats-streaming@sha256:b1e1335154a2eee669214ffb9682a573a0e292e367a725c4990476462ac7845f
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 GB (5640688875 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6c1d81fbdf45931d71a8f840fd4af0693a138418c5f347b5c90fdccca3bd68ed`
-	Default Command: `["nats-streaming-server","-m","8222"]`

```dockerfile
# Tue, 18 Sep 2018 20:20:50 GMT
RUN Apply image 10.0.14393.0
# Tue, 08 Jan 2019 17:44:44 GMT
RUN Install update 10.0.14393.2724
# Wed, 16 Jan 2019 10:15:22 GMT
RUN cmd /S /C #(nop)  ENV NATS_DOCKERIZED=1
# Sat, 09 Feb 2019 10:40:32 GMT
RUN cmd /S /C #(nop) WORKDIR C:\nats-streaming-server
# Fri, 31 May 2019 21:17:06 GMT
RUN cmd /S /C #(nop) COPY file:8986269637e5305910301f488fc8a6c05ecd6b232ebdb75f36b40f8ef927c936 in nats-streaming-server.exe 
# Fri, 31 May 2019 21:17:09 GMT
RUN cmd /S /C #(nop)  EXPOSE 4222 8222
# Fri, 31 May 2019 21:17:10 GMT
RUN cmd /S /C #(nop)  CMD ["nats-streaming-server" "-m" "8222"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 18 Sep 2018 20:20:50 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:d0c71fc8924e632b81de72fba055610c4a5259b2f6723e15f70662f7bc328184`  
		Last Modified: Tue, 08 Jan 2019 17:44:44 GMT  
		Size: 1.6 GB (1565830172 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:841388388e527c92b099880239db11e129d4d9d0ffa56a19dccc5811e33c0874`  
		Last Modified: Wed, 16 Jan 2019 10:16:00 GMT  
		Size: 1.2 KB (1209 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd8c92f575a2b28972517be97ab67c77fb42da9d20dc7f7c4c54750a178476e5`  
		Last Modified: Sat, 09 Feb 2019 10:41:01 GMT  
		Size: 1.3 KB (1349 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90c9ce4f9581f4114db7f15295c502aaab59f27e8cae21f577206e5ca41d0724`  
		Last Modified: Fri, 31 May 2019 21:17:42 GMT  
		Size: 4.9 MB (4867874 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f73ff32b35dd4414ac4cf393b70334a0596fb03ea74a3addd8abc85e348211e3`  
		Last Modified: Fri, 31 May 2019 21:17:40 GMT  
		Size: 1.2 KB (1184 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3121b7410e036d041d810780609965993134cb034f2b7572e8d8804cb2b5f52d`  
		Last Modified: Fri, 31 May 2019 21:17:40 GMT  
		Size: 1.2 KB (1187 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nats-streaming:latest`

```console
$ docker pull nats-streaming@sha256:8293bb230196ea2db82fd2c8e6cb727e8cdd27d2b6667055e66c43a7ff438d56
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
$ docker pull nats-streaming@sha256:1aa0aaee4333071b448ea9e73ed96814a0fbe674fa6992c409fe1c96707b06eb
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.8 MB (4794032 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d07d3ae2ad78e5119943065342712f0aca80764ad8b6311badeb61984bb8ca76`
-	Entrypoint: `["\/nats-streaming-server"]`
-	Default Command: `["-m","8222"]`

```dockerfile
# Fri, 31 May 2019 21:20:25 GMT
COPY file:1c84a22984d3a8d1fa90440f2edf897f46ae06b03fe1a174407d8a9f9333ae8d in /nats-streaming-server 
# Fri, 31 May 2019 21:20:26 GMT
EXPOSE 4222 8222
# Fri, 31 May 2019 21:20:26 GMT
ENTRYPOINT ["/nats-streaming-server"]
# Fri, 31 May 2019 21:20:26 GMT
CMD ["-m" "8222"]
```

-	Layers:
	-	`sha256:9ffce7d3da47dc3a38253706e7128face790e3a2e82887d50c60adb0e4ef03d8`  
		Last Modified: Fri, 31 May 2019 21:20:38 GMT  
		Size: 4.8 MB (4794032 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `nats-streaming:latest` - linux; arm variant v6

```console
$ docker pull nats-streaming@sha256:0c0cfe1aaa816a83f178be4d1c6a1b017acc2c9923ccd4ce18897ca84a9711a7
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.5 MB (4502523 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:98717d6e1c5c1641351fde007a3ee09cf89d59a7d01bcdf297775b19a88b47c1`
-	Entrypoint: `["\/nats-streaming-server"]`
-	Default Command: `["-m","8222"]`

```dockerfile
# Sat, 27 Apr 2019 07:51:46 GMT
COPY file:54167b802925f53dc51a71f50bb7d35e564ba8c03734e9f1834bbb87860a9bae in /nats-streaming-server 
# Sat, 27 Apr 2019 07:51:47 GMT
EXPOSE 4222 8222
# Sat, 27 Apr 2019 07:51:47 GMT
ENTRYPOINT ["/nats-streaming-server"]
# Sat, 27 Apr 2019 07:51:47 GMT
CMD ["-m" "8222"]
```

-	Layers:
	-	`sha256:4f4f7cb451ff5e1502f36ae1ff1ec755d87690ab924eda15315d4c0549f917f5`  
		Last Modified: Sat, 27 Apr 2019 07:51:57 GMT  
		Size: 4.5 MB (4502523 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `nats-streaming:latest` - linux; arm variant v7

```console
$ docker pull nats-streaming@sha256:784b6af04649e13e5c272ce83755745dfb5ad311ce60b67ccca612e506f6a421
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.5 MB (4503377 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:719a035d11ae48b60bdef0ce316b5edd8aa017ad71bc6578dc1b515ea824b136`
-	Entrypoint: `["\/nats-streaming-server"]`
-	Default Command: `["-m","8222"]`

```dockerfile
# Wed, 22 May 2019 22:57:46 GMT
COPY file:02442f8e0a500f8c390c1fb396e7d9c5b64da2363c92c6650360cad6940f8299 in /nats-streaming-server 
# Wed, 22 May 2019 22:57:46 GMT
EXPOSE 4222 8222
# Wed, 22 May 2019 22:57:47 GMT
ENTRYPOINT ["/nats-streaming-server"]
# Wed, 22 May 2019 22:57:47 GMT
CMD ["-m" "8222"]
```

-	Layers:
	-	`sha256:708582e774837998f487234474c6696cbe209d0d10fa5bd82018e734de53e766`  
		Last Modified: Wed, 22 May 2019 22:58:00 GMT  
		Size: 4.5 MB (4503377 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `nats-streaming:latest` - linux; arm64 variant v8

```console
$ docker pull nats-streaming@sha256:7a374d514873574b7d391865b965c158393c3f37fe2a2836b21967fa640e419e
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.4 MB (4363806 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7df72e271452524be1f984819db1e015449dd83f6649941f62acf6b3b3e709f9`
-	Entrypoint: `["\/nats-streaming-server"]`
-	Default Command: `["-m","8222"]`

```dockerfile
# Fri, 31 May 2019 21:39:51 GMT
COPY file:0935aaf6709e97d9b66857e18c671d47a450b9c66dab52a22e2183bc6d65b489 in /nats-streaming-server 
# Fri, 31 May 2019 21:39:51 GMT
EXPOSE 4222 8222
# Fri, 31 May 2019 21:39:51 GMT
ENTRYPOINT ["/nats-streaming-server"]
# Fri, 31 May 2019 21:39:52 GMT
CMD ["-m" "8222"]
```

-	Layers:
	-	`sha256:e34c13478ed972e4e3856be5a954e57249a36e03da34052eef2fe61a4f52e56d`  
		Last Modified: Fri, 31 May 2019 21:40:06 GMT  
		Size: 4.4 MB (4363806 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `nats-streaming:latest` - windows version 10.0.14393.2551; amd64

```console
$ docker pull nats-streaming@sha256:89ba311b64c2013ed668462402dafa9bab07b6919f546fc56046840c404466e4
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **440.3 MB (440268622 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:54df2ad03f7f668580251a72ace996685fe9d5e1fa7c677ae5d74a22200fbba6`
-	Default Command: `["nats-streaming-server","-m","8222"]`

```dockerfile
# Mon, 17 Sep 2018 20:04:15 GMT
RUN Apply image 10.0.14393.0
# Tue, 09 Oct 2018 18:02:39 GMT
RUN Install update 10.0.14393.2551
# Tue, 25 Dec 2018 18:58:14 GMT
RUN cmd /S /C #(nop)  ENV NATS_DOCKERIZED=1
# Tue, 25 Dec 2018 18:58:15 GMT
RUN cmd /S /C #(nop) WORKDIR C:\nats-streaming-server
# Fri, 31 May 2019 21:16:55 GMT
RUN cmd /S /C #(nop) COPY file:8986269637e5305910301f488fc8a6c05ecd6b232ebdb75f36b40f8ef927c936 in nats-streaming-server.exe 
# Fri, 31 May 2019 21:16:57 GMT
RUN cmd /S /C #(nop)  EXPOSE 4222 8222
# Fri, 31 May 2019 21:16:58 GMT
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
	-	`sha256:1d20c4d5c8a24ed1dedf4f428bf83dbcf505730bc0af377a47b81d2a024817d2`  
		Last Modified: Tue, 25 Dec 2018 18:58:46 GMT  
		Size: 955.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d3757046450b3e3328715bdbca6c9a365573b92b486c43155522817cd384903`  
		Last Modified: Tue, 25 Dec 2018 18:58:46 GMT  
		Size: 1.2 KB (1168 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d8fa1de9f5b39fadac0db81e59215e34d40a82344c321937e77c565c65a344b`  
		Last Modified: Fri, 31 May 2019 21:17:27 GMT  
		Size: 4.9 MB (4867836 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:115a2f871707b516651aa39b7b76c0950318943d5adb3404eabaf1296fe59551`  
		Last Modified: Fri, 31 May 2019 21:17:26 GMT  
		Size: 915.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:302016b546bafcddbdfb72fa3d3f84ceaeb086a3bda9aafbe2e358a034a1e469`  
		Last Modified: Fri, 31 May 2019 21:17:26 GMT  
		Size: 930.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nats-streaming:linux`

```console
$ docker pull nats-streaming@sha256:6e0d29be1eed8c61b14c429cfdb56f9ae49e53e0f0cbe747fe5857fdc69d61e6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `nats-streaming:linux` - linux; amd64

```console
$ docker pull nats-streaming@sha256:1aa0aaee4333071b448ea9e73ed96814a0fbe674fa6992c409fe1c96707b06eb
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.8 MB (4794032 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d07d3ae2ad78e5119943065342712f0aca80764ad8b6311badeb61984bb8ca76`
-	Entrypoint: `["\/nats-streaming-server"]`
-	Default Command: `["-m","8222"]`

```dockerfile
# Fri, 31 May 2019 21:20:25 GMT
COPY file:1c84a22984d3a8d1fa90440f2edf897f46ae06b03fe1a174407d8a9f9333ae8d in /nats-streaming-server 
# Fri, 31 May 2019 21:20:26 GMT
EXPOSE 4222 8222
# Fri, 31 May 2019 21:20:26 GMT
ENTRYPOINT ["/nats-streaming-server"]
# Fri, 31 May 2019 21:20:26 GMT
CMD ["-m" "8222"]
```

-	Layers:
	-	`sha256:9ffce7d3da47dc3a38253706e7128face790e3a2e82887d50c60adb0e4ef03d8`  
		Last Modified: Fri, 31 May 2019 21:20:38 GMT  
		Size: 4.8 MB (4794032 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `nats-streaming:linux` - linux; arm variant v6

```console
$ docker pull nats-streaming@sha256:9ced1020114a5557cc2bee49bfa79759a1aca130223881fdadcb681b7067d2f6
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.5 MB (4506128 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8c6065a4d1e44df99f91fb8bd1e10f1209c8fceea15224a5781a5037072d8b93`
-	Entrypoint: `["\/nats-streaming-server"]`
-	Default Command: `["-m","8222"]`

```dockerfile
# Thu, 23 May 2019 00:50:08 GMT
COPY file:fb650547e54694754066c52bf4aaf5dde7cb1ec45d8b41f2f1027c26e74b3e54 in /nats-streaming-server 
# Thu, 23 May 2019 00:50:08 GMT
EXPOSE 4222 8222
# Thu, 23 May 2019 00:50:09 GMT
ENTRYPOINT ["/nats-streaming-server"]
# Thu, 23 May 2019 00:50:09 GMT
CMD ["-m" "8222"]
```

-	Layers:
	-	`sha256:380e8dc162da50f393f9bd91fb0a2cdea8a0d32249a0b5163b7434e9ee175d1f`  
		Last Modified: Thu, 23 May 2019 00:50:24 GMT  
		Size: 4.5 MB (4506128 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `nats-streaming:linux` - linux; arm variant v7

```console
$ docker pull nats-streaming@sha256:784b6af04649e13e5c272ce83755745dfb5ad311ce60b67ccca612e506f6a421
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.5 MB (4503377 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:719a035d11ae48b60bdef0ce316b5edd8aa017ad71bc6578dc1b515ea824b136`
-	Entrypoint: `["\/nats-streaming-server"]`
-	Default Command: `["-m","8222"]`

```dockerfile
# Wed, 22 May 2019 22:57:46 GMT
COPY file:02442f8e0a500f8c390c1fb396e7d9c5b64da2363c92c6650360cad6940f8299 in /nats-streaming-server 
# Wed, 22 May 2019 22:57:46 GMT
EXPOSE 4222 8222
# Wed, 22 May 2019 22:57:47 GMT
ENTRYPOINT ["/nats-streaming-server"]
# Wed, 22 May 2019 22:57:47 GMT
CMD ["-m" "8222"]
```

-	Layers:
	-	`sha256:708582e774837998f487234474c6696cbe209d0d10fa5bd82018e734de53e766`  
		Last Modified: Wed, 22 May 2019 22:58:00 GMT  
		Size: 4.5 MB (4503377 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `nats-streaming:linux` - linux; arm64 variant v8

```console
$ docker pull nats-streaming@sha256:7a374d514873574b7d391865b965c158393c3f37fe2a2836b21967fa640e419e
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.4 MB (4363806 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7df72e271452524be1f984819db1e015449dd83f6649941f62acf6b3b3e709f9`
-	Entrypoint: `["\/nats-streaming-server"]`
-	Default Command: `["-m","8222"]`

```dockerfile
# Fri, 31 May 2019 21:39:51 GMT
COPY file:0935aaf6709e97d9b66857e18c671d47a450b9c66dab52a22e2183bc6d65b489 in /nats-streaming-server 
# Fri, 31 May 2019 21:39:51 GMT
EXPOSE 4222 8222
# Fri, 31 May 2019 21:39:51 GMT
ENTRYPOINT ["/nats-streaming-server"]
# Fri, 31 May 2019 21:39:52 GMT
CMD ["-m" "8222"]
```

-	Layers:
	-	`sha256:e34c13478ed972e4e3856be5a954e57249a36e03da34052eef2fe61a4f52e56d`  
		Last Modified: Fri, 31 May 2019 21:40:06 GMT  
		Size: 4.4 MB (4363806 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nats-streaming:nanoserver`

```console
$ docker pull nats-streaming@sha256:c51be89a1a65ab670235999475e7cf279106698c39b00e91dc2c0867725123da
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2551; amd64

### `nats-streaming:nanoserver` - windows version 10.0.14393.2551; amd64

```console
$ docker pull nats-streaming@sha256:89ba311b64c2013ed668462402dafa9bab07b6919f546fc56046840c404466e4
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **440.3 MB (440268622 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:54df2ad03f7f668580251a72ace996685fe9d5e1fa7c677ae5d74a22200fbba6`
-	Default Command: `["nats-streaming-server","-m","8222"]`

```dockerfile
# Mon, 17 Sep 2018 20:04:15 GMT
RUN Apply image 10.0.14393.0
# Tue, 09 Oct 2018 18:02:39 GMT
RUN Install update 10.0.14393.2551
# Tue, 25 Dec 2018 18:58:14 GMT
RUN cmd /S /C #(nop)  ENV NATS_DOCKERIZED=1
# Tue, 25 Dec 2018 18:58:15 GMT
RUN cmd /S /C #(nop) WORKDIR C:\nats-streaming-server
# Fri, 31 May 2019 21:16:55 GMT
RUN cmd /S /C #(nop) COPY file:8986269637e5305910301f488fc8a6c05ecd6b232ebdb75f36b40f8ef927c936 in nats-streaming-server.exe 
# Fri, 31 May 2019 21:16:57 GMT
RUN cmd /S /C #(nop)  EXPOSE 4222 8222
# Fri, 31 May 2019 21:16:58 GMT
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
	-	`sha256:1d20c4d5c8a24ed1dedf4f428bf83dbcf505730bc0af377a47b81d2a024817d2`  
		Last Modified: Tue, 25 Dec 2018 18:58:46 GMT  
		Size: 955.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d3757046450b3e3328715bdbca6c9a365573b92b486c43155522817cd384903`  
		Last Modified: Tue, 25 Dec 2018 18:58:46 GMT  
		Size: 1.2 KB (1168 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d8fa1de9f5b39fadac0db81e59215e34d40a82344c321937e77c565c65a344b`  
		Last Modified: Fri, 31 May 2019 21:17:27 GMT  
		Size: 4.9 MB (4867836 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:115a2f871707b516651aa39b7b76c0950318943d5adb3404eabaf1296fe59551`  
		Last Modified: Fri, 31 May 2019 21:17:26 GMT  
		Size: 915.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:302016b546bafcddbdfb72fa3d3f84ceaeb086a3bda9aafbe2e358a034a1e469`  
		Last Modified: Fri, 31 May 2019 21:17:26 GMT  
		Size: 930.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nats-streaming:windowsservercore`

```console
$ docker pull nats-streaming@sha256:33bd72e5c581ea6c6bd9e5832be5e22be869a7e4e64ac5d0d8163090c5585d9e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2724; amd64

### `nats-streaming:windowsservercore` - windows version 10.0.14393.2724; amd64

```console
$ docker pull nats-streaming@sha256:b1e1335154a2eee669214ffb9682a573a0e292e367a725c4990476462ac7845f
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 GB (5640688875 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6c1d81fbdf45931d71a8f840fd4af0693a138418c5f347b5c90fdccca3bd68ed`
-	Default Command: `["nats-streaming-server","-m","8222"]`

```dockerfile
# Tue, 18 Sep 2018 20:20:50 GMT
RUN Apply image 10.0.14393.0
# Tue, 08 Jan 2019 17:44:44 GMT
RUN Install update 10.0.14393.2724
# Wed, 16 Jan 2019 10:15:22 GMT
RUN cmd /S /C #(nop)  ENV NATS_DOCKERIZED=1
# Sat, 09 Feb 2019 10:40:32 GMT
RUN cmd /S /C #(nop) WORKDIR C:\nats-streaming-server
# Fri, 31 May 2019 21:17:06 GMT
RUN cmd /S /C #(nop) COPY file:8986269637e5305910301f488fc8a6c05ecd6b232ebdb75f36b40f8ef927c936 in nats-streaming-server.exe 
# Fri, 31 May 2019 21:17:09 GMT
RUN cmd /S /C #(nop)  EXPOSE 4222 8222
# Fri, 31 May 2019 21:17:10 GMT
RUN cmd /S /C #(nop)  CMD ["nats-streaming-server" "-m" "8222"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 18 Sep 2018 20:20:50 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:d0c71fc8924e632b81de72fba055610c4a5259b2f6723e15f70662f7bc328184`  
		Last Modified: Tue, 08 Jan 2019 17:44:44 GMT  
		Size: 1.6 GB (1565830172 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:841388388e527c92b099880239db11e129d4d9d0ffa56a19dccc5811e33c0874`  
		Last Modified: Wed, 16 Jan 2019 10:16:00 GMT  
		Size: 1.2 KB (1209 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd8c92f575a2b28972517be97ab67c77fb42da9d20dc7f7c4c54750a178476e5`  
		Last Modified: Sat, 09 Feb 2019 10:41:01 GMT  
		Size: 1.3 KB (1349 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90c9ce4f9581f4114db7f15295c502aaab59f27e8cae21f577206e5ca41d0724`  
		Last Modified: Fri, 31 May 2019 21:17:42 GMT  
		Size: 4.9 MB (4867874 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f73ff32b35dd4414ac4cf393b70334a0596fb03ea74a3addd8abc85e348211e3`  
		Last Modified: Fri, 31 May 2019 21:17:40 GMT  
		Size: 1.2 KB (1184 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3121b7410e036d041d810780609965993134cb034f2b7572e8d8804cb2b5f52d`  
		Last Modified: Fri, 31 May 2019 21:17:40 GMT  
		Size: 1.2 KB (1187 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
