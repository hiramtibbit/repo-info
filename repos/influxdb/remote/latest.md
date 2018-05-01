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
