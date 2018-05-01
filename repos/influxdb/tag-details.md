<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `influxdb`

-	[`influxdb:1.4`](#influxdb14)
-	[`influxdb:1.4.3`](#influxdb143)
-	[`influxdb:1.4.3-alpine`](#influxdb143-alpine)
-	[`influxdb:1.4-alpine`](#influxdb14-alpine)
-	[`influxdb:1.5`](#influxdb15)
-	[`influxdb:1.5.2`](#influxdb152)
-	[`influxdb:1.5.2-alpine`](#influxdb152-alpine)
-	[`influxdb:1.5.2-data`](#influxdb152-data)
-	[`influxdb:1.5.2-data-alpine`](#influxdb152-data-alpine)
-	[`influxdb:1.5.2-meta`](#influxdb152-meta)
-	[`influxdb:1.5.2-meta-alpine`](#influxdb152-meta-alpine)
-	[`influxdb:1.5-alpine`](#influxdb15-alpine)
-	[`influxdb:1.5-data`](#influxdb15-data)
-	[`influxdb:1.5-data-alpine`](#influxdb15-data-alpine)
-	[`influxdb:1.5-meta`](#influxdb15-meta)
-	[`influxdb:1.5-meta-alpine`](#influxdb15-meta-alpine)
-	[`influxdb:alpine`](#influxdbalpine)
-	[`influxdb:data`](#influxdbdata)
-	[`influxdb:data-alpine`](#influxdbdata-alpine)
-	[`influxdb:latest`](#influxdblatest)
-	[`influxdb:meta`](#influxdbmeta)
-	[`influxdb:meta-alpine`](#influxdbmeta-alpine)

## `influxdb:1.4`

```console
$ docker pull influxdb@sha256:2e5ab1ff5cca5a6e8d4f6cf7fb4f3104dedc55b685e81d63c581849a7e73f390
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `influxdb:1.4` - linux; amd64

```console
$ docker pull influxdb@sha256:dd39796f00c663c4ca1bc132c6da8c6bb36fe93d90fecd17b11abd62604ad28e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **81.7 MB (81742255 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:97bf28dcaa49c3b5972676944f3af2fef21b6932ad7763b7b03bc673004ba5b9`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Tue, 13 Mar 2018 22:26:49 GMT
ADD file:b380df301ccb5ca09f0d7cd5697ed402fa55f3e9bc5df2f4d489ba31f28de58a in / 
# Tue, 13 Mar 2018 22:26:49 GMT
CMD ["bash"]
# Tue, 13 Mar 2018 23:56:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 13 Mar 2018 23:56:22 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 15 Mar 2018 04:44:06 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Thu, 15 Mar 2018 04:44:06 GMT
ENV INFLUXDB_VERSION=1.4.3
# Thu, 15 Mar 2018 04:44:10 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     gpg --batch --verify influxdb_${INFLUXDB_VERSION}_${ARCH}.deb.asc influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     dpkg -i influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     rm -f influxdb_${INFLUXDB_VERSION}_${ARCH}.deb*
# Thu, 15 Mar 2018 04:44:11 GMT
COPY file:3ee2bc0321c2aa2451df7a508649c3a54f0eebc1ef9b8a24967c58105b4d3160 in /etc/influxdb/influxdb.conf 
# Thu, 15 Mar 2018 04:44:11 GMT
EXPOSE 8086/tcp
# Thu, 15 Mar 2018 04:44:11 GMT
VOLUME [/var/lib/influxdb]
# Thu, 15 Mar 2018 04:44:12 GMT
COPY file:098affa3d1b749dacb263ddacfd86a5de1f598d6ba1f7c789ce482c66ee9c80b in /entrypoint.sh 
# Thu, 15 Mar 2018 04:44:12 GMT
COPY file:44e0050f3b04248a6900eace944c581b13b4ad9af1e5cfb91d837cb5e24356e6 in /init-influxdb.sh 
# Thu, 15 Mar 2018 04:44:13 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 15 Mar 2018 04:44:13 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:c73ab1c6897bf5c11da3c95cab103e7ca8cf10a6d041eda2ff836f45a40e3d3b`  
		Last Modified: Tue, 13 Mar 2018 22:52:31 GMT  
		Size: 45.1 MB (45135077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ab373b3deaed929a15574ac1912afc6e173f80d400aba0e96c89f6a58961f2d`  
		Last Modified: Wed, 14 Mar 2018 00:46:17 GMT  
		Size: 11.1 MB (11108010 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b542772b417703c0311c0b90136091369bcd9c2176c0e3ceed5a0114d743ee3c`  
		Last Modified: Wed, 14 Mar 2018 00:46:16 GMT  
		Size: 4.3 MB (4335495 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2546b96148b0132e0e7951e84aac3e432afc7a1db19caa990174a2a920142c26`  
		Last Modified: Thu, 15 Mar 2018 04:45:44 GMT  
		Size: 2.9 KB (2896 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73cfaca50055ed02530d849e9a4e68faebfef69e10c016269fe300b9296fb1d4`  
		Last Modified: Thu, 15 Mar 2018 04:45:48 GMT  
		Size: 21.2 MB (21159179 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea27e67b3a55fad574393c54a9f180fc55f10b3fd8b7835142bbc5606180594b`  
		Last Modified: Thu, 15 Mar 2018 04:45:44 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c1b2dbd2fac9e233c201136eb101dace0cec1a08d629f6a79f4ba30d617e920`  
		Last Modified: Thu, 15 Mar 2018 04:45:44 GMT  
		Size: 210.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69df85267ecb41beefdf0fa837c49a2851aff625ae5bfd12f4675d97a9f2e6ed`  
		Last Modified: Thu, 15 Mar 2018 04:45:44 GMT  
		Size: 1.2 KB (1166 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `influxdb:1.4` - linux; arm variant v7

```console
$ docker pull influxdb@sha256:d94080957fba9b923925fc7dfca143bdb07b5d297f02df363f91457aaa4578f5
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **75.3 MB (75298969 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7c1554a10b9a8702fbd4997294ceee8f2de17c6b80ae90dcc2d0059ed0448d34`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Sat, 28 Apr 2018 12:04:18 GMT
ADD file:c7fba27b02c4bda63faef7eb30156a55feb4c0e9ecd529a24dd8d62942c2f83c in / 
# Sat, 28 Apr 2018 12:04:19 GMT
CMD ["bash"]
# Sat, 28 Apr 2018 12:42:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 12:42:39 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 28 Apr 2018 15:40:10 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Sat, 28 Apr 2018 15:40:16 GMT
ENV INFLUXDB_VERSION=1.4.3
# Sat, 28 Apr 2018 15:40:21 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     gpg --batch --verify influxdb_${INFLUXDB_VERSION}_${ARCH}.deb.asc influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     dpkg -i influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     rm -f influxdb_${INFLUXDB_VERSION}_${ARCH}.deb*
# Sat, 28 Apr 2018 15:40:22 GMT
COPY file:3ee2bc0321c2aa2451df7a508649c3a54f0eebc1ef9b8a24967c58105b4d3160 in /etc/influxdb/influxdb.conf 
# Sat, 28 Apr 2018 15:40:22 GMT
EXPOSE 8086/tcp
# Sat, 28 Apr 2018 15:40:23 GMT
VOLUME [/var/lib/influxdb]
# Sat, 28 Apr 2018 15:40:23 GMT
COPY file:098affa3d1b749dacb263ddacfd86a5de1f598d6ba1f7c789ce482c66ee9c80b in /entrypoint.sh 
# Sat, 28 Apr 2018 15:40:24 GMT
COPY file:44e0050f3b04248a6900eace944c581b13b4ad9af1e5cfb91d837cb5e24356e6 in /init-influxdb.sh 
# Sat, 28 Apr 2018 15:40:24 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Sat, 28 Apr 2018 15:40:25 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:5483105d09166836731e940c850827dd1a4fe16b04d1921eea4d8da7c98e99bc`  
		Last Modified: Sat, 28 Apr 2018 12:15:18 GMT  
		Size: 42.1 MB (42063737 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1cb5424e9076ab96c3fbc714afcd99e7f9c4f35ecf54660ae99cf71410315613`  
		Last Modified: Sat, 28 Apr 2018 13:06:40 GMT  
		Size: 9.4 MB (9449717 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed44b64a3aee0cea1bad2a1954b943ef678d795d9c3ac814e5f8bbbc99a9b143`  
		Last Modified: Sat, 28 Apr 2018 13:06:38 GMT  
		Size: 3.9 MB (3912466 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4bc3778b47a719d716cab625df9300b141f34f7e5ea03ff1e5b454b811aca77b`  
		Last Modified: Sat, 28 Apr 2018 15:40:57 GMT  
		Size: 2.9 KB (2913 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:976be0b237daad5b10a7fe87269a3b5f7e485fd6fd34f7e47ebf86e5aae13f1f`  
		Last Modified: Sat, 28 Apr 2018 15:41:05 GMT  
		Size: 19.9 MB (19868539 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68c77fa8a8c55b96cc4acef37738e76954b47af31f314c0662108c21516900ab`  
		Last Modified: Sat, 28 Apr 2018 15:40:57 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ecdd4041a8f66c410511ebe3d7aca22691efab3b7e1c1ec342454d89e0d76e82`  
		Last Modified: Sat, 28 Apr 2018 15:40:57 GMT  
		Size: 210.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f608a7a13b67c58813b8e86444c25c1d782a2863d9ed1558af36f42c71c203a4`  
		Last Modified: Sat, 28 Apr 2018 15:40:57 GMT  
		Size: 1.2 KB (1164 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `influxdb:1.4` - linux; arm64 variant v8

```console
$ docker pull influxdb@sha256:afa0dcd48bc5e9c8ca3e5250e329694293d1cbe86413c3e44f86990634310ba1
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **76.2 MB (76192731 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:647e436d5bc6872d939150af6f27f4c492d24e3f1bc1c8b01badd6c322912395`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Mon, 30 Apr 2018 23:31:58 GMT
ADD file:245a8cfe59ea071e4e215a722e0d4b4b14fa95dd6ffd03739fe048433cfaf523 in / 
# Mon, 30 Apr 2018 23:32:00 GMT
CMD ["bash"]
# Tue, 01 May 2018 08:07:41 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 01 May 2018 08:08:02 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 01 May 2018 15:15:18 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Tue, 01 May 2018 15:15:18 GMT
ENV INFLUXDB_VERSION=1.4.3
# Tue, 01 May 2018 15:15:27 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     gpg --batch --verify influxdb_${INFLUXDB_VERSION}_${ARCH}.deb.asc influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     dpkg -i influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     rm -f influxdb_${INFLUXDB_VERSION}_${ARCH}.deb*
# Tue, 01 May 2018 15:15:28 GMT
COPY file:3ee2bc0321c2aa2451df7a508649c3a54f0eebc1ef9b8a24967c58105b4d3160 in /etc/influxdb/influxdb.conf 
# Tue, 01 May 2018 15:15:28 GMT
EXPOSE 8086/tcp
# Tue, 01 May 2018 15:15:29 GMT
VOLUME [/var/lib/influxdb]
# Tue, 01 May 2018 15:15:30 GMT
COPY file:098affa3d1b749dacb263ddacfd86a5de1f598d6ba1f7c789ce482c66ee9c80b in /entrypoint.sh 
# Tue, 01 May 2018 15:15:31 GMT
COPY file:44e0050f3b04248a6900eace944c581b13b4ad9af1e5cfb91d837cb5e24356e6 in /init-influxdb.sh 
# Tue, 01 May 2018 15:15:32 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 01 May 2018 15:15:33 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:142bf25d8d1b3ebc9dfbedd586e70a011594690acf48b2695bfce01e3a2cf0d5`  
		Last Modified: Mon, 30 Apr 2018 23:52:13 GMT  
		Size: 43.1 MB (43109349 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8fe3c77baf3b64937d2b7b343d9b966a08f6b90568acce53ff6effca0fd787fe`  
		Last Modified: Tue, 01 May 2018 08:57:09 GMT  
		Size: 9.7 MB (9697043 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:769a11625fb0ec33902994bfc5463ff53a6754be4cd51b8dc5ca168a05228b09`  
		Last Modified: Tue, 01 May 2018 08:57:06 GMT  
		Size: 4.1 MB (4087722 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33e575a19bb724c2146ccb1edc382e63172821703ec1c98d14c623c0b28ea739`  
		Last Modified: Tue, 01 May 2018 15:16:22 GMT  
		Size: 2.9 KB (2886 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:acfc9cdda5e830024f03ca7447f4273118b56eae23f49b67147204d336b1fb22`  
		Last Modified: Tue, 01 May 2018 15:16:33 GMT  
		Size: 19.3 MB (19294136 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3fc415d7735807870b3024f16960c7df110e2e475e9977e504fae774e86b119`  
		Last Modified: Tue, 01 May 2018 15:16:22 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6811323f780e28968c16409905f5bdfbc63915b393edca99d2702d56f900d8d5`  
		Last Modified: Tue, 01 May 2018 15:16:21 GMT  
		Size: 208.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c14790b1c035d905da59cde14137e3ed7ee1ab84235c9a66fbaa96588c2ff030`  
		Last Modified: Tue, 01 May 2018 15:16:22 GMT  
		Size: 1.2 KB (1164 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `influxdb:1.4.3`

```console
$ docker pull influxdb@sha256:2e5ab1ff5cca5a6e8d4f6cf7fb4f3104dedc55b685e81d63c581849a7e73f390
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `influxdb:1.4.3` - linux; amd64

```console
$ docker pull influxdb@sha256:dd39796f00c663c4ca1bc132c6da8c6bb36fe93d90fecd17b11abd62604ad28e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **81.7 MB (81742255 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:97bf28dcaa49c3b5972676944f3af2fef21b6932ad7763b7b03bc673004ba5b9`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Tue, 13 Mar 2018 22:26:49 GMT
ADD file:b380df301ccb5ca09f0d7cd5697ed402fa55f3e9bc5df2f4d489ba31f28de58a in / 
# Tue, 13 Mar 2018 22:26:49 GMT
CMD ["bash"]
# Tue, 13 Mar 2018 23:56:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 13 Mar 2018 23:56:22 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 15 Mar 2018 04:44:06 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Thu, 15 Mar 2018 04:44:06 GMT
ENV INFLUXDB_VERSION=1.4.3
# Thu, 15 Mar 2018 04:44:10 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     gpg --batch --verify influxdb_${INFLUXDB_VERSION}_${ARCH}.deb.asc influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     dpkg -i influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     rm -f influxdb_${INFLUXDB_VERSION}_${ARCH}.deb*
# Thu, 15 Mar 2018 04:44:11 GMT
COPY file:3ee2bc0321c2aa2451df7a508649c3a54f0eebc1ef9b8a24967c58105b4d3160 in /etc/influxdb/influxdb.conf 
# Thu, 15 Mar 2018 04:44:11 GMT
EXPOSE 8086/tcp
# Thu, 15 Mar 2018 04:44:11 GMT
VOLUME [/var/lib/influxdb]
# Thu, 15 Mar 2018 04:44:12 GMT
COPY file:098affa3d1b749dacb263ddacfd86a5de1f598d6ba1f7c789ce482c66ee9c80b in /entrypoint.sh 
# Thu, 15 Mar 2018 04:44:12 GMT
COPY file:44e0050f3b04248a6900eace944c581b13b4ad9af1e5cfb91d837cb5e24356e6 in /init-influxdb.sh 
# Thu, 15 Mar 2018 04:44:13 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 15 Mar 2018 04:44:13 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:c73ab1c6897bf5c11da3c95cab103e7ca8cf10a6d041eda2ff836f45a40e3d3b`  
		Last Modified: Tue, 13 Mar 2018 22:52:31 GMT  
		Size: 45.1 MB (45135077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ab373b3deaed929a15574ac1912afc6e173f80d400aba0e96c89f6a58961f2d`  
		Last Modified: Wed, 14 Mar 2018 00:46:17 GMT  
		Size: 11.1 MB (11108010 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b542772b417703c0311c0b90136091369bcd9c2176c0e3ceed5a0114d743ee3c`  
		Last Modified: Wed, 14 Mar 2018 00:46:16 GMT  
		Size: 4.3 MB (4335495 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2546b96148b0132e0e7951e84aac3e432afc7a1db19caa990174a2a920142c26`  
		Last Modified: Thu, 15 Mar 2018 04:45:44 GMT  
		Size: 2.9 KB (2896 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73cfaca50055ed02530d849e9a4e68faebfef69e10c016269fe300b9296fb1d4`  
		Last Modified: Thu, 15 Mar 2018 04:45:48 GMT  
		Size: 21.2 MB (21159179 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea27e67b3a55fad574393c54a9f180fc55f10b3fd8b7835142bbc5606180594b`  
		Last Modified: Thu, 15 Mar 2018 04:45:44 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c1b2dbd2fac9e233c201136eb101dace0cec1a08d629f6a79f4ba30d617e920`  
		Last Modified: Thu, 15 Mar 2018 04:45:44 GMT  
		Size: 210.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69df85267ecb41beefdf0fa837c49a2851aff625ae5bfd12f4675d97a9f2e6ed`  
		Last Modified: Thu, 15 Mar 2018 04:45:44 GMT  
		Size: 1.2 KB (1166 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `influxdb:1.4.3` - linux; arm variant v7

```console
$ docker pull influxdb@sha256:d94080957fba9b923925fc7dfca143bdb07b5d297f02df363f91457aaa4578f5
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **75.3 MB (75298969 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7c1554a10b9a8702fbd4997294ceee8f2de17c6b80ae90dcc2d0059ed0448d34`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Sat, 28 Apr 2018 12:04:18 GMT
ADD file:c7fba27b02c4bda63faef7eb30156a55feb4c0e9ecd529a24dd8d62942c2f83c in / 
# Sat, 28 Apr 2018 12:04:19 GMT
CMD ["bash"]
# Sat, 28 Apr 2018 12:42:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 12:42:39 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 28 Apr 2018 15:40:10 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Sat, 28 Apr 2018 15:40:16 GMT
ENV INFLUXDB_VERSION=1.4.3
# Sat, 28 Apr 2018 15:40:21 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     gpg --batch --verify influxdb_${INFLUXDB_VERSION}_${ARCH}.deb.asc influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     dpkg -i influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     rm -f influxdb_${INFLUXDB_VERSION}_${ARCH}.deb*
# Sat, 28 Apr 2018 15:40:22 GMT
COPY file:3ee2bc0321c2aa2451df7a508649c3a54f0eebc1ef9b8a24967c58105b4d3160 in /etc/influxdb/influxdb.conf 
# Sat, 28 Apr 2018 15:40:22 GMT
EXPOSE 8086/tcp
# Sat, 28 Apr 2018 15:40:23 GMT
VOLUME [/var/lib/influxdb]
# Sat, 28 Apr 2018 15:40:23 GMT
COPY file:098affa3d1b749dacb263ddacfd86a5de1f598d6ba1f7c789ce482c66ee9c80b in /entrypoint.sh 
# Sat, 28 Apr 2018 15:40:24 GMT
COPY file:44e0050f3b04248a6900eace944c581b13b4ad9af1e5cfb91d837cb5e24356e6 in /init-influxdb.sh 
# Sat, 28 Apr 2018 15:40:24 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Sat, 28 Apr 2018 15:40:25 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:5483105d09166836731e940c850827dd1a4fe16b04d1921eea4d8da7c98e99bc`  
		Last Modified: Sat, 28 Apr 2018 12:15:18 GMT  
		Size: 42.1 MB (42063737 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1cb5424e9076ab96c3fbc714afcd99e7f9c4f35ecf54660ae99cf71410315613`  
		Last Modified: Sat, 28 Apr 2018 13:06:40 GMT  
		Size: 9.4 MB (9449717 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed44b64a3aee0cea1bad2a1954b943ef678d795d9c3ac814e5f8bbbc99a9b143`  
		Last Modified: Sat, 28 Apr 2018 13:06:38 GMT  
		Size: 3.9 MB (3912466 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4bc3778b47a719d716cab625df9300b141f34f7e5ea03ff1e5b454b811aca77b`  
		Last Modified: Sat, 28 Apr 2018 15:40:57 GMT  
		Size: 2.9 KB (2913 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:976be0b237daad5b10a7fe87269a3b5f7e485fd6fd34f7e47ebf86e5aae13f1f`  
		Last Modified: Sat, 28 Apr 2018 15:41:05 GMT  
		Size: 19.9 MB (19868539 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68c77fa8a8c55b96cc4acef37738e76954b47af31f314c0662108c21516900ab`  
		Last Modified: Sat, 28 Apr 2018 15:40:57 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ecdd4041a8f66c410511ebe3d7aca22691efab3b7e1c1ec342454d89e0d76e82`  
		Last Modified: Sat, 28 Apr 2018 15:40:57 GMT  
		Size: 210.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f608a7a13b67c58813b8e86444c25c1d782a2863d9ed1558af36f42c71c203a4`  
		Last Modified: Sat, 28 Apr 2018 15:40:57 GMT  
		Size: 1.2 KB (1164 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `influxdb:1.4.3` - linux; arm64 variant v8

```console
$ docker pull influxdb@sha256:afa0dcd48bc5e9c8ca3e5250e329694293d1cbe86413c3e44f86990634310ba1
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **76.2 MB (76192731 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:647e436d5bc6872d939150af6f27f4c492d24e3f1bc1c8b01badd6c322912395`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Mon, 30 Apr 2018 23:31:58 GMT
ADD file:245a8cfe59ea071e4e215a722e0d4b4b14fa95dd6ffd03739fe048433cfaf523 in / 
# Mon, 30 Apr 2018 23:32:00 GMT
CMD ["bash"]
# Tue, 01 May 2018 08:07:41 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 01 May 2018 08:08:02 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 01 May 2018 15:15:18 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Tue, 01 May 2018 15:15:18 GMT
ENV INFLUXDB_VERSION=1.4.3
# Tue, 01 May 2018 15:15:27 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     gpg --batch --verify influxdb_${INFLUXDB_VERSION}_${ARCH}.deb.asc influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     dpkg -i influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     rm -f influxdb_${INFLUXDB_VERSION}_${ARCH}.deb*
# Tue, 01 May 2018 15:15:28 GMT
COPY file:3ee2bc0321c2aa2451df7a508649c3a54f0eebc1ef9b8a24967c58105b4d3160 in /etc/influxdb/influxdb.conf 
# Tue, 01 May 2018 15:15:28 GMT
EXPOSE 8086/tcp
# Tue, 01 May 2018 15:15:29 GMT
VOLUME [/var/lib/influxdb]
# Tue, 01 May 2018 15:15:30 GMT
COPY file:098affa3d1b749dacb263ddacfd86a5de1f598d6ba1f7c789ce482c66ee9c80b in /entrypoint.sh 
# Tue, 01 May 2018 15:15:31 GMT
COPY file:44e0050f3b04248a6900eace944c581b13b4ad9af1e5cfb91d837cb5e24356e6 in /init-influxdb.sh 
# Tue, 01 May 2018 15:15:32 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 01 May 2018 15:15:33 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:142bf25d8d1b3ebc9dfbedd586e70a011594690acf48b2695bfce01e3a2cf0d5`  
		Last Modified: Mon, 30 Apr 2018 23:52:13 GMT  
		Size: 43.1 MB (43109349 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8fe3c77baf3b64937d2b7b343d9b966a08f6b90568acce53ff6effca0fd787fe`  
		Last Modified: Tue, 01 May 2018 08:57:09 GMT  
		Size: 9.7 MB (9697043 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:769a11625fb0ec33902994bfc5463ff53a6754be4cd51b8dc5ca168a05228b09`  
		Last Modified: Tue, 01 May 2018 08:57:06 GMT  
		Size: 4.1 MB (4087722 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33e575a19bb724c2146ccb1edc382e63172821703ec1c98d14c623c0b28ea739`  
		Last Modified: Tue, 01 May 2018 15:16:22 GMT  
		Size: 2.9 KB (2886 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:acfc9cdda5e830024f03ca7447f4273118b56eae23f49b67147204d336b1fb22`  
		Last Modified: Tue, 01 May 2018 15:16:33 GMT  
		Size: 19.3 MB (19294136 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3fc415d7735807870b3024f16960c7df110e2e475e9977e504fae774e86b119`  
		Last Modified: Tue, 01 May 2018 15:16:22 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6811323f780e28968c16409905f5bdfbc63915b393edca99d2702d56f900d8d5`  
		Last Modified: Tue, 01 May 2018 15:16:21 GMT  
		Size: 208.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c14790b1c035d905da59cde14137e3ed7ee1ab84235c9a66fbaa96588c2ff030`  
		Last Modified: Tue, 01 May 2018 15:16:22 GMT  
		Size: 1.2 KB (1164 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `influxdb:1.4.3-alpine`

```console
$ docker pull influxdb@sha256:c04031ce3f44f42ae2efc46d0aeb18a976c6e32b9346602a9e7a7d36670b73c4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `influxdb:1.4.3-alpine` - linux; amd64

```console
$ docker pull influxdb@sha256:2db7ecb1fbf8a3368b0427c711b26aac0a8114251ce90e142fb3010bdfc52ab6
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **24.5 MB (24543561 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7c5026733dfb4d03db829c62f34d9fd0e610ea91f95aadda654754bcde5b33d3`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Tue, 09 Jan 2018 21:10:38 GMT
ADD file:6edc55fb54ec9fc3658c8f5176a70e792103a516154442f94fed8e0290e4960e in / 
# Tue, 09 Jan 2018 21:10:38 GMT
CMD ["/bin/sh"]
# Tue, 09 Jan 2018 21:31:21 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf
# Tue, 09 Jan 2018 21:31:24 GMT
RUN apk add --no-cache tzdata bash
# Thu, 01 Feb 2018 00:40:39 GMT
ENV INFLUXDB_VERSION=1.4.3
# Wed, 14 Feb 2018 21:43:40 GMT
RUN set -ex &&     apk add --no-cache --virtual .build-deps wget gnupg tar ca-certificates &&     update-ca-certificates &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/influxdb/releases/influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/influxdb/releases/influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/influxdb-*/influxdb.conf &&     chmod +x /usr/src/influxdb-*/* &&     cp -a /usr/src/influxdb-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Wed, 14 Feb 2018 21:43:41 GMT
COPY file:3ee2bc0321c2aa2451df7a508649c3a54f0eebc1ef9b8a24967c58105b4d3160 in /etc/influxdb/influxdb.conf 
# Wed, 14 Feb 2018 21:43:41 GMT
EXPOSE 8086/tcp
# Wed, 14 Feb 2018 21:43:41 GMT
VOLUME [/var/lib/influxdb]
# Wed, 14 Feb 2018 21:43:42 GMT
COPY file:098affa3d1b749dacb263ddacfd86a5de1f598d6ba1f7c789ce482c66ee9c80b in /entrypoint.sh 
# Thu, 01 Mar 2018 20:57:57 GMT
COPY file:44e0050f3b04248a6900eace944c581b13b4ad9af1e5cfb91d837cb5e24356e6 in /init-influxdb.sh 
# Thu, 01 Mar 2018 20:57:57 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 01 Mar 2018 20:57:57 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:605ce1bd3f3164f2949a30501cc596f52a72de05da1306ab360055f0d7130c32`  
		Last Modified: Tue, 09 Jan 2018 21:13:17 GMT  
		Size: 2.0 MB (1991747 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4bfc8b91e98122366108d51bd0925304ee67ee4ec9ac28b15a1d3374e5fed982`  
		Last Modified: Tue, 09 Jan 2018 21:32:44 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62834f98d530d68f07f63088db7789b74c69f676d23de56ccdeb88da961f6367`  
		Last Modified: Tue, 09 Jan 2018 21:32:43 GMT  
		Size: 1.5 MB (1504273 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3885936360284a5581e06e1bb310ab063c821fe3ba8a4fb89ed51a83658bac2`  
		Last Modified: Wed, 14 Feb 2018 21:51:33 GMT  
		Size: 21.0 MB (21045788 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aebe452b9c94e727c41c81c7c7f337b518fe677481ef8f0208183ac0a8c1712f`  
		Last Modified: Wed, 14 Feb 2018 21:51:28 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fab86063b7e450c539d7e574e50d7ed2c84934eb4edd55967afdb60349ec5c2`  
		Last Modified: Wed, 14 Feb 2018 21:51:28 GMT  
		Size: 210.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2da7062519c95ddf01585be14ae407cb9b8139d3fc3d19f5344fed93473c51b9`  
		Last Modified: Thu, 01 Mar 2018 21:02:02 GMT  
		Size: 1.2 KB (1167 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `influxdb:1.4-alpine`

```console
$ docker pull influxdb@sha256:c04031ce3f44f42ae2efc46d0aeb18a976c6e32b9346602a9e7a7d36670b73c4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `influxdb:1.4-alpine` - linux; amd64

```console
$ docker pull influxdb@sha256:2db7ecb1fbf8a3368b0427c711b26aac0a8114251ce90e142fb3010bdfc52ab6
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **24.5 MB (24543561 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7c5026733dfb4d03db829c62f34d9fd0e610ea91f95aadda654754bcde5b33d3`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Tue, 09 Jan 2018 21:10:38 GMT
ADD file:6edc55fb54ec9fc3658c8f5176a70e792103a516154442f94fed8e0290e4960e in / 
# Tue, 09 Jan 2018 21:10:38 GMT
CMD ["/bin/sh"]
# Tue, 09 Jan 2018 21:31:21 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf
# Tue, 09 Jan 2018 21:31:24 GMT
RUN apk add --no-cache tzdata bash
# Thu, 01 Feb 2018 00:40:39 GMT
ENV INFLUXDB_VERSION=1.4.3
# Wed, 14 Feb 2018 21:43:40 GMT
RUN set -ex &&     apk add --no-cache --virtual .build-deps wget gnupg tar ca-certificates &&     update-ca-certificates &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/influxdb/releases/influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/influxdb/releases/influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/influxdb-*/influxdb.conf &&     chmod +x /usr/src/influxdb-*/* &&     cp -a /usr/src/influxdb-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Wed, 14 Feb 2018 21:43:41 GMT
COPY file:3ee2bc0321c2aa2451df7a508649c3a54f0eebc1ef9b8a24967c58105b4d3160 in /etc/influxdb/influxdb.conf 
# Wed, 14 Feb 2018 21:43:41 GMT
EXPOSE 8086/tcp
# Wed, 14 Feb 2018 21:43:41 GMT
VOLUME [/var/lib/influxdb]
# Wed, 14 Feb 2018 21:43:42 GMT
COPY file:098affa3d1b749dacb263ddacfd86a5de1f598d6ba1f7c789ce482c66ee9c80b in /entrypoint.sh 
# Thu, 01 Mar 2018 20:57:57 GMT
COPY file:44e0050f3b04248a6900eace944c581b13b4ad9af1e5cfb91d837cb5e24356e6 in /init-influxdb.sh 
# Thu, 01 Mar 2018 20:57:57 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 01 Mar 2018 20:57:57 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:605ce1bd3f3164f2949a30501cc596f52a72de05da1306ab360055f0d7130c32`  
		Last Modified: Tue, 09 Jan 2018 21:13:17 GMT  
		Size: 2.0 MB (1991747 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4bfc8b91e98122366108d51bd0925304ee67ee4ec9ac28b15a1d3374e5fed982`  
		Last Modified: Tue, 09 Jan 2018 21:32:44 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62834f98d530d68f07f63088db7789b74c69f676d23de56ccdeb88da961f6367`  
		Last Modified: Tue, 09 Jan 2018 21:32:43 GMT  
		Size: 1.5 MB (1504273 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3885936360284a5581e06e1bb310ab063c821fe3ba8a4fb89ed51a83658bac2`  
		Last Modified: Wed, 14 Feb 2018 21:51:33 GMT  
		Size: 21.0 MB (21045788 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aebe452b9c94e727c41c81c7c7f337b518fe677481ef8f0208183ac0a8c1712f`  
		Last Modified: Wed, 14 Feb 2018 21:51:28 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fab86063b7e450c539d7e574e50d7ed2c84934eb4edd55967afdb60349ec5c2`  
		Last Modified: Wed, 14 Feb 2018 21:51:28 GMT  
		Size: 210.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2da7062519c95ddf01585be14ae407cb9b8139d3fc3d19f5344fed93473c51b9`  
		Last Modified: Thu, 01 Mar 2018 21:02:02 GMT  
		Size: 1.2 KB (1167 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `influxdb:1.5`

```console
$ docker pull influxdb@sha256:486d895e98d6eada59a310563f8f38439bd2e9cbbc17422d7278ee73ceba4db2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `influxdb:1.5` - linux; amd64

```console
$ docker pull influxdb@sha256:5ae5d628b1c931b6abe7e27be35dd60a67697efbd5e65980657ba8624ed32efa
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **83.6 MB (83595531 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8bece68eab338c5b6114b79c95eb4fb9cc021ffabe425f9c04c93bc3dc92007c`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Tue, 13 Mar 2018 22:26:49 GMT
ADD file:b380df301ccb5ca09f0d7cd5697ed402fa55f3e9bc5df2f4d489ba31f28de58a in / 
# Tue, 13 Mar 2018 22:26:49 GMT
CMD ["bash"]
# Tue, 13 Mar 2018 23:56:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 13 Mar 2018 23:56:22 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 15 Mar 2018 04:44:06 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Sat, 14 Apr 2018 03:36:38 GMT
ENV INFLUXDB_VERSION=1.5.2
# Sat, 14 Apr 2018 03:36:42 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     gpg --batch --verify influxdb_${INFLUXDB_VERSION}_${ARCH}.deb.asc influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     dpkg -i influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     rm -f influxdb_${INFLUXDB_VERSION}_${ARCH}.deb*
# Sat, 14 Apr 2018 03:36:43 GMT
COPY file:3ee2bc0321c2aa2451df7a508649c3a54f0eebc1ef9b8a24967c58105b4d3160 in /etc/influxdb/influxdb.conf 
# Sat, 14 Apr 2018 03:36:43 GMT
EXPOSE 8086/tcp
# Sat, 14 Apr 2018 03:36:43 GMT
VOLUME [/var/lib/influxdb]
# Sat, 14 Apr 2018 03:36:44 GMT
COPY file:098affa3d1b749dacb263ddacfd86a5de1f598d6ba1f7c789ce482c66ee9c80b in /entrypoint.sh 
# Sat, 14 Apr 2018 03:36:44 GMT
COPY file:44e0050f3b04248a6900eace944c581b13b4ad9af1e5cfb91d837cb5e24356e6 in /init-influxdb.sh 
# Sat, 14 Apr 2018 03:36:45 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Sat, 14 Apr 2018 03:36:45 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:c73ab1c6897bf5c11da3c95cab103e7ca8cf10a6d041eda2ff836f45a40e3d3b`  
		Last Modified: Tue, 13 Mar 2018 22:52:31 GMT  
		Size: 45.1 MB (45135077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ab373b3deaed929a15574ac1912afc6e173f80d400aba0e96c89f6a58961f2d`  
		Last Modified: Wed, 14 Mar 2018 00:46:17 GMT  
		Size: 11.1 MB (11108010 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b542772b417703c0311c0b90136091369bcd9c2176c0e3ceed5a0114d743ee3c`  
		Last Modified: Wed, 14 Mar 2018 00:46:16 GMT  
		Size: 4.3 MB (4335495 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2546b96148b0132e0e7951e84aac3e432afc7a1db19caa990174a2a920142c26`  
		Last Modified: Thu, 15 Mar 2018 04:45:44 GMT  
		Size: 2.9 KB (2896 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f24dbde0ab2a87b9e55c2f64b2081c0bfe0ae9e5f13f958e8d58db4b0ae9852b`  
		Last Modified: Sat, 14 Apr 2018 04:26:59 GMT  
		Size: 23.0 MB (23012450 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c13bfb45f2f9a7884e8b1fe0a0fdda22845b22d9d9f782d55b43e4c4d4ab6cc9`  
		Last Modified: Sat, 14 Apr 2018 04:26:54 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef310525a216f5833a672af1016975f95df4d4db6cae23d6e4a7c6568e5594a9`  
		Last Modified: Sat, 14 Apr 2018 04:26:53 GMT  
		Size: 211.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c7f42634642d29aff3cdc9e1fbbdf0246912d736cb20453585c5b74962b3ff7`  
		Last Modified: Sat, 14 Apr 2018 04:26:53 GMT  
		Size: 1.2 KB (1167 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `influxdb:1.5` - linux; arm variant v7

```console
$ docker pull influxdb@sha256:2d0f5c56120a913077767f11f45997b2649459fe724dcb5a10f26ff73e25a32f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **77.1 MB (77076302 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:12d0c1dedd5532da012a5b1a8a99db876090e3db14caced3cfef7f0601720fdf`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Sat, 28 Apr 2018 12:04:18 GMT
ADD file:c7fba27b02c4bda63faef7eb30156a55feb4c0e9ecd529a24dd8d62942c2f83c in / 
# Sat, 28 Apr 2018 12:04:19 GMT
CMD ["bash"]
# Sat, 28 Apr 2018 12:42:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 12:42:39 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 28 Apr 2018 15:40:10 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Sat, 28 Apr 2018 15:40:34 GMT
ENV INFLUXDB_VERSION=1.5.2
# Sat, 28 Apr 2018 15:40:39 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     gpg --batch --verify influxdb_${INFLUXDB_VERSION}_${ARCH}.deb.asc influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     dpkg -i influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     rm -f influxdb_${INFLUXDB_VERSION}_${ARCH}.deb*
# Sat, 28 Apr 2018 15:40:39 GMT
COPY file:3ee2bc0321c2aa2451df7a508649c3a54f0eebc1ef9b8a24967c58105b4d3160 in /etc/influxdb/influxdb.conf 
# Sat, 28 Apr 2018 15:40:40 GMT
EXPOSE 8086/tcp
# Sat, 28 Apr 2018 15:40:40 GMT
VOLUME [/var/lib/influxdb]
# Sat, 28 Apr 2018 15:40:41 GMT
COPY file:098affa3d1b749dacb263ddacfd86a5de1f598d6ba1f7c789ce482c66ee9c80b in /entrypoint.sh 
# Sat, 28 Apr 2018 15:40:42 GMT
COPY file:44e0050f3b04248a6900eace944c581b13b4ad9af1e5cfb91d837cb5e24356e6 in /init-influxdb.sh 
# Sat, 28 Apr 2018 15:40:42 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Sat, 28 Apr 2018 15:40:42 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:5483105d09166836731e940c850827dd1a4fe16b04d1921eea4d8da7c98e99bc`  
		Last Modified: Sat, 28 Apr 2018 12:15:18 GMT  
		Size: 42.1 MB (42063737 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1cb5424e9076ab96c3fbc714afcd99e7f9c4f35ecf54660ae99cf71410315613`  
		Last Modified: Sat, 28 Apr 2018 13:06:40 GMT  
		Size: 9.4 MB (9449717 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed44b64a3aee0cea1bad2a1954b943ef678d795d9c3ac814e5f8bbbc99a9b143`  
		Last Modified: Sat, 28 Apr 2018 13:06:38 GMT  
		Size: 3.9 MB (3912466 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4bc3778b47a719d716cab625df9300b141f34f7e5ea03ff1e5b454b811aca77b`  
		Last Modified: Sat, 28 Apr 2018 15:40:57 GMT  
		Size: 2.9 KB (2913 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8bf11c2bffb52c079ec60318863ea1354f2340d25ce231189500dfd0f5a4c00`  
		Last Modified: Sat, 28 Apr 2018 15:41:32 GMT  
		Size: 21.6 MB (21645871 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6db42f36b0d745a8775c6c113c1f89b3dd17c2732a7faff9c12331ff4cfa8390`  
		Last Modified: Sat, 28 Apr 2018 15:41:25 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bf3ddbf14c3302439a999de4c592f67cf8574cc9d871d12b3fdb28685d653d7`  
		Last Modified: Sat, 28 Apr 2018 15:41:25 GMT  
		Size: 210.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82b0d105623424b24f0f323e41ea679fce22fbcb27c4438349f76d708caa88b4`  
		Last Modified: Sat, 28 Apr 2018 15:41:25 GMT  
		Size: 1.2 KB (1165 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `influxdb:1.5` - linux; arm64 variant v8

```console
$ docker pull influxdb@sha256:f7643017ac1fef055366050a4d86d13e58e0f53256eec35d73fc4257ac6abced
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **77.9 MB (77894422 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5ae422bb5aff8680c9f0ca9db2102eb41975d841bb95094f4c3ca467bfe14ce9`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Mon, 30 Apr 2018 23:31:58 GMT
ADD file:245a8cfe59ea071e4e215a722e0d4b4b14fa95dd6ffd03739fe048433cfaf523 in / 
# Mon, 30 Apr 2018 23:32:00 GMT
CMD ["bash"]
# Tue, 01 May 2018 08:07:41 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 01 May 2018 08:08:02 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 01 May 2018 15:15:18 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Tue, 01 May 2018 15:15:44 GMT
ENV INFLUXDB_VERSION=1.5.2
# Tue, 01 May 2018 15:15:52 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     gpg --batch --verify influxdb_${INFLUXDB_VERSION}_${ARCH}.deb.asc influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     dpkg -i influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     rm -f influxdb_${INFLUXDB_VERSION}_${ARCH}.deb*
# Tue, 01 May 2018 15:15:53 GMT
COPY file:3ee2bc0321c2aa2451df7a508649c3a54f0eebc1ef9b8a24967c58105b4d3160 in /etc/influxdb/influxdb.conf 
# Tue, 01 May 2018 15:15:54 GMT
EXPOSE 8086/tcp
# Tue, 01 May 2018 15:15:55 GMT
VOLUME [/var/lib/influxdb]
# Tue, 01 May 2018 15:15:57 GMT
COPY file:098affa3d1b749dacb263ddacfd86a5de1f598d6ba1f7c789ce482c66ee9c80b in /entrypoint.sh 
# Tue, 01 May 2018 15:15:58 GMT
COPY file:44e0050f3b04248a6900eace944c581b13b4ad9af1e5cfb91d837cb5e24356e6 in /init-influxdb.sh 
# Tue, 01 May 2018 15:16:00 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 01 May 2018 15:16:01 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:142bf25d8d1b3ebc9dfbedd586e70a011594690acf48b2695bfce01e3a2cf0d5`  
		Last Modified: Mon, 30 Apr 2018 23:52:13 GMT  
		Size: 43.1 MB (43109349 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8fe3c77baf3b64937d2b7b343d9b966a08f6b90568acce53ff6effca0fd787fe`  
		Last Modified: Tue, 01 May 2018 08:57:09 GMT  
		Size: 9.7 MB (9697043 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:769a11625fb0ec33902994bfc5463ff53a6754be4cd51b8dc5ca168a05228b09`  
		Last Modified: Tue, 01 May 2018 08:57:06 GMT  
		Size: 4.1 MB (4087722 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33e575a19bb724c2146ccb1edc382e63172821703ec1c98d14c623c0b28ea739`  
		Last Modified: Tue, 01 May 2018 15:16:22 GMT  
		Size: 2.9 KB (2886 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a70c47cb42dfae51c711ea2813224840a7c86b5eadaa7188c4af39da01b7c69`  
		Last Modified: Tue, 01 May 2018 15:17:13 GMT  
		Size: 21.0 MB (20995824 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72918c55c836e01d0c5ffe02d72180eff6153a2096009d582cc359feca69457d`  
		Last Modified: Tue, 01 May 2018 15:16:57 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60d832b5cba90d3c88b48c2328584af55644e1a4e1f52b2a39fa485541f0384c`  
		Last Modified: Tue, 01 May 2018 15:16:58 GMT  
		Size: 209.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8641841a281a2f06ffa96ec199e656df85ce5542fb80c5af8111333027500b66`  
		Last Modified: Tue, 01 May 2018 15:16:58 GMT  
		Size: 1.2 KB (1164 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `influxdb:1.5.2`

```console
$ docker pull influxdb@sha256:486d895e98d6eada59a310563f8f38439bd2e9cbbc17422d7278ee73ceba4db2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `influxdb:1.5.2` - linux; amd64

```console
$ docker pull influxdb@sha256:5ae5d628b1c931b6abe7e27be35dd60a67697efbd5e65980657ba8624ed32efa
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **83.6 MB (83595531 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8bece68eab338c5b6114b79c95eb4fb9cc021ffabe425f9c04c93bc3dc92007c`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Tue, 13 Mar 2018 22:26:49 GMT
ADD file:b380df301ccb5ca09f0d7cd5697ed402fa55f3e9bc5df2f4d489ba31f28de58a in / 
# Tue, 13 Mar 2018 22:26:49 GMT
CMD ["bash"]
# Tue, 13 Mar 2018 23:56:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 13 Mar 2018 23:56:22 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 15 Mar 2018 04:44:06 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Sat, 14 Apr 2018 03:36:38 GMT
ENV INFLUXDB_VERSION=1.5.2
# Sat, 14 Apr 2018 03:36:42 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     gpg --batch --verify influxdb_${INFLUXDB_VERSION}_${ARCH}.deb.asc influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     dpkg -i influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     rm -f influxdb_${INFLUXDB_VERSION}_${ARCH}.deb*
# Sat, 14 Apr 2018 03:36:43 GMT
COPY file:3ee2bc0321c2aa2451df7a508649c3a54f0eebc1ef9b8a24967c58105b4d3160 in /etc/influxdb/influxdb.conf 
# Sat, 14 Apr 2018 03:36:43 GMT
EXPOSE 8086/tcp
# Sat, 14 Apr 2018 03:36:43 GMT
VOLUME [/var/lib/influxdb]
# Sat, 14 Apr 2018 03:36:44 GMT
COPY file:098affa3d1b749dacb263ddacfd86a5de1f598d6ba1f7c789ce482c66ee9c80b in /entrypoint.sh 
# Sat, 14 Apr 2018 03:36:44 GMT
COPY file:44e0050f3b04248a6900eace944c581b13b4ad9af1e5cfb91d837cb5e24356e6 in /init-influxdb.sh 
# Sat, 14 Apr 2018 03:36:45 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Sat, 14 Apr 2018 03:36:45 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:c73ab1c6897bf5c11da3c95cab103e7ca8cf10a6d041eda2ff836f45a40e3d3b`  
		Last Modified: Tue, 13 Mar 2018 22:52:31 GMT  
		Size: 45.1 MB (45135077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ab373b3deaed929a15574ac1912afc6e173f80d400aba0e96c89f6a58961f2d`  
		Last Modified: Wed, 14 Mar 2018 00:46:17 GMT  
		Size: 11.1 MB (11108010 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b542772b417703c0311c0b90136091369bcd9c2176c0e3ceed5a0114d743ee3c`  
		Last Modified: Wed, 14 Mar 2018 00:46:16 GMT  
		Size: 4.3 MB (4335495 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2546b96148b0132e0e7951e84aac3e432afc7a1db19caa990174a2a920142c26`  
		Last Modified: Thu, 15 Mar 2018 04:45:44 GMT  
		Size: 2.9 KB (2896 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f24dbde0ab2a87b9e55c2f64b2081c0bfe0ae9e5f13f958e8d58db4b0ae9852b`  
		Last Modified: Sat, 14 Apr 2018 04:26:59 GMT  
		Size: 23.0 MB (23012450 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c13bfb45f2f9a7884e8b1fe0a0fdda22845b22d9d9f782d55b43e4c4d4ab6cc9`  
		Last Modified: Sat, 14 Apr 2018 04:26:54 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef310525a216f5833a672af1016975f95df4d4db6cae23d6e4a7c6568e5594a9`  
		Last Modified: Sat, 14 Apr 2018 04:26:53 GMT  
		Size: 211.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c7f42634642d29aff3cdc9e1fbbdf0246912d736cb20453585c5b74962b3ff7`  
		Last Modified: Sat, 14 Apr 2018 04:26:53 GMT  
		Size: 1.2 KB (1167 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `influxdb:1.5.2` - linux; arm variant v7

```console
$ docker pull influxdb@sha256:2d0f5c56120a913077767f11f45997b2649459fe724dcb5a10f26ff73e25a32f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **77.1 MB (77076302 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:12d0c1dedd5532da012a5b1a8a99db876090e3db14caced3cfef7f0601720fdf`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Sat, 28 Apr 2018 12:04:18 GMT
ADD file:c7fba27b02c4bda63faef7eb30156a55feb4c0e9ecd529a24dd8d62942c2f83c in / 
# Sat, 28 Apr 2018 12:04:19 GMT
CMD ["bash"]
# Sat, 28 Apr 2018 12:42:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 12:42:39 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 28 Apr 2018 15:40:10 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Sat, 28 Apr 2018 15:40:34 GMT
ENV INFLUXDB_VERSION=1.5.2
# Sat, 28 Apr 2018 15:40:39 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     gpg --batch --verify influxdb_${INFLUXDB_VERSION}_${ARCH}.deb.asc influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     dpkg -i influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     rm -f influxdb_${INFLUXDB_VERSION}_${ARCH}.deb*
# Sat, 28 Apr 2018 15:40:39 GMT
COPY file:3ee2bc0321c2aa2451df7a508649c3a54f0eebc1ef9b8a24967c58105b4d3160 in /etc/influxdb/influxdb.conf 
# Sat, 28 Apr 2018 15:40:40 GMT
EXPOSE 8086/tcp
# Sat, 28 Apr 2018 15:40:40 GMT
VOLUME [/var/lib/influxdb]
# Sat, 28 Apr 2018 15:40:41 GMT
COPY file:098affa3d1b749dacb263ddacfd86a5de1f598d6ba1f7c789ce482c66ee9c80b in /entrypoint.sh 
# Sat, 28 Apr 2018 15:40:42 GMT
COPY file:44e0050f3b04248a6900eace944c581b13b4ad9af1e5cfb91d837cb5e24356e6 in /init-influxdb.sh 
# Sat, 28 Apr 2018 15:40:42 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Sat, 28 Apr 2018 15:40:42 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:5483105d09166836731e940c850827dd1a4fe16b04d1921eea4d8da7c98e99bc`  
		Last Modified: Sat, 28 Apr 2018 12:15:18 GMT  
		Size: 42.1 MB (42063737 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1cb5424e9076ab96c3fbc714afcd99e7f9c4f35ecf54660ae99cf71410315613`  
		Last Modified: Sat, 28 Apr 2018 13:06:40 GMT  
		Size: 9.4 MB (9449717 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed44b64a3aee0cea1bad2a1954b943ef678d795d9c3ac814e5f8bbbc99a9b143`  
		Last Modified: Sat, 28 Apr 2018 13:06:38 GMT  
		Size: 3.9 MB (3912466 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4bc3778b47a719d716cab625df9300b141f34f7e5ea03ff1e5b454b811aca77b`  
		Last Modified: Sat, 28 Apr 2018 15:40:57 GMT  
		Size: 2.9 KB (2913 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8bf11c2bffb52c079ec60318863ea1354f2340d25ce231189500dfd0f5a4c00`  
		Last Modified: Sat, 28 Apr 2018 15:41:32 GMT  
		Size: 21.6 MB (21645871 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6db42f36b0d745a8775c6c113c1f89b3dd17c2732a7faff9c12331ff4cfa8390`  
		Last Modified: Sat, 28 Apr 2018 15:41:25 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bf3ddbf14c3302439a999de4c592f67cf8574cc9d871d12b3fdb28685d653d7`  
		Last Modified: Sat, 28 Apr 2018 15:41:25 GMT  
		Size: 210.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82b0d105623424b24f0f323e41ea679fce22fbcb27c4438349f76d708caa88b4`  
		Last Modified: Sat, 28 Apr 2018 15:41:25 GMT  
		Size: 1.2 KB (1165 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `influxdb:1.5.2` - linux; arm64 variant v8

```console
$ docker pull influxdb@sha256:f7643017ac1fef055366050a4d86d13e58e0f53256eec35d73fc4257ac6abced
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **77.9 MB (77894422 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5ae422bb5aff8680c9f0ca9db2102eb41975d841bb95094f4c3ca467bfe14ce9`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Mon, 30 Apr 2018 23:31:58 GMT
ADD file:245a8cfe59ea071e4e215a722e0d4b4b14fa95dd6ffd03739fe048433cfaf523 in / 
# Mon, 30 Apr 2018 23:32:00 GMT
CMD ["bash"]
# Tue, 01 May 2018 08:07:41 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 01 May 2018 08:08:02 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 01 May 2018 15:15:18 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Tue, 01 May 2018 15:15:44 GMT
ENV INFLUXDB_VERSION=1.5.2
# Tue, 01 May 2018 15:15:52 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     gpg --batch --verify influxdb_${INFLUXDB_VERSION}_${ARCH}.deb.asc influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     dpkg -i influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     rm -f influxdb_${INFLUXDB_VERSION}_${ARCH}.deb*
# Tue, 01 May 2018 15:15:53 GMT
COPY file:3ee2bc0321c2aa2451df7a508649c3a54f0eebc1ef9b8a24967c58105b4d3160 in /etc/influxdb/influxdb.conf 
# Tue, 01 May 2018 15:15:54 GMT
EXPOSE 8086/tcp
# Tue, 01 May 2018 15:15:55 GMT
VOLUME [/var/lib/influxdb]
# Tue, 01 May 2018 15:15:57 GMT
COPY file:098affa3d1b749dacb263ddacfd86a5de1f598d6ba1f7c789ce482c66ee9c80b in /entrypoint.sh 
# Tue, 01 May 2018 15:15:58 GMT
COPY file:44e0050f3b04248a6900eace944c581b13b4ad9af1e5cfb91d837cb5e24356e6 in /init-influxdb.sh 
# Tue, 01 May 2018 15:16:00 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 01 May 2018 15:16:01 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:142bf25d8d1b3ebc9dfbedd586e70a011594690acf48b2695bfce01e3a2cf0d5`  
		Last Modified: Mon, 30 Apr 2018 23:52:13 GMT  
		Size: 43.1 MB (43109349 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8fe3c77baf3b64937d2b7b343d9b966a08f6b90568acce53ff6effca0fd787fe`  
		Last Modified: Tue, 01 May 2018 08:57:09 GMT  
		Size: 9.7 MB (9697043 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:769a11625fb0ec33902994bfc5463ff53a6754be4cd51b8dc5ca168a05228b09`  
		Last Modified: Tue, 01 May 2018 08:57:06 GMT  
		Size: 4.1 MB (4087722 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33e575a19bb724c2146ccb1edc382e63172821703ec1c98d14c623c0b28ea739`  
		Last Modified: Tue, 01 May 2018 15:16:22 GMT  
		Size: 2.9 KB (2886 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a70c47cb42dfae51c711ea2813224840a7c86b5eadaa7188c4af39da01b7c69`  
		Last Modified: Tue, 01 May 2018 15:17:13 GMT  
		Size: 21.0 MB (20995824 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72918c55c836e01d0c5ffe02d72180eff6153a2096009d582cc359feca69457d`  
		Last Modified: Tue, 01 May 2018 15:16:57 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60d832b5cba90d3c88b48c2328584af55644e1a4e1f52b2a39fa485541f0384c`  
		Last Modified: Tue, 01 May 2018 15:16:58 GMT  
		Size: 209.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8641841a281a2f06ffa96ec199e656df85ce5542fb80c5af8111333027500b66`  
		Last Modified: Tue, 01 May 2018 15:16:58 GMT  
		Size: 1.2 KB (1164 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `influxdb:1.5.2-alpine`

```console
$ docker pull influxdb@sha256:2c8da92ff634ce8792e4f34cda57c25fd50f505b64b857a8e73510daae3f43c5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `influxdb:1.5.2-alpine` - linux; amd64

```console
$ docker pull influxdb@sha256:68d90e2911948127acaa3c5b1c7997562a740fcd322d93ada2656f19703d6810
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.4 MB (26397396 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f43578cbf8c2e5a9bd586dca5f1336ec7cc7908fd166a837c9bb9fd7bba0caeb`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Tue, 09 Jan 2018 21:10:38 GMT
ADD file:6edc55fb54ec9fc3658c8f5176a70e792103a516154442f94fed8e0290e4960e in / 
# Tue, 09 Jan 2018 21:10:38 GMT
CMD ["/bin/sh"]
# Tue, 09 Jan 2018 21:31:21 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf
# Tue, 09 Jan 2018 21:31:24 GMT
RUN apk add --no-cache tzdata bash
# Sat, 14 Apr 2018 03:45:33 GMT
ENV INFLUXDB_VERSION=1.5.2
# Sat, 14 Apr 2018 03:45:42 GMT
RUN set -ex &&     apk add --no-cache --virtual .build-deps wget gnupg tar ca-certificates &&     update-ca-certificates &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/influxdb/releases/influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/influxdb/releases/influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/influxdb-*/influxdb.conf &&     chmod +x /usr/src/influxdb-*/* &&     cp -a /usr/src/influxdb-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Sat, 14 Apr 2018 03:45:42 GMT
COPY file:3ee2bc0321c2aa2451df7a508649c3a54f0eebc1ef9b8a24967c58105b4d3160 in /etc/influxdb/influxdb.conf 
# Sat, 14 Apr 2018 03:45:42 GMT
EXPOSE 8086/tcp
# Sat, 14 Apr 2018 03:45:42 GMT
VOLUME [/var/lib/influxdb]
# Sat, 14 Apr 2018 03:45:43 GMT
COPY file:098affa3d1b749dacb263ddacfd86a5de1f598d6ba1f7c789ce482c66ee9c80b in /entrypoint.sh 
# Sat, 14 Apr 2018 03:45:43 GMT
COPY file:44e0050f3b04248a6900eace944c581b13b4ad9af1e5cfb91d837cb5e24356e6 in /init-influxdb.sh 
# Sat, 14 Apr 2018 03:45:44 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Sat, 14 Apr 2018 03:45:44 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:605ce1bd3f3164f2949a30501cc596f52a72de05da1306ab360055f0d7130c32`  
		Last Modified: Tue, 09 Jan 2018 21:13:17 GMT  
		Size: 2.0 MB (1991747 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4bfc8b91e98122366108d51bd0925304ee67ee4ec9ac28b15a1d3374e5fed982`  
		Last Modified: Tue, 09 Jan 2018 21:32:44 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62834f98d530d68f07f63088db7789b74c69f676d23de56ccdeb88da961f6367`  
		Last Modified: Tue, 09 Jan 2018 21:32:43 GMT  
		Size: 1.5 MB (1504273 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6d2465ee0081f2bf4c1181bbb3814781d0c23f233f733efec7aa0cdab795a56`  
		Last Modified: Sat, 14 Apr 2018 04:47:36 GMT  
		Size: 22.9 MB (22899623 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29f9d9f5e64057d024da68a0d05fecbf4bb02cbf50991c23fbfd22fb7377d8c7`  
		Last Modified: Sat, 14 Apr 2018 04:47:31 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da2625e3f2f61ac424892a2396f6a585416059480834b1d7c28c5aeca2332726`  
		Last Modified: Sat, 14 Apr 2018 04:47:31 GMT  
		Size: 210.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97d6447f8fc22ce950f51661c9b0c322300c698518baa38a076e94166b230698`  
		Last Modified: Sat, 14 Apr 2018 04:47:31 GMT  
		Size: 1.2 KB (1167 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `influxdb:1.5.2-data`

```console
$ docker pull influxdb@sha256:cc16ec7413ef4783573d7106f51f097b8ff9da601ba0f035c6992623411a1b28
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `influxdb:1.5.2-data` - linux; amd64

```console
$ docker pull influxdb@sha256:663cbc7807bdbc462e0e3b474f9e0f5f2a7693e4f9d585491f231d71b8515f2b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **84.3 MB (84341611 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7c1d6c0f968409d9395076aa9ba064ca5056bbf045faee985ba729422bf8805f`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Tue, 13 Mar 2018 22:26:49 GMT
ADD file:b380df301ccb5ca09f0d7cd5697ed402fa55f3e9bc5df2f4d489ba31f28de58a in / 
# Tue, 13 Mar 2018 22:26:49 GMT
CMD ["bash"]
# Tue, 13 Mar 2018 23:56:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 13 Mar 2018 23:56:22 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 15 Mar 2018 04:44:06 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Sat, 14 Apr 2018 03:54:33 GMT
ENV INFLUXDB_VERSION=1.5.2-c1.5.2
# Sat, 14 Apr 2018 03:54:38 GMT
RUN wget --no-verbose https://dl.influxdata.com/enterprise/releases/influxdb-data_${INFLUXDB_VERSION}_amd64.deb.asc &&     wget --no-verbose https://dl.influxdata.com/enterprise/releases/influxdb-data_${INFLUXDB_VERSION}_amd64.deb &&     gpg --batch --verify influxdb-data_${INFLUXDB_VERSION}_amd64.deb.asc influxdb-data_${INFLUXDB_VERSION}_amd64.deb &&     dpkg -i influxdb-data_${INFLUXDB_VERSION}_amd64.deb &&     rm -f influxdb-data_${INFLUXDB_VERSION}_amd64.deb*
# Sat, 14 Apr 2018 03:54:38 GMT
COPY file:a7fc957fd6465cc132b5d41618061e4ac55bd347b790cd87cc496ab4f67a274b in /etc/influxdb/influxdb.conf 
# Sat, 14 Apr 2018 03:54:38 GMT
EXPOSE 8086/tcp
# Sat, 14 Apr 2018 03:54:39 GMT
VOLUME [/var/lib/influxdb]
# Sat, 14 Apr 2018 03:54:39 GMT
COPY file:efb819384a9e7a972c15df74e1d18c7d6296e633a7c533def9a6d400b69468fc in /entrypoint.sh 
# Sat, 14 Apr 2018 03:54:39 GMT
COPY file:44e0050f3b04248a6900eace944c581b13b4ad9af1e5cfb91d837cb5e24356e6 in /init-influxdb.sh 
# Sat, 14 Apr 2018 03:54:40 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Sat, 14 Apr 2018 03:54:40 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:c73ab1c6897bf5c11da3c95cab103e7ca8cf10a6d041eda2ff836f45a40e3d3b`  
		Last Modified: Tue, 13 Mar 2018 22:52:31 GMT  
		Size: 45.1 MB (45135077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ab373b3deaed929a15574ac1912afc6e173f80d400aba0e96c89f6a58961f2d`  
		Last Modified: Wed, 14 Mar 2018 00:46:17 GMT  
		Size: 11.1 MB (11108010 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b542772b417703c0311c0b90136091369bcd9c2176c0e3ceed5a0114d743ee3c`  
		Last Modified: Wed, 14 Mar 2018 00:46:16 GMT  
		Size: 4.3 MB (4335495 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2546b96148b0132e0e7951e84aac3e432afc7a1db19caa990174a2a920142c26`  
		Last Modified: Thu, 15 Mar 2018 04:45:44 GMT  
		Size: 2.9 KB (2896 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:242fbba7cd8e2fbef9a470b8f658061ce5cb8090212e2cb6530208f8a9ecfe06`  
		Last Modified: Sat, 14 Apr 2018 04:54:08 GMT  
		Size: 23.8 MB (23758478 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7adb96c1dcc5e2b2cda9f27cfcb3c81337f694798a171be8ee1f492986f94d73`  
		Last Modified: Sat, 14 Apr 2018 04:54:02 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0c7bd07e1a138827090fcf24a88678f18001e71a1e2bbf2706ff8ab9eb4fcc6`  
		Last Modified: Sat, 14 Apr 2018 04:54:02 GMT  
		Size: 251.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0cb130fda44b06775e6a8c72f7b11b8a588cb8c295a6711d0048f88d5ea57df`  
		Last Modified: Sat, 14 Apr 2018 04:54:02 GMT  
		Size: 1.2 KB (1165 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `influxdb:1.5.2-data-alpine`

```console
$ docker pull influxdb@sha256:510df46232348011995c040ac84b4d5c76140ace2f45848e0c527018ceb2b127
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `influxdb:1.5.2-data-alpine` - linux; amd64

```console
$ docker pull influxdb@sha256:7f29b36bc0fb70a1b41dac832c17ed0b84852ded89cc33fa63cbfb59d28e4d78
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.5 MB (27497511 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c07994c949fa616377df7016dc7c3f502bf16e281a9bebd599c3e5d6883baa6e`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Tue, 09 Jan 2018 21:10:38 GMT
ADD file:6edc55fb54ec9fc3658c8f5176a70e792103a516154442f94fed8e0290e4960e in / 
# Tue, 09 Jan 2018 21:10:38 GMT
CMD ["/bin/sh"]
# Tue, 09 Jan 2018 21:31:21 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf
# Sat, 13 Jan 2018 01:39:13 GMT
RUN apk add --no-cache tzdata bash ca-certificates &&     update-ca-certificates
# Sat, 14 Apr 2018 04:04:39 GMT
ENV INFLUXDB_VERSION=1.5.2-c1.5.2
# Sat, 14 Apr 2018 04:04:50 GMT
RUN set -ex &&     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/enterprise/releases/influxdb-data-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/enterprise/releases/influxdb-data-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify influxdb-data-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc influxdb-data-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf influxdb-data-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/influxdb-*/influxdb.conf &&     chmod +x /usr/src/influxdb-*/* &&     cp -a /usr/src/influxdb-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Sat, 14 Apr 2018 04:04:51 GMT
COPY file:a7fc957fd6465cc132b5d41618061e4ac55bd347b790cd87cc496ab4f67a274b in /etc/influxdb/influxdb.conf 
# Sat, 14 Apr 2018 04:04:51 GMT
EXPOSE 8086/tcp
# Sat, 14 Apr 2018 04:04:51 GMT
VOLUME [/var/lib/influxdb]
# Sat, 14 Apr 2018 04:04:52 GMT
COPY file:efb819384a9e7a972c15df74e1d18c7d6296e633a7c533def9a6d400b69468fc in /entrypoint.sh 
# Sat, 14 Apr 2018 04:04:52 GMT
COPY file:44e0050f3b04248a6900eace944c581b13b4ad9af1e5cfb91d837cb5e24356e6 in /init-influxdb.sh 
# Sat, 14 Apr 2018 04:04:53 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Sat, 14 Apr 2018 04:04:53 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:605ce1bd3f3164f2949a30501cc596f52a72de05da1306ab360055f0d7130c32`  
		Last Modified: Tue, 09 Jan 2018 21:13:17 GMT  
		Size: 2.0 MB (1991747 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4bfc8b91e98122366108d51bd0925304ee67ee4ec9ac28b15a1d3374e5fed982`  
		Last Modified: Tue, 09 Jan 2018 21:32:44 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08b6c161ff2e67675f87132cc71e97fb00eb631fda65f42bb1f42e0a4597c178`  
		Last Modified: Sat, 13 Jan 2018 01:41:17 GMT  
		Size: 1.8 MB (1848579 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e88506e0fa8ff305bf91c6a9db2d3fc94a891a63c1db244856ca53805fea278`  
		Last Modified: Sat, 14 Apr 2018 05:15:33 GMT  
		Size: 23.7 MB (23655375 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75f9fa6747736cc74883713494dfcbe4d062bb9685b8be198c706e1fa4e0e98c`  
		Last Modified: Sat, 14 Apr 2018 05:15:28 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:852668c87a9448077ebc3f97bb057204d55b813127e30432b8aaa630a40d464a`  
		Last Modified: Sat, 14 Apr 2018 05:15:28 GMT  
		Size: 252.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:168f54fe926df0db4c0cccb916a7c31e0928ef6d076cfb25011ef87a19429ed0`  
		Last Modified: Sat, 14 Apr 2018 05:15:29 GMT  
		Size: 1.2 KB (1165 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `influxdb:1.5.2-meta`

```console
$ docker pull influxdb@sha256:0c5b36043e6e5a338ecb095f3a45839b23d7a6e4955f4835d2896175ce3cf861
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `influxdb:1.5.2-meta` - linux; amd64

```console
$ docker pull influxdb@sha256:b87999adf48c1447d341f2a24646fe252abf5dd999d29b4f94adbf82b8ea2995
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **71.8 MB (71777053 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eb01cedb4cff4efb5d781c75140f9c573a2b5d43e3a9fabe7c8a97c61839185f`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd-meta"]`

```dockerfile
# Tue, 13 Mar 2018 22:26:49 GMT
ADD file:b380df301ccb5ca09f0d7cd5697ed402fa55f3e9bc5df2f4d489ba31f28de58a in / 
# Tue, 13 Mar 2018 22:26:49 GMT
CMD ["bash"]
# Tue, 13 Mar 2018 23:56:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 13 Mar 2018 23:56:22 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 15 Mar 2018 04:44:06 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Sat, 14 Apr 2018 03:54:33 GMT
ENV INFLUXDB_VERSION=1.5.2-c1.5.2
# Sat, 14 Apr 2018 04:12:22 GMT
RUN wget --no-verbose https://dl.influxdata.com/enterprise/releases/influxdb-meta_${INFLUXDB_VERSION}_amd64.deb.asc &&     wget --no-verbose https://dl.influxdata.com/enterprise/releases/influxdb-meta_${INFLUXDB_VERSION}_amd64.deb &&     gpg --batch --verify influxdb-meta_${INFLUXDB_VERSION}_amd64.deb.asc influxdb-meta_${INFLUXDB_VERSION}_amd64.deb &&     dpkg -i influxdb-meta_${INFLUXDB_VERSION}_amd64.deb &&     rm -f influxdb-meta_${INFLUXDB_VERSION}_amd64.deb*
# Sat, 14 Apr 2018 04:12:22 GMT
COPY file:95a6fe33e203909c093135fff9ff2b4cdc02ca4f1fe1dec109b5a9cf6b7a0946 in /etc/influxdb/influxdb-meta.conf 
# Sat, 14 Apr 2018 04:12:23 GMT
EXPOSE 8091/tcp
# Sat, 14 Apr 2018 04:12:23 GMT
VOLUME [/var/lib/influxdb]
# Sat, 14 Apr 2018 04:12:23 GMT
COPY file:b4fa000cf2aff5bf4e5093021ca6255fffa17c43ae18eb4c55ae28a3cc2dc281 in /entrypoint.sh 
# Sat, 14 Apr 2018 04:12:24 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Sat, 14 Apr 2018 04:12:24 GMT
CMD ["influxd-meta"]
```

-	Layers:
	-	`sha256:c73ab1c6897bf5c11da3c95cab103e7ca8cf10a6d041eda2ff836f45a40e3d3b`  
		Last Modified: Tue, 13 Mar 2018 22:52:31 GMT  
		Size: 45.1 MB (45135077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ab373b3deaed929a15574ac1912afc6e173f80d400aba0e96c89f6a58961f2d`  
		Last Modified: Wed, 14 Mar 2018 00:46:17 GMT  
		Size: 11.1 MB (11108010 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b542772b417703c0311c0b90136091369bcd9c2176c0e3ceed5a0114d743ee3c`  
		Last Modified: Wed, 14 Mar 2018 00:46:16 GMT  
		Size: 4.3 MB (4335495 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2546b96148b0132e0e7951e84aac3e432afc7a1db19caa990174a2a920142c26`  
		Last Modified: Thu, 15 Mar 2018 04:45:44 GMT  
		Size: 2.9 KB (2896 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afa167bb7aefe73a058dce76dda4906d2e065071ec9a0f38d584db4ec7844bec`  
		Last Modified: Sat, 14 Apr 2018 05:35:48 GMT  
		Size: 11.2 MB (11195007 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cbe2efbd92dca26915055753534d1f38347aabdec7e508626a0d2db2447b79e9`  
		Last Modified: Sat, 14 Apr 2018 05:35:45 GMT  
		Size: 193.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:490d9c6d2282ae578ee5cffca4997ab7a99d96b61da30d49b4e47167eecf6bee`  
		Last Modified: Sat, 14 Apr 2018 05:35:45 GMT  
		Size: 375.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `influxdb:1.5.2-meta-alpine`

```console
$ docker pull influxdb@sha256:e120e51363d6797297b4b8c7d35d15bbff06c12bb212340bfd6bf11ad11b9d06
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `influxdb:1.5.2-meta-alpine` - linux; amd64

```console
$ docker pull influxdb@sha256:c0ef68e3cd2c8f1b6740e1345c46149a634e6c453ad2448bc51975ca32a2b7e2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.0 MB (14991553 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:221e76fe77781bee7de4e810c2ebbd97ef7246f9eac212d27d5b1173b40625af`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd-meta"]`

```dockerfile
# Tue, 09 Jan 2018 21:10:38 GMT
ADD file:6edc55fb54ec9fc3658c8f5176a70e792103a516154442f94fed8e0290e4960e in / 
# Tue, 09 Jan 2018 21:10:38 GMT
CMD ["/bin/sh"]
# Tue, 09 Jan 2018 21:31:21 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf
# Sat, 13 Jan 2018 01:39:13 GMT
RUN apk add --no-cache tzdata bash ca-certificates &&     update-ca-certificates
# Sat, 14 Apr 2018 04:04:39 GMT
ENV INFLUXDB_VERSION=1.5.2-c1.5.2
# Sat, 14 Apr 2018 04:12:57 GMT
RUN set -ex &&     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/enterprise/releases/influxdb-meta-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/enterprise/releases/influxdb-meta-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify influxdb-meta-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc influxdb-meta-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf influxdb-meta-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/influxdb-*/influxdb-meta.conf &&     chmod +x /usr/src/influxdb-*/* &&     cp -a /usr/src/influxdb-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Sat, 14 Apr 2018 04:12:57 GMT
COPY file:95a6fe33e203909c093135fff9ff2b4cdc02ca4f1fe1dec109b5a9cf6b7a0946 in /etc/influxdb/influxdb-meta.conf 
# Sat, 14 Apr 2018 04:12:58 GMT
EXPOSE 8091/tcp
# Sat, 14 Apr 2018 04:12:58 GMT
VOLUME [/var/lib/influxdb]
# Sat, 14 Apr 2018 04:12:59 GMT
COPY file:b4fa000cf2aff5bf4e5093021ca6255fffa17c43ae18eb4c55ae28a3cc2dc281 in /entrypoint.sh 
# Sat, 14 Apr 2018 04:12:59 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Sat, 14 Apr 2018 04:12:59 GMT
CMD ["influxd-meta"]
```

-	Layers:
	-	`sha256:605ce1bd3f3164f2949a30501cc596f52a72de05da1306ab360055f0d7130c32`  
		Last Modified: Tue, 09 Jan 2018 21:13:17 GMT  
		Size: 2.0 MB (1991747 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4bfc8b91e98122366108d51bd0925304ee67ee4ec9ac28b15a1d3374e5fed982`  
		Last Modified: Tue, 09 Jan 2018 21:32:44 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08b6c161ff2e67675f87132cc71e97fb00eb631fda65f42bb1f42e0a4597c178`  
		Last Modified: Sat, 13 Jan 2018 01:41:17 GMT  
		Size: 1.8 MB (1848579 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b370ef77c198b3f25bcffbbf270593893e1a8d75a6fe6ee126e1656a48dd1f9`  
		Last Modified: Sat, 14 Apr 2018 05:53:09 GMT  
		Size: 11.2 MB (11150506 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b88c9a2dfe5b9ef01485727d8815c3b468e7bfb2a657ccc244fb2b7e67c9cd7`  
		Last Modified: Sat, 14 Apr 2018 05:53:06 GMT  
		Size: 193.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2782d1fa437a0e75a522b005d0fa5df10579d5f50a9369aa40946423b9b0bb58`  
		Last Modified: Sat, 14 Apr 2018 05:53:06 GMT  
		Size: 375.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `influxdb:1.5-alpine`

```console
$ docker pull influxdb@sha256:2c8da92ff634ce8792e4f34cda57c25fd50f505b64b857a8e73510daae3f43c5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `influxdb:1.5-alpine` - linux; amd64

```console
$ docker pull influxdb@sha256:68d90e2911948127acaa3c5b1c7997562a740fcd322d93ada2656f19703d6810
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.4 MB (26397396 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f43578cbf8c2e5a9bd586dca5f1336ec7cc7908fd166a837c9bb9fd7bba0caeb`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Tue, 09 Jan 2018 21:10:38 GMT
ADD file:6edc55fb54ec9fc3658c8f5176a70e792103a516154442f94fed8e0290e4960e in / 
# Tue, 09 Jan 2018 21:10:38 GMT
CMD ["/bin/sh"]
# Tue, 09 Jan 2018 21:31:21 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf
# Tue, 09 Jan 2018 21:31:24 GMT
RUN apk add --no-cache tzdata bash
# Sat, 14 Apr 2018 03:45:33 GMT
ENV INFLUXDB_VERSION=1.5.2
# Sat, 14 Apr 2018 03:45:42 GMT
RUN set -ex &&     apk add --no-cache --virtual .build-deps wget gnupg tar ca-certificates &&     update-ca-certificates &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/influxdb/releases/influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/influxdb/releases/influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/influxdb-*/influxdb.conf &&     chmod +x /usr/src/influxdb-*/* &&     cp -a /usr/src/influxdb-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Sat, 14 Apr 2018 03:45:42 GMT
COPY file:3ee2bc0321c2aa2451df7a508649c3a54f0eebc1ef9b8a24967c58105b4d3160 in /etc/influxdb/influxdb.conf 
# Sat, 14 Apr 2018 03:45:42 GMT
EXPOSE 8086/tcp
# Sat, 14 Apr 2018 03:45:42 GMT
VOLUME [/var/lib/influxdb]
# Sat, 14 Apr 2018 03:45:43 GMT
COPY file:098affa3d1b749dacb263ddacfd86a5de1f598d6ba1f7c789ce482c66ee9c80b in /entrypoint.sh 
# Sat, 14 Apr 2018 03:45:43 GMT
COPY file:44e0050f3b04248a6900eace944c581b13b4ad9af1e5cfb91d837cb5e24356e6 in /init-influxdb.sh 
# Sat, 14 Apr 2018 03:45:44 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Sat, 14 Apr 2018 03:45:44 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:605ce1bd3f3164f2949a30501cc596f52a72de05da1306ab360055f0d7130c32`  
		Last Modified: Tue, 09 Jan 2018 21:13:17 GMT  
		Size: 2.0 MB (1991747 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4bfc8b91e98122366108d51bd0925304ee67ee4ec9ac28b15a1d3374e5fed982`  
		Last Modified: Tue, 09 Jan 2018 21:32:44 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62834f98d530d68f07f63088db7789b74c69f676d23de56ccdeb88da961f6367`  
		Last Modified: Tue, 09 Jan 2018 21:32:43 GMT  
		Size: 1.5 MB (1504273 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6d2465ee0081f2bf4c1181bbb3814781d0c23f233f733efec7aa0cdab795a56`  
		Last Modified: Sat, 14 Apr 2018 04:47:36 GMT  
		Size: 22.9 MB (22899623 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29f9d9f5e64057d024da68a0d05fecbf4bb02cbf50991c23fbfd22fb7377d8c7`  
		Last Modified: Sat, 14 Apr 2018 04:47:31 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da2625e3f2f61ac424892a2396f6a585416059480834b1d7c28c5aeca2332726`  
		Last Modified: Sat, 14 Apr 2018 04:47:31 GMT  
		Size: 210.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97d6447f8fc22ce950f51661c9b0c322300c698518baa38a076e94166b230698`  
		Last Modified: Sat, 14 Apr 2018 04:47:31 GMT  
		Size: 1.2 KB (1167 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `influxdb:1.5-data`

```console
$ docker pull influxdb@sha256:cc16ec7413ef4783573d7106f51f097b8ff9da601ba0f035c6992623411a1b28
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `influxdb:1.5-data` - linux; amd64

```console
$ docker pull influxdb@sha256:663cbc7807bdbc462e0e3b474f9e0f5f2a7693e4f9d585491f231d71b8515f2b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **84.3 MB (84341611 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7c1d6c0f968409d9395076aa9ba064ca5056bbf045faee985ba729422bf8805f`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Tue, 13 Mar 2018 22:26:49 GMT
ADD file:b380df301ccb5ca09f0d7cd5697ed402fa55f3e9bc5df2f4d489ba31f28de58a in / 
# Tue, 13 Mar 2018 22:26:49 GMT
CMD ["bash"]
# Tue, 13 Mar 2018 23:56:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 13 Mar 2018 23:56:22 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 15 Mar 2018 04:44:06 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Sat, 14 Apr 2018 03:54:33 GMT
ENV INFLUXDB_VERSION=1.5.2-c1.5.2
# Sat, 14 Apr 2018 03:54:38 GMT
RUN wget --no-verbose https://dl.influxdata.com/enterprise/releases/influxdb-data_${INFLUXDB_VERSION}_amd64.deb.asc &&     wget --no-verbose https://dl.influxdata.com/enterprise/releases/influxdb-data_${INFLUXDB_VERSION}_amd64.deb &&     gpg --batch --verify influxdb-data_${INFLUXDB_VERSION}_amd64.deb.asc influxdb-data_${INFLUXDB_VERSION}_amd64.deb &&     dpkg -i influxdb-data_${INFLUXDB_VERSION}_amd64.deb &&     rm -f influxdb-data_${INFLUXDB_VERSION}_amd64.deb*
# Sat, 14 Apr 2018 03:54:38 GMT
COPY file:a7fc957fd6465cc132b5d41618061e4ac55bd347b790cd87cc496ab4f67a274b in /etc/influxdb/influxdb.conf 
# Sat, 14 Apr 2018 03:54:38 GMT
EXPOSE 8086/tcp
# Sat, 14 Apr 2018 03:54:39 GMT
VOLUME [/var/lib/influxdb]
# Sat, 14 Apr 2018 03:54:39 GMT
COPY file:efb819384a9e7a972c15df74e1d18c7d6296e633a7c533def9a6d400b69468fc in /entrypoint.sh 
# Sat, 14 Apr 2018 03:54:39 GMT
COPY file:44e0050f3b04248a6900eace944c581b13b4ad9af1e5cfb91d837cb5e24356e6 in /init-influxdb.sh 
# Sat, 14 Apr 2018 03:54:40 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Sat, 14 Apr 2018 03:54:40 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:c73ab1c6897bf5c11da3c95cab103e7ca8cf10a6d041eda2ff836f45a40e3d3b`  
		Last Modified: Tue, 13 Mar 2018 22:52:31 GMT  
		Size: 45.1 MB (45135077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ab373b3deaed929a15574ac1912afc6e173f80d400aba0e96c89f6a58961f2d`  
		Last Modified: Wed, 14 Mar 2018 00:46:17 GMT  
		Size: 11.1 MB (11108010 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b542772b417703c0311c0b90136091369bcd9c2176c0e3ceed5a0114d743ee3c`  
		Last Modified: Wed, 14 Mar 2018 00:46:16 GMT  
		Size: 4.3 MB (4335495 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2546b96148b0132e0e7951e84aac3e432afc7a1db19caa990174a2a920142c26`  
		Last Modified: Thu, 15 Mar 2018 04:45:44 GMT  
		Size: 2.9 KB (2896 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:242fbba7cd8e2fbef9a470b8f658061ce5cb8090212e2cb6530208f8a9ecfe06`  
		Last Modified: Sat, 14 Apr 2018 04:54:08 GMT  
		Size: 23.8 MB (23758478 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7adb96c1dcc5e2b2cda9f27cfcb3c81337f694798a171be8ee1f492986f94d73`  
		Last Modified: Sat, 14 Apr 2018 04:54:02 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0c7bd07e1a138827090fcf24a88678f18001e71a1e2bbf2706ff8ab9eb4fcc6`  
		Last Modified: Sat, 14 Apr 2018 04:54:02 GMT  
		Size: 251.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0cb130fda44b06775e6a8c72f7b11b8a588cb8c295a6711d0048f88d5ea57df`  
		Last Modified: Sat, 14 Apr 2018 04:54:02 GMT  
		Size: 1.2 KB (1165 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `influxdb:1.5-data-alpine`

```console
$ docker pull influxdb@sha256:510df46232348011995c040ac84b4d5c76140ace2f45848e0c527018ceb2b127
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `influxdb:1.5-data-alpine` - linux; amd64

```console
$ docker pull influxdb@sha256:7f29b36bc0fb70a1b41dac832c17ed0b84852ded89cc33fa63cbfb59d28e4d78
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.5 MB (27497511 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c07994c949fa616377df7016dc7c3f502bf16e281a9bebd599c3e5d6883baa6e`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Tue, 09 Jan 2018 21:10:38 GMT
ADD file:6edc55fb54ec9fc3658c8f5176a70e792103a516154442f94fed8e0290e4960e in / 
# Tue, 09 Jan 2018 21:10:38 GMT
CMD ["/bin/sh"]
# Tue, 09 Jan 2018 21:31:21 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf
# Sat, 13 Jan 2018 01:39:13 GMT
RUN apk add --no-cache tzdata bash ca-certificates &&     update-ca-certificates
# Sat, 14 Apr 2018 04:04:39 GMT
ENV INFLUXDB_VERSION=1.5.2-c1.5.2
# Sat, 14 Apr 2018 04:04:50 GMT
RUN set -ex &&     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/enterprise/releases/influxdb-data-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/enterprise/releases/influxdb-data-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify influxdb-data-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc influxdb-data-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf influxdb-data-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/influxdb-*/influxdb.conf &&     chmod +x /usr/src/influxdb-*/* &&     cp -a /usr/src/influxdb-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Sat, 14 Apr 2018 04:04:51 GMT
COPY file:a7fc957fd6465cc132b5d41618061e4ac55bd347b790cd87cc496ab4f67a274b in /etc/influxdb/influxdb.conf 
# Sat, 14 Apr 2018 04:04:51 GMT
EXPOSE 8086/tcp
# Sat, 14 Apr 2018 04:04:51 GMT
VOLUME [/var/lib/influxdb]
# Sat, 14 Apr 2018 04:04:52 GMT
COPY file:efb819384a9e7a972c15df74e1d18c7d6296e633a7c533def9a6d400b69468fc in /entrypoint.sh 
# Sat, 14 Apr 2018 04:04:52 GMT
COPY file:44e0050f3b04248a6900eace944c581b13b4ad9af1e5cfb91d837cb5e24356e6 in /init-influxdb.sh 
# Sat, 14 Apr 2018 04:04:53 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Sat, 14 Apr 2018 04:04:53 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:605ce1bd3f3164f2949a30501cc596f52a72de05da1306ab360055f0d7130c32`  
		Last Modified: Tue, 09 Jan 2018 21:13:17 GMT  
		Size: 2.0 MB (1991747 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4bfc8b91e98122366108d51bd0925304ee67ee4ec9ac28b15a1d3374e5fed982`  
		Last Modified: Tue, 09 Jan 2018 21:32:44 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08b6c161ff2e67675f87132cc71e97fb00eb631fda65f42bb1f42e0a4597c178`  
		Last Modified: Sat, 13 Jan 2018 01:41:17 GMT  
		Size: 1.8 MB (1848579 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e88506e0fa8ff305bf91c6a9db2d3fc94a891a63c1db244856ca53805fea278`  
		Last Modified: Sat, 14 Apr 2018 05:15:33 GMT  
		Size: 23.7 MB (23655375 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75f9fa6747736cc74883713494dfcbe4d062bb9685b8be198c706e1fa4e0e98c`  
		Last Modified: Sat, 14 Apr 2018 05:15:28 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:852668c87a9448077ebc3f97bb057204d55b813127e30432b8aaa630a40d464a`  
		Last Modified: Sat, 14 Apr 2018 05:15:28 GMT  
		Size: 252.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:168f54fe926df0db4c0cccb916a7c31e0928ef6d076cfb25011ef87a19429ed0`  
		Last Modified: Sat, 14 Apr 2018 05:15:29 GMT  
		Size: 1.2 KB (1165 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `influxdb:1.5-meta`

```console
$ docker pull influxdb@sha256:0c5b36043e6e5a338ecb095f3a45839b23d7a6e4955f4835d2896175ce3cf861
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `influxdb:1.5-meta` - linux; amd64

```console
$ docker pull influxdb@sha256:b87999adf48c1447d341f2a24646fe252abf5dd999d29b4f94adbf82b8ea2995
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **71.8 MB (71777053 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eb01cedb4cff4efb5d781c75140f9c573a2b5d43e3a9fabe7c8a97c61839185f`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd-meta"]`

```dockerfile
# Tue, 13 Mar 2018 22:26:49 GMT
ADD file:b380df301ccb5ca09f0d7cd5697ed402fa55f3e9bc5df2f4d489ba31f28de58a in / 
# Tue, 13 Mar 2018 22:26:49 GMT
CMD ["bash"]
# Tue, 13 Mar 2018 23:56:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 13 Mar 2018 23:56:22 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 15 Mar 2018 04:44:06 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Sat, 14 Apr 2018 03:54:33 GMT
ENV INFLUXDB_VERSION=1.5.2-c1.5.2
# Sat, 14 Apr 2018 04:12:22 GMT
RUN wget --no-verbose https://dl.influxdata.com/enterprise/releases/influxdb-meta_${INFLUXDB_VERSION}_amd64.deb.asc &&     wget --no-verbose https://dl.influxdata.com/enterprise/releases/influxdb-meta_${INFLUXDB_VERSION}_amd64.deb &&     gpg --batch --verify influxdb-meta_${INFLUXDB_VERSION}_amd64.deb.asc influxdb-meta_${INFLUXDB_VERSION}_amd64.deb &&     dpkg -i influxdb-meta_${INFLUXDB_VERSION}_amd64.deb &&     rm -f influxdb-meta_${INFLUXDB_VERSION}_amd64.deb*
# Sat, 14 Apr 2018 04:12:22 GMT
COPY file:95a6fe33e203909c093135fff9ff2b4cdc02ca4f1fe1dec109b5a9cf6b7a0946 in /etc/influxdb/influxdb-meta.conf 
# Sat, 14 Apr 2018 04:12:23 GMT
EXPOSE 8091/tcp
# Sat, 14 Apr 2018 04:12:23 GMT
VOLUME [/var/lib/influxdb]
# Sat, 14 Apr 2018 04:12:23 GMT
COPY file:b4fa000cf2aff5bf4e5093021ca6255fffa17c43ae18eb4c55ae28a3cc2dc281 in /entrypoint.sh 
# Sat, 14 Apr 2018 04:12:24 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Sat, 14 Apr 2018 04:12:24 GMT
CMD ["influxd-meta"]
```

-	Layers:
	-	`sha256:c73ab1c6897bf5c11da3c95cab103e7ca8cf10a6d041eda2ff836f45a40e3d3b`  
		Last Modified: Tue, 13 Mar 2018 22:52:31 GMT  
		Size: 45.1 MB (45135077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ab373b3deaed929a15574ac1912afc6e173f80d400aba0e96c89f6a58961f2d`  
		Last Modified: Wed, 14 Mar 2018 00:46:17 GMT  
		Size: 11.1 MB (11108010 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b542772b417703c0311c0b90136091369bcd9c2176c0e3ceed5a0114d743ee3c`  
		Last Modified: Wed, 14 Mar 2018 00:46:16 GMT  
		Size: 4.3 MB (4335495 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2546b96148b0132e0e7951e84aac3e432afc7a1db19caa990174a2a920142c26`  
		Last Modified: Thu, 15 Mar 2018 04:45:44 GMT  
		Size: 2.9 KB (2896 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afa167bb7aefe73a058dce76dda4906d2e065071ec9a0f38d584db4ec7844bec`  
		Last Modified: Sat, 14 Apr 2018 05:35:48 GMT  
		Size: 11.2 MB (11195007 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cbe2efbd92dca26915055753534d1f38347aabdec7e508626a0d2db2447b79e9`  
		Last Modified: Sat, 14 Apr 2018 05:35:45 GMT  
		Size: 193.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:490d9c6d2282ae578ee5cffca4997ab7a99d96b61da30d49b4e47167eecf6bee`  
		Last Modified: Sat, 14 Apr 2018 05:35:45 GMT  
		Size: 375.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `influxdb:1.5-meta-alpine`

```console
$ docker pull influxdb@sha256:e120e51363d6797297b4b8c7d35d15bbff06c12bb212340bfd6bf11ad11b9d06
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `influxdb:1.5-meta-alpine` - linux; amd64

```console
$ docker pull influxdb@sha256:c0ef68e3cd2c8f1b6740e1345c46149a634e6c453ad2448bc51975ca32a2b7e2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.0 MB (14991553 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:221e76fe77781bee7de4e810c2ebbd97ef7246f9eac212d27d5b1173b40625af`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd-meta"]`

```dockerfile
# Tue, 09 Jan 2018 21:10:38 GMT
ADD file:6edc55fb54ec9fc3658c8f5176a70e792103a516154442f94fed8e0290e4960e in / 
# Tue, 09 Jan 2018 21:10:38 GMT
CMD ["/bin/sh"]
# Tue, 09 Jan 2018 21:31:21 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf
# Sat, 13 Jan 2018 01:39:13 GMT
RUN apk add --no-cache tzdata bash ca-certificates &&     update-ca-certificates
# Sat, 14 Apr 2018 04:04:39 GMT
ENV INFLUXDB_VERSION=1.5.2-c1.5.2
# Sat, 14 Apr 2018 04:12:57 GMT
RUN set -ex &&     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/enterprise/releases/influxdb-meta-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/enterprise/releases/influxdb-meta-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify influxdb-meta-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc influxdb-meta-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf influxdb-meta-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/influxdb-*/influxdb-meta.conf &&     chmod +x /usr/src/influxdb-*/* &&     cp -a /usr/src/influxdb-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Sat, 14 Apr 2018 04:12:57 GMT
COPY file:95a6fe33e203909c093135fff9ff2b4cdc02ca4f1fe1dec109b5a9cf6b7a0946 in /etc/influxdb/influxdb-meta.conf 
# Sat, 14 Apr 2018 04:12:58 GMT
EXPOSE 8091/tcp
# Sat, 14 Apr 2018 04:12:58 GMT
VOLUME [/var/lib/influxdb]
# Sat, 14 Apr 2018 04:12:59 GMT
COPY file:b4fa000cf2aff5bf4e5093021ca6255fffa17c43ae18eb4c55ae28a3cc2dc281 in /entrypoint.sh 
# Sat, 14 Apr 2018 04:12:59 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Sat, 14 Apr 2018 04:12:59 GMT
CMD ["influxd-meta"]
```

-	Layers:
	-	`sha256:605ce1bd3f3164f2949a30501cc596f52a72de05da1306ab360055f0d7130c32`  
		Last Modified: Tue, 09 Jan 2018 21:13:17 GMT  
		Size: 2.0 MB (1991747 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4bfc8b91e98122366108d51bd0925304ee67ee4ec9ac28b15a1d3374e5fed982`  
		Last Modified: Tue, 09 Jan 2018 21:32:44 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08b6c161ff2e67675f87132cc71e97fb00eb631fda65f42bb1f42e0a4597c178`  
		Last Modified: Sat, 13 Jan 2018 01:41:17 GMT  
		Size: 1.8 MB (1848579 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b370ef77c198b3f25bcffbbf270593893e1a8d75a6fe6ee126e1656a48dd1f9`  
		Last Modified: Sat, 14 Apr 2018 05:53:09 GMT  
		Size: 11.2 MB (11150506 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b88c9a2dfe5b9ef01485727d8815c3b468e7bfb2a657ccc244fb2b7e67c9cd7`  
		Last Modified: Sat, 14 Apr 2018 05:53:06 GMT  
		Size: 193.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2782d1fa437a0e75a522b005d0fa5df10579d5f50a9369aa40946423b9b0bb58`  
		Last Modified: Sat, 14 Apr 2018 05:53:06 GMT  
		Size: 375.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `influxdb:alpine`

```console
$ docker pull influxdb@sha256:2c8da92ff634ce8792e4f34cda57c25fd50f505b64b857a8e73510daae3f43c5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `influxdb:alpine` - linux; amd64

```console
$ docker pull influxdb@sha256:68d90e2911948127acaa3c5b1c7997562a740fcd322d93ada2656f19703d6810
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.4 MB (26397396 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f43578cbf8c2e5a9bd586dca5f1336ec7cc7908fd166a837c9bb9fd7bba0caeb`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Tue, 09 Jan 2018 21:10:38 GMT
ADD file:6edc55fb54ec9fc3658c8f5176a70e792103a516154442f94fed8e0290e4960e in / 
# Tue, 09 Jan 2018 21:10:38 GMT
CMD ["/bin/sh"]
# Tue, 09 Jan 2018 21:31:21 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf
# Tue, 09 Jan 2018 21:31:24 GMT
RUN apk add --no-cache tzdata bash
# Sat, 14 Apr 2018 03:45:33 GMT
ENV INFLUXDB_VERSION=1.5.2
# Sat, 14 Apr 2018 03:45:42 GMT
RUN set -ex &&     apk add --no-cache --virtual .build-deps wget gnupg tar ca-certificates &&     update-ca-certificates &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/influxdb/releases/influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/influxdb/releases/influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/influxdb-*/influxdb.conf &&     chmod +x /usr/src/influxdb-*/* &&     cp -a /usr/src/influxdb-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Sat, 14 Apr 2018 03:45:42 GMT
COPY file:3ee2bc0321c2aa2451df7a508649c3a54f0eebc1ef9b8a24967c58105b4d3160 in /etc/influxdb/influxdb.conf 
# Sat, 14 Apr 2018 03:45:42 GMT
EXPOSE 8086/tcp
# Sat, 14 Apr 2018 03:45:42 GMT
VOLUME [/var/lib/influxdb]
# Sat, 14 Apr 2018 03:45:43 GMT
COPY file:098affa3d1b749dacb263ddacfd86a5de1f598d6ba1f7c789ce482c66ee9c80b in /entrypoint.sh 
# Sat, 14 Apr 2018 03:45:43 GMT
COPY file:44e0050f3b04248a6900eace944c581b13b4ad9af1e5cfb91d837cb5e24356e6 in /init-influxdb.sh 
# Sat, 14 Apr 2018 03:45:44 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Sat, 14 Apr 2018 03:45:44 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:605ce1bd3f3164f2949a30501cc596f52a72de05da1306ab360055f0d7130c32`  
		Last Modified: Tue, 09 Jan 2018 21:13:17 GMT  
		Size: 2.0 MB (1991747 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4bfc8b91e98122366108d51bd0925304ee67ee4ec9ac28b15a1d3374e5fed982`  
		Last Modified: Tue, 09 Jan 2018 21:32:44 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62834f98d530d68f07f63088db7789b74c69f676d23de56ccdeb88da961f6367`  
		Last Modified: Tue, 09 Jan 2018 21:32:43 GMT  
		Size: 1.5 MB (1504273 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6d2465ee0081f2bf4c1181bbb3814781d0c23f233f733efec7aa0cdab795a56`  
		Last Modified: Sat, 14 Apr 2018 04:47:36 GMT  
		Size: 22.9 MB (22899623 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29f9d9f5e64057d024da68a0d05fecbf4bb02cbf50991c23fbfd22fb7377d8c7`  
		Last Modified: Sat, 14 Apr 2018 04:47:31 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da2625e3f2f61ac424892a2396f6a585416059480834b1d7c28c5aeca2332726`  
		Last Modified: Sat, 14 Apr 2018 04:47:31 GMT  
		Size: 210.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97d6447f8fc22ce950f51661c9b0c322300c698518baa38a076e94166b230698`  
		Last Modified: Sat, 14 Apr 2018 04:47:31 GMT  
		Size: 1.2 KB (1167 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `influxdb:data`

```console
$ docker pull influxdb@sha256:cc16ec7413ef4783573d7106f51f097b8ff9da601ba0f035c6992623411a1b28
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `influxdb:data` - linux; amd64

```console
$ docker pull influxdb@sha256:663cbc7807bdbc462e0e3b474f9e0f5f2a7693e4f9d585491f231d71b8515f2b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **84.3 MB (84341611 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7c1d6c0f968409d9395076aa9ba064ca5056bbf045faee985ba729422bf8805f`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Tue, 13 Mar 2018 22:26:49 GMT
ADD file:b380df301ccb5ca09f0d7cd5697ed402fa55f3e9bc5df2f4d489ba31f28de58a in / 
# Tue, 13 Mar 2018 22:26:49 GMT
CMD ["bash"]
# Tue, 13 Mar 2018 23:56:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 13 Mar 2018 23:56:22 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 15 Mar 2018 04:44:06 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Sat, 14 Apr 2018 03:54:33 GMT
ENV INFLUXDB_VERSION=1.5.2-c1.5.2
# Sat, 14 Apr 2018 03:54:38 GMT
RUN wget --no-verbose https://dl.influxdata.com/enterprise/releases/influxdb-data_${INFLUXDB_VERSION}_amd64.deb.asc &&     wget --no-verbose https://dl.influxdata.com/enterprise/releases/influxdb-data_${INFLUXDB_VERSION}_amd64.deb &&     gpg --batch --verify influxdb-data_${INFLUXDB_VERSION}_amd64.deb.asc influxdb-data_${INFLUXDB_VERSION}_amd64.deb &&     dpkg -i influxdb-data_${INFLUXDB_VERSION}_amd64.deb &&     rm -f influxdb-data_${INFLUXDB_VERSION}_amd64.deb*
# Sat, 14 Apr 2018 03:54:38 GMT
COPY file:a7fc957fd6465cc132b5d41618061e4ac55bd347b790cd87cc496ab4f67a274b in /etc/influxdb/influxdb.conf 
# Sat, 14 Apr 2018 03:54:38 GMT
EXPOSE 8086/tcp
# Sat, 14 Apr 2018 03:54:39 GMT
VOLUME [/var/lib/influxdb]
# Sat, 14 Apr 2018 03:54:39 GMT
COPY file:efb819384a9e7a972c15df74e1d18c7d6296e633a7c533def9a6d400b69468fc in /entrypoint.sh 
# Sat, 14 Apr 2018 03:54:39 GMT
COPY file:44e0050f3b04248a6900eace944c581b13b4ad9af1e5cfb91d837cb5e24356e6 in /init-influxdb.sh 
# Sat, 14 Apr 2018 03:54:40 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Sat, 14 Apr 2018 03:54:40 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:c73ab1c6897bf5c11da3c95cab103e7ca8cf10a6d041eda2ff836f45a40e3d3b`  
		Last Modified: Tue, 13 Mar 2018 22:52:31 GMT  
		Size: 45.1 MB (45135077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ab373b3deaed929a15574ac1912afc6e173f80d400aba0e96c89f6a58961f2d`  
		Last Modified: Wed, 14 Mar 2018 00:46:17 GMT  
		Size: 11.1 MB (11108010 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b542772b417703c0311c0b90136091369bcd9c2176c0e3ceed5a0114d743ee3c`  
		Last Modified: Wed, 14 Mar 2018 00:46:16 GMT  
		Size: 4.3 MB (4335495 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2546b96148b0132e0e7951e84aac3e432afc7a1db19caa990174a2a920142c26`  
		Last Modified: Thu, 15 Mar 2018 04:45:44 GMT  
		Size: 2.9 KB (2896 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:242fbba7cd8e2fbef9a470b8f658061ce5cb8090212e2cb6530208f8a9ecfe06`  
		Last Modified: Sat, 14 Apr 2018 04:54:08 GMT  
		Size: 23.8 MB (23758478 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7adb96c1dcc5e2b2cda9f27cfcb3c81337f694798a171be8ee1f492986f94d73`  
		Last Modified: Sat, 14 Apr 2018 04:54:02 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0c7bd07e1a138827090fcf24a88678f18001e71a1e2bbf2706ff8ab9eb4fcc6`  
		Last Modified: Sat, 14 Apr 2018 04:54:02 GMT  
		Size: 251.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0cb130fda44b06775e6a8c72f7b11b8a588cb8c295a6711d0048f88d5ea57df`  
		Last Modified: Sat, 14 Apr 2018 04:54:02 GMT  
		Size: 1.2 KB (1165 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `influxdb:data-alpine`

```console
$ docker pull influxdb@sha256:510df46232348011995c040ac84b4d5c76140ace2f45848e0c527018ceb2b127
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `influxdb:data-alpine` - linux; amd64

```console
$ docker pull influxdb@sha256:7f29b36bc0fb70a1b41dac832c17ed0b84852ded89cc33fa63cbfb59d28e4d78
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.5 MB (27497511 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c07994c949fa616377df7016dc7c3f502bf16e281a9bebd599c3e5d6883baa6e`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Tue, 09 Jan 2018 21:10:38 GMT
ADD file:6edc55fb54ec9fc3658c8f5176a70e792103a516154442f94fed8e0290e4960e in / 
# Tue, 09 Jan 2018 21:10:38 GMT
CMD ["/bin/sh"]
# Tue, 09 Jan 2018 21:31:21 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf
# Sat, 13 Jan 2018 01:39:13 GMT
RUN apk add --no-cache tzdata bash ca-certificates &&     update-ca-certificates
# Sat, 14 Apr 2018 04:04:39 GMT
ENV INFLUXDB_VERSION=1.5.2-c1.5.2
# Sat, 14 Apr 2018 04:04:50 GMT
RUN set -ex &&     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/enterprise/releases/influxdb-data-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/enterprise/releases/influxdb-data-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify influxdb-data-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc influxdb-data-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf influxdb-data-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/influxdb-*/influxdb.conf &&     chmod +x /usr/src/influxdb-*/* &&     cp -a /usr/src/influxdb-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Sat, 14 Apr 2018 04:04:51 GMT
COPY file:a7fc957fd6465cc132b5d41618061e4ac55bd347b790cd87cc496ab4f67a274b in /etc/influxdb/influxdb.conf 
# Sat, 14 Apr 2018 04:04:51 GMT
EXPOSE 8086/tcp
# Sat, 14 Apr 2018 04:04:51 GMT
VOLUME [/var/lib/influxdb]
# Sat, 14 Apr 2018 04:04:52 GMT
COPY file:efb819384a9e7a972c15df74e1d18c7d6296e633a7c533def9a6d400b69468fc in /entrypoint.sh 
# Sat, 14 Apr 2018 04:04:52 GMT
COPY file:44e0050f3b04248a6900eace944c581b13b4ad9af1e5cfb91d837cb5e24356e6 in /init-influxdb.sh 
# Sat, 14 Apr 2018 04:04:53 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Sat, 14 Apr 2018 04:04:53 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:605ce1bd3f3164f2949a30501cc596f52a72de05da1306ab360055f0d7130c32`  
		Last Modified: Tue, 09 Jan 2018 21:13:17 GMT  
		Size: 2.0 MB (1991747 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4bfc8b91e98122366108d51bd0925304ee67ee4ec9ac28b15a1d3374e5fed982`  
		Last Modified: Tue, 09 Jan 2018 21:32:44 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08b6c161ff2e67675f87132cc71e97fb00eb631fda65f42bb1f42e0a4597c178`  
		Last Modified: Sat, 13 Jan 2018 01:41:17 GMT  
		Size: 1.8 MB (1848579 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e88506e0fa8ff305bf91c6a9db2d3fc94a891a63c1db244856ca53805fea278`  
		Last Modified: Sat, 14 Apr 2018 05:15:33 GMT  
		Size: 23.7 MB (23655375 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75f9fa6747736cc74883713494dfcbe4d062bb9685b8be198c706e1fa4e0e98c`  
		Last Modified: Sat, 14 Apr 2018 05:15:28 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:852668c87a9448077ebc3f97bb057204d55b813127e30432b8aaa630a40d464a`  
		Last Modified: Sat, 14 Apr 2018 05:15:28 GMT  
		Size: 252.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:168f54fe926df0db4c0cccb916a7c31e0928ef6d076cfb25011ef87a19429ed0`  
		Last Modified: Sat, 14 Apr 2018 05:15:29 GMT  
		Size: 1.2 KB (1165 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `influxdb:latest`

```console
$ docker pull influxdb@sha256:486d895e98d6eada59a310563f8f38439bd2e9cbbc17422d7278ee73ceba4db2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `influxdb:latest` - linux; amd64

```console
$ docker pull influxdb@sha256:5ae5d628b1c931b6abe7e27be35dd60a67697efbd5e65980657ba8624ed32efa
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **83.6 MB (83595531 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8bece68eab338c5b6114b79c95eb4fb9cc021ffabe425f9c04c93bc3dc92007c`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Tue, 13 Mar 2018 22:26:49 GMT
ADD file:b380df301ccb5ca09f0d7cd5697ed402fa55f3e9bc5df2f4d489ba31f28de58a in / 
# Tue, 13 Mar 2018 22:26:49 GMT
CMD ["bash"]
# Tue, 13 Mar 2018 23:56:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 13 Mar 2018 23:56:22 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 15 Mar 2018 04:44:06 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Sat, 14 Apr 2018 03:36:38 GMT
ENV INFLUXDB_VERSION=1.5.2
# Sat, 14 Apr 2018 03:36:42 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     gpg --batch --verify influxdb_${INFLUXDB_VERSION}_${ARCH}.deb.asc influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     dpkg -i influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     rm -f influxdb_${INFLUXDB_VERSION}_${ARCH}.deb*
# Sat, 14 Apr 2018 03:36:43 GMT
COPY file:3ee2bc0321c2aa2451df7a508649c3a54f0eebc1ef9b8a24967c58105b4d3160 in /etc/influxdb/influxdb.conf 
# Sat, 14 Apr 2018 03:36:43 GMT
EXPOSE 8086/tcp
# Sat, 14 Apr 2018 03:36:43 GMT
VOLUME [/var/lib/influxdb]
# Sat, 14 Apr 2018 03:36:44 GMT
COPY file:098affa3d1b749dacb263ddacfd86a5de1f598d6ba1f7c789ce482c66ee9c80b in /entrypoint.sh 
# Sat, 14 Apr 2018 03:36:44 GMT
COPY file:44e0050f3b04248a6900eace944c581b13b4ad9af1e5cfb91d837cb5e24356e6 in /init-influxdb.sh 
# Sat, 14 Apr 2018 03:36:45 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Sat, 14 Apr 2018 03:36:45 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:c73ab1c6897bf5c11da3c95cab103e7ca8cf10a6d041eda2ff836f45a40e3d3b`  
		Last Modified: Tue, 13 Mar 2018 22:52:31 GMT  
		Size: 45.1 MB (45135077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ab373b3deaed929a15574ac1912afc6e173f80d400aba0e96c89f6a58961f2d`  
		Last Modified: Wed, 14 Mar 2018 00:46:17 GMT  
		Size: 11.1 MB (11108010 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b542772b417703c0311c0b90136091369bcd9c2176c0e3ceed5a0114d743ee3c`  
		Last Modified: Wed, 14 Mar 2018 00:46:16 GMT  
		Size: 4.3 MB (4335495 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2546b96148b0132e0e7951e84aac3e432afc7a1db19caa990174a2a920142c26`  
		Last Modified: Thu, 15 Mar 2018 04:45:44 GMT  
		Size: 2.9 KB (2896 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f24dbde0ab2a87b9e55c2f64b2081c0bfe0ae9e5f13f958e8d58db4b0ae9852b`  
		Last Modified: Sat, 14 Apr 2018 04:26:59 GMT  
		Size: 23.0 MB (23012450 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c13bfb45f2f9a7884e8b1fe0a0fdda22845b22d9d9f782d55b43e4c4d4ab6cc9`  
		Last Modified: Sat, 14 Apr 2018 04:26:54 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef310525a216f5833a672af1016975f95df4d4db6cae23d6e4a7c6568e5594a9`  
		Last Modified: Sat, 14 Apr 2018 04:26:53 GMT  
		Size: 211.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c7f42634642d29aff3cdc9e1fbbdf0246912d736cb20453585c5b74962b3ff7`  
		Last Modified: Sat, 14 Apr 2018 04:26:53 GMT  
		Size: 1.2 KB (1167 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `influxdb:latest` - linux; arm variant v7

```console
$ docker pull influxdb@sha256:2d0f5c56120a913077767f11f45997b2649459fe724dcb5a10f26ff73e25a32f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **77.1 MB (77076302 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:12d0c1dedd5532da012a5b1a8a99db876090e3db14caced3cfef7f0601720fdf`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Sat, 28 Apr 2018 12:04:18 GMT
ADD file:c7fba27b02c4bda63faef7eb30156a55feb4c0e9ecd529a24dd8d62942c2f83c in / 
# Sat, 28 Apr 2018 12:04:19 GMT
CMD ["bash"]
# Sat, 28 Apr 2018 12:42:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 12:42:39 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 28 Apr 2018 15:40:10 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Sat, 28 Apr 2018 15:40:34 GMT
ENV INFLUXDB_VERSION=1.5.2
# Sat, 28 Apr 2018 15:40:39 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     gpg --batch --verify influxdb_${INFLUXDB_VERSION}_${ARCH}.deb.asc influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     dpkg -i influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     rm -f influxdb_${INFLUXDB_VERSION}_${ARCH}.deb*
# Sat, 28 Apr 2018 15:40:39 GMT
COPY file:3ee2bc0321c2aa2451df7a508649c3a54f0eebc1ef9b8a24967c58105b4d3160 in /etc/influxdb/influxdb.conf 
# Sat, 28 Apr 2018 15:40:40 GMT
EXPOSE 8086/tcp
# Sat, 28 Apr 2018 15:40:40 GMT
VOLUME [/var/lib/influxdb]
# Sat, 28 Apr 2018 15:40:41 GMT
COPY file:098affa3d1b749dacb263ddacfd86a5de1f598d6ba1f7c789ce482c66ee9c80b in /entrypoint.sh 
# Sat, 28 Apr 2018 15:40:42 GMT
COPY file:44e0050f3b04248a6900eace944c581b13b4ad9af1e5cfb91d837cb5e24356e6 in /init-influxdb.sh 
# Sat, 28 Apr 2018 15:40:42 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Sat, 28 Apr 2018 15:40:42 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:5483105d09166836731e940c850827dd1a4fe16b04d1921eea4d8da7c98e99bc`  
		Last Modified: Sat, 28 Apr 2018 12:15:18 GMT  
		Size: 42.1 MB (42063737 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1cb5424e9076ab96c3fbc714afcd99e7f9c4f35ecf54660ae99cf71410315613`  
		Last Modified: Sat, 28 Apr 2018 13:06:40 GMT  
		Size: 9.4 MB (9449717 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed44b64a3aee0cea1bad2a1954b943ef678d795d9c3ac814e5f8bbbc99a9b143`  
		Last Modified: Sat, 28 Apr 2018 13:06:38 GMT  
		Size: 3.9 MB (3912466 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4bc3778b47a719d716cab625df9300b141f34f7e5ea03ff1e5b454b811aca77b`  
		Last Modified: Sat, 28 Apr 2018 15:40:57 GMT  
		Size: 2.9 KB (2913 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8bf11c2bffb52c079ec60318863ea1354f2340d25ce231189500dfd0f5a4c00`  
		Last Modified: Sat, 28 Apr 2018 15:41:32 GMT  
		Size: 21.6 MB (21645871 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6db42f36b0d745a8775c6c113c1f89b3dd17c2732a7faff9c12331ff4cfa8390`  
		Last Modified: Sat, 28 Apr 2018 15:41:25 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bf3ddbf14c3302439a999de4c592f67cf8574cc9d871d12b3fdb28685d653d7`  
		Last Modified: Sat, 28 Apr 2018 15:41:25 GMT  
		Size: 210.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82b0d105623424b24f0f323e41ea679fce22fbcb27c4438349f76d708caa88b4`  
		Last Modified: Sat, 28 Apr 2018 15:41:25 GMT  
		Size: 1.2 KB (1165 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `influxdb:latest` - linux; arm64 variant v8

```console
$ docker pull influxdb@sha256:f7643017ac1fef055366050a4d86d13e58e0f53256eec35d73fc4257ac6abced
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **77.9 MB (77894422 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5ae422bb5aff8680c9f0ca9db2102eb41975d841bb95094f4c3ca467bfe14ce9`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Mon, 30 Apr 2018 23:31:58 GMT
ADD file:245a8cfe59ea071e4e215a722e0d4b4b14fa95dd6ffd03739fe048433cfaf523 in / 
# Mon, 30 Apr 2018 23:32:00 GMT
CMD ["bash"]
# Tue, 01 May 2018 08:07:41 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 01 May 2018 08:08:02 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 01 May 2018 15:15:18 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Tue, 01 May 2018 15:15:44 GMT
ENV INFLUXDB_VERSION=1.5.2
# Tue, 01 May 2018 15:15:52 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     gpg --batch --verify influxdb_${INFLUXDB_VERSION}_${ARCH}.deb.asc influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     dpkg -i influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     rm -f influxdb_${INFLUXDB_VERSION}_${ARCH}.deb*
# Tue, 01 May 2018 15:15:53 GMT
COPY file:3ee2bc0321c2aa2451df7a508649c3a54f0eebc1ef9b8a24967c58105b4d3160 in /etc/influxdb/influxdb.conf 
# Tue, 01 May 2018 15:15:54 GMT
EXPOSE 8086/tcp
# Tue, 01 May 2018 15:15:55 GMT
VOLUME [/var/lib/influxdb]
# Tue, 01 May 2018 15:15:57 GMT
COPY file:098affa3d1b749dacb263ddacfd86a5de1f598d6ba1f7c789ce482c66ee9c80b in /entrypoint.sh 
# Tue, 01 May 2018 15:15:58 GMT
COPY file:44e0050f3b04248a6900eace944c581b13b4ad9af1e5cfb91d837cb5e24356e6 in /init-influxdb.sh 
# Tue, 01 May 2018 15:16:00 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 01 May 2018 15:16:01 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:142bf25d8d1b3ebc9dfbedd586e70a011594690acf48b2695bfce01e3a2cf0d5`  
		Last Modified: Mon, 30 Apr 2018 23:52:13 GMT  
		Size: 43.1 MB (43109349 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8fe3c77baf3b64937d2b7b343d9b966a08f6b90568acce53ff6effca0fd787fe`  
		Last Modified: Tue, 01 May 2018 08:57:09 GMT  
		Size: 9.7 MB (9697043 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:769a11625fb0ec33902994bfc5463ff53a6754be4cd51b8dc5ca168a05228b09`  
		Last Modified: Tue, 01 May 2018 08:57:06 GMT  
		Size: 4.1 MB (4087722 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33e575a19bb724c2146ccb1edc382e63172821703ec1c98d14c623c0b28ea739`  
		Last Modified: Tue, 01 May 2018 15:16:22 GMT  
		Size: 2.9 KB (2886 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a70c47cb42dfae51c711ea2813224840a7c86b5eadaa7188c4af39da01b7c69`  
		Last Modified: Tue, 01 May 2018 15:17:13 GMT  
		Size: 21.0 MB (20995824 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72918c55c836e01d0c5ffe02d72180eff6153a2096009d582cc359feca69457d`  
		Last Modified: Tue, 01 May 2018 15:16:57 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60d832b5cba90d3c88b48c2328584af55644e1a4e1f52b2a39fa485541f0384c`  
		Last Modified: Tue, 01 May 2018 15:16:58 GMT  
		Size: 209.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8641841a281a2f06ffa96ec199e656df85ce5542fb80c5af8111333027500b66`  
		Last Modified: Tue, 01 May 2018 15:16:58 GMT  
		Size: 1.2 KB (1164 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `influxdb:meta`

```console
$ docker pull influxdb@sha256:0c5b36043e6e5a338ecb095f3a45839b23d7a6e4955f4835d2896175ce3cf861
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `influxdb:meta` - linux; amd64

```console
$ docker pull influxdb@sha256:b87999adf48c1447d341f2a24646fe252abf5dd999d29b4f94adbf82b8ea2995
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **71.8 MB (71777053 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eb01cedb4cff4efb5d781c75140f9c573a2b5d43e3a9fabe7c8a97c61839185f`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd-meta"]`

```dockerfile
# Tue, 13 Mar 2018 22:26:49 GMT
ADD file:b380df301ccb5ca09f0d7cd5697ed402fa55f3e9bc5df2f4d489ba31f28de58a in / 
# Tue, 13 Mar 2018 22:26:49 GMT
CMD ["bash"]
# Tue, 13 Mar 2018 23:56:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 13 Mar 2018 23:56:22 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 15 Mar 2018 04:44:06 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Sat, 14 Apr 2018 03:54:33 GMT
ENV INFLUXDB_VERSION=1.5.2-c1.5.2
# Sat, 14 Apr 2018 04:12:22 GMT
RUN wget --no-verbose https://dl.influxdata.com/enterprise/releases/influxdb-meta_${INFLUXDB_VERSION}_amd64.deb.asc &&     wget --no-verbose https://dl.influxdata.com/enterprise/releases/influxdb-meta_${INFLUXDB_VERSION}_amd64.deb &&     gpg --batch --verify influxdb-meta_${INFLUXDB_VERSION}_amd64.deb.asc influxdb-meta_${INFLUXDB_VERSION}_amd64.deb &&     dpkg -i influxdb-meta_${INFLUXDB_VERSION}_amd64.deb &&     rm -f influxdb-meta_${INFLUXDB_VERSION}_amd64.deb*
# Sat, 14 Apr 2018 04:12:22 GMT
COPY file:95a6fe33e203909c093135fff9ff2b4cdc02ca4f1fe1dec109b5a9cf6b7a0946 in /etc/influxdb/influxdb-meta.conf 
# Sat, 14 Apr 2018 04:12:23 GMT
EXPOSE 8091/tcp
# Sat, 14 Apr 2018 04:12:23 GMT
VOLUME [/var/lib/influxdb]
# Sat, 14 Apr 2018 04:12:23 GMT
COPY file:b4fa000cf2aff5bf4e5093021ca6255fffa17c43ae18eb4c55ae28a3cc2dc281 in /entrypoint.sh 
# Sat, 14 Apr 2018 04:12:24 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Sat, 14 Apr 2018 04:12:24 GMT
CMD ["influxd-meta"]
```

-	Layers:
	-	`sha256:c73ab1c6897bf5c11da3c95cab103e7ca8cf10a6d041eda2ff836f45a40e3d3b`  
		Last Modified: Tue, 13 Mar 2018 22:52:31 GMT  
		Size: 45.1 MB (45135077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ab373b3deaed929a15574ac1912afc6e173f80d400aba0e96c89f6a58961f2d`  
		Last Modified: Wed, 14 Mar 2018 00:46:17 GMT  
		Size: 11.1 MB (11108010 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b542772b417703c0311c0b90136091369bcd9c2176c0e3ceed5a0114d743ee3c`  
		Last Modified: Wed, 14 Mar 2018 00:46:16 GMT  
		Size: 4.3 MB (4335495 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2546b96148b0132e0e7951e84aac3e432afc7a1db19caa990174a2a920142c26`  
		Last Modified: Thu, 15 Mar 2018 04:45:44 GMT  
		Size: 2.9 KB (2896 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afa167bb7aefe73a058dce76dda4906d2e065071ec9a0f38d584db4ec7844bec`  
		Last Modified: Sat, 14 Apr 2018 05:35:48 GMT  
		Size: 11.2 MB (11195007 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cbe2efbd92dca26915055753534d1f38347aabdec7e508626a0d2db2447b79e9`  
		Last Modified: Sat, 14 Apr 2018 05:35:45 GMT  
		Size: 193.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:490d9c6d2282ae578ee5cffca4997ab7a99d96b61da30d49b4e47167eecf6bee`  
		Last Modified: Sat, 14 Apr 2018 05:35:45 GMT  
		Size: 375.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `influxdb:meta-alpine`

```console
$ docker pull influxdb@sha256:e120e51363d6797297b4b8c7d35d15bbff06c12bb212340bfd6bf11ad11b9d06
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `influxdb:meta-alpine` - linux; amd64

```console
$ docker pull influxdb@sha256:c0ef68e3cd2c8f1b6740e1345c46149a634e6c453ad2448bc51975ca32a2b7e2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.0 MB (14991553 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:221e76fe77781bee7de4e810c2ebbd97ef7246f9eac212d27d5b1173b40625af`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd-meta"]`

```dockerfile
# Tue, 09 Jan 2018 21:10:38 GMT
ADD file:6edc55fb54ec9fc3658c8f5176a70e792103a516154442f94fed8e0290e4960e in / 
# Tue, 09 Jan 2018 21:10:38 GMT
CMD ["/bin/sh"]
# Tue, 09 Jan 2018 21:31:21 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf
# Sat, 13 Jan 2018 01:39:13 GMT
RUN apk add --no-cache tzdata bash ca-certificates &&     update-ca-certificates
# Sat, 14 Apr 2018 04:04:39 GMT
ENV INFLUXDB_VERSION=1.5.2-c1.5.2
# Sat, 14 Apr 2018 04:12:57 GMT
RUN set -ex &&     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/enterprise/releases/influxdb-meta-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/enterprise/releases/influxdb-meta-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify influxdb-meta-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc influxdb-meta-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf influxdb-meta-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/influxdb-*/influxdb-meta.conf &&     chmod +x /usr/src/influxdb-*/* &&     cp -a /usr/src/influxdb-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Sat, 14 Apr 2018 04:12:57 GMT
COPY file:95a6fe33e203909c093135fff9ff2b4cdc02ca4f1fe1dec109b5a9cf6b7a0946 in /etc/influxdb/influxdb-meta.conf 
# Sat, 14 Apr 2018 04:12:58 GMT
EXPOSE 8091/tcp
# Sat, 14 Apr 2018 04:12:58 GMT
VOLUME [/var/lib/influxdb]
# Sat, 14 Apr 2018 04:12:59 GMT
COPY file:b4fa000cf2aff5bf4e5093021ca6255fffa17c43ae18eb4c55ae28a3cc2dc281 in /entrypoint.sh 
# Sat, 14 Apr 2018 04:12:59 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Sat, 14 Apr 2018 04:12:59 GMT
CMD ["influxd-meta"]
```

-	Layers:
	-	`sha256:605ce1bd3f3164f2949a30501cc596f52a72de05da1306ab360055f0d7130c32`  
		Last Modified: Tue, 09 Jan 2018 21:13:17 GMT  
		Size: 2.0 MB (1991747 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4bfc8b91e98122366108d51bd0925304ee67ee4ec9ac28b15a1d3374e5fed982`  
		Last Modified: Tue, 09 Jan 2018 21:32:44 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08b6c161ff2e67675f87132cc71e97fb00eb631fda65f42bb1f42e0a4597c178`  
		Last Modified: Sat, 13 Jan 2018 01:41:17 GMT  
		Size: 1.8 MB (1848579 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b370ef77c198b3f25bcffbbf270593893e1a8d75a6fe6ee126e1656a48dd1f9`  
		Last Modified: Sat, 14 Apr 2018 05:53:09 GMT  
		Size: 11.2 MB (11150506 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b88c9a2dfe5b9ef01485727d8815c3b468e7bfb2a657ccc244fb2b7e67c9cd7`  
		Last Modified: Sat, 14 Apr 2018 05:53:06 GMT  
		Size: 193.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2782d1fa437a0e75a522b005d0fa5df10579d5f50a9369aa40946423b9b0bb58`  
		Last Modified: Sat, 14 Apr 2018 05:53:06 GMT  
		Size: 375.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
