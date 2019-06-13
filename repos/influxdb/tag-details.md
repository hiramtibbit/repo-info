<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `influxdb`

-	[`influxdb:1.5`](#influxdb15)
-	[`influxdb:1.5.4`](#influxdb154)
-	[`influxdb:1.5.4-alpine`](#influxdb154-alpine)
-	[`influxdb:1.5.4-data`](#influxdb154-data)
-	[`influxdb:1.5.4-data-alpine`](#influxdb154-data-alpine)
-	[`influxdb:1.5.4-meta`](#influxdb154-meta)
-	[`influxdb:1.5.4-meta-alpine`](#influxdb154-meta-alpine)
-	[`influxdb:1.5-alpine`](#influxdb15-alpine)
-	[`influxdb:1.5-data`](#influxdb15-data)
-	[`influxdb:1.5-data-alpine`](#influxdb15-data-alpine)
-	[`influxdb:1.5-meta`](#influxdb15-meta)
-	[`influxdb:1.5-meta-alpine`](#influxdb15-meta-alpine)
-	[`influxdb:1.6`](#influxdb16)
-	[`influxdb:1.6.6`](#influxdb166)
-	[`influxdb:1.6.6-alpine`](#influxdb166-alpine)
-	[`influxdb:1.6.6-data`](#influxdb166-data)
-	[`influxdb:1.6.6-data-alpine`](#influxdb166-data-alpine)
-	[`influxdb:1.6.6-meta`](#influxdb166-meta)
-	[`influxdb:1.6.6-meta-alpine`](#influxdb166-meta-alpine)
-	[`influxdb:1.6-alpine`](#influxdb16-alpine)
-	[`influxdb:1.6-data`](#influxdb16-data)
-	[`influxdb:1.6-data-alpine`](#influxdb16-data-alpine)
-	[`influxdb:1.6-meta`](#influxdb16-meta)
-	[`influxdb:1.6-meta-alpine`](#influxdb16-meta-alpine)
-	[`influxdb:1.7`](#influxdb17)
-	[`influxdb:1.7.5-data`](#influxdb175-data)
-	[`influxdb:1.7.5-data-alpine`](#influxdb175-data-alpine)
-	[`influxdb:1.7.5-meta`](#influxdb175-meta)
-	[`influxdb:1.7.5-meta-alpine`](#influxdb175-meta-alpine)
-	[`influxdb:1.7.6`](#influxdb176)
-	[`influxdb:1.7.6-alpine`](#influxdb176-alpine)
-	[`influxdb:1.7-alpine`](#influxdb17-alpine)
-	[`influxdb:1.7-data`](#influxdb17-data)
-	[`influxdb:1.7-data-alpine`](#influxdb17-data-alpine)
-	[`influxdb:1.7-meta`](#influxdb17-meta)
-	[`influxdb:1.7-meta-alpine`](#influxdb17-meta-alpine)
-	[`influxdb:alpine`](#influxdbalpine)
-	[`influxdb:data`](#influxdbdata)
-	[`influxdb:data-alpine`](#influxdbdata-alpine)
-	[`influxdb:latest`](#influxdblatest)
-	[`influxdb:meta`](#influxdbmeta)
-	[`influxdb:meta-alpine`](#influxdbmeta-alpine)

## `influxdb:1.5`

```console
$ docker pull influxdb@sha256:77a401bd9a39178c9109e93ae9f307e8869d33d4ae91184ef15234b793bb4fb5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `influxdb:1.5` - linux; amd64

```console
$ docker pull influxdb@sha256:dfea65917b8c8cfec4c347960db780b47f1bc622f2b1fc9b0055b3348dd98cb8
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **83.5 MB (83497931 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6bf0263ba5787a77017617e30633deb30d8d6098b0592fdca16c43bd32bfb7fd`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Mon, 10 Jun 2019 23:24:07 GMT
ADD file:6e8620824300ccf3754fb5d8644a1dc7c69431d4cd1ef9d28d73f39260f96020 in / 
# Mon, 10 Jun 2019 23:24:07 GMT
CMD ["bash"]
# Tue, 11 Jun 2019 00:29:50 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 11 Jun 2019 00:30:00 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 11 Jun 2019 08:47:39 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Tue, 11 Jun 2019 08:47:39 GMT
ENV INFLUXDB_VERSION=1.5.4
# Tue, 11 Jun 2019 08:47:54 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     gpg --batch --verify influxdb_${INFLUXDB_VERSION}_${ARCH}.deb.asc influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     dpkg -i influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     rm -f influxdb_${INFLUXDB_VERSION}_${ARCH}.deb*
# Tue, 11 Jun 2019 08:47:54 GMT
COPY file:3d8a606d61e1fc0042cf34d036eda4550a18d140c47376dacc02d96ee6f2dd8b in /etc/influxdb/influxdb.conf 
# Tue, 11 Jun 2019 08:47:55 GMT
EXPOSE 8086
# Tue, 11 Jun 2019 08:47:55 GMT
VOLUME [/var/lib/influxdb]
# Tue, 11 Jun 2019 08:47:55 GMT
COPY file:61c4af7a0e637328374ec46266ed6dde40adf7d14ac6c5081100924991beb7f3 in /entrypoint.sh 
# Tue, 11 Jun 2019 08:47:55 GMT
COPY file:892fcd3130baa17c0b88866ac37e7fe0b7b420a67105d9cd99803c685eaf9df4 in /init-influxdb.sh 
# Tue, 11 Jun 2019 08:47:56 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 11 Jun 2019 08:47:56 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:6f2f362378c5a6fd915d96d11dda1e0223ccf213bf121ace56ae0f6616ea1dc8`  
		Last Modified: Mon, 10 Jun 2019 23:27:55 GMT  
		Size: 45.3 MB (45339350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:494c27a8a6b820f9167ec7e368b3a9bb47d7029f4dc8c97c67091f3757a5bc4e`  
		Last Modified: Tue, 11 Jun 2019 00:37:59 GMT  
		Size: 10.8 MB (10785105 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7596bb83081b6c8410df557d538a0ae45922cbf81e469c6f4cfa835247cb24ab`  
		Last Modified: Tue, 11 Jun 2019 00:37:59 GMT  
		Size: 4.3 MB (4340143 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:058194e879938a49f17a6b38e4bbad333fc180da0644f975d63502ec1151ed47`  
		Last Modified: Tue, 11 Jun 2019 08:50:41 GMT  
		Size: 2.8 KB (2773 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0aaeff4b0e12b9bb23b0316c93c0298d66db406d14b5bfedc3496612b69d3749`  
		Last Modified: Tue, 11 Jun 2019 08:50:48 GMT  
		Size: 23.0 MB (23028959 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb92b9476489e0315725b42e03e720e46cf206a4cbff3412774f94065b5e6010`  
		Last Modified: Tue, 11 Jun 2019 08:50:41 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a191b373888fc1fa286a0c988662b1d347c717ff462a5653f1335365a31c5cac`  
		Last Modified: Tue, 11 Jun 2019 08:50:41 GMT  
		Size: 210.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1337f48c1e0084bc84b3e9228ef8164af05ecea37a30ccb99bb3c0efa96b7005`  
		Last Modified: Tue, 11 Jun 2019 08:50:41 GMT  
		Size: 1.2 KB (1165 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `influxdb:1.5` - linux; arm variant v7

```console
$ docker pull influxdb@sha256:6264081cfc02c02e10f2a5e6ef50d8c85da497871d8d6095ad3eb5914b954103
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **77.1 MB (77149758 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:81ce2c40db52127799e123258247d6ce736d52339dd3b5b00c11cc35ce9661f8`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Tue, 11 Jun 2019 00:02:40 GMT
ADD file:a533ab960a52dd32ca40bdcb55083ba8c340e110f8519a3eda696b46a4a07165 in / 
# Tue, 11 Jun 2019 00:02:41 GMT
CMD ["bash"]
# Tue, 11 Jun 2019 01:09:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 11 Jun 2019 01:09:19 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 13 Jun 2019 00:30:31 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Thu, 13 Jun 2019 00:30:32 GMT
ENV INFLUXDB_VERSION=1.5.4
# Thu, 13 Jun 2019 00:30:37 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     gpg --batch --verify influxdb_${INFLUXDB_VERSION}_${ARCH}.deb.asc influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     dpkg -i influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     rm -f influxdb_${INFLUXDB_VERSION}_${ARCH}.deb*
# Thu, 13 Jun 2019 00:30:38 GMT
COPY file:3d8a606d61e1fc0042cf34d036eda4550a18d140c47376dacc02d96ee6f2dd8b in /etc/influxdb/influxdb.conf 
# Thu, 13 Jun 2019 00:30:39 GMT
EXPOSE 8086
# Thu, 13 Jun 2019 00:30:40 GMT
VOLUME [/var/lib/influxdb]
# Thu, 13 Jun 2019 00:30:40 GMT
COPY file:61c4af7a0e637328374ec46266ed6dde40adf7d14ac6c5081100924991beb7f3 in /entrypoint.sh 
# Thu, 13 Jun 2019 00:30:41 GMT
COPY file:892fcd3130baa17c0b88866ac37e7fe0b7b420a67105d9cd99803c685eaf9df4 in /init-influxdb.sh 
# Thu, 13 Jun 2019 00:30:42 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 13 Jun 2019 00:30:42 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:162e276b1a29dfd1a4601fd55aeaeb0175b63182e9190b1b0068252e5196b015`  
		Last Modified: Tue, 11 Jun 2019 00:09:02 GMT  
		Size: 42.1 MB (42082622 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:052e820679506cc68db5317ee3f92e7f5f520894f881940a686f7b1280ff93a0`  
		Last Modified: Tue, 11 Jun 2019 01:17:33 GMT  
		Size: 9.5 MB (9485206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f5e84bede193d1aa79031526fbcfa99e8b6cf354b12a7cfbe5cdfe2c9acf155`  
		Last Modified: Tue, 11 Jun 2019 01:17:32 GMT  
		Size: 3.9 MB (3918643 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:269727385d075ffeeff0c3f9ddce8009ea58bb8a959b813302a1566f1acdc1a0`  
		Last Modified: Thu, 13 Jun 2019 00:31:37 GMT  
		Size: 2.8 KB (2801 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2cc27067ac7a4294d6581bfa5ca910106338a11bacafd7fccf4588ed94cdb90`  
		Last Modified: Thu, 13 Jun 2019 00:31:44 GMT  
		Size: 21.7 MB (21658885 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed1221ab8710b5c438f0fce02bcc20041eee79de1c0fba4d7d414752c1e3db9f`  
		Last Modified: Thu, 13 Jun 2019 00:31:37 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8228e439614a2025e9eeaa9f5af462f13e4d92cd8d963f202520be0bac29b2d`  
		Last Modified: Thu, 13 Jun 2019 00:31:37 GMT  
		Size: 210.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad55f7d7ec39295bc596b9621a398ddef9610dab8ddec2a91de8a0a429a3cc59`  
		Last Modified: Thu, 13 Jun 2019 00:31:37 GMT  
		Size: 1.2 KB (1165 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `influxdb:1.5` - linux; arm64 variant v8

```console
$ docker pull influxdb@sha256:479a62f5999cf4ad11774d4433371685c912cd01b123a2623347e001fddf2afe
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **78.0 MB (77985236 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4abbbc8104f4bb6239bbae91b96e3912169ceb950e064ef7313725c52d8ce675`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Wed, 08 May 2019 08:48:25 GMT
ADD file:153045f4fe6532d8c2ff273bb249a7a3a4cba913c26a4103ba5ddce1af02c1e5 in / 
# Wed, 08 May 2019 08:48:26 GMT
CMD ["bash"]
# Tue, 11 Jun 2019 00:19:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 11 Jun 2019 00:19:38 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 13 Jun 2019 00:19:57 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Thu, 13 Jun 2019 00:19:58 GMT
ENV INFLUXDB_VERSION=1.5.4
# Thu, 13 Jun 2019 00:20:03 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     gpg --batch --verify influxdb_${INFLUXDB_VERSION}_${ARCH}.deb.asc influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     dpkg -i influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     rm -f influxdb_${INFLUXDB_VERSION}_${ARCH}.deb*
# Thu, 13 Jun 2019 00:20:04 GMT
COPY file:3d8a606d61e1fc0042cf34d036eda4550a18d140c47376dacc02d96ee6f2dd8b in /etc/influxdb/influxdb.conf 
# Thu, 13 Jun 2019 00:20:04 GMT
EXPOSE 8086
# Thu, 13 Jun 2019 00:20:05 GMT
VOLUME [/var/lib/influxdb]
# Thu, 13 Jun 2019 00:20:05 GMT
COPY file:61c4af7a0e637328374ec46266ed6dde40adf7d14ac6c5081100924991beb7f3 in /entrypoint.sh 
# Thu, 13 Jun 2019 00:20:06 GMT
COPY file:892fcd3130baa17c0b88866ac37e7fe0b7b420a67105d9cd99803c685eaf9df4 in /init-influxdb.sh 
# Thu, 13 Jun 2019 00:20:07 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 13 Jun 2019 00:20:07 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:5894e28291972e44f5c3eba2779a85979bae6f95ed4f3e43ea5c98a132f06c48`  
		Last Modified: Wed, 08 May 2019 08:54:43 GMT  
		Size: 43.1 MB (43141955 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4579724c1a9cbbeb91053f719bf515654043a3e39cfaa248ebedc84c2f0460ea`  
		Last Modified: Tue, 11 Jun 2019 00:36:45 GMT  
		Size: 9.7 MB (9734083 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a493ac681ca78302ad6a97cd01e4daa5f1d995f0523f5e5cb8306071eea417b5`  
		Last Modified: Tue, 11 Jun 2019 00:36:43 GMT  
		Size: 4.1 MB (4094360 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1717658875655479c6ac9da01ba542fac343b49eb5f8646d039b6880740f9389`  
		Last Modified: Thu, 13 Jun 2019 00:20:53 GMT  
		Size: 2.8 KB (2804 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26093ec7dc0e23b49924ea855c723da93a4c460fd6954e7c11477897a878df1d`  
		Last Modified: Thu, 13 Jun 2019 00:21:00 GMT  
		Size: 21.0 MB (21010433 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fca29f83729562e9550f45fb3b0ff54a63df522f5442893514ac24be6bf354a1`  
		Last Modified: Thu, 13 Jun 2019 00:20:51 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2bc3d07d1e4a0642e31f93e757b60f3ece88416ffaee0e5514f67935bf05809a`  
		Last Modified: Thu, 13 Jun 2019 00:20:51 GMT  
		Size: 210.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f5ec78c86433ec5adba434af1fe19d7deeb8d1733e7d2417b70495736ff240c`  
		Last Modified: Thu, 13 Jun 2019 00:20:51 GMT  
		Size: 1.2 KB (1165 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `influxdb:1.5.4`

```console
$ docker pull influxdb@sha256:77a401bd9a39178c9109e93ae9f307e8869d33d4ae91184ef15234b793bb4fb5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `influxdb:1.5.4` - linux; amd64

```console
$ docker pull influxdb@sha256:dfea65917b8c8cfec4c347960db780b47f1bc622f2b1fc9b0055b3348dd98cb8
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **83.5 MB (83497931 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6bf0263ba5787a77017617e30633deb30d8d6098b0592fdca16c43bd32bfb7fd`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Mon, 10 Jun 2019 23:24:07 GMT
ADD file:6e8620824300ccf3754fb5d8644a1dc7c69431d4cd1ef9d28d73f39260f96020 in / 
# Mon, 10 Jun 2019 23:24:07 GMT
CMD ["bash"]
# Tue, 11 Jun 2019 00:29:50 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 11 Jun 2019 00:30:00 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 11 Jun 2019 08:47:39 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Tue, 11 Jun 2019 08:47:39 GMT
ENV INFLUXDB_VERSION=1.5.4
# Tue, 11 Jun 2019 08:47:54 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     gpg --batch --verify influxdb_${INFLUXDB_VERSION}_${ARCH}.deb.asc influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     dpkg -i influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     rm -f influxdb_${INFLUXDB_VERSION}_${ARCH}.deb*
# Tue, 11 Jun 2019 08:47:54 GMT
COPY file:3d8a606d61e1fc0042cf34d036eda4550a18d140c47376dacc02d96ee6f2dd8b in /etc/influxdb/influxdb.conf 
# Tue, 11 Jun 2019 08:47:55 GMT
EXPOSE 8086
# Tue, 11 Jun 2019 08:47:55 GMT
VOLUME [/var/lib/influxdb]
# Tue, 11 Jun 2019 08:47:55 GMT
COPY file:61c4af7a0e637328374ec46266ed6dde40adf7d14ac6c5081100924991beb7f3 in /entrypoint.sh 
# Tue, 11 Jun 2019 08:47:55 GMT
COPY file:892fcd3130baa17c0b88866ac37e7fe0b7b420a67105d9cd99803c685eaf9df4 in /init-influxdb.sh 
# Tue, 11 Jun 2019 08:47:56 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 11 Jun 2019 08:47:56 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:6f2f362378c5a6fd915d96d11dda1e0223ccf213bf121ace56ae0f6616ea1dc8`  
		Last Modified: Mon, 10 Jun 2019 23:27:55 GMT  
		Size: 45.3 MB (45339350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:494c27a8a6b820f9167ec7e368b3a9bb47d7029f4dc8c97c67091f3757a5bc4e`  
		Last Modified: Tue, 11 Jun 2019 00:37:59 GMT  
		Size: 10.8 MB (10785105 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7596bb83081b6c8410df557d538a0ae45922cbf81e469c6f4cfa835247cb24ab`  
		Last Modified: Tue, 11 Jun 2019 00:37:59 GMT  
		Size: 4.3 MB (4340143 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:058194e879938a49f17a6b38e4bbad333fc180da0644f975d63502ec1151ed47`  
		Last Modified: Tue, 11 Jun 2019 08:50:41 GMT  
		Size: 2.8 KB (2773 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0aaeff4b0e12b9bb23b0316c93c0298d66db406d14b5bfedc3496612b69d3749`  
		Last Modified: Tue, 11 Jun 2019 08:50:48 GMT  
		Size: 23.0 MB (23028959 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb92b9476489e0315725b42e03e720e46cf206a4cbff3412774f94065b5e6010`  
		Last Modified: Tue, 11 Jun 2019 08:50:41 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a191b373888fc1fa286a0c988662b1d347c717ff462a5653f1335365a31c5cac`  
		Last Modified: Tue, 11 Jun 2019 08:50:41 GMT  
		Size: 210.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1337f48c1e0084bc84b3e9228ef8164af05ecea37a30ccb99bb3c0efa96b7005`  
		Last Modified: Tue, 11 Jun 2019 08:50:41 GMT  
		Size: 1.2 KB (1165 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `influxdb:1.5.4` - linux; arm variant v7

```console
$ docker pull influxdb@sha256:6264081cfc02c02e10f2a5e6ef50d8c85da497871d8d6095ad3eb5914b954103
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **77.1 MB (77149758 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:81ce2c40db52127799e123258247d6ce736d52339dd3b5b00c11cc35ce9661f8`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Tue, 11 Jun 2019 00:02:40 GMT
ADD file:a533ab960a52dd32ca40bdcb55083ba8c340e110f8519a3eda696b46a4a07165 in / 
# Tue, 11 Jun 2019 00:02:41 GMT
CMD ["bash"]
# Tue, 11 Jun 2019 01:09:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 11 Jun 2019 01:09:19 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 13 Jun 2019 00:30:31 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Thu, 13 Jun 2019 00:30:32 GMT
ENV INFLUXDB_VERSION=1.5.4
# Thu, 13 Jun 2019 00:30:37 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     gpg --batch --verify influxdb_${INFLUXDB_VERSION}_${ARCH}.deb.asc influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     dpkg -i influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     rm -f influxdb_${INFLUXDB_VERSION}_${ARCH}.deb*
# Thu, 13 Jun 2019 00:30:38 GMT
COPY file:3d8a606d61e1fc0042cf34d036eda4550a18d140c47376dacc02d96ee6f2dd8b in /etc/influxdb/influxdb.conf 
# Thu, 13 Jun 2019 00:30:39 GMT
EXPOSE 8086
# Thu, 13 Jun 2019 00:30:40 GMT
VOLUME [/var/lib/influxdb]
# Thu, 13 Jun 2019 00:30:40 GMT
COPY file:61c4af7a0e637328374ec46266ed6dde40adf7d14ac6c5081100924991beb7f3 in /entrypoint.sh 
# Thu, 13 Jun 2019 00:30:41 GMT
COPY file:892fcd3130baa17c0b88866ac37e7fe0b7b420a67105d9cd99803c685eaf9df4 in /init-influxdb.sh 
# Thu, 13 Jun 2019 00:30:42 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 13 Jun 2019 00:30:42 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:162e276b1a29dfd1a4601fd55aeaeb0175b63182e9190b1b0068252e5196b015`  
		Last Modified: Tue, 11 Jun 2019 00:09:02 GMT  
		Size: 42.1 MB (42082622 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:052e820679506cc68db5317ee3f92e7f5f520894f881940a686f7b1280ff93a0`  
		Last Modified: Tue, 11 Jun 2019 01:17:33 GMT  
		Size: 9.5 MB (9485206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f5e84bede193d1aa79031526fbcfa99e8b6cf354b12a7cfbe5cdfe2c9acf155`  
		Last Modified: Tue, 11 Jun 2019 01:17:32 GMT  
		Size: 3.9 MB (3918643 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:269727385d075ffeeff0c3f9ddce8009ea58bb8a959b813302a1566f1acdc1a0`  
		Last Modified: Thu, 13 Jun 2019 00:31:37 GMT  
		Size: 2.8 KB (2801 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2cc27067ac7a4294d6581bfa5ca910106338a11bacafd7fccf4588ed94cdb90`  
		Last Modified: Thu, 13 Jun 2019 00:31:44 GMT  
		Size: 21.7 MB (21658885 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed1221ab8710b5c438f0fce02bcc20041eee79de1c0fba4d7d414752c1e3db9f`  
		Last Modified: Thu, 13 Jun 2019 00:31:37 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8228e439614a2025e9eeaa9f5af462f13e4d92cd8d963f202520be0bac29b2d`  
		Last Modified: Thu, 13 Jun 2019 00:31:37 GMT  
		Size: 210.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad55f7d7ec39295bc596b9621a398ddef9610dab8ddec2a91de8a0a429a3cc59`  
		Last Modified: Thu, 13 Jun 2019 00:31:37 GMT  
		Size: 1.2 KB (1165 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `influxdb:1.5.4` - linux; arm64 variant v8

```console
$ docker pull influxdb@sha256:479a62f5999cf4ad11774d4433371685c912cd01b123a2623347e001fddf2afe
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **78.0 MB (77985236 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4abbbc8104f4bb6239bbae91b96e3912169ceb950e064ef7313725c52d8ce675`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Wed, 08 May 2019 08:48:25 GMT
ADD file:153045f4fe6532d8c2ff273bb249a7a3a4cba913c26a4103ba5ddce1af02c1e5 in / 
# Wed, 08 May 2019 08:48:26 GMT
CMD ["bash"]
# Tue, 11 Jun 2019 00:19:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 11 Jun 2019 00:19:38 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 13 Jun 2019 00:19:57 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Thu, 13 Jun 2019 00:19:58 GMT
ENV INFLUXDB_VERSION=1.5.4
# Thu, 13 Jun 2019 00:20:03 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     gpg --batch --verify influxdb_${INFLUXDB_VERSION}_${ARCH}.deb.asc influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     dpkg -i influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     rm -f influxdb_${INFLUXDB_VERSION}_${ARCH}.deb*
# Thu, 13 Jun 2019 00:20:04 GMT
COPY file:3d8a606d61e1fc0042cf34d036eda4550a18d140c47376dacc02d96ee6f2dd8b in /etc/influxdb/influxdb.conf 
# Thu, 13 Jun 2019 00:20:04 GMT
EXPOSE 8086
# Thu, 13 Jun 2019 00:20:05 GMT
VOLUME [/var/lib/influxdb]
# Thu, 13 Jun 2019 00:20:05 GMT
COPY file:61c4af7a0e637328374ec46266ed6dde40adf7d14ac6c5081100924991beb7f3 in /entrypoint.sh 
# Thu, 13 Jun 2019 00:20:06 GMT
COPY file:892fcd3130baa17c0b88866ac37e7fe0b7b420a67105d9cd99803c685eaf9df4 in /init-influxdb.sh 
# Thu, 13 Jun 2019 00:20:07 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 13 Jun 2019 00:20:07 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:5894e28291972e44f5c3eba2779a85979bae6f95ed4f3e43ea5c98a132f06c48`  
		Last Modified: Wed, 08 May 2019 08:54:43 GMT  
		Size: 43.1 MB (43141955 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4579724c1a9cbbeb91053f719bf515654043a3e39cfaa248ebedc84c2f0460ea`  
		Last Modified: Tue, 11 Jun 2019 00:36:45 GMT  
		Size: 9.7 MB (9734083 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a493ac681ca78302ad6a97cd01e4daa5f1d995f0523f5e5cb8306071eea417b5`  
		Last Modified: Tue, 11 Jun 2019 00:36:43 GMT  
		Size: 4.1 MB (4094360 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1717658875655479c6ac9da01ba542fac343b49eb5f8646d039b6880740f9389`  
		Last Modified: Thu, 13 Jun 2019 00:20:53 GMT  
		Size: 2.8 KB (2804 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26093ec7dc0e23b49924ea855c723da93a4c460fd6954e7c11477897a878df1d`  
		Last Modified: Thu, 13 Jun 2019 00:21:00 GMT  
		Size: 21.0 MB (21010433 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fca29f83729562e9550f45fb3b0ff54a63df522f5442893514ac24be6bf354a1`  
		Last Modified: Thu, 13 Jun 2019 00:20:51 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2bc3d07d1e4a0642e31f93e757b60f3ece88416ffaee0e5514f67935bf05809a`  
		Last Modified: Thu, 13 Jun 2019 00:20:51 GMT  
		Size: 210.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f5ec78c86433ec5adba434af1fe19d7deeb8d1733e7d2417b70495736ff240c`  
		Last Modified: Thu, 13 Jun 2019 00:20:51 GMT  
		Size: 1.2 KB (1165 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `influxdb:1.5.4-alpine`

```console
$ docker pull influxdb@sha256:b9bdd6d7ca489d44bce5da3dba844257a9897a893abf9e08356bbc7f92aef575
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `influxdb:1.5.4-alpine` - linux; amd64

```console
$ docker pull influxdb@sha256:7432d7dcd2573b7e8ddd2cae3c7e47a8b0eb8622735f47f39da31d2fc045d82d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.5 MB (27540878 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:40e13f6ee02a63995abc349d4f95cab9cfbe0b67a58a786c1dc558ab30491e9b`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Sat, 11 May 2019 00:07:03 GMT
ADD file:a86aea1f3a7d68f6ae03397b99ea77f2e9ee901c5c59e59f76f93adbb4035913 in / 
# Sat, 11 May 2019 00:07:03 GMT
CMD ["/bin/sh"]
# Fri, 24 May 2019 22:19:29 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf
# Fri, 24 May 2019 22:29:38 GMT
RUN apk add --no-cache tzdata bash ca-certificates &&     update-ca-certificates
# Fri, 24 May 2019 22:29:39 GMT
ENV INFLUXDB_VERSION=1.5.4
# Fri, 24 May 2019 22:29:44 GMT
RUN set -ex &&     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/influxdb/releases/influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/influxdb/releases/influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/influxdb-*/influxdb.conf &&     chmod +x /usr/src/influxdb-*/* &&     cp -a /usr/src/influxdb-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Fri, 24 May 2019 22:29:44 GMT
COPY file:3d8a606d61e1fc0042cf34d036eda4550a18d140c47376dacc02d96ee6f2dd8b in /etc/influxdb/influxdb.conf 
# Fri, 24 May 2019 22:29:44 GMT
EXPOSE 8086
# Fri, 24 May 2019 22:29:44 GMT
VOLUME [/var/lib/influxdb]
# Fri, 24 May 2019 22:29:45 GMT
COPY file:61c4af7a0e637328374ec46266ed6dde40adf7d14ac6c5081100924991beb7f3 in /entrypoint.sh 
# Fri, 24 May 2019 22:29:45 GMT
COPY file:892fcd3130baa17c0b88866ac37e7fe0b7b420a67105d9cd99803c685eaf9df4 in /init-influxdb.sh 
# Fri, 24 May 2019 22:29:45 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 24 May 2019 22:29:45 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:e7c96db7181be991f19a9fb6975cdbbd73c65f4a2681348e63a141a2192a5f10`  
		Last Modified: Sat, 11 May 2019 00:07:31 GMT  
		Size: 2.8 MB (2757034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6f159e68d94418a67508380d165c862e99b062f7e750d89b6878e7cfa18e8b8`  
		Last Modified: Fri, 24 May 2019 22:20:08 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40cfc7884ad1bf576dca4da9bf3383a0be217f65a1137addd216380e376c41e7`  
		Last Modified: Fri, 24 May 2019 22:31:41 GMT  
		Size: 1.9 MB (1865186 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d386beb3fe5618dc22fd4db71e52594e024fab29ef98e09617dd869999f2fade`  
		Last Modified: Fri, 24 May 2019 22:31:46 GMT  
		Size: 22.9 MB (22916908 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa8de8695e8124cc076cf5435ff9517ba008f7cb58e8559ea93d464a348d029b`  
		Last Modified: Fri, 24 May 2019 22:31:41 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd9c9d99d42550cc958ec10079323a71ef66cef41df3adb65186be9613c31e7f`  
		Last Modified: Fri, 24 May 2019 22:31:40 GMT  
		Size: 209.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00548f19e261315f14cec6940df48fb6d94d50f77b8db660ce38ac772742ad69`  
		Last Modified: Fri, 24 May 2019 22:31:40 GMT  
		Size: 1.2 KB (1165 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `influxdb:1.5.4-data`

```console
$ docker pull influxdb@sha256:b452310d18b269a81d2e4d419febe3ce612e94c90c62de40cd40b0df1f3d98fb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `influxdb:1.5.4-data` - linux; amd64

```console
$ docker pull influxdb@sha256:8620262d8695eab40306072e94f90583c3f073e9ea3eea4c6a25da56829f537d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **84.3 MB (84251713 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c92df5d9aa352f501d3c6065c063c085b97757fc511b3ba3b8f1f2ca4290b2ae`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Mon, 10 Jun 2019 23:24:07 GMT
ADD file:6e8620824300ccf3754fb5d8644a1dc7c69431d4cd1ef9d28d73f39260f96020 in / 
# Mon, 10 Jun 2019 23:24:07 GMT
CMD ["bash"]
# Tue, 11 Jun 2019 00:29:50 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 11 Jun 2019 00:30:00 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 11 Jun 2019 08:47:39 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Tue, 11 Jun 2019 08:48:03 GMT
ENV INFLUXDB_VERSION=1.5.4-c1.5.4
# Tue, 11 Jun 2019 08:48:09 GMT
RUN wget --no-verbose https://dl.influxdata.com/enterprise/releases/influxdb-data_${INFLUXDB_VERSION}_amd64.deb.asc &&     wget --no-verbose https://dl.influxdata.com/enterprise/releases/influxdb-data_${INFLUXDB_VERSION}_amd64.deb &&     gpg --batch --verify influxdb-data_${INFLUXDB_VERSION}_amd64.deb.asc influxdb-data_${INFLUXDB_VERSION}_amd64.deb &&     dpkg -i influxdb-data_${INFLUXDB_VERSION}_amd64.deb &&     rm -f influxdb-data_${INFLUXDB_VERSION}_amd64.deb*
# Tue, 11 Jun 2019 08:48:10 GMT
COPY file:bf2f42b62a32a7ee3ab93d9a5e451b7d59af1a97e40dc4a76b8aaf2f64383d7a in /etc/influxdb/influxdb.conf 
# Tue, 11 Jun 2019 08:48:10 GMT
EXPOSE 8086
# Tue, 11 Jun 2019 08:48:10 GMT
VOLUME [/var/lib/influxdb]
# Tue, 11 Jun 2019 08:48:10 GMT
COPY file:182a0176834db40043100d082d05e5aded9887c94b02416f6e3154c827c07360 in /entrypoint.sh 
# Tue, 11 Jun 2019 08:48:10 GMT
COPY file:892fcd3130baa17c0b88866ac37e7fe0b7b420a67105d9cd99803c685eaf9df4 in /init-influxdb.sh 
# Tue, 11 Jun 2019 08:48:11 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 11 Jun 2019 08:48:11 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:6f2f362378c5a6fd915d96d11dda1e0223ccf213bf121ace56ae0f6616ea1dc8`  
		Last Modified: Mon, 10 Jun 2019 23:27:55 GMT  
		Size: 45.3 MB (45339350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:494c27a8a6b820f9167ec7e368b3a9bb47d7029f4dc8c97c67091f3757a5bc4e`  
		Last Modified: Tue, 11 Jun 2019 00:37:59 GMT  
		Size: 10.8 MB (10785105 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7596bb83081b6c8410df557d538a0ae45922cbf81e469c6f4cfa835247cb24ab`  
		Last Modified: Tue, 11 Jun 2019 00:37:59 GMT  
		Size: 4.3 MB (4340143 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:058194e879938a49f17a6b38e4bbad333fc180da0644f975d63502ec1151ed47`  
		Last Modified: Tue, 11 Jun 2019 08:50:41 GMT  
		Size: 2.8 KB (2773 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4aba08e5631c426ff50c96572cea0cdf983f42863493ae237f356811ea69d8b0`  
		Last Modified: Tue, 11 Jun 2019 08:51:00 GMT  
		Size: 23.8 MB (23782680 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82124bad3ff7ceb6784c8aa385ed51526cc91dfd0fe1d6b5ffa149e2f4353d36`  
		Last Modified: Tue, 11 Jun 2019 08:50:54 GMT  
		Size: 243.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a68550e2225da5372874f6f39c94dde0a22ae691ed50bd67f2fa004d114ae1e`  
		Last Modified: Tue, 11 Jun 2019 08:50:54 GMT  
		Size: 252.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a4282f39ff8263ae75f4823c72be8e4111ed1f0764da9620dc5e48a48f93f27`  
		Last Modified: Tue, 11 Jun 2019 08:50:54 GMT  
		Size: 1.2 KB (1167 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `influxdb:1.5.4-data-alpine`

```console
$ docker pull influxdb@sha256:9239f4029970952d6397b3a82d7a6197ed445c08a56bc9bbf184719be1d49146
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `influxdb:1.5.4-data-alpine` - linux; amd64

```console
$ docker pull influxdb@sha256:fe9dfbee33bbd051c3ba2ac673f671e7f49a240658d29bba1e707d9387b85756
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **28.3 MB (28294108 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d3e7040dad4b88a67b44a35b26dd143b3b64f00d99ffd8e5268cda59e5484c38`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Sat, 11 May 2019 00:07:03 GMT
ADD file:a86aea1f3a7d68f6ae03397b99ea77f2e9ee901c5c59e59f76f93adbb4035913 in / 
# Sat, 11 May 2019 00:07:03 GMT
CMD ["/bin/sh"]
# Fri, 24 May 2019 22:19:29 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf
# Fri, 24 May 2019 22:29:38 GMT
RUN apk add --no-cache tzdata bash ca-certificates &&     update-ca-certificates
# Fri, 24 May 2019 22:29:52 GMT
ENV INFLUXDB_VERSION=1.5.4-c1.5.4
# Fri, 24 May 2019 22:29:57 GMT
RUN set -ex &&     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/enterprise/releases/influxdb-data-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/enterprise/releases/influxdb-data-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify influxdb-data-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc influxdb-data-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf influxdb-data-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/influxdb-*/influxdb.conf &&     chmod +x /usr/src/influxdb-*/* &&     cp -a /usr/src/influxdb-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Fri, 24 May 2019 22:29:57 GMT
COPY file:bf2f42b62a32a7ee3ab93d9a5e451b7d59af1a97e40dc4a76b8aaf2f64383d7a in /etc/influxdb/influxdb.conf 
# Fri, 24 May 2019 22:29:57 GMT
EXPOSE 8086
# Fri, 24 May 2019 22:29:58 GMT
VOLUME [/var/lib/influxdb]
# Fri, 24 May 2019 22:29:58 GMT
COPY file:182a0176834db40043100d082d05e5aded9887c94b02416f6e3154c827c07360 in /entrypoint.sh 
# Fri, 24 May 2019 22:29:58 GMT
COPY file:892fcd3130baa17c0b88866ac37e7fe0b7b420a67105d9cd99803c685eaf9df4 in /init-influxdb.sh 
# Fri, 24 May 2019 22:29:58 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 24 May 2019 22:29:59 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:e7c96db7181be991f19a9fb6975cdbbd73c65f4a2681348e63a141a2192a5f10`  
		Last Modified: Sat, 11 May 2019 00:07:31 GMT  
		Size: 2.8 MB (2757034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6f159e68d94418a67508380d165c862e99b062f7e750d89b6878e7cfa18e8b8`  
		Last Modified: Fri, 24 May 2019 22:20:08 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40cfc7884ad1bf576dca4da9bf3383a0be217f65a1137addd216380e376c41e7`  
		Last Modified: Fri, 24 May 2019 22:31:41 GMT  
		Size: 1.9 MB (1865186 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53d183b62aa4cb7d6fd6af3b2f39563dfd4ba679654a9e2be47b3ba62dca076b`  
		Last Modified: Fri, 24 May 2019 22:31:55 GMT  
		Size: 23.7 MB (23670079 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d78ee20bbe01bb081b3aba781f2a456d639068f0ac9b76acf1bdcfb895a473a`  
		Last Modified: Fri, 24 May 2019 22:31:50 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a5b6f75976635ab1e7e79f0091b323348d3d065a3180f817f4405c1d627e6a9`  
		Last Modified: Fri, 24 May 2019 22:31:50 GMT  
		Size: 251.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a89df01b7a868a07578d032fc7064188f2dd1784c240ee87995118e6ce9bbce`  
		Last Modified: Fri, 24 May 2019 22:31:50 GMT  
		Size: 1.2 KB (1165 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `influxdb:1.5.4-meta`

```console
$ docker pull influxdb@sha256:7e587a74cfa40b549c858c307e66efc2b116ddf424a2a62a5f3c05494c698056
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `influxdb:1.5.4-meta` - linux; amd64

```console
$ docker pull influxdb@sha256:7fdb4d063e7be91e4509c92f26c774440d72d9f860f6f411b771e117849e8e04
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **71.7 MB (71662024 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f61adeb4c9e30141a76b74a0afdf27fef9c69c90e961ccbd19d98ec4fdc39543`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd-meta"]`

```dockerfile
# Mon, 10 Jun 2019 23:24:07 GMT
ADD file:6e8620824300ccf3754fb5d8644a1dc7c69431d4cd1ef9d28d73f39260f96020 in / 
# Mon, 10 Jun 2019 23:24:07 GMT
CMD ["bash"]
# Tue, 11 Jun 2019 00:29:50 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 11 Jun 2019 00:30:00 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 11 Jun 2019 08:47:39 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Tue, 11 Jun 2019 08:48:03 GMT
ENV INFLUXDB_VERSION=1.5.4-c1.5.4
# Tue, 11 Jun 2019 08:48:22 GMT
RUN wget --no-verbose https://dl.influxdata.com/enterprise/releases/influxdb-meta_${INFLUXDB_VERSION}_amd64.deb.asc &&     wget --no-verbose https://dl.influxdata.com/enterprise/releases/influxdb-meta_${INFLUXDB_VERSION}_amd64.deb &&     gpg --batch --verify influxdb-meta_${INFLUXDB_VERSION}_amd64.deb.asc influxdb-meta_${INFLUXDB_VERSION}_amd64.deb &&     dpkg -i influxdb-meta_${INFLUXDB_VERSION}_amd64.deb &&     rm -f influxdb-meta_${INFLUXDB_VERSION}_amd64.deb*
# Tue, 11 Jun 2019 08:48:23 GMT
COPY file:5d8d1b0acfd7ca05cf6698246b28d240206fa448f4aa5ac839c9ad323adbeac2 in /etc/influxdb/influxdb-meta.conf 
# Tue, 11 Jun 2019 08:48:23 GMT
EXPOSE 8091
# Tue, 11 Jun 2019 08:48:23 GMT
VOLUME [/var/lib/influxdb]
# Tue, 11 Jun 2019 08:48:24 GMT
COPY file:126b1f7e41b4975cf2ce23037cf6a46253fb817023062317380c48ff5df47228 in /entrypoint.sh 
# Tue, 11 Jun 2019 08:48:24 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 11 Jun 2019 08:48:24 GMT
CMD ["influxd-meta"]
```

-	Layers:
	-	`sha256:6f2f362378c5a6fd915d96d11dda1e0223ccf213bf121ace56ae0f6616ea1dc8`  
		Last Modified: Mon, 10 Jun 2019 23:27:55 GMT  
		Size: 45.3 MB (45339350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:494c27a8a6b820f9167ec7e368b3a9bb47d7029f4dc8c97c67091f3757a5bc4e`  
		Last Modified: Tue, 11 Jun 2019 00:37:59 GMT  
		Size: 10.8 MB (10785105 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7596bb83081b6c8410df557d538a0ae45922cbf81e469c6f4cfa835247cb24ab`  
		Last Modified: Tue, 11 Jun 2019 00:37:59 GMT  
		Size: 4.3 MB (4340143 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:058194e879938a49f17a6b38e4bbad333fc180da0644f975d63502ec1151ed47`  
		Last Modified: Tue, 11 Jun 2019 08:50:41 GMT  
		Size: 2.8 KB (2773 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6327334f8217a3895f4b48f8431aedc9b72ccb93a3d27922299c901162c0ee5f`  
		Last Modified: Tue, 11 Jun 2019 08:51:08 GMT  
		Size: 11.2 MB (11194083 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d505c3853357066d443a5a26f5873fd3f765b860dd9c9746adb11ad7273d105`  
		Last Modified: Tue, 11 Jun 2019 08:51:05 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3263b88d769eed090f0078c688800ea7230218da198e36581696c07fc90d8365`  
		Last Modified: Tue, 11 Jun 2019 08:51:05 GMT  
		Size: 375.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `influxdb:1.5.4-meta-alpine`

```console
$ docker pull influxdb@sha256:33628852fbbfee2c931031beef8ca0d29346a9b0fb07cec51fca8d91e1d80f3c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `influxdb:1.5.4-meta-alpine` - linux; amd64

```console
$ docker pull influxdb@sha256:12073a042bd0868f5a8a35b193a420f6b59ab6d2036073fd5085736f07aa7c70
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.8 MB (15774194 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ae469d3ed9a4fb33a6fc6bf1903eef29d9186b14e38ee1e35cf0d5cd58d59ae6`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd-meta"]`

```dockerfile
# Sat, 11 May 2019 00:07:03 GMT
ADD file:a86aea1f3a7d68f6ae03397b99ea77f2e9ee901c5c59e59f76f93adbb4035913 in / 
# Sat, 11 May 2019 00:07:03 GMT
CMD ["/bin/sh"]
# Fri, 24 May 2019 22:19:29 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf
# Fri, 24 May 2019 22:29:38 GMT
RUN apk add --no-cache tzdata bash ca-certificates &&     update-ca-certificates
# Fri, 24 May 2019 22:29:52 GMT
ENV INFLUXDB_VERSION=1.5.4-c1.5.4
# Fri, 24 May 2019 22:30:10 GMT
RUN set -ex &&     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/enterprise/releases/influxdb-meta-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/enterprise/releases/influxdb-meta-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify influxdb-meta-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc influxdb-meta-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf influxdb-meta-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/influxdb-*/influxdb-meta.conf &&     chmod +x /usr/src/influxdb-*/* &&     cp -a /usr/src/influxdb-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Fri, 24 May 2019 22:30:11 GMT
COPY file:5d8d1b0acfd7ca05cf6698246b28d240206fa448f4aa5ac839c9ad323adbeac2 in /etc/influxdb/influxdb-meta.conf 
# Fri, 24 May 2019 22:30:11 GMT
EXPOSE 8091
# Fri, 24 May 2019 22:30:11 GMT
VOLUME [/var/lib/influxdb]
# Fri, 24 May 2019 22:30:11 GMT
COPY file:126b1f7e41b4975cf2ce23037cf6a46253fb817023062317380c48ff5df47228 in /entrypoint.sh 
# Fri, 24 May 2019 22:30:11 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 24 May 2019 22:30:11 GMT
CMD ["influxd-meta"]
```

-	Layers:
	-	`sha256:e7c96db7181be991f19a9fb6975cdbbd73c65f4a2681348e63a141a2192a5f10`  
		Last Modified: Sat, 11 May 2019 00:07:31 GMT  
		Size: 2.8 MB (2757034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6f159e68d94418a67508380d165c862e99b062f7e750d89b6878e7cfa18e8b8`  
		Last Modified: Fri, 24 May 2019 22:20:08 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40cfc7884ad1bf576dca4da9bf3383a0be217f65a1137addd216380e376c41e7`  
		Last Modified: Fri, 24 May 2019 22:31:41 GMT  
		Size: 1.9 MB (1865186 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1143e8af2c52cd0e8ef2e2788b23d6beaa0eefd6ff1e9481dd1ba2d52cfe99b`  
		Last Modified: Fri, 24 May 2019 22:32:02 GMT  
		Size: 11.2 MB (11151251 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2cec03b8f4acaf1f0879ae454715452ff46ccda585e84260a6c1c07384301736`  
		Last Modified: Fri, 24 May 2019 22:31:59 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8aec9627544f8cae0b7a26b4b27af11e74fada7554f34fb35fd6c4434e6a2ef7`  
		Last Modified: Fri, 24 May 2019 22:31:59 GMT  
		Size: 375.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `influxdb:1.5-alpine`

```console
$ docker pull influxdb@sha256:b9bdd6d7ca489d44bce5da3dba844257a9897a893abf9e08356bbc7f92aef575
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `influxdb:1.5-alpine` - linux; amd64

```console
$ docker pull influxdb@sha256:7432d7dcd2573b7e8ddd2cae3c7e47a8b0eb8622735f47f39da31d2fc045d82d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.5 MB (27540878 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:40e13f6ee02a63995abc349d4f95cab9cfbe0b67a58a786c1dc558ab30491e9b`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Sat, 11 May 2019 00:07:03 GMT
ADD file:a86aea1f3a7d68f6ae03397b99ea77f2e9ee901c5c59e59f76f93adbb4035913 in / 
# Sat, 11 May 2019 00:07:03 GMT
CMD ["/bin/sh"]
# Fri, 24 May 2019 22:19:29 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf
# Fri, 24 May 2019 22:29:38 GMT
RUN apk add --no-cache tzdata bash ca-certificates &&     update-ca-certificates
# Fri, 24 May 2019 22:29:39 GMT
ENV INFLUXDB_VERSION=1.5.4
# Fri, 24 May 2019 22:29:44 GMT
RUN set -ex &&     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/influxdb/releases/influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/influxdb/releases/influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/influxdb-*/influxdb.conf &&     chmod +x /usr/src/influxdb-*/* &&     cp -a /usr/src/influxdb-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Fri, 24 May 2019 22:29:44 GMT
COPY file:3d8a606d61e1fc0042cf34d036eda4550a18d140c47376dacc02d96ee6f2dd8b in /etc/influxdb/influxdb.conf 
# Fri, 24 May 2019 22:29:44 GMT
EXPOSE 8086
# Fri, 24 May 2019 22:29:44 GMT
VOLUME [/var/lib/influxdb]
# Fri, 24 May 2019 22:29:45 GMT
COPY file:61c4af7a0e637328374ec46266ed6dde40adf7d14ac6c5081100924991beb7f3 in /entrypoint.sh 
# Fri, 24 May 2019 22:29:45 GMT
COPY file:892fcd3130baa17c0b88866ac37e7fe0b7b420a67105d9cd99803c685eaf9df4 in /init-influxdb.sh 
# Fri, 24 May 2019 22:29:45 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 24 May 2019 22:29:45 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:e7c96db7181be991f19a9fb6975cdbbd73c65f4a2681348e63a141a2192a5f10`  
		Last Modified: Sat, 11 May 2019 00:07:31 GMT  
		Size: 2.8 MB (2757034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6f159e68d94418a67508380d165c862e99b062f7e750d89b6878e7cfa18e8b8`  
		Last Modified: Fri, 24 May 2019 22:20:08 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40cfc7884ad1bf576dca4da9bf3383a0be217f65a1137addd216380e376c41e7`  
		Last Modified: Fri, 24 May 2019 22:31:41 GMT  
		Size: 1.9 MB (1865186 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d386beb3fe5618dc22fd4db71e52594e024fab29ef98e09617dd869999f2fade`  
		Last Modified: Fri, 24 May 2019 22:31:46 GMT  
		Size: 22.9 MB (22916908 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa8de8695e8124cc076cf5435ff9517ba008f7cb58e8559ea93d464a348d029b`  
		Last Modified: Fri, 24 May 2019 22:31:41 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd9c9d99d42550cc958ec10079323a71ef66cef41df3adb65186be9613c31e7f`  
		Last Modified: Fri, 24 May 2019 22:31:40 GMT  
		Size: 209.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00548f19e261315f14cec6940df48fb6d94d50f77b8db660ce38ac772742ad69`  
		Last Modified: Fri, 24 May 2019 22:31:40 GMT  
		Size: 1.2 KB (1165 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `influxdb:1.5-data`

```console
$ docker pull influxdb@sha256:b452310d18b269a81d2e4d419febe3ce612e94c90c62de40cd40b0df1f3d98fb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `influxdb:1.5-data` - linux; amd64

```console
$ docker pull influxdb@sha256:8620262d8695eab40306072e94f90583c3f073e9ea3eea4c6a25da56829f537d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **84.3 MB (84251713 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c92df5d9aa352f501d3c6065c063c085b97757fc511b3ba3b8f1f2ca4290b2ae`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Mon, 10 Jun 2019 23:24:07 GMT
ADD file:6e8620824300ccf3754fb5d8644a1dc7c69431d4cd1ef9d28d73f39260f96020 in / 
# Mon, 10 Jun 2019 23:24:07 GMT
CMD ["bash"]
# Tue, 11 Jun 2019 00:29:50 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 11 Jun 2019 00:30:00 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 11 Jun 2019 08:47:39 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Tue, 11 Jun 2019 08:48:03 GMT
ENV INFLUXDB_VERSION=1.5.4-c1.5.4
# Tue, 11 Jun 2019 08:48:09 GMT
RUN wget --no-verbose https://dl.influxdata.com/enterprise/releases/influxdb-data_${INFLUXDB_VERSION}_amd64.deb.asc &&     wget --no-verbose https://dl.influxdata.com/enterprise/releases/influxdb-data_${INFLUXDB_VERSION}_amd64.deb &&     gpg --batch --verify influxdb-data_${INFLUXDB_VERSION}_amd64.deb.asc influxdb-data_${INFLUXDB_VERSION}_amd64.deb &&     dpkg -i influxdb-data_${INFLUXDB_VERSION}_amd64.deb &&     rm -f influxdb-data_${INFLUXDB_VERSION}_amd64.deb*
# Tue, 11 Jun 2019 08:48:10 GMT
COPY file:bf2f42b62a32a7ee3ab93d9a5e451b7d59af1a97e40dc4a76b8aaf2f64383d7a in /etc/influxdb/influxdb.conf 
# Tue, 11 Jun 2019 08:48:10 GMT
EXPOSE 8086
# Tue, 11 Jun 2019 08:48:10 GMT
VOLUME [/var/lib/influxdb]
# Tue, 11 Jun 2019 08:48:10 GMT
COPY file:182a0176834db40043100d082d05e5aded9887c94b02416f6e3154c827c07360 in /entrypoint.sh 
# Tue, 11 Jun 2019 08:48:10 GMT
COPY file:892fcd3130baa17c0b88866ac37e7fe0b7b420a67105d9cd99803c685eaf9df4 in /init-influxdb.sh 
# Tue, 11 Jun 2019 08:48:11 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 11 Jun 2019 08:48:11 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:6f2f362378c5a6fd915d96d11dda1e0223ccf213bf121ace56ae0f6616ea1dc8`  
		Last Modified: Mon, 10 Jun 2019 23:27:55 GMT  
		Size: 45.3 MB (45339350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:494c27a8a6b820f9167ec7e368b3a9bb47d7029f4dc8c97c67091f3757a5bc4e`  
		Last Modified: Tue, 11 Jun 2019 00:37:59 GMT  
		Size: 10.8 MB (10785105 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7596bb83081b6c8410df557d538a0ae45922cbf81e469c6f4cfa835247cb24ab`  
		Last Modified: Tue, 11 Jun 2019 00:37:59 GMT  
		Size: 4.3 MB (4340143 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:058194e879938a49f17a6b38e4bbad333fc180da0644f975d63502ec1151ed47`  
		Last Modified: Tue, 11 Jun 2019 08:50:41 GMT  
		Size: 2.8 KB (2773 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4aba08e5631c426ff50c96572cea0cdf983f42863493ae237f356811ea69d8b0`  
		Last Modified: Tue, 11 Jun 2019 08:51:00 GMT  
		Size: 23.8 MB (23782680 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82124bad3ff7ceb6784c8aa385ed51526cc91dfd0fe1d6b5ffa149e2f4353d36`  
		Last Modified: Tue, 11 Jun 2019 08:50:54 GMT  
		Size: 243.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a68550e2225da5372874f6f39c94dde0a22ae691ed50bd67f2fa004d114ae1e`  
		Last Modified: Tue, 11 Jun 2019 08:50:54 GMT  
		Size: 252.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a4282f39ff8263ae75f4823c72be8e4111ed1f0764da9620dc5e48a48f93f27`  
		Last Modified: Tue, 11 Jun 2019 08:50:54 GMT  
		Size: 1.2 KB (1167 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `influxdb:1.5-data-alpine`

```console
$ docker pull influxdb@sha256:9239f4029970952d6397b3a82d7a6197ed445c08a56bc9bbf184719be1d49146
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `influxdb:1.5-data-alpine` - linux; amd64

```console
$ docker pull influxdb@sha256:fe9dfbee33bbd051c3ba2ac673f671e7f49a240658d29bba1e707d9387b85756
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **28.3 MB (28294108 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d3e7040dad4b88a67b44a35b26dd143b3b64f00d99ffd8e5268cda59e5484c38`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Sat, 11 May 2019 00:07:03 GMT
ADD file:a86aea1f3a7d68f6ae03397b99ea77f2e9ee901c5c59e59f76f93adbb4035913 in / 
# Sat, 11 May 2019 00:07:03 GMT
CMD ["/bin/sh"]
# Fri, 24 May 2019 22:19:29 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf
# Fri, 24 May 2019 22:29:38 GMT
RUN apk add --no-cache tzdata bash ca-certificates &&     update-ca-certificates
# Fri, 24 May 2019 22:29:52 GMT
ENV INFLUXDB_VERSION=1.5.4-c1.5.4
# Fri, 24 May 2019 22:29:57 GMT
RUN set -ex &&     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/enterprise/releases/influxdb-data-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/enterprise/releases/influxdb-data-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify influxdb-data-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc influxdb-data-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf influxdb-data-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/influxdb-*/influxdb.conf &&     chmod +x /usr/src/influxdb-*/* &&     cp -a /usr/src/influxdb-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Fri, 24 May 2019 22:29:57 GMT
COPY file:bf2f42b62a32a7ee3ab93d9a5e451b7d59af1a97e40dc4a76b8aaf2f64383d7a in /etc/influxdb/influxdb.conf 
# Fri, 24 May 2019 22:29:57 GMT
EXPOSE 8086
# Fri, 24 May 2019 22:29:58 GMT
VOLUME [/var/lib/influxdb]
# Fri, 24 May 2019 22:29:58 GMT
COPY file:182a0176834db40043100d082d05e5aded9887c94b02416f6e3154c827c07360 in /entrypoint.sh 
# Fri, 24 May 2019 22:29:58 GMT
COPY file:892fcd3130baa17c0b88866ac37e7fe0b7b420a67105d9cd99803c685eaf9df4 in /init-influxdb.sh 
# Fri, 24 May 2019 22:29:58 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 24 May 2019 22:29:59 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:e7c96db7181be991f19a9fb6975cdbbd73c65f4a2681348e63a141a2192a5f10`  
		Last Modified: Sat, 11 May 2019 00:07:31 GMT  
		Size: 2.8 MB (2757034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6f159e68d94418a67508380d165c862e99b062f7e750d89b6878e7cfa18e8b8`  
		Last Modified: Fri, 24 May 2019 22:20:08 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40cfc7884ad1bf576dca4da9bf3383a0be217f65a1137addd216380e376c41e7`  
		Last Modified: Fri, 24 May 2019 22:31:41 GMT  
		Size: 1.9 MB (1865186 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53d183b62aa4cb7d6fd6af3b2f39563dfd4ba679654a9e2be47b3ba62dca076b`  
		Last Modified: Fri, 24 May 2019 22:31:55 GMT  
		Size: 23.7 MB (23670079 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d78ee20bbe01bb081b3aba781f2a456d639068f0ac9b76acf1bdcfb895a473a`  
		Last Modified: Fri, 24 May 2019 22:31:50 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a5b6f75976635ab1e7e79f0091b323348d3d065a3180f817f4405c1d627e6a9`  
		Last Modified: Fri, 24 May 2019 22:31:50 GMT  
		Size: 251.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a89df01b7a868a07578d032fc7064188f2dd1784c240ee87995118e6ce9bbce`  
		Last Modified: Fri, 24 May 2019 22:31:50 GMT  
		Size: 1.2 KB (1165 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `influxdb:1.5-meta`

```console
$ docker pull influxdb@sha256:7e587a74cfa40b549c858c307e66efc2b116ddf424a2a62a5f3c05494c698056
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `influxdb:1.5-meta` - linux; amd64

```console
$ docker pull influxdb@sha256:7fdb4d063e7be91e4509c92f26c774440d72d9f860f6f411b771e117849e8e04
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **71.7 MB (71662024 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f61adeb4c9e30141a76b74a0afdf27fef9c69c90e961ccbd19d98ec4fdc39543`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd-meta"]`

```dockerfile
# Mon, 10 Jun 2019 23:24:07 GMT
ADD file:6e8620824300ccf3754fb5d8644a1dc7c69431d4cd1ef9d28d73f39260f96020 in / 
# Mon, 10 Jun 2019 23:24:07 GMT
CMD ["bash"]
# Tue, 11 Jun 2019 00:29:50 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 11 Jun 2019 00:30:00 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 11 Jun 2019 08:47:39 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Tue, 11 Jun 2019 08:48:03 GMT
ENV INFLUXDB_VERSION=1.5.4-c1.5.4
# Tue, 11 Jun 2019 08:48:22 GMT
RUN wget --no-verbose https://dl.influxdata.com/enterprise/releases/influxdb-meta_${INFLUXDB_VERSION}_amd64.deb.asc &&     wget --no-verbose https://dl.influxdata.com/enterprise/releases/influxdb-meta_${INFLUXDB_VERSION}_amd64.deb &&     gpg --batch --verify influxdb-meta_${INFLUXDB_VERSION}_amd64.deb.asc influxdb-meta_${INFLUXDB_VERSION}_amd64.deb &&     dpkg -i influxdb-meta_${INFLUXDB_VERSION}_amd64.deb &&     rm -f influxdb-meta_${INFLUXDB_VERSION}_amd64.deb*
# Tue, 11 Jun 2019 08:48:23 GMT
COPY file:5d8d1b0acfd7ca05cf6698246b28d240206fa448f4aa5ac839c9ad323adbeac2 in /etc/influxdb/influxdb-meta.conf 
# Tue, 11 Jun 2019 08:48:23 GMT
EXPOSE 8091
# Tue, 11 Jun 2019 08:48:23 GMT
VOLUME [/var/lib/influxdb]
# Tue, 11 Jun 2019 08:48:24 GMT
COPY file:126b1f7e41b4975cf2ce23037cf6a46253fb817023062317380c48ff5df47228 in /entrypoint.sh 
# Tue, 11 Jun 2019 08:48:24 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 11 Jun 2019 08:48:24 GMT
CMD ["influxd-meta"]
```

-	Layers:
	-	`sha256:6f2f362378c5a6fd915d96d11dda1e0223ccf213bf121ace56ae0f6616ea1dc8`  
		Last Modified: Mon, 10 Jun 2019 23:27:55 GMT  
		Size: 45.3 MB (45339350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:494c27a8a6b820f9167ec7e368b3a9bb47d7029f4dc8c97c67091f3757a5bc4e`  
		Last Modified: Tue, 11 Jun 2019 00:37:59 GMT  
		Size: 10.8 MB (10785105 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7596bb83081b6c8410df557d538a0ae45922cbf81e469c6f4cfa835247cb24ab`  
		Last Modified: Tue, 11 Jun 2019 00:37:59 GMT  
		Size: 4.3 MB (4340143 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:058194e879938a49f17a6b38e4bbad333fc180da0644f975d63502ec1151ed47`  
		Last Modified: Tue, 11 Jun 2019 08:50:41 GMT  
		Size: 2.8 KB (2773 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6327334f8217a3895f4b48f8431aedc9b72ccb93a3d27922299c901162c0ee5f`  
		Last Modified: Tue, 11 Jun 2019 08:51:08 GMT  
		Size: 11.2 MB (11194083 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d505c3853357066d443a5a26f5873fd3f765b860dd9c9746adb11ad7273d105`  
		Last Modified: Tue, 11 Jun 2019 08:51:05 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3263b88d769eed090f0078c688800ea7230218da198e36581696c07fc90d8365`  
		Last Modified: Tue, 11 Jun 2019 08:51:05 GMT  
		Size: 375.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `influxdb:1.5-meta-alpine`

```console
$ docker pull influxdb@sha256:33628852fbbfee2c931031beef8ca0d29346a9b0fb07cec51fca8d91e1d80f3c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `influxdb:1.5-meta-alpine` - linux; amd64

```console
$ docker pull influxdb@sha256:12073a042bd0868f5a8a35b193a420f6b59ab6d2036073fd5085736f07aa7c70
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.8 MB (15774194 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ae469d3ed9a4fb33a6fc6bf1903eef29d9186b14e38ee1e35cf0d5cd58d59ae6`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd-meta"]`

```dockerfile
# Sat, 11 May 2019 00:07:03 GMT
ADD file:a86aea1f3a7d68f6ae03397b99ea77f2e9ee901c5c59e59f76f93adbb4035913 in / 
# Sat, 11 May 2019 00:07:03 GMT
CMD ["/bin/sh"]
# Fri, 24 May 2019 22:19:29 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf
# Fri, 24 May 2019 22:29:38 GMT
RUN apk add --no-cache tzdata bash ca-certificates &&     update-ca-certificates
# Fri, 24 May 2019 22:29:52 GMT
ENV INFLUXDB_VERSION=1.5.4-c1.5.4
# Fri, 24 May 2019 22:30:10 GMT
RUN set -ex &&     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/enterprise/releases/influxdb-meta-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/enterprise/releases/influxdb-meta-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify influxdb-meta-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc influxdb-meta-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf influxdb-meta-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/influxdb-*/influxdb-meta.conf &&     chmod +x /usr/src/influxdb-*/* &&     cp -a /usr/src/influxdb-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Fri, 24 May 2019 22:30:11 GMT
COPY file:5d8d1b0acfd7ca05cf6698246b28d240206fa448f4aa5ac839c9ad323adbeac2 in /etc/influxdb/influxdb-meta.conf 
# Fri, 24 May 2019 22:30:11 GMT
EXPOSE 8091
# Fri, 24 May 2019 22:30:11 GMT
VOLUME [/var/lib/influxdb]
# Fri, 24 May 2019 22:30:11 GMT
COPY file:126b1f7e41b4975cf2ce23037cf6a46253fb817023062317380c48ff5df47228 in /entrypoint.sh 
# Fri, 24 May 2019 22:30:11 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 24 May 2019 22:30:11 GMT
CMD ["influxd-meta"]
```

-	Layers:
	-	`sha256:e7c96db7181be991f19a9fb6975cdbbd73c65f4a2681348e63a141a2192a5f10`  
		Last Modified: Sat, 11 May 2019 00:07:31 GMT  
		Size: 2.8 MB (2757034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6f159e68d94418a67508380d165c862e99b062f7e750d89b6878e7cfa18e8b8`  
		Last Modified: Fri, 24 May 2019 22:20:08 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40cfc7884ad1bf576dca4da9bf3383a0be217f65a1137addd216380e376c41e7`  
		Last Modified: Fri, 24 May 2019 22:31:41 GMT  
		Size: 1.9 MB (1865186 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1143e8af2c52cd0e8ef2e2788b23d6beaa0eefd6ff1e9481dd1ba2d52cfe99b`  
		Last Modified: Fri, 24 May 2019 22:32:02 GMT  
		Size: 11.2 MB (11151251 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2cec03b8f4acaf1f0879ae454715452ff46ccda585e84260a6c1c07384301736`  
		Last Modified: Fri, 24 May 2019 22:31:59 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8aec9627544f8cae0b7a26b4b27af11e74fada7554f34fb35fd6c4434e6a2ef7`  
		Last Modified: Fri, 24 May 2019 22:31:59 GMT  
		Size: 375.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `influxdb:1.6`

```console
$ docker pull influxdb@sha256:cc9b2594308810803da3fff9d77c38e221950c2eee10a6cf9672bebe8e29e090
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `influxdb:1.6` - linux; amd64

```console
$ docker pull influxdb@sha256:0a17641e646c70739e8be392a932855bf75c4f47c44771b4f5144ddcd2bba213
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **85.8 MB (85778247 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1baa857a8a8ccdd38905c5e63943067ec0bb0ccb6f69e374f54ab7d2b09bf971`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Mon, 10 Jun 2019 23:24:07 GMT
ADD file:6e8620824300ccf3754fb5d8644a1dc7c69431d4cd1ef9d28d73f39260f96020 in / 
# Mon, 10 Jun 2019 23:24:07 GMT
CMD ["bash"]
# Tue, 11 Jun 2019 00:29:50 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 11 Jun 2019 00:30:00 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 11 Jun 2019 08:47:39 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Tue, 11 Jun 2019 08:48:31 GMT
ENV INFLUXDB_VERSION=1.6.6
# Tue, 11 Jun 2019 08:48:36 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     gpg --batch --verify influxdb_${INFLUXDB_VERSION}_${ARCH}.deb.asc influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     dpkg -i influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     rm -f influxdb_${INFLUXDB_VERSION}_${ARCH}.deb*
# Tue, 11 Jun 2019 08:48:37 GMT
COPY file:3d8a606d61e1fc0042cf34d036eda4550a18d140c47376dacc02d96ee6f2dd8b in /etc/influxdb/influxdb.conf 
# Tue, 11 Jun 2019 08:48:37 GMT
EXPOSE 8086
# Tue, 11 Jun 2019 08:48:37 GMT
VOLUME [/var/lib/influxdb]
# Tue, 11 Jun 2019 08:48:38 GMT
COPY file:61c4af7a0e637328374ec46266ed6dde40adf7d14ac6c5081100924991beb7f3 in /entrypoint.sh 
# Tue, 11 Jun 2019 08:48:38 GMT
COPY file:892fcd3130baa17c0b88866ac37e7fe0b7b420a67105d9cd99803c685eaf9df4 in /init-influxdb.sh 
# Tue, 11 Jun 2019 08:48:38 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 11 Jun 2019 08:48:38 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:6f2f362378c5a6fd915d96d11dda1e0223ccf213bf121ace56ae0f6616ea1dc8`  
		Last Modified: Mon, 10 Jun 2019 23:27:55 GMT  
		Size: 45.3 MB (45339350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:494c27a8a6b820f9167ec7e368b3a9bb47d7029f4dc8c97c67091f3757a5bc4e`  
		Last Modified: Tue, 11 Jun 2019 00:37:59 GMT  
		Size: 10.8 MB (10785105 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7596bb83081b6c8410df557d538a0ae45922cbf81e469c6f4cfa835247cb24ab`  
		Last Modified: Tue, 11 Jun 2019 00:37:59 GMT  
		Size: 4.3 MB (4340143 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:058194e879938a49f17a6b38e4bbad333fc180da0644f975d63502ec1151ed47`  
		Last Modified: Tue, 11 Jun 2019 08:50:41 GMT  
		Size: 2.8 KB (2773 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c8ce5cbe674b133cd100febd47c5e7f2f59613819436b9bae8e6cf7c560ae01`  
		Last Modified: Tue, 11 Jun 2019 08:51:22 GMT  
		Size: 25.3 MB (25309275 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7761ba12b652eb1391ce8b51c2f3ad564166b52c788db6ba498382c1cb6bff05`  
		Last Modified: Tue, 11 Jun 2019 08:51:14 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0783afaefe92120a2eb327008bd37853be2d7a55c463b4102a3be4dd1c91594`  
		Last Modified: Tue, 11 Jun 2019 08:51:14 GMT  
		Size: 211.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f636fe08c269b00deb0c36494e00e140e8f837c095e4949d11a799773df93076`  
		Last Modified: Tue, 11 Jun 2019 08:51:14 GMT  
		Size: 1.2 KB (1164 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `influxdb:1.6` - linux; arm variant v7

```console
$ docker pull influxdb@sha256:e1f8a995afc24d8ea2ff4a912d83f18a3ff5376dc15ad5ba2c351634aaac421d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **79.8 MB (79838452 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b5a4a3f839f3b5757eed96146f6aed6bf6c2d76c47257b3daae648d17ad665b8`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Tue, 11 Jun 2019 00:02:40 GMT
ADD file:a533ab960a52dd32ca40bdcb55083ba8c340e110f8519a3eda696b46a4a07165 in / 
# Tue, 11 Jun 2019 00:02:41 GMT
CMD ["bash"]
# Tue, 11 Jun 2019 01:09:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 11 Jun 2019 01:09:19 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 13 Jun 2019 00:30:31 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Thu, 13 Jun 2019 00:30:49 GMT
ENV INFLUXDB_VERSION=1.6.6
# Thu, 13 Jun 2019 00:30:56 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     gpg --batch --verify influxdb_${INFLUXDB_VERSION}_${ARCH}.deb.asc influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     dpkg -i influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     rm -f influxdb_${INFLUXDB_VERSION}_${ARCH}.deb*
# Thu, 13 Jun 2019 00:30:58 GMT
COPY file:3d8a606d61e1fc0042cf34d036eda4550a18d140c47376dacc02d96ee6f2dd8b in /etc/influxdb/influxdb.conf 
# Thu, 13 Jun 2019 00:31:00 GMT
EXPOSE 8086
# Thu, 13 Jun 2019 00:31:01 GMT
VOLUME [/var/lib/influxdb]
# Thu, 13 Jun 2019 00:31:01 GMT
COPY file:61c4af7a0e637328374ec46266ed6dde40adf7d14ac6c5081100924991beb7f3 in /entrypoint.sh 
# Thu, 13 Jun 2019 00:31:02 GMT
COPY file:892fcd3130baa17c0b88866ac37e7fe0b7b420a67105d9cd99803c685eaf9df4 in /init-influxdb.sh 
# Thu, 13 Jun 2019 00:31:05 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 13 Jun 2019 00:31:06 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:162e276b1a29dfd1a4601fd55aeaeb0175b63182e9190b1b0068252e5196b015`  
		Last Modified: Tue, 11 Jun 2019 00:09:02 GMT  
		Size: 42.1 MB (42082622 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:052e820679506cc68db5317ee3f92e7f5f520894f881940a686f7b1280ff93a0`  
		Last Modified: Tue, 11 Jun 2019 01:17:33 GMT  
		Size: 9.5 MB (9485206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f5e84bede193d1aa79031526fbcfa99e8b6cf354b12a7cfbe5cdfe2c9acf155`  
		Last Modified: Tue, 11 Jun 2019 01:17:32 GMT  
		Size: 3.9 MB (3918643 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:269727385d075ffeeff0c3f9ddce8009ea58bb8a959b813302a1566f1acdc1a0`  
		Last Modified: Thu, 13 Jun 2019 00:31:37 GMT  
		Size: 2.8 KB (2801 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:089fbf71554603d5970e0588bebaceee981c929f1eb3903e784148ce8e055294`  
		Last Modified: Thu, 13 Jun 2019 00:31:58 GMT  
		Size: 24.3 MB (24347578 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dde788dfe2beb373c1baefc79ab506baafcd39deb5c6e61f61153d0e0765df02`  
		Last Modified: Thu, 13 Jun 2019 00:31:50 GMT  
		Size: 227.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de92622bae62c489353834e86ac0331f837c93822b99adc084196b6551189a37`  
		Last Modified: Thu, 13 Jun 2019 00:31:50 GMT  
		Size: 210.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9dfc94a66a727d4712c811aa7c1844da4386bf02cef583bb7b874822f2758d86`  
		Last Modified: Thu, 13 Jun 2019 00:31:50 GMT  
		Size: 1.2 KB (1165 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `influxdb:1.6` - linux; arm64 variant v8

```console
$ docker pull influxdb@sha256:398a65a9c9e4bcfd048eecb9a83a922cd80543222b998e052f640f29bd91dde1
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **80.6 MB (80639727 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0a8ceeb0d5f27804e85d8d22698fe06fc9475d92c9979e2394ad10c37869d75a`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Wed, 08 May 2019 08:48:25 GMT
ADD file:153045f4fe6532d8c2ff273bb249a7a3a4cba913c26a4103ba5ddce1af02c1e5 in / 
# Wed, 08 May 2019 08:48:26 GMT
CMD ["bash"]
# Tue, 11 Jun 2019 00:19:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 11 Jun 2019 00:19:38 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 13 Jun 2019 00:19:57 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Thu, 13 Jun 2019 00:20:14 GMT
ENV INFLUXDB_VERSION=1.6.6
# Thu, 13 Jun 2019 00:20:19 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     gpg --batch --verify influxdb_${INFLUXDB_VERSION}_${ARCH}.deb.asc influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     dpkg -i influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     rm -f influxdb_${INFLUXDB_VERSION}_${ARCH}.deb*
# Thu, 13 Jun 2019 00:20:20 GMT
COPY file:3d8a606d61e1fc0042cf34d036eda4550a18d140c47376dacc02d96ee6f2dd8b in /etc/influxdb/influxdb.conf 
# Thu, 13 Jun 2019 00:20:20 GMT
EXPOSE 8086
# Thu, 13 Jun 2019 00:20:21 GMT
VOLUME [/var/lib/influxdb]
# Thu, 13 Jun 2019 00:20:22 GMT
COPY file:61c4af7a0e637328374ec46266ed6dde40adf7d14ac6c5081100924991beb7f3 in /entrypoint.sh 
# Thu, 13 Jun 2019 00:20:22 GMT
COPY file:892fcd3130baa17c0b88866ac37e7fe0b7b420a67105d9cd99803c685eaf9df4 in /init-influxdb.sh 
# Thu, 13 Jun 2019 00:20:23 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 13 Jun 2019 00:20:23 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:5894e28291972e44f5c3eba2779a85979bae6f95ed4f3e43ea5c98a132f06c48`  
		Last Modified: Wed, 08 May 2019 08:54:43 GMT  
		Size: 43.1 MB (43141955 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4579724c1a9cbbeb91053f719bf515654043a3e39cfaa248ebedc84c2f0460ea`  
		Last Modified: Tue, 11 Jun 2019 00:36:45 GMT  
		Size: 9.7 MB (9734083 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a493ac681ca78302ad6a97cd01e4daa5f1d995f0523f5e5cb8306071eea417b5`  
		Last Modified: Tue, 11 Jun 2019 00:36:43 GMT  
		Size: 4.1 MB (4094360 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1717658875655479c6ac9da01ba542fac343b49eb5f8646d039b6880740f9389`  
		Last Modified: Thu, 13 Jun 2019 00:20:53 GMT  
		Size: 2.8 KB (2804 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a07bfa6758832833ee9e60f1fe8ee0dc5b8b7cd7c8b8e16e7a34f3cf35a3ca8a`  
		Last Modified: Thu, 13 Jun 2019 00:21:22 GMT  
		Size: 23.7 MB (23664926 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40c174aa9282bb6b53bbf81faa5b4c630790af171b66a0c64d12dd97e67907a8`  
		Last Modified: Thu, 13 Jun 2019 00:21:14 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e7d56c89c235b878c93c861ce2db1f2e4f7b651039e4eed3afa8e59a480131a`  
		Last Modified: Thu, 13 Jun 2019 00:21:15 GMT  
		Size: 210.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf08d4a556cff89788b2c57f961549775c9114144b44873c34d08895cf94adf7`  
		Last Modified: Thu, 13 Jun 2019 00:21:15 GMT  
		Size: 1.2 KB (1163 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `influxdb:1.6.6`

```console
$ docker pull influxdb@sha256:cc9b2594308810803da3fff9d77c38e221950c2eee10a6cf9672bebe8e29e090
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `influxdb:1.6.6` - linux; amd64

```console
$ docker pull influxdb@sha256:0a17641e646c70739e8be392a932855bf75c4f47c44771b4f5144ddcd2bba213
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **85.8 MB (85778247 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1baa857a8a8ccdd38905c5e63943067ec0bb0ccb6f69e374f54ab7d2b09bf971`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Mon, 10 Jun 2019 23:24:07 GMT
ADD file:6e8620824300ccf3754fb5d8644a1dc7c69431d4cd1ef9d28d73f39260f96020 in / 
# Mon, 10 Jun 2019 23:24:07 GMT
CMD ["bash"]
# Tue, 11 Jun 2019 00:29:50 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 11 Jun 2019 00:30:00 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 11 Jun 2019 08:47:39 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Tue, 11 Jun 2019 08:48:31 GMT
ENV INFLUXDB_VERSION=1.6.6
# Tue, 11 Jun 2019 08:48:36 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     gpg --batch --verify influxdb_${INFLUXDB_VERSION}_${ARCH}.deb.asc influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     dpkg -i influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     rm -f influxdb_${INFLUXDB_VERSION}_${ARCH}.deb*
# Tue, 11 Jun 2019 08:48:37 GMT
COPY file:3d8a606d61e1fc0042cf34d036eda4550a18d140c47376dacc02d96ee6f2dd8b in /etc/influxdb/influxdb.conf 
# Tue, 11 Jun 2019 08:48:37 GMT
EXPOSE 8086
# Tue, 11 Jun 2019 08:48:37 GMT
VOLUME [/var/lib/influxdb]
# Tue, 11 Jun 2019 08:48:38 GMT
COPY file:61c4af7a0e637328374ec46266ed6dde40adf7d14ac6c5081100924991beb7f3 in /entrypoint.sh 
# Tue, 11 Jun 2019 08:48:38 GMT
COPY file:892fcd3130baa17c0b88866ac37e7fe0b7b420a67105d9cd99803c685eaf9df4 in /init-influxdb.sh 
# Tue, 11 Jun 2019 08:48:38 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 11 Jun 2019 08:48:38 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:6f2f362378c5a6fd915d96d11dda1e0223ccf213bf121ace56ae0f6616ea1dc8`  
		Last Modified: Mon, 10 Jun 2019 23:27:55 GMT  
		Size: 45.3 MB (45339350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:494c27a8a6b820f9167ec7e368b3a9bb47d7029f4dc8c97c67091f3757a5bc4e`  
		Last Modified: Tue, 11 Jun 2019 00:37:59 GMT  
		Size: 10.8 MB (10785105 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7596bb83081b6c8410df557d538a0ae45922cbf81e469c6f4cfa835247cb24ab`  
		Last Modified: Tue, 11 Jun 2019 00:37:59 GMT  
		Size: 4.3 MB (4340143 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:058194e879938a49f17a6b38e4bbad333fc180da0644f975d63502ec1151ed47`  
		Last Modified: Tue, 11 Jun 2019 08:50:41 GMT  
		Size: 2.8 KB (2773 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c8ce5cbe674b133cd100febd47c5e7f2f59613819436b9bae8e6cf7c560ae01`  
		Last Modified: Tue, 11 Jun 2019 08:51:22 GMT  
		Size: 25.3 MB (25309275 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7761ba12b652eb1391ce8b51c2f3ad564166b52c788db6ba498382c1cb6bff05`  
		Last Modified: Tue, 11 Jun 2019 08:51:14 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0783afaefe92120a2eb327008bd37853be2d7a55c463b4102a3be4dd1c91594`  
		Last Modified: Tue, 11 Jun 2019 08:51:14 GMT  
		Size: 211.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f636fe08c269b00deb0c36494e00e140e8f837c095e4949d11a799773df93076`  
		Last Modified: Tue, 11 Jun 2019 08:51:14 GMT  
		Size: 1.2 KB (1164 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `influxdb:1.6.6` - linux; arm variant v7

```console
$ docker pull influxdb@sha256:e1f8a995afc24d8ea2ff4a912d83f18a3ff5376dc15ad5ba2c351634aaac421d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **79.8 MB (79838452 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b5a4a3f839f3b5757eed96146f6aed6bf6c2d76c47257b3daae648d17ad665b8`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Tue, 11 Jun 2019 00:02:40 GMT
ADD file:a533ab960a52dd32ca40bdcb55083ba8c340e110f8519a3eda696b46a4a07165 in / 
# Tue, 11 Jun 2019 00:02:41 GMT
CMD ["bash"]
# Tue, 11 Jun 2019 01:09:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 11 Jun 2019 01:09:19 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 13 Jun 2019 00:30:31 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Thu, 13 Jun 2019 00:30:49 GMT
ENV INFLUXDB_VERSION=1.6.6
# Thu, 13 Jun 2019 00:30:56 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     gpg --batch --verify influxdb_${INFLUXDB_VERSION}_${ARCH}.deb.asc influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     dpkg -i influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     rm -f influxdb_${INFLUXDB_VERSION}_${ARCH}.deb*
# Thu, 13 Jun 2019 00:30:58 GMT
COPY file:3d8a606d61e1fc0042cf34d036eda4550a18d140c47376dacc02d96ee6f2dd8b in /etc/influxdb/influxdb.conf 
# Thu, 13 Jun 2019 00:31:00 GMT
EXPOSE 8086
# Thu, 13 Jun 2019 00:31:01 GMT
VOLUME [/var/lib/influxdb]
# Thu, 13 Jun 2019 00:31:01 GMT
COPY file:61c4af7a0e637328374ec46266ed6dde40adf7d14ac6c5081100924991beb7f3 in /entrypoint.sh 
# Thu, 13 Jun 2019 00:31:02 GMT
COPY file:892fcd3130baa17c0b88866ac37e7fe0b7b420a67105d9cd99803c685eaf9df4 in /init-influxdb.sh 
# Thu, 13 Jun 2019 00:31:05 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 13 Jun 2019 00:31:06 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:162e276b1a29dfd1a4601fd55aeaeb0175b63182e9190b1b0068252e5196b015`  
		Last Modified: Tue, 11 Jun 2019 00:09:02 GMT  
		Size: 42.1 MB (42082622 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:052e820679506cc68db5317ee3f92e7f5f520894f881940a686f7b1280ff93a0`  
		Last Modified: Tue, 11 Jun 2019 01:17:33 GMT  
		Size: 9.5 MB (9485206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f5e84bede193d1aa79031526fbcfa99e8b6cf354b12a7cfbe5cdfe2c9acf155`  
		Last Modified: Tue, 11 Jun 2019 01:17:32 GMT  
		Size: 3.9 MB (3918643 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:269727385d075ffeeff0c3f9ddce8009ea58bb8a959b813302a1566f1acdc1a0`  
		Last Modified: Thu, 13 Jun 2019 00:31:37 GMT  
		Size: 2.8 KB (2801 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:089fbf71554603d5970e0588bebaceee981c929f1eb3903e784148ce8e055294`  
		Last Modified: Thu, 13 Jun 2019 00:31:58 GMT  
		Size: 24.3 MB (24347578 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dde788dfe2beb373c1baefc79ab506baafcd39deb5c6e61f61153d0e0765df02`  
		Last Modified: Thu, 13 Jun 2019 00:31:50 GMT  
		Size: 227.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de92622bae62c489353834e86ac0331f837c93822b99adc084196b6551189a37`  
		Last Modified: Thu, 13 Jun 2019 00:31:50 GMT  
		Size: 210.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9dfc94a66a727d4712c811aa7c1844da4386bf02cef583bb7b874822f2758d86`  
		Last Modified: Thu, 13 Jun 2019 00:31:50 GMT  
		Size: 1.2 KB (1165 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `influxdb:1.6.6` - linux; arm64 variant v8

```console
$ docker pull influxdb@sha256:398a65a9c9e4bcfd048eecb9a83a922cd80543222b998e052f640f29bd91dde1
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **80.6 MB (80639727 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0a8ceeb0d5f27804e85d8d22698fe06fc9475d92c9979e2394ad10c37869d75a`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Wed, 08 May 2019 08:48:25 GMT
ADD file:153045f4fe6532d8c2ff273bb249a7a3a4cba913c26a4103ba5ddce1af02c1e5 in / 
# Wed, 08 May 2019 08:48:26 GMT
CMD ["bash"]
# Tue, 11 Jun 2019 00:19:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 11 Jun 2019 00:19:38 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 13 Jun 2019 00:19:57 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Thu, 13 Jun 2019 00:20:14 GMT
ENV INFLUXDB_VERSION=1.6.6
# Thu, 13 Jun 2019 00:20:19 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     gpg --batch --verify influxdb_${INFLUXDB_VERSION}_${ARCH}.deb.asc influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     dpkg -i influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     rm -f influxdb_${INFLUXDB_VERSION}_${ARCH}.deb*
# Thu, 13 Jun 2019 00:20:20 GMT
COPY file:3d8a606d61e1fc0042cf34d036eda4550a18d140c47376dacc02d96ee6f2dd8b in /etc/influxdb/influxdb.conf 
# Thu, 13 Jun 2019 00:20:20 GMT
EXPOSE 8086
# Thu, 13 Jun 2019 00:20:21 GMT
VOLUME [/var/lib/influxdb]
# Thu, 13 Jun 2019 00:20:22 GMT
COPY file:61c4af7a0e637328374ec46266ed6dde40adf7d14ac6c5081100924991beb7f3 in /entrypoint.sh 
# Thu, 13 Jun 2019 00:20:22 GMT
COPY file:892fcd3130baa17c0b88866ac37e7fe0b7b420a67105d9cd99803c685eaf9df4 in /init-influxdb.sh 
# Thu, 13 Jun 2019 00:20:23 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 13 Jun 2019 00:20:23 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:5894e28291972e44f5c3eba2779a85979bae6f95ed4f3e43ea5c98a132f06c48`  
		Last Modified: Wed, 08 May 2019 08:54:43 GMT  
		Size: 43.1 MB (43141955 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4579724c1a9cbbeb91053f719bf515654043a3e39cfaa248ebedc84c2f0460ea`  
		Last Modified: Tue, 11 Jun 2019 00:36:45 GMT  
		Size: 9.7 MB (9734083 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a493ac681ca78302ad6a97cd01e4daa5f1d995f0523f5e5cb8306071eea417b5`  
		Last Modified: Tue, 11 Jun 2019 00:36:43 GMT  
		Size: 4.1 MB (4094360 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1717658875655479c6ac9da01ba542fac343b49eb5f8646d039b6880740f9389`  
		Last Modified: Thu, 13 Jun 2019 00:20:53 GMT  
		Size: 2.8 KB (2804 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a07bfa6758832833ee9e60f1fe8ee0dc5b8b7cd7c8b8e16e7a34f3cf35a3ca8a`  
		Last Modified: Thu, 13 Jun 2019 00:21:22 GMT  
		Size: 23.7 MB (23664926 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40c174aa9282bb6b53bbf81faa5b4c630790af171b66a0c64d12dd97e67907a8`  
		Last Modified: Thu, 13 Jun 2019 00:21:14 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e7d56c89c235b878c93c861ce2db1f2e4f7b651039e4eed3afa8e59a480131a`  
		Last Modified: Thu, 13 Jun 2019 00:21:15 GMT  
		Size: 210.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf08d4a556cff89788b2c57f961549775c9114144b44873c34d08895cf94adf7`  
		Last Modified: Thu, 13 Jun 2019 00:21:15 GMT  
		Size: 1.2 KB (1163 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `influxdb:1.6.6-alpine`

```console
$ docker pull influxdb@sha256:2c1dac24bcae3885c612eb9ef4efa10e3eb0f1d79874719cf04a2c4f7f7c5808
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `influxdb:1.6.6-alpine` - linux; amd64

```console
$ docker pull influxdb@sha256:4e4a23191f1a35d2b4151b4076989f49438a5048a94fd7d5c2dd22dd0094e5a1
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **29.8 MB (29813935 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:37b635fe8f2f5759aac163db69771d0f9e31195723704c39d38eb7972baef75d`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Sat, 11 May 2019 00:07:03 GMT
ADD file:a86aea1f3a7d68f6ae03397b99ea77f2e9ee901c5c59e59f76f93adbb4035913 in / 
# Sat, 11 May 2019 00:07:03 GMT
CMD ["/bin/sh"]
# Fri, 24 May 2019 22:19:29 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf
# Fri, 24 May 2019 22:29:38 GMT
RUN apk add --no-cache tzdata bash ca-certificates &&     update-ca-certificates
# Fri, 24 May 2019 22:30:18 GMT
ENV INFLUXDB_VERSION=1.6.6
# Fri, 24 May 2019 22:30:22 GMT
RUN set -ex &&     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/influxdb/releases/influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/influxdb/releases/influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/influxdb-*/influxdb.conf &&     chmod +x /usr/src/influxdb-*/* &&     cp -a /usr/src/influxdb-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Fri, 24 May 2019 22:30:23 GMT
COPY file:3d8a606d61e1fc0042cf34d036eda4550a18d140c47376dacc02d96ee6f2dd8b in /etc/influxdb/influxdb.conf 
# Fri, 24 May 2019 22:30:23 GMT
EXPOSE 8086
# Fri, 24 May 2019 22:30:23 GMT
VOLUME [/var/lib/influxdb]
# Fri, 24 May 2019 22:30:23 GMT
COPY file:61c4af7a0e637328374ec46266ed6dde40adf7d14ac6c5081100924991beb7f3 in /entrypoint.sh 
# Fri, 24 May 2019 22:30:23 GMT
COPY file:892fcd3130baa17c0b88866ac37e7fe0b7b420a67105d9cd99803c685eaf9df4 in /init-influxdb.sh 
# Fri, 24 May 2019 22:30:23 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 24 May 2019 22:30:24 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:e7c96db7181be991f19a9fb6975cdbbd73c65f4a2681348e63a141a2192a5f10`  
		Last Modified: Sat, 11 May 2019 00:07:31 GMT  
		Size: 2.8 MB (2757034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6f159e68d94418a67508380d165c862e99b062f7e750d89b6878e7cfa18e8b8`  
		Last Modified: Fri, 24 May 2019 22:20:08 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40cfc7884ad1bf576dca4da9bf3383a0be217f65a1137addd216380e376c41e7`  
		Last Modified: Fri, 24 May 2019 22:31:41 GMT  
		Size: 1.9 MB (1865186 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d45e297070a5c282f69a5892c0cc1abb89860d325b8cdb28fb1ca0468841c55d`  
		Last Modified: Fri, 24 May 2019 22:32:14 GMT  
		Size: 25.2 MB (25189965 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0d70329e911d254ba9b0c81a007cb15657d9f818103a3a386a2056035d5f2e3`  
		Last Modified: Fri, 24 May 2019 22:32:08 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58f24aff696cc44f2b4e46d9f894b390a7282d35656334aef6e2b7151fe6635a`  
		Last Modified: Fri, 24 May 2019 22:32:09 GMT  
		Size: 209.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d50ccfe95e1610997fde41c6307aa3419860ffdf989e2ce2c83be586caff75f8`  
		Last Modified: Fri, 24 May 2019 22:32:09 GMT  
		Size: 1.2 KB (1165 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `influxdb:1.6.6-data`

```console
$ docker pull influxdb@sha256:fdea72a3441f2f9eb01fe462e475fc8befb7a6f7a88687f344e27543fe515669
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `influxdb:1.6.6-data` - linux; amd64

```console
$ docker pull influxdb@sha256:a7c55b8fec80099f072320b04c1998c56cca1d105a85052d354d09c04bc8aa49
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **87.0 MB (87041127 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:547016f78e53bc529f7d44da025a88738b8f5cdabd637ebf358eb65c1f8f391a`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Mon, 10 Jun 2019 23:24:07 GMT
ADD file:6e8620824300ccf3754fb5d8644a1dc7c69431d4cd1ef9d28d73f39260f96020 in / 
# Mon, 10 Jun 2019 23:24:07 GMT
CMD ["bash"]
# Tue, 11 Jun 2019 00:29:50 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 11 Jun 2019 00:30:00 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 11 Jun 2019 08:47:39 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Tue, 11 Jun 2019 08:48:45 GMT
ENV INFLUXDB_VERSION=1.6.6-c1.6.6
# Tue, 11 Jun 2019 08:48:53 GMT
RUN wget --no-verbose https://dl.influxdata.com/enterprise/releases/influxdb-data_${INFLUXDB_VERSION}_amd64.deb.asc &&     wget --no-verbose https://dl.influxdata.com/enterprise/releases/influxdb-data_${INFLUXDB_VERSION}_amd64.deb &&     gpg --batch --verify influxdb-data_${INFLUXDB_VERSION}_amd64.deb.asc influxdb-data_${INFLUXDB_VERSION}_amd64.deb &&     dpkg -i influxdb-data_${INFLUXDB_VERSION}_amd64.deb &&     rm -f influxdb-data_${INFLUXDB_VERSION}_amd64.deb*
# Tue, 11 Jun 2019 08:48:54 GMT
COPY file:bf2f42b62a32a7ee3ab93d9a5e451b7d59af1a97e40dc4a76b8aaf2f64383d7a in /etc/influxdb/influxdb.conf 
# Tue, 11 Jun 2019 08:48:54 GMT
EXPOSE 8086
# Tue, 11 Jun 2019 08:48:54 GMT
VOLUME [/var/lib/influxdb]
# Tue, 11 Jun 2019 08:48:55 GMT
COPY file:182a0176834db40043100d082d05e5aded9887c94b02416f6e3154c827c07360 in /entrypoint.sh 
# Tue, 11 Jun 2019 08:48:55 GMT
COPY file:892fcd3130baa17c0b88866ac37e7fe0b7b420a67105d9cd99803c685eaf9df4 in /init-influxdb.sh 
# Tue, 11 Jun 2019 08:48:55 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 11 Jun 2019 08:48:55 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:6f2f362378c5a6fd915d96d11dda1e0223ccf213bf121ace56ae0f6616ea1dc8`  
		Last Modified: Mon, 10 Jun 2019 23:27:55 GMT  
		Size: 45.3 MB (45339350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:494c27a8a6b820f9167ec7e368b3a9bb47d7029f4dc8c97c67091f3757a5bc4e`  
		Last Modified: Tue, 11 Jun 2019 00:37:59 GMT  
		Size: 10.8 MB (10785105 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7596bb83081b6c8410df557d538a0ae45922cbf81e469c6f4cfa835247cb24ab`  
		Last Modified: Tue, 11 Jun 2019 00:37:59 GMT  
		Size: 4.3 MB (4340143 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:058194e879938a49f17a6b38e4bbad333fc180da0644f975d63502ec1151ed47`  
		Last Modified: Tue, 11 Jun 2019 08:50:41 GMT  
		Size: 2.8 KB (2773 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bcdc4d097b87010d00846f4c0e0b8f85dc59571e49332dcff258f3f6ac56e1f`  
		Last Modified: Tue, 11 Jun 2019 08:51:38 GMT  
		Size: 26.6 MB (26572096 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2bedf6f1259f6e52281fd82245c7012f3cafedb4a6893f3bc08480f2181ebf1c`  
		Last Modified: Tue, 11 Jun 2019 08:51:28 GMT  
		Size: 243.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf0e30c9e9f0f6a7034bd4833c15f73032ddec47c841a842c7f9715ff954af18`  
		Last Modified: Tue, 11 Jun 2019 08:51:28 GMT  
		Size: 252.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7240445f8ea889b4b5e4b4a39f3751aface1bdf1c99a4a9314cc7978d720fbcf`  
		Last Modified: Tue, 11 Jun 2019 08:51:28 GMT  
		Size: 1.2 KB (1165 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `influxdb:1.6.6-data-alpine`

```console
$ docker pull influxdb@sha256:caafd4c167447de56761188957d1767e8f231ba8ddcea6c1e0d89af5ac685bd7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `influxdb:1.6.6-data-alpine` - linux; amd64

```console
$ docker pull influxdb@sha256:409de75dfcfec83aa9278e6dda117cf97fa3cfe939d469a07593cd9d8fab09a9
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **31.1 MB (31076414 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ece03e9815afe692ed899b315bd6f6a820e0d00776c2cecba88fc4fe55c3adcd`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Sat, 11 May 2019 00:07:03 GMT
ADD file:a86aea1f3a7d68f6ae03397b99ea77f2e9ee901c5c59e59f76f93adbb4035913 in / 
# Sat, 11 May 2019 00:07:03 GMT
CMD ["/bin/sh"]
# Fri, 24 May 2019 22:19:29 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf
# Fri, 24 May 2019 22:29:38 GMT
RUN apk add --no-cache tzdata bash ca-certificates &&     update-ca-certificates
# Fri, 24 May 2019 22:30:29 GMT
ENV INFLUXDB_VERSION=1.6.6-c1.6.6
# Fri, 24 May 2019 22:30:33 GMT
RUN set -ex &&     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/enterprise/releases/influxdb-data-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/enterprise/releases/influxdb-data-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify influxdb-data-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc influxdb-data-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf influxdb-data-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/influxdb-*/influxdb.conf &&     chmod +x /usr/src/influxdb-*/* &&     cp -a /usr/src/influxdb-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Fri, 24 May 2019 22:30:34 GMT
COPY file:bf2f42b62a32a7ee3ab93d9a5e451b7d59af1a97e40dc4a76b8aaf2f64383d7a in /etc/influxdb/influxdb.conf 
# Fri, 24 May 2019 22:30:34 GMT
EXPOSE 8086
# Fri, 24 May 2019 22:30:34 GMT
VOLUME [/var/lib/influxdb]
# Fri, 24 May 2019 22:30:34 GMT
COPY file:182a0176834db40043100d082d05e5aded9887c94b02416f6e3154c827c07360 in /entrypoint.sh 
# Fri, 24 May 2019 22:30:34 GMT
COPY file:892fcd3130baa17c0b88866ac37e7fe0b7b420a67105d9cd99803c685eaf9df4 in /init-influxdb.sh 
# Fri, 24 May 2019 22:30:34 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 24 May 2019 22:30:35 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:e7c96db7181be991f19a9fb6975cdbbd73c65f4a2681348e63a141a2192a5f10`  
		Last Modified: Sat, 11 May 2019 00:07:31 GMT  
		Size: 2.8 MB (2757034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6f159e68d94418a67508380d165c862e99b062f7e750d89b6878e7cfa18e8b8`  
		Last Modified: Fri, 24 May 2019 22:20:08 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40cfc7884ad1bf576dca4da9bf3383a0be217f65a1137addd216380e376c41e7`  
		Last Modified: Fri, 24 May 2019 22:31:41 GMT  
		Size: 1.9 MB (1865186 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c9acda041ca3c299774eb3b34f024ec7282671621063395cfa163d32bf38016`  
		Last Modified: Fri, 24 May 2019 22:32:26 GMT  
		Size: 26.5 MB (26452384 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d401bad40446cbe44fe5f4f553a375182644a3a862e3e6c588db3f26e2ba0033`  
		Last Modified: Fri, 24 May 2019 22:32:20 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fda69e547bd19a3739370f2e9f6387093692e051a3c776215d51768d2164f663`  
		Last Modified: Fri, 24 May 2019 22:32:20 GMT  
		Size: 251.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5df36aa459852922b18ebdb74fe8bf90bece2b8d62e5cce890b4ec26e702a7f2`  
		Last Modified: Fri, 24 May 2019 22:32:20 GMT  
		Size: 1.2 KB (1165 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `influxdb:1.6.6-meta`

```console
$ docker pull influxdb@sha256:e05d43b020f3fc7717267b13e260749415cac9c1db7c683b7b1cfaeb593d2aee
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `influxdb:1.6.6-meta` - linux; amd64

```console
$ docker pull influxdb@sha256:d2a4ddf66fba815b2f1456c8a4aedac000de63a58bdd74df1ac10d8bb03c54a8
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **73.0 MB (73016997 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f0c0bfaa1325e0a8cf91b79b498c7d9e53aef54e37bdc9304e552b0563d72703`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd-meta"]`

```dockerfile
# Mon, 10 Jun 2019 23:24:07 GMT
ADD file:6e8620824300ccf3754fb5d8644a1dc7c69431d4cd1ef9d28d73f39260f96020 in / 
# Mon, 10 Jun 2019 23:24:07 GMT
CMD ["bash"]
# Tue, 11 Jun 2019 00:29:50 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 11 Jun 2019 00:30:00 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 11 Jun 2019 08:47:39 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Tue, 11 Jun 2019 08:48:45 GMT
ENV INFLUXDB_VERSION=1.6.6-c1.6.6
# Tue, 11 Jun 2019 08:49:07 GMT
RUN wget --no-verbose https://dl.influxdata.com/enterprise/releases/influxdb-meta_${INFLUXDB_VERSION}_amd64.deb.asc &&     wget --no-verbose https://dl.influxdata.com/enterprise/releases/influxdb-meta_${INFLUXDB_VERSION}_amd64.deb &&     gpg --batch --verify influxdb-meta_${INFLUXDB_VERSION}_amd64.deb.asc influxdb-meta_${INFLUXDB_VERSION}_amd64.deb &&     dpkg -i influxdb-meta_${INFLUXDB_VERSION}_amd64.deb &&     rm -f influxdb-meta_${INFLUXDB_VERSION}_amd64.deb*
# Tue, 11 Jun 2019 08:49:08 GMT
COPY file:5d8d1b0acfd7ca05cf6698246b28d240206fa448f4aa5ac839c9ad323adbeac2 in /etc/influxdb/influxdb-meta.conf 
# Tue, 11 Jun 2019 08:49:08 GMT
EXPOSE 8091
# Tue, 11 Jun 2019 08:49:08 GMT
VOLUME [/var/lib/influxdb]
# Tue, 11 Jun 2019 08:49:08 GMT
COPY file:126b1f7e41b4975cf2ce23037cf6a46253fb817023062317380c48ff5df47228 in /entrypoint.sh 
# Tue, 11 Jun 2019 08:49:09 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 11 Jun 2019 08:49:09 GMT
CMD ["influxd-meta"]
```

-	Layers:
	-	`sha256:6f2f362378c5a6fd915d96d11dda1e0223ccf213bf121ace56ae0f6616ea1dc8`  
		Last Modified: Mon, 10 Jun 2019 23:27:55 GMT  
		Size: 45.3 MB (45339350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:494c27a8a6b820f9167ec7e368b3a9bb47d7029f4dc8c97c67091f3757a5bc4e`  
		Last Modified: Tue, 11 Jun 2019 00:37:59 GMT  
		Size: 10.8 MB (10785105 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7596bb83081b6c8410df557d538a0ae45922cbf81e469c6f4cfa835247cb24ab`  
		Last Modified: Tue, 11 Jun 2019 00:37:59 GMT  
		Size: 4.3 MB (4340143 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:058194e879938a49f17a6b38e4bbad333fc180da0644f975d63502ec1151ed47`  
		Last Modified: Tue, 11 Jun 2019 08:50:41 GMT  
		Size: 2.8 KB (2773 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9d23994aa87f6f5de88b7f4ce71ff97dd6bd708bd38363cc6b474e0fc4afd1c`  
		Last Modified: Tue, 11 Jun 2019 08:51:50 GMT  
		Size: 12.5 MB (12549055 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:406949b2d7a64344765a0c34e07a7d0dba3dec96555c7324fac5d2ee1f22e170`  
		Last Modified: Tue, 11 Jun 2019 08:51:44 GMT  
		Size: 196.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31da4fb9540c7ba5cd58bb41ad4fa19bd427aa335e720d840dece5734a67bca4`  
		Last Modified: Tue, 11 Jun 2019 08:51:44 GMT  
		Size: 375.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `influxdb:1.6.6-meta-alpine`

```console
$ docker pull influxdb@sha256:f94a3279748fe6864e69d3f9b57e575d913c46408504bac6f0b9227f700202a4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `influxdb:1.6.6-meta-alpine` - linux; amd64

```console
$ docker pull influxdb@sha256:884108c0ebee3a3ee8c618a30442b624013917819b446d6e2c544cba3ecbc37a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.1 MB (17127556 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ea9788fb726dae359501a83f69b20ca605b12a1a4fa5d4e4f255bd3b5363a59b`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd-meta"]`

```dockerfile
# Sat, 11 May 2019 00:07:03 GMT
ADD file:a86aea1f3a7d68f6ae03397b99ea77f2e9ee901c5c59e59f76f93adbb4035913 in / 
# Sat, 11 May 2019 00:07:03 GMT
CMD ["/bin/sh"]
# Fri, 24 May 2019 22:19:29 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf
# Fri, 24 May 2019 22:29:38 GMT
RUN apk add --no-cache tzdata bash ca-certificates &&     update-ca-certificates
# Fri, 24 May 2019 22:30:29 GMT
ENV INFLUXDB_VERSION=1.6.6-c1.6.6
# Fri, 24 May 2019 22:30:43 GMT
RUN set -ex &&     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/enterprise/releases/influxdb-meta-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/enterprise/releases/influxdb-meta-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify influxdb-meta-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc influxdb-meta-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf influxdb-meta-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/influxdb-*/influxdb-meta.conf &&     chmod +x /usr/src/influxdb-*/* &&     cp -a /usr/src/influxdb-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Fri, 24 May 2019 22:30:43 GMT
COPY file:5d8d1b0acfd7ca05cf6698246b28d240206fa448f4aa5ac839c9ad323adbeac2 in /etc/influxdb/influxdb-meta.conf 
# Fri, 24 May 2019 22:30:43 GMT
EXPOSE 8091
# Fri, 24 May 2019 22:30:44 GMT
VOLUME [/var/lib/influxdb]
# Fri, 24 May 2019 22:30:44 GMT
COPY file:126b1f7e41b4975cf2ce23037cf6a46253fb817023062317380c48ff5df47228 in /entrypoint.sh 
# Fri, 24 May 2019 22:30:44 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 24 May 2019 22:30:44 GMT
CMD ["influxd-meta"]
```

-	Layers:
	-	`sha256:e7c96db7181be991f19a9fb6975cdbbd73c65f4a2681348e63a141a2192a5f10`  
		Last Modified: Sat, 11 May 2019 00:07:31 GMT  
		Size: 2.8 MB (2757034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6f159e68d94418a67508380d165c862e99b062f7e750d89b6878e7cfa18e8b8`  
		Last Modified: Fri, 24 May 2019 22:20:08 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40cfc7884ad1bf576dca4da9bf3383a0be217f65a1137addd216380e376c41e7`  
		Last Modified: Fri, 24 May 2019 22:31:41 GMT  
		Size: 1.9 MB (1865186 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1fff813b39a82014ea8a9e28e680b659d4c97d0cda0e3dcd138d24b6d807bfa`  
		Last Modified: Fri, 24 May 2019 22:32:33 GMT  
		Size: 12.5 MB (12504615 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f84543ec0b96e44cb272ec543b9c87e67779a381178a0cb006286595d856847c`  
		Last Modified: Fri, 24 May 2019 22:32:30 GMT  
		Size: 193.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60dd198cc238043a08d58b46f7d8433a46e2d24ef1a9915bfcdbdb83d8aa019f`  
		Last Modified: Fri, 24 May 2019 22:32:31 GMT  
		Size: 374.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `influxdb:1.6-alpine`

```console
$ docker pull influxdb@sha256:2c1dac24bcae3885c612eb9ef4efa10e3eb0f1d79874719cf04a2c4f7f7c5808
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `influxdb:1.6-alpine` - linux; amd64

```console
$ docker pull influxdb@sha256:4e4a23191f1a35d2b4151b4076989f49438a5048a94fd7d5c2dd22dd0094e5a1
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **29.8 MB (29813935 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:37b635fe8f2f5759aac163db69771d0f9e31195723704c39d38eb7972baef75d`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Sat, 11 May 2019 00:07:03 GMT
ADD file:a86aea1f3a7d68f6ae03397b99ea77f2e9ee901c5c59e59f76f93adbb4035913 in / 
# Sat, 11 May 2019 00:07:03 GMT
CMD ["/bin/sh"]
# Fri, 24 May 2019 22:19:29 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf
# Fri, 24 May 2019 22:29:38 GMT
RUN apk add --no-cache tzdata bash ca-certificates &&     update-ca-certificates
# Fri, 24 May 2019 22:30:18 GMT
ENV INFLUXDB_VERSION=1.6.6
# Fri, 24 May 2019 22:30:22 GMT
RUN set -ex &&     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/influxdb/releases/influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/influxdb/releases/influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/influxdb-*/influxdb.conf &&     chmod +x /usr/src/influxdb-*/* &&     cp -a /usr/src/influxdb-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Fri, 24 May 2019 22:30:23 GMT
COPY file:3d8a606d61e1fc0042cf34d036eda4550a18d140c47376dacc02d96ee6f2dd8b in /etc/influxdb/influxdb.conf 
# Fri, 24 May 2019 22:30:23 GMT
EXPOSE 8086
# Fri, 24 May 2019 22:30:23 GMT
VOLUME [/var/lib/influxdb]
# Fri, 24 May 2019 22:30:23 GMT
COPY file:61c4af7a0e637328374ec46266ed6dde40adf7d14ac6c5081100924991beb7f3 in /entrypoint.sh 
# Fri, 24 May 2019 22:30:23 GMT
COPY file:892fcd3130baa17c0b88866ac37e7fe0b7b420a67105d9cd99803c685eaf9df4 in /init-influxdb.sh 
# Fri, 24 May 2019 22:30:23 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 24 May 2019 22:30:24 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:e7c96db7181be991f19a9fb6975cdbbd73c65f4a2681348e63a141a2192a5f10`  
		Last Modified: Sat, 11 May 2019 00:07:31 GMT  
		Size: 2.8 MB (2757034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6f159e68d94418a67508380d165c862e99b062f7e750d89b6878e7cfa18e8b8`  
		Last Modified: Fri, 24 May 2019 22:20:08 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40cfc7884ad1bf576dca4da9bf3383a0be217f65a1137addd216380e376c41e7`  
		Last Modified: Fri, 24 May 2019 22:31:41 GMT  
		Size: 1.9 MB (1865186 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d45e297070a5c282f69a5892c0cc1abb89860d325b8cdb28fb1ca0468841c55d`  
		Last Modified: Fri, 24 May 2019 22:32:14 GMT  
		Size: 25.2 MB (25189965 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0d70329e911d254ba9b0c81a007cb15657d9f818103a3a386a2056035d5f2e3`  
		Last Modified: Fri, 24 May 2019 22:32:08 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58f24aff696cc44f2b4e46d9f894b390a7282d35656334aef6e2b7151fe6635a`  
		Last Modified: Fri, 24 May 2019 22:32:09 GMT  
		Size: 209.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d50ccfe95e1610997fde41c6307aa3419860ffdf989e2ce2c83be586caff75f8`  
		Last Modified: Fri, 24 May 2019 22:32:09 GMT  
		Size: 1.2 KB (1165 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `influxdb:1.6-data`

```console
$ docker pull influxdb@sha256:fdea72a3441f2f9eb01fe462e475fc8befb7a6f7a88687f344e27543fe515669
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `influxdb:1.6-data` - linux; amd64

```console
$ docker pull influxdb@sha256:a7c55b8fec80099f072320b04c1998c56cca1d105a85052d354d09c04bc8aa49
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **87.0 MB (87041127 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:547016f78e53bc529f7d44da025a88738b8f5cdabd637ebf358eb65c1f8f391a`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Mon, 10 Jun 2019 23:24:07 GMT
ADD file:6e8620824300ccf3754fb5d8644a1dc7c69431d4cd1ef9d28d73f39260f96020 in / 
# Mon, 10 Jun 2019 23:24:07 GMT
CMD ["bash"]
# Tue, 11 Jun 2019 00:29:50 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 11 Jun 2019 00:30:00 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 11 Jun 2019 08:47:39 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Tue, 11 Jun 2019 08:48:45 GMT
ENV INFLUXDB_VERSION=1.6.6-c1.6.6
# Tue, 11 Jun 2019 08:48:53 GMT
RUN wget --no-verbose https://dl.influxdata.com/enterprise/releases/influxdb-data_${INFLUXDB_VERSION}_amd64.deb.asc &&     wget --no-verbose https://dl.influxdata.com/enterprise/releases/influxdb-data_${INFLUXDB_VERSION}_amd64.deb &&     gpg --batch --verify influxdb-data_${INFLUXDB_VERSION}_amd64.deb.asc influxdb-data_${INFLUXDB_VERSION}_amd64.deb &&     dpkg -i influxdb-data_${INFLUXDB_VERSION}_amd64.deb &&     rm -f influxdb-data_${INFLUXDB_VERSION}_amd64.deb*
# Tue, 11 Jun 2019 08:48:54 GMT
COPY file:bf2f42b62a32a7ee3ab93d9a5e451b7d59af1a97e40dc4a76b8aaf2f64383d7a in /etc/influxdb/influxdb.conf 
# Tue, 11 Jun 2019 08:48:54 GMT
EXPOSE 8086
# Tue, 11 Jun 2019 08:48:54 GMT
VOLUME [/var/lib/influxdb]
# Tue, 11 Jun 2019 08:48:55 GMT
COPY file:182a0176834db40043100d082d05e5aded9887c94b02416f6e3154c827c07360 in /entrypoint.sh 
# Tue, 11 Jun 2019 08:48:55 GMT
COPY file:892fcd3130baa17c0b88866ac37e7fe0b7b420a67105d9cd99803c685eaf9df4 in /init-influxdb.sh 
# Tue, 11 Jun 2019 08:48:55 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 11 Jun 2019 08:48:55 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:6f2f362378c5a6fd915d96d11dda1e0223ccf213bf121ace56ae0f6616ea1dc8`  
		Last Modified: Mon, 10 Jun 2019 23:27:55 GMT  
		Size: 45.3 MB (45339350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:494c27a8a6b820f9167ec7e368b3a9bb47d7029f4dc8c97c67091f3757a5bc4e`  
		Last Modified: Tue, 11 Jun 2019 00:37:59 GMT  
		Size: 10.8 MB (10785105 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7596bb83081b6c8410df557d538a0ae45922cbf81e469c6f4cfa835247cb24ab`  
		Last Modified: Tue, 11 Jun 2019 00:37:59 GMT  
		Size: 4.3 MB (4340143 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:058194e879938a49f17a6b38e4bbad333fc180da0644f975d63502ec1151ed47`  
		Last Modified: Tue, 11 Jun 2019 08:50:41 GMT  
		Size: 2.8 KB (2773 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bcdc4d097b87010d00846f4c0e0b8f85dc59571e49332dcff258f3f6ac56e1f`  
		Last Modified: Tue, 11 Jun 2019 08:51:38 GMT  
		Size: 26.6 MB (26572096 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2bedf6f1259f6e52281fd82245c7012f3cafedb4a6893f3bc08480f2181ebf1c`  
		Last Modified: Tue, 11 Jun 2019 08:51:28 GMT  
		Size: 243.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf0e30c9e9f0f6a7034bd4833c15f73032ddec47c841a842c7f9715ff954af18`  
		Last Modified: Tue, 11 Jun 2019 08:51:28 GMT  
		Size: 252.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7240445f8ea889b4b5e4b4a39f3751aface1bdf1c99a4a9314cc7978d720fbcf`  
		Last Modified: Tue, 11 Jun 2019 08:51:28 GMT  
		Size: 1.2 KB (1165 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `influxdb:1.6-data-alpine`

```console
$ docker pull influxdb@sha256:caafd4c167447de56761188957d1767e8f231ba8ddcea6c1e0d89af5ac685bd7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `influxdb:1.6-data-alpine` - linux; amd64

```console
$ docker pull influxdb@sha256:409de75dfcfec83aa9278e6dda117cf97fa3cfe939d469a07593cd9d8fab09a9
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **31.1 MB (31076414 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ece03e9815afe692ed899b315bd6f6a820e0d00776c2cecba88fc4fe55c3adcd`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Sat, 11 May 2019 00:07:03 GMT
ADD file:a86aea1f3a7d68f6ae03397b99ea77f2e9ee901c5c59e59f76f93adbb4035913 in / 
# Sat, 11 May 2019 00:07:03 GMT
CMD ["/bin/sh"]
# Fri, 24 May 2019 22:19:29 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf
# Fri, 24 May 2019 22:29:38 GMT
RUN apk add --no-cache tzdata bash ca-certificates &&     update-ca-certificates
# Fri, 24 May 2019 22:30:29 GMT
ENV INFLUXDB_VERSION=1.6.6-c1.6.6
# Fri, 24 May 2019 22:30:33 GMT
RUN set -ex &&     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/enterprise/releases/influxdb-data-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/enterprise/releases/influxdb-data-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify influxdb-data-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc influxdb-data-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf influxdb-data-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/influxdb-*/influxdb.conf &&     chmod +x /usr/src/influxdb-*/* &&     cp -a /usr/src/influxdb-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Fri, 24 May 2019 22:30:34 GMT
COPY file:bf2f42b62a32a7ee3ab93d9a5e451b7d59af1a97e40dc4a76b8aaf2f64383d7a in /etc/influxdb/influxdb.conf 
# Fri, 24 May 2019 22:30:34 GMT
EXPOSE 8086
# Fri, 24 May 2019 22:30:34 GMT
VOLUME [/var/lib/influxdb]
# Fri, 24 May 2019 22:30:34 GMT
COPY file:182a0176834db40043100d082d05e5aded9887c94b02416f6e3154c827c07360 in /entrypoint.sh 
# Fri, 24 May 2019 22:30:34 GMT
COPY file:892fcd3130baa17c0b88866ac37e7fe0b7b420a67105d9cd99803c685eaf9df4 in /init-influxdb.sh 
# Fri, 24 May 2019 22:30:34 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 24 May 2019 22:30:35 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:e7c96db7181be991f19a9fb6975cdbbd73c65f4a2681348e63a141a2192a5f10`  
		Last Modified: Sat, 11 May 2019 00:07:31 GMT  
		Size: 2.8 MB (2757034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6f159e68d94418a67508380d165c862e99b062f7e750d89b6878e7cfa18e8b8`  
		Last Modified: Fri, 24 May 2019 22:20:08 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40cfc7884ad1bf576dca4da9bf3383a0be217f65a1137addd216380e376c41e7`  
		Last Modified: Fri, 24 May 2019 22:31:41 GMT  
		Size: 1.9 MB (1865186 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c9acda041ca3c299774eb3b34f024ec7282671621063395cfa163d32bf38016`  
		Last Modified: Fri, 24 May 2019 22:32:26 GMT  
		Size: 26.5 MB (26452384 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d401bad40446cbe44fe5f4f553a375182644a3a862e3e6c588db3f26e2ba0033`  
		Last Modified: Fri, 24 May 2019 22:32:20 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fda69e547bd19a3739370f2e9f6387093692e051a3c776215d51768d2164f663`  
		Last Modified: Fri, 24 May 2019 22:32:20 GMT  
		Size: 251.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5df36aa459852922b18ebdb74fe8bf90bece2b8d62e5cce890b4ec26e702a7f2`  
		Last Modified: Fri, 24 May 2019 22:32:20 GMT  
		Size: 1.2 KB (1165 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `influxdb:1.6-meta`

```console
$ docker pull influxdb@sha256:e05d43b020f3fc7717267b13e260749415cac9c1db7c683b7b1cfaeb593d2aee
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `influxdb:1.6-meta` - linux; amd64

```console
$ docker pull influxdb@sha256:d2a4ddf66fba815b2f1456c8a4aedac000de63a58bdd74df1ac10d8bb03c54a8
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **73.0 MB (73016997 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f0c0bfaa1325e0a8cf91b79b498c7d9e53aef54e37bdc9304e552b0563d72703`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd-meta"]`

```dockerfile
# Mon, 10 Jun 2019 23:24:07 GMT
ADD file:6e8620824300ccf3754fb5d8644a1dc7c69431d4cd1ef9d28d73f39260f96020 in / 
# Mon, 10 Jun 2019 23:24:07 GMT
CMD ["bash"]
# Tue, 11 Jun 2019 00:29:50 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 11 Jun 2019 00:30:00 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 11 Jun 2019 08:47:39 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Tue, 11 Jun 2019 08:48:45 GMT
ENV INFLUXDB_VERSION=1.6.6-c1.6.6
# Tue, 11 Jun 2019 08:49:07 GMT
RUN wget --no-verbose https://dl.influxdata.com/enterprise/releases/influxdb-meta_${INFLUXDB_VERSION}_amd64.deb.asc &&     wget --no-verbose https://dl.influxdata.com/enterprise/releases/influxdb-meta_${INFLUXDB_VERSION}_amd64.deb &&     gpg --batch --verify influxdb-meta_${INFLUXDB_VERSION}_amd64.deb.asc influxdb-meta_${INFLUXDB_VERSION}_amd64.deb &&     dpkg -i influxdb-meta_${INFLUXDB_VERSION}_amd64.deb &&     rm -f influxdb-meta_${INFLUXDB_VERSION}_amd64.deb*
# Tue, 11 Jun 2019 08:49:08 GMT
COPY file:5d8d1b0acfd7ca05cf6698246b28d240206fa448f4aa5ac839c9ad323adbeac2 in /etc/influxdb/influxdb-meta.conf 
# Tue, 11 Jun 2019 08:49:08 GMT
EXPOSE 8091
# Tue, 11 Jun 2019 08:49:08 GMT
VOLUME [/var/lib/influxdb]
# Tue, 11 Jun 2019 08:49:08 GMT
COPY file:126b1f7e41b4975cf2ce23037cf6a46253fb817023062317380c48ff5df47228 in /entrypoint.sh 
# Tue, 11 Jun 2019 08:49:09 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 11 Jun 2019 08:49:09 GMT
CMD ["influxd-meta"]
```

-	Layers:
	-	`sha256:6f2f362378c5a6fd915d96d11dda1e0223ccf213bf121ace56ae0f6616ea1dc8`  
		Last Modified: Mon, 10 Jun 2019 23:27:55 GMT  
		Size: 45.3 MB (45339350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:494c27a8a6b820f9167ec7e368b3a9bb47d7029f4dc8c97c67091f3757a5bc4e`  
		Last Modified: Tue, 11 Jun 2019 00:37:59 GMT  
		Size: 10.8 MB (10785105 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7596bb83081b6c8410df557d538a0ae45922cbf81e469c6f4cfa835247cb24ab`  
		Last Modified: Tue, 11 Jun 2019 00:37:59 GMT  
		Size: 4.3 MB (4340143 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:058194e879938a49f17a6b38e4bbad333fc180da0644f975d63502ec1151ed47`  
		Last Modified: Tue, 11 Jun 2019 08:50:41 GMT  
		Size: 2.8 KB (2773 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9d23994aa87f6f5de88b7f4ce71ff97dd6bd708bd38363cc6b474e0fc4afd1c`  
		Last Modified: Tue, 11 Jun 2019 08:51:50 GMT  
		Size: 12.5 MB (12549055 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:406949b2d7a64344765a0c34e07a7d0dba3dec96555c7324fac5d2ee1f22e170`  
		Last Modified: Tue, 11 Jun 2019 08:51:44 GMT  
		Size: 196.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31da4fb9540c7ba5cd58bb41ad4fa19bd427aa335e720d840dece5734a67bca4`  
		Last Modified: Tue, 11 Jun 2019 08:51:44 GMT  
		Size: 375.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `influxdb:1.6-meta-alpine`

```console
$ docker pull influxdb@sha256:f94a3279748fe6864e69d3f9b57e575d913c46408504bac6f0b9227f700202a4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `influxdb:1.6-meta-alpine` - linux; amd64

```console
$ docker pull influxdb@sha256:884108c0ebee3a3ee8c618a30442b624013917819b446d6e2c544cba3ecbc37a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.1 MB (17127556 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ea9788fb726dae359501a83f69b20ca605b12a1a4fa5d4e4f255bd3b5363a59b`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd-meta"]`

```dockerfile
# Sat, 11 May 2019 00:07:03 GMT
ADD file:a86aea1f3a7d68f6ae03397b99ea77f2e9ee901c5c59e59f76f93adbb4035913 in / 
# Sat, 11 May 2019 00:07:03 GMT
CMD ["/bin/sh"]
# Fri, 24 May 2019 22:19:29 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf
# Fri, 24 May 2019 22:29:38 GMT
RUN apk add --no-cache tzdata bash ca-certificates &&     update-ca-certificates
# Fri, 24 May 2019 22:30:29 GMT
ENV INFLUXDB_VERSION=1.6.6-c1.6.6
# Fri, 24 May 2019 22:30:43 GMT
RUN set -ex &&     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/enterprise/releases/influxdb-meta-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/enterprise/releases/influxdb-meta-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify influxdb-meta-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc influxdb-meta-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf influxdb-meta-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/influxdb-*/influxdb-meta.conf &&     chmod +x /usr/src/influxdb-*/* &&     cp -a /usr/src/influxdb-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Fri, 24 May 2019 22:30:43 GMT
COPY file:5d8d1b0acfd7ca05cf6698246b28d240206fa448f4aa5ac839c9ad323adbeac2 in /etc/influxdb/influxdb-meta.conf 
# Fri, 24 May 2019 22:30:43 GMT
EXPOSE 8091
# Fri, 24 May 2019 22:30:44 GMT
VOLUME [/var/lib/influxdb]
# Fri, 24 May 2019 22:30:44 GMT
COPY file:126b1f7e41b4975cf2ce23037cf6a46253fb817023062317380c48ff5df47228 in /entrypoint.sh 
# Fri, 24 May 2019 22:30:44 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 24 May 2019 22:30:44 GMT
CMD ["influxd-meta"]
```

-	Layers:
	-	`sha256:e7c96db7181be991f19a9fb6975cdbbd73c65f4a2681348e63a141a2192a5f10`  
		Last Modified: Sat, 11 May 2019 00:07:31 GMT  
		Size: 2.8 MB (2757034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6f159e68d94418a67508380d165c862e99b062f7e750d89b6878e7cfa18e8b8`  
		Last Modified: Fri, 24 May 2019 22:20:08 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40cfc7884ad1bf576dca4da9bf3383a0be217f65a1137addd216380e376c41e7`  
		Last Modified: Fri, 24 May 2019 22:31:41 GMT  
		Size: 1.9 MB (1865186 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1fff813b39a82014ea8a9e28e680b659d4c97d0cda0e3dcd138d24b6d807bfa`  
		Last Modified: Fri, 24 May 2019 22:32:33 GMT  
		Size: 12.5 MB (12504615 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f84543ec0b96e44cb272ec543b9c87e67779a381178a0cb006286595d856847c`  
		Last Modified: Fri, 24 May 2019 22:32:30 GMT  
		Size: 193.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60dd198cc238043a08d58b46f7d8433a46e2d24ef1a9915bfcdbdb83d8aa019f`  
		Last Modified: Fri, 24 May 2019 22:32:31 GMT  
		Size: 374.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `influxdb:1.7`

```console
$ docker pull influxdb@sha256:af07db2e2040b27d4ae4c57b51729503802d22c1632893fe63ea054afe632ecc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `influxdb:1.7` - linux; amd64

```console
$ docker pull influxdb@sha256:0e5673ea8a4c254dc007700c938836565e8a1e5d97b2772cdb334ebce2732eda
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **111.1 MB (111127556 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8a4e8eda54c156f14441c8bcc1ad351b772d41955c0c622d9ab63e1b31cec4e1`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Mon, 10 Jun 2019 23:24:07 GMT
ADD file:6e8620824300ccf3754fb5d8644a1dc7c69431d4cd1ef9d28d73f39260f96020 in / 
# Mon, 10 Jun 2019 23:24:07 GMT
CMD ["bash"]
# Tue, 11 Jun 2019 00:29:50 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 11 Jun 2019 00:30:00 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 11 Jun 2019 08:47:39 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Tue, 11 Jun 2019 08:49:15 GMT
ENV INFLUXDB_VERSION=1.7.6
# Tue, 11 Jun 2019 08:49:25 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     gpg --batch --verify influxdb_${INFLUXDB_VERSION}_${ARCH}.deb.asc influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     dpkg -i influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     rm -f influxdb_${INFLUXDB_VERSION}_${ARCH}.deb*
# Tue, 11 Jun 2019 08:49:25 GMT
COPY file:3d8a606d61e1fc0042cf34d036eda4550a18d140c47376dacc02d96ee6f2dd8b in /etc/influxdb/influxdb.conf 
# Tue, 11 Jun 2019 08:49:25 GMT
EXPOSE 8086
# Tue, 11 Jun 2019 08:49:26 GMT
VOLUME [/var/lib/influxdb]
# Tue, 11 Jun 2019 08:49:26 GMT
COPY file:61c4af7a0e637328374ec46266ed6dde40adf7d14ac6c5081100924991beb7f3 in /entrypoint.sh 
# Tue, 11 Jun 2019 08:49:26 GMT
COPY file:892fcd3130baa17c0b88866ac37e7fe0b7b420a67105d9cd99803c685eaf9df4 in /init-influxdb.sh 
# Tue, 11 Jun 2019 08:49:26 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 11 Jun 2019 08:49:27 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:6f2f362378c5a6fd915d96d11dda1e0223ccf213bf121ace56ae0f6616ea1dc8`  
		Last Modified: Mon, 10 Jun 2019 23:27:55 GMT  
		Size: 45.3 MB (45339350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:494c27a8a6b820f9167ec7e368b3a9bb47d7029f4dc8c97c67091f3757a5bc4e`  
		Last Modified: Tue, 11 Jun 2019 00:37:59 GMT  
		Size: 10.8 MB (10785105 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7596bb83081b6c8410df557d538a0ae45922cbf81e469c6f4cfa835247cb24ab`  
		Last Modified: Tue, 11 Jun 2019 00:37:59 GMT  
		Size: 4.3 MB (4340143 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:058194e879938a49f17a6b38e4bbad333fc180da0644f975d63502ec1151ed47`  
		Last Modified: Tue, 11 Jun 2019 08:50:41 GMT  
		Size: 2.8 KB (2773 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9382c8196521df4ebcfc500d524eb1cbc7fabb3f6b087969c1e1854ce69517e8`  
		Last Modified: Tue, 11 Jun 2019 08:52:11 GMT  
		Size: 50.7 MB (50658583 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:651ab765a68f9a96e5a9d34cc4a3f25b6f52a36a6aa700a9c883ff9e61d733bb`  
		Last Modified: Tue, 11 Jun 2019 08:51:56 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8620b54be93df4a9a94ebb13d0f4c7d4512ff2eb469c4ea34b4e5d428e66a0b`  
		Last Modified: Tue, 11 Jun 2019 08:51:56 GMT  
		Size: 211.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5386872a43f3cbd562d617ddfec98dc625ff4890710bb8a289397e916bab8cbe`  
		Last Modified: Tue, 11 Jun 2019 08:51:56 GMT  
		Size: 1.2 KB (1165 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `influxdb:1.7` - linux; arm variant v7

```console
$ docker pull influxdb@sha256:4af613ee742c8e02a0ab3da10f61d3de60aad72a594a44230efe443485342ac5
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **103.2 MB (103172637 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:657844c38e5c83671c062d272d9e5d94e6ed87506d29d5bb5fdf21a51a5de6dc`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Tue, 11 Jun 2019 00:02:40 GMT
ADD file:a533ab960a52dd32ca40bdcb55083ba8c340e110f8519a3eda696b46a4a07165 in / 
# Tue, 11 Jun 2019 00:02:41 GMT
CMD ["bash"]
# Tue, 11 Jun 2019 01:09:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 11 Jun 2019 01:09:19 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 13 Jun 2019 00:30:31 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Thu, 13 Jun 2019 00:31:11 GMT
ENV INFLUXDB_VERSION=1.7.6
# Thu, 13 Jun 2019 00:31:20 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     gpg --batch --verify influxdb_${INFLUXDB_VERSION}_${ARCH}.deb.asc influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     dpkg -i influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     rm -f influxdb_${INFLUXDB_VERSION}_${ARCH}.deb*
# Thu, 13 Jun 2019 00:31:20 GMT
COPY file:3d8a606d61e1fc0042cf34d036eda4550a18d140c47376dacc02d96ee6f2dd8b in /etc/influxdb/influxdb.conf 
# Thu, 13 Jun 2019 00:31:21 GMT
EXPOSE 8086
# Thu, 13 Jun 2019 00:31:22 GMT
VOLUME [/var/lib/influxdb]
# Thu, 13 Jun 2019 00:31:22 GMT
COPY file:61c4af7a0e637328374ec46266ed6dde40adf7d14ac6c5081100924991beb7f3 in /entrypoint.sh 
# Thu, 13 Jun 2019 00:31:23 GMT
COPY file:892fcd3130baa17c0b88866ac37e7fe0b7b420a67105d9cd99803c685eaf9df4 in /init-influxdb.sh 
# Thu, 13 Jun 2019 00:31:24 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 13 Jun 2019 00:31:24 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:162e276b1a29dfd1a4601fd55aeaeb0175b63182e9190b1b0068252e5196b015`  
		Last Modified: Tue, 11 Jun 2019 00:09:02 GMT  
		Size: 42.1 MB (42082622 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:052e820679506cc68db5317ee3f92e7f5f520894f881940a686f7b1280ff93a0`  
		Last Modified: Tue, 11 Jun 2019 01:17:33 GMT  
		Size: 9.5 MB (9485206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f5e84bede193d1aa79031526fbcfa99e8b6cf354b12a7cfbe5cdfe2c9acf155`  
		Last Modified: Tue, 11 Jun 2019 01:17:32 GMT  
		Size: 3.9 MB (3918643 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:269727385d075ffeeff0c3f9ddce8009ea58bb8a959b813302a1566f1acdc1a0`  
		Last Modified: Thu, 13 Jun 2019 00:31:37 GMT  
		Size: 2.8 KB (2801 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8103c9f6238f06d81c6043418b3f18feada8d238b7f97f78c8477c023f6591f3`  
		Last Modified: Thu, 13 Jun 2019 00:32:18 GMT  
		Size: 47.7 MB (47681765 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4083e278aa3378baf249b42d99fae263eb9a7ff6e2aa0b47c21461d0c1dd1a06`  
		Last Modified: Thu, 13 Jun 2019 00:32:06 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9147d8d1a80880493816869408eb90cd2f0e8f7bffa6f9dffd68992d4bdff0f8`  
		Last Modified: Thu, 13 Jun 2019 00:32:06 GMT  
		Size: 208.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:accbcd58f1ea77d54b2214e4b37800298ed2f3fb6ad6df401aeb27aec08cf1c9`  
		Last Modified: Thu, 13 Jun 2019 00:32:06 GMT  
		Size: 1.2 KB (1166 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `influxdb:1.7` - linux; arm64 variant v8

```console
$ docker pull influxdb@sha256:ef103a50126d61722a747b8f9b54284d51f28b5569a7e245500d8f69d6cdce12
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **104.0 MB (103951018 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6fb24aa8ecc4b9539f1d04181d630df048c12e7e3dbeb3dbcf78cf6fcf3c921f`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Wed, 08 May 2019 08:48:25 GMT
ADD file:153045f4fe6532d8c2ff273bb249a7a3a4cba913c26a4103ba5ddce1af02c1e5 in / 
# Wed, 08 May 2019 08:48:26 GMT
CMD ["bash"]
# Tue, 11 Jun 2019 00:19:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 11 Jun 2019 00:19:38 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 13 Jun 2019 00:19:57 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Thu, 13 Jun 2019 00:20:27 GMT
ENV INFLUXDB_VERSION=1.7.6
# Thu, 13 Jun 2019 00:20:35 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     gpg --batch --verify influxdb_${INFLUXDB_VERSION}_${ARCH}.deb.asc influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     dpkg -i influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     rm -f influxdb_${INFLUXDB_VERSION}_${ARCH}.deb*
# Thu, 13 Jun 2019 00:20:36 GMT
COPY file:3d8a606d61e1fc0042cf34d036eda4550a18d140c47376dacc02d96ee6f2dd8b in /etc/influxdb/influxdb.conf 
# Thu, 13 Jun 2019 00:20:37 GMT
EXPOSE 8086
# Thu, 13 Jun 2019 00:20:38 GMT
VOLUME [/var/lib/influxdb]
# Thu, 13 Jun 2019 00:20:39 GMT
COPY file:61c4af7a0e637328374ec46266ed6dde40adf7d14ac6c5081100924991beb7f3 in /entrypoint.sh 
# Thu, 13 Jun 2019 00:20:39 GMT
COPY file:892fcd3130baa17c0b88866ac37e7fe0b7b420a67105d9cd99803c685eaf9df4 in /init-influxdb.sh 
# Thu, 13 Jun 2019 00:20:40 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 13 Jun 2019 00:20:41 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:5894e28291972e44f5c3eba2779a85979bae6f95ed4f3e43ea5c98a132f06c48`  
		Last Modified: Wed, 08 May 2019 08:54:43 GMT  
		Size: 43.1 MB (43141955 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4579724c1a9cbbeb91053f719bf515654043a3e39cfaa248ebedc84c2f0460ea`  
		Last Modified: Tue, 11 Jun 2019 00:36:45 GMT  
		Size: 9.7 MB (9734083 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a493ac681ca78302ad6a97cd01e4daa5f1d995f0523f5e5cb8306071eea417b5`  
		Last Modified: Tue, 11 Jun 2019 00:36:43 GMT  
		Size: 4.1 MB (4094360 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1717658875655479c6ac9da01ba542fac343b49eb5f8646d039b6880740f9389`  
		Last Modified: Thu, 13 Jun 2019 00:20:53 GMT  
		Size: 2.8 KB (2804 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8762395b4c7564706e59d1fe4214661d0bf67b27f204de8ffc817a043c3dc50`  
		Last Modified: Thu, 13 Jun 2019 00:21:41 GMT  
		Size: 47.0 MB (46976218 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eaf8f86584a6dffd214ce76ea879b9012abe7a2a538c807fab4efc97d8245763`  
		Last Modified: Thu, 13 Jun 2019 00:21:28 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5a787a99bef2e4e7ee0e2aaec8eedf28c3de315308b16eee2f46db48409742e`  
		Last Modified: Thu, 13 Jun 2019 00:21:28 GMT  
		Size: 207.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c035a6eebafaad9789d949591f56bf83b420052f36b1396ad423cc2fdbb95f8b`  
		Last Modified: Thu, 13 Jun 2019 00:21:28 GMT  
		Size: 1.2 KB (1165 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `influxdb:1.7.5-data`

```console
$ docker pull influxdb@sha256:0232dec930fe1c0742e3425b70c858c5722009b4cb228fad36e6bbd93e57f524
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `influxdb:1.7.5-data` - linux; amd64

```console
$ docker pull influxdb@sha256:3682992f02bddde4e0d717c0d9cbee50c63fd8eeea85a109cf11e184b353697f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **106.6 MB (106578876 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b4bf61eb85223885abd0eacb4d1764d8f025940d1d060ed1c5da4e9e69f72e3e`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Mon, 10 Jun 2019 23:24:07 GMT
ADD file:6e8620824300ccf3754fb5d8644a1dc7c69431d4cd1ef9d28d73f39260f96020 in / 
# Mon, 10 Jun 2019 23:24:07 GMT
CMD ["bash"]
# Tue, 11 Jun 2019 00:29:50 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 11 Jun 2019 00:30:00 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 11 Jun 2019 08:47:39 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Tue, 11 Jun 2019 08:49:34 GMT
ENV INFLUXDB_VERSION=1.7.5-c1.7.5
# Tue, 11 Jun 2019 08:49:44 GMT
RUN wget --no-verbose https://dl.influxdata.com/enterprise/releases/influxdb-data_${INFLUXDB_VERSION}_amd64.deb.asc &&     wget --no-verbose https://dl.influxdata.com/enterprise/releases/influxdb-data_${INFLUXDB_VERSION}_amd64.deb &&     gpg --batch --verify influxdb-data_${INFLUXDB_VERSION}_amd64.deb.asc influxdb-data_${INFLUXDB_VERSION}_amd64.deb &&     dpkg -i influxdb-data_${INFLUXDB_VERSION}_amd64.deb &&     rm -f influxdb-data_${INFLUXDB_VERSION}_amd64.deb*
# Tue, 11 Jun 2019 08:49:44 GMT
COPY file:bf2f42b62a32a7ee3ab93d9a5e451b7d59af1a97e40dc4a76b8aaf2f64383d7a in /etc/influxdb/influxdb.conf 
# Tue, 11 Jun 2019 08:49:44 GMT
EXPOSE 8086
# Tue, 11 Jun 2019 08:49:44 GMT
VOLUME [/var/lib/influxdb]
# Tue, 11 Jun 2019 08:49:45 GMT
COPY file:182a0176834db40043100d082d05e5aded9887c94b02416f6e3154c827c07360 in /entrypoint.sh 
# Tue, 11 Jun 2019 08:49:45 GMT
COPY file:892fcd3130baa17c0b88866ac37e7fe0b7b420a67105d9cd99803c685eaf9df4 in /init-influxdb.sh 
# Tue, 11 Jun 2019 08:49:45 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 11 Jun 2019 08:49:45 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:6f2f362378c5a6fd915d96d11dda1e0223ccf213bf121ace56ae0f6616ea1dc8`  
		Last Modified: Mon, 10 Jun 2019 23:27:55 GMT  
		Size: 45.3 MB (45339350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:494c27a8a6b820f9167ec7e368b3a9bb47d7029f4dc8c97c67091f3757a5bc4e`  
		Last Modified: Tue, 11 Jun 2019 00:37:59 GMT  
		Size: 10.8 MB (10785105 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7596bb83081b6c8410df557d538a0ae45922cbf81e469c6f4cfa835247cb24ab`  
		Last Modified: Tue, 11 Jun 2019 00:37:59 GMT  
		Size: 4.3 MB (4340143 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:058194e879938a49f17a6b38e4bbad333fc180da0644f975d63502ec1151ed47`  
		Last Modified: Tue, 11 Jun 2019 08:50:41 GMT  
		Size: 2.8 KB (2773 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a3aa2d5849cca47ad4180daebc4db9459a1408a7ddd5bfd563b1759f9247a8e`  
		Last Modified: Tue, 11 Jun 2019 08:52:35 GMT  
		Size: 46.1 MB (46109845 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:327d9a1ac2b8d583c707989225889985e5498eedbcdcce3f28406c93a48f90d2`  
		Last Modified: Tue, 11 Jun 2019 08:52:18 GMT  
		Size: 243.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9309ae270a446111e31dd9f2316ecce891b1433f55e3d36e9e0367898a4602fe`  
		Last Modified: Tue, 11 Jun 2019 08:52:19 GMT  
		Size: 252.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75e4171af70dc498d8b967659d525a683269f1e46b16262d3e70dc8be7be28c0`  
		Last Modified: Tue, 11 Jun 2019 08:52:18 GMT  
		Size: 1.2 KB (1165 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `influxdb:1.7.5-data-alpine`

```console
$ docker pull influxdb@sha256:994e2154814d5aa2a862074c3c4d17ecd9c2eb86af255a77e088a7133c86c05c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `influxdb:1.7.5-data-alpine` - linux; amd64

```console
$ docker pull influxdb@sha256:e31c9cb6c3b8c0b87c4c26c43366fc2c5222ee4a386cf47dd1270f24278beeb1
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **50.6 MB (50556242 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ef21d7ceff61e2e8b77a7df03a303903a3c50663e519d983c7804803d5dfc285`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Sat, 11 May 2019 00:07:03 GMT
ADD file:a86aea1f3a7d68f6ae03397b99ea77f2e9ee901c5c59e59f76f93adbb4035913 in / 
# Sat, 11 May 2019 00:07:03 GMT
CMD ["/bin/sh"]
# Fri, 24 May 2019 22:19:29 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf
# Fri, 24 May 2019 22:29:38 GMT
RUN apk add --no-cache tzdata bash ca-certificates &&     update-ca-certificates
# Fri, 24 May 2019 22:31:03 GMT
ENV INFLUXDB_VERSION=1.7.5-c1.7.5
# Fri, 24 May 2019 22:31:10 GMT
RUN set -ex &&     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/enterprise/releases/influxdb-data-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/enterprise/releases/influxdb-data-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify influxdb-data-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc influxdb-data-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf influxdb-data-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/influxdb-*/influxdb.conf &&     chmod +x /usr/src/influxdb-*/* &&     cp -a /usr/src/influxdb-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Fri, 24 May 2019 22:31:10 GMT
COPY file:bf2f42b62a32a7ee3ab93d9a5e451b7d59af1a97e40dc4a76b8aaf2f64383d7a in /etc/influxdb/influxdb.conf 
# Fri, 24 May 2019 22:31:10 GMT
EXPOSE 8086
# Fri, 24 May 2019 22:31:11 GMT
VOLUME [/var/lib/influxdb]
# Fri, 24 May 2019 22:31:11 GMT
COPY file:182a0176834db40043100d082d05e5aded9887c94b02416f6e3154c827c07360 in /entrypoint.sh 
# Fri, 24 May 2019 22:31:11 GMT
COPY file:892fcd3130baa17c0b88866ac37e7fe0b7b420a67105d9cd99803c685eaf9df4 in /init-influxdb.sh 
# Fri, 24 May 2019 22:31:11 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 24 May 2019 22:31:11 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:e7c96db7181be991f19a9fb6975cdbbd73c65f4a2681348e63a141a2192a5f10`  
		Last Modified: Sat, 11 May 2019 00:07:31 GMT  
		Size: 2.8 MB (2757034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6f159e68d94418a67508380d165c862e99b062f7e750d89b6878e7cfa18e8b8`  
		Last Modified: Fri, 24 May 2019 22:20:08 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40cfc7884ad1bf576dca4da9bf3383a0be217f65a1137addd216380e376c41e7`  
		Last Modified: Fri, 24 May 2019 22:31:41 GMT  
		Size: 1.9 MB (1865186 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:863aa9d345ace0d2261394789401aa8ce428fb808b15fc848c9e01cae5aeca96`  
		Last Modified: Fri, 24 May 2019 22:33:05 GMT  
		Size: 45.9 MB (45932212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38b99683eafe2a7d7255f99bc704e13dba6eec6b6a91015cbd56abf22a570be9`  
		Last Modified: Fri, 24 May 2019 22:32:49 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2f192d82ab3fb28b3b62d764a5d37f297c1ca2663d8848b1acff5cfa3e0054c`  
		Last Modified: Fri, 24 May 2019 22:32:49 GMT  
		Size: 251.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:979fb8b09ff55707058337236db8a2608bbaf71414f2f5c381ac30639324cde5`  
		Last Modified: Fri, 24 May 2019 22:32:49 GMT  
		Size: 1.2 KB (1165 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `influxdb:1.7.5-meta`

```console
$ docker pull influxdb@sha256:c8829caec8811fb0fc315745af93aff9946178085c7abdc402b9127fff599004
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `influxdb:1.7.5-meta` - linux; amd64

```console
$ docker pull influxdb@sha256:481e317a92141878b8de19370ba6c589490d99fa099685cafe7062f324321ddc
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **75.4 MB (75366465 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c04c6c95ea3eb913b5d060f76a458ef2b34a4c0a3483a766d583835a059f0b0a`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd-meta"]`

```dockerfile
# Mon, 10 Jun 2019 23:24:07 GMT
ADD file:6e8620824300ccf3754fb5d8644a1dc7c69431d4cd1ef9d28d73f39260f96020 in / 
# Mon, 10 Jun 2019 23:24:07 GMT
CMD ["bash"]
# Tue, 11 Jun 2019 00:29:50 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 11 Jun 2019 00:30:00 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 11 Jun 2019 08:47:39 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Tue, 11 Jun 2019 08:49:34 GMT
ENV INFLUXDB_VERSION=1.7.5-c1.7.5
# Tue, 11 Jun 2019 08:49:57 GMT
RUN wget --no-verbose https://dl.influxdata.com/enterprise/releases/influxdb-meta_${INFLUXDB_VERSION}_amd64.deb.asc &&     wget --no-verbose https://dl.influxdata.com/enterprise/releases/influxdb-meta_${INFLUXDB_VERSION}_amd64.deb &&     gpg --batch --verify influxdb-meta_${INFLUXDB_VERSION}_amd64.deb.asc influxdb-meta_${INFLUXDB_VERSION}_amd64.deb &&     dpkg -i influxdb-meta_${INFLUXDB_VERSION}_amd64.deb &&     rm -f influxdb-meta_${INFLUXDB_VERSION}_amd64.deb*
# Tue, 11 Jun 2019 08:49:57 GMT
COPY file:5d8d1b0acfd7ca05cf6698246b28d240206fa448f4aa5ac839c9ad323adbeac2 in /etc/influxdb/influxdb-meta.conf 
# Tue, 11 Jun 2019 08:49:58 GMT
EXPOSE 8091
# Tue, 11 Jun 2019 08:49:58 GMT
VOLUME [/var/lib/influxdb]
# Tue, 11 Jun 2019 08:49:58 GMT
COPY file:126b1f7e41b4975cf2ce23037cf6a46253fb817023062317380c48ff5df47228 in /entrypoint.sh 
# Tue, 11 Jun 2019 08:49:58 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 11 Jun 2019 08:49:59 GMT
CMD ["influxd-meta"]
```

-	Layers:
	-	`sha256:6f2f362378c5a6fd915d96d11dda1e0223ccf213bf121ace56ae0f6616ea1dc8`  
		Last Modified: Mon, 10 Jun 2019 23:27:55 GMT  
		Size: 45.3 MB (45339350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:494c27a8a6b820f9167ec7e368b3a9bb47d7029f4dc8c97c67091f3757a5bc4e`  
		Last Modified: Tue, 11 Jun 2019 00:37:59 GMT  
		Size: 10.8 MB (10785105 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7596bb83081b6c8410df557d538a0ae45922cbf81e469c6f4cfa835247cb24ab`  
		Last Modified: Tue, 11 Jun 2019 00:37:59 GMT  
		Size: 4.3 MB (4340143 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:058194e879938a49f17a6b38e4bbad333fc180da0644f975d63502ec1151ed47`  
		Last Modified: Tue, 11 Jun 2019 08:50:41 GMT  
		Size: 2.8 KB (2773 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23dba8dfb70d1bc420aca95eb0633fd3cd09d75c1cc7408db7edd4f183bf024f`  
		Last Modified: Tue, 11 Jun 2019 08:52:46 GMT  
		Size: 14.9 MB (14898524 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c43a37a34862d991a713c3886c55cfc5879de4af4e92363c6238a063887d35c`  
		Last Modified: Tue, 11 Jun 2019 08:52:42 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ff2309db4ed45e139a08c6180142754be928a3ca28d142350d52b5e8ed56488`  
		Last Modified: Tue, 11 Jun 2019 08:52:42 GMT  
		Size: 375.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `influxdb:1.7.5-meta-alpine`

```console
$ docker pull influxdb@sha256:fb194ca93c589f34dcd9633139346ffb1f36e1070ea403bc59b705d28c9bad15
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `influxdb:1.7.5-meta-alpine` - linux; amd64

```console
$ docker pull influxdb@sha256:e743e8b36902672054b36b460eba771aa211bd90464c07e76beda5d16f1518db
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **19.5 MB (19476564 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c6340e701accb8fae03e986e61c61ff341ede4342bb189c880a55a69e21e041c`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd-meta"]`

```dockerfile
# Sat, 11 May 2019 00:07:03 GMT
ADD file:a86aea1f3a7d68f6ae03397b99ea77f2e9ee901c5c59e59f76f93adbb4035913 in / 
# Sat, 11 May 2019 00:07:03 GMT
CMD ["/bin/sh"]
# Fri, 24 May 2019 22:19:29 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf
# Fri, 24 May 2019 22:29:38 GMT
RUN apk add --no-cache tzdata bash ca-certificates &&     update-ca-certificates
# Fri, 24 May 2019 22:31:03 GMT
ENV INFLUXDB_VERSION=1.7.5-c1.7.5
# Fri, 24 May 2019 22:31:20 GMT
RUN set -ex &&     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/enterprise/releases/influxdb-meta-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/enterprise/releases/influxdb-meta-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify influxdb-meta-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc influxdb-meta-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf influxdb-meta-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/influxdb-*/influxdb-meta.conf &&     chmod +x /usr/src/influxdb-*/* &&     cp -a /usr/src/influxdb-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Fri, 24 May 2019 22:31:21 GMT
COPY file:5d8d1b0acfd7ca05cf6698246b28d240206fa448f4aa5ac839c9ad323adbeac2 in /etc/influxdb/influxdb-meta.conf 
# Fri, 24 May 2019 22:31:21 GMT
EXPOSE 8091
# Fri, 24 May 2019 22:31:21 GMT
VOLUME [/var/lib/influxdb]
# Fri, 24 May 2019 22:31:21 GMT
COPY file:126b1f7e41b4975cf2ce23037cf6a46253fb817023062317380c48ff5df47228 in /entrypoint.sh 
# Fri, 24 May 2019 22:31:21 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 24 May 2019 22:31:22 GMT
CMD ["influxd-meta"]
```

-	Layers:
	-	`sha256:e7c96db7181be991f19a9fb6975cdbbd73c65f4a2681348e63a141a2192a5f10`  
		Last Modified: Sat, 11 May 2019 00:07:31 GMT  
		Size: 2.8 MB (2757034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6f159e68d94418a67508380d165c862e99b062f7e750d89b6878e7cfa18e8b8`  
		Last Modified: Fri, 24 May 2019 22:20:08 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40cfc7884ad1bf576dca4da9bf3383a0be217f65a1137addd216380e376c41e7`  
		Last Modified: Fri, 24 May 2019 22:31:41 GMT  
		Size: 1.9 MB (1865186 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9235f8891365298cd0b320a1853ee1c3fc9ed581525fbd85d32971dd08d98bef`  
		Last Modified: Fri, 24 May 2019 22:33:14 GMT  
		Size: 14.9 MB (14853620 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a720c28161857ab8ad36843d45d6a537dd44da1b5bc769086b9e882c39588ea`  
		Last Modified: Fri, 24 May 2019 22:33:11 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7ca8fce2f64b3d9d578f1bc7284eb2d149857bc8644adfb8374d58c1671e9eb`  
		Last Modified: Fri, 24 May 2019 22:33:11 GMT  
		Size: 375.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `influxdb:1.7.6`

```console
$ docker pull influxdb@sha256:af07db2e2040b27d4ae4c57b51729503802d22c1632893fe63ea054afe632ecc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `influxdb:1.7.6` - linux; amd64

```console
$ docker pull influxdb@sha256:0e5673ea8a4c254dc007700c938836565e8a1e5d97b2772cdb334ebce2732eda
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **111.1 MB (111127556 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8a4e8eda54c156f14441c8bcc1ad351b772d41955c0c622d9ab63e1b31cec4e1`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Mon, 10 Jun 2019 23:24:07 GMT
ADD file:6e8620824300ccf3754fb5d8644a1dc7c69431d4cd1ef9d28d73f39260f96020 in / 
# Mon, 10 Jun 2019 23:24:07 GMT
CMD ["bash"]
# Tue, 11 Jun 2019 00:29:50 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 11 Jun 2019 00:30:00 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 11 Jun 2019 08:47:39 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Tue, 11 Jun 2019 08:49:15 GMT
ENV INFLUXDB_VERSION=1.7.6
# Tue, 11 Jun 2019 08:49:25 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     gpg --batch --verify influxdb_${INFLUXDB_VERSION}_${ARCH}.deb.asc influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     dpkg -i influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     rm -f influxdb_${INFLUXDB_VERSION}_${ARCH}.deb*
# Tue, 11 Jun 2019 08:49:25 GMT
COPY file:3d8a606d61e1fc0042cf34d036eda4550a18d140c47376dacc02d96ee6f2dd8b in /etc/influxdb/influxdb.conf 
# Tue, 11 Jun 2019 08:49:25 GMT
EXPOSE 8086
# Tue, 11 Jun 2019 08:49:26 GMT
VOLUME [/var/lib/influxdb]
# Tue, 11 Jun 2019 08:49:26 GMT
COPY file:61c4af7a0e637328374ec46266ed6dde40adf7d14ac6c5081100924991beb7f3 in /entrypoint.sh 
# Tue, 11 Jun 2019 08:49:26 GMT
COPY file:892fcd3130baa17c0b88866ac37e7fe0b7b420a67105d9cd99803c685eaf9df4 in /init-influxdb.sh 
# Tue, 11 Jun 2019 08:49:26 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 11 Jun 2019 08:49:27 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:6f2f362378c5a6fd915d96d11dda1e0223ccf213bf121ace56ae0f6616ea1dc8`  
		Last Modified: Mon, 10 Jun 2019 23:27:55 GMT  
		Size: 45.3 MB (45339350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:494c27a8a6b820f9167ec7e368b3a9bb47d7029f4dc8c97c67091f3757a5bc4e`  
		Last Modified: Tue, 11 Jun 2019 00:37:59 GMT  
		Size: 10.8 MB (10785105 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7596bb83081b6c8410df557d538a0ae45922cbf81e469c6f4cfa835247cb24ab`  
		Last Modified: Tue, 11 Jun 2019 00:37:59 GMT  
		Size: 4.3 MB (4340143 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:058194e879938a49f17a6b38e4bbad333fc180da0644f975d63502ec1151ed47`  
		Last Modified: Tue, 11 Jun 2019 08:50:41 GMT  
		Size: 2.8 KB (2773 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9382c8196521df4ebcfc500d524eb1cbc7fabb3f6b087969c1e1854ce69517e8`  
		Last Modified: Tue, 11 Jun 2019 08:52:11 GMT  
		Size: 50.7 MB (50658583 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:651ab765a68f9a96e5a9d34cc4a3f25b6f52a36a6aa700a9c883ff9e61d733bb`  
		Last Modified: Tue, 11 Jun 2019 08:51:56 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8620b54be93df4a9a94ebb13d0f4c7d4512ff2eb469c4ea34b4e5d428e66a0b`  
		Last Modified: Tue, 11 Jun 2019 08:51:56 GMT  
		Size: 211.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5386872a43f3cbd562d617ddfec98dc625ff4890710bb8a289397e916bab8cbe`  
		Last Modified: Tue, 11 Jun 2019 08:51:56 GMT  
		Size: 1.2 KB (1165 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `influxdb:1.7.6` - linux; arm variant v7

```console
$ docker pull influxdb@sha256:4af613ee742c8e02a0ab3da10f61d3de60aad72a594a44230efe443485342ac5
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **103.2 MB (103172637 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:657844c38e5c83671c062d272d9e5d94e6ed87506d29d5bb5fdf21a51a5de6dc`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Tue, 11 Jun 2019 00:02:40 GMT
ADD file:a533ab960a52dd32ca40bdcb55083ba8c340e110f8519a3eda696b46a4a07165 in / 
# Tue, 11 Jun 2019 00:02:41 GMT
CMD ["bash"]
# Tue, 11 Jun 2019 01:09:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 11 Jun 2019 01:09:19 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 13 Jun 2019 00:30:31 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Thu, 13 Jun 2019 00:31:11 GMT
ENV INFLUXDB_VERSION=1.7.6
# Thu, 13 Jun 2019 00:31:20 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     gpg --batch --verify influxdb_${INFLUXDB_VERSION}_${ARCH}.deb.asc influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     dpkg -i influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     rm -f influxdb_${INFLUXDB_VERSION}_${ARCH}.deb*
# Thu, 13 Jun 2019 00:31:20 GMT
COPY file:3d8a606d61e1fc0042cf34d036eda4550a18d140c47376dacc02d96ee6f2dd8b in /etc/influxdb/influxdb.conf 
# Thu, 13 Jun 2019 00:31:21 GMT
EXPOSE 8086
# Thu, 13 Jun 2019 00:31:22 GMT
VOLUME [/var/lib/influxdb]
# Thu, 13 Jun 2019 00:31:22 GMT
COPY file:61c4af7a0e637328374ec46266ed6dde40adf7d14ac6c5081100924991beb7f3 in /entrypoint.sh 
# Thu, 13 Jun 2019 00:31:23 GMT
COPY file:892fcd3130baa17c0b88866ac37e7fe0b7b420a67105d9cd99803c685eaf9df4 in /init-influxdb.sh 
# Thu, 13 Jun 2019 00:31:24 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 13 Jun 2019 00:31:24 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:162e276b1a29dfd1a4601fd55aeaeb0175b63182e9190b1b0068252e5196b015`  
		Last Modified: Tue, 11 Jun 2019 00:09:02 GMT  
		Size: 42.1 MB (42082622 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:052e820679506cc68db5317ee3f92e7f5f520894f881940a686f7b1280ff93a0`  
		Last Modified: Tue, 11 Jun 2019 01:17:33 GMT  
		Size: 9.5 MB (9485206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f5e84bede193d1aa79031526fbcfa99e8b6cf354b12a7cfbe5cdfe2c9acf155`  
		Last Modified: Tue, 11 Jun 2019 01:17:32 GMT  
		Size: 3.9 MB (3918643 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:269727385d075ffeeff0c3f9ddce8009ea58bb8a959b813302a1566f1acdc1a0`  
		Last Modified: Thu, 13 Jun 2019 00:31:37 GMT  
		Size: 2.8 KB (2801 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8103c9f6238f06d81c6043418b3f18feada8d238b7f97f78c8477c023f6591f3`  
		Last Modified: Thu, 13 Jun 2019 00:32:18 GMT  
		Size: 47.7 MB (47681765 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4083e278aa3378baf249b42d99fae263eb9a7ff6e2aa0b47c21461d0c1dd1a06`  
		Last Modified: Thu, 13 Jun 2019 00:32:06 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9147d8d1a80880493816869408eb90cd2f0e8f7bffa6f9dffd68992d4bdff0f8`  
		Last Modified: Thu, 13 Jun 2019 00:32:06 GMT  
		Size: 208.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:accbcd58f1ea77d54b2214e4b37800298ed2f3fb6ad6df401aeb27aec08cf1c9`  
		Last Modified: Thu, 13 Jun 2019 00:32:06 GMT  
		Size: 1.2 KB (1166 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `influxdb:1.7.6` - linux; arm64 variant v8

```console
$ docker pull influxdb@sha256:ef103a50126d61722a747b8f9b54284d51f28b5569a7e245500d8f69d6cdce12
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **104.0 MB (103951018 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6fb24aa8ecc4b9539f1d04181d630df048c12e7e3dbeb3dbcf78cf6fcf3c921f`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Wed, 08 May 2019 08:48:25 GMT
ADD file:153045f4fe6532d8c2ff273bb249a7a3a4cba913c26a4103ba5ddce1af02c1e5 in / 
# Wed, 08 May 2019 08:48:26 GMT
CMD ["bash"]
# Tue, 11 Jun 2019 00:19:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 11 Jun 2019 00:19:38 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 13 Jun 2019 00:19:57 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Thu, 13 Jun 2019 00:20:27 GMT
ENV INFLUXDB_VERSION=1.7.6
# Thu, 13 Jun 2019 00:20:35 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     gpg --batch --verify influxdb_${INFLUXDB_VERSION}_${ARCH}.deb.asc influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     dpkg -i influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     rm -f influxdb_${INFLUXDB_VERSION}_${ARCH}.deb*
# Thu, 13 Jun 2019 00:20:36 GMT
COPY file:3d8a606d61e1fc0042cf34d036eda4550a18d140c47376dacc02d96ee6f2dd8b in /etc/influxdb/influxdb.conf 
# Thu, 13 Jun 2019 00:20:37 GMT
EXPOSE 8086
# Thu, 13 Jun 2019 00:20:38 GMT
VOLUME [/var/lib/influxdb]
# Thu, 13 Jun 2019 00:20:39 GMT
COPY file:61c4af7a0e637328374ec46266ed6dde40adf7d14ac6c5081100924991beb7f3 in /entrypoint.sh 
# Thu, 13 Jun 2019 00:20:39 GMT
COPY file:892fcd3130baa17c0b88866ac37e7fe0b7b420a67105d9cd99803c685eaf9df4 in /init-influxdb.sh 
# Thu, 13 Jun 2019 00:20:40 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 13 Jun 2019 00:20:41 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:5894e28291972e44f5c3eba2779a85979bae6f95ed4f3e43ea5c98a132f06c48`  
		Last Modified: Wed, 08 May 2019 08:54:43 GMT  
		Size: 43.1 MB (43141955 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4579724c1a9cbbeb91053f719bf515654043a3e39cfaa248ebedc84c2f0460ea`  
		Last Modified: Tue, 11 Jun 2019 00:36:45 GMT  
		Size: 9.7 MB (9734083 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a493ac681ca78302ad6a97cd01e4daa5f1d995f0523f5e5cb8306071eea417b5`  
		Last Modified: Tue, 11 Jun 2019 00:36:43 GMT  
		Size: 4.1 MB (4094360 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1717658875655479c6ac9da01ba542fac343b49eb5f8646d039b6880740f9389`  
		Last Modified: Thu, 13 Jun 2019 00:20:53 GMT  
		Size: 2.8 KB (2804 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8762395b4c7564706e59d1fe4214661d0bf67b27f204de8ffc817a043c3dc50`  
		Last Modified: Thu, 13 Jun 2019 00:21:41 GMT  
		Size: 47.0 MB (46976218 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eaf8f86584a6dffd214ce76ea879b9012abe7a2a538c807fab4efc97d8245763`  
		Last Modified: Thu, 13 Jun 2019 00:21:28 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5a787a99bef2e4e7ee0e2aaec8eedf28c3de315308b16eee2f46db48409742e`  
		Last Modified: Thu, 13 Jun 2019 00:21:28 GMT  
		Size: 207.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c035a6eebafaad9789d949591f56bf83b420052f36b1396ad423cc2fdbb95f8b`  
		Last Modified: Thu, 13 Jun 2019 00:21:28 GMT  
		Size: 1.2 KB (1165 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `influxdb:1.7.6-alpine`

```console
$ docker pull influxdb@sha256:4ba363315807fc6e35e98bc9d4760f417a681e4d3a547a0b24b135c56af96376
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `influxdb:1.7.6-alpine` - linux; amd64

```console
$ docker pull influxdb@sha256:82b14a14dcc512e6468228548303871adafd109c08df4e6f5947a1529e691281
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **55.1 MB (55054455 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9e79be717318909175704384dadf6dc0ab35ca0520901b67dc2cc0d241326c74`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Sat, 11 May 2019 00:07:03 GMT
ADD file:a86aea1f3a7d68f6ae03397b99ea77f2e9ee901c5c59e59f76f93adbb4035913 in / 
# Sat, 11 May 2019 00:07:03 GMT
CMD ["/bin/sh"]
# Fri, 24 May 2019 22:19:29 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf
# Fri, 24 May 2019 22:29:38 GMT
RUN apk add --no-cache tzdata bash ca-certificates &&     update-ca-certificates
# Fri, 24 May 2019 22:30:49 GMT
ENV INFLUXDB_VERSION=1.7.6
# Fri, 24 May 2019 22:30:56 GMT
RUN set -ex &&     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/influxdb/releases/influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/influxdb/releases/influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/influxdb-*/influxdb.conf &&     chmod +x /usr/src/influxdb-*/* &&     cp -a /usr/src/influxdb-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Fri, 24 May 2019 22:30:56 GMT
COPY file:3d8a606d61e1fc0042cf34d036eda4550a18d140c47376dacc02d96ee6f2dd8b in /etc/influxdb/influxdb.conf 
# Fri, 24 May 2019 22:30:56 GMT
EXPOSE 8086
# Fri, 24 May 2019 22:30:56 GMT
VOLUME [/var/lib/influxdb]
# Fri, 24 May 2019 22:30:56 GMT
COPY file:61c4af7a0e637328374ec46266ed6dde40adf7d14ac6c5081100924991beb7f3 in /entrypoint.sh 
# Fri, 24 May 2019 22:30:57 GMT
COPY file:892fcd3130baa17c0b88866ac37e7fe0b7b420a67105d9cd99803c685eaf9df4 in /init-influxdb.sh 
# Fri, 24 May 2019 22:30:57 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 24 May 2019 22:30:57 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:e7c96db7181be991f19a9fb6975cdbbd73c65f4a2681348e63a141a2192a5f10`  
		Last Modified: Sat, 11 May 2019 00:07:31 GMT  
		Size: 2.8 MB (2757034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6f159e68d94418a67508380d165c862e99b062f7e750d89b6878e7cfa18e8b8`  
		Last Modified: Fri, 24 May 2019 22:20:08 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40cfc7884ad1bf576dca4da9bf3383a0be217f65a1137addd216380e376c41e7`  
		Last Modified: Fri, 24 May 2019 22:31:41 GMT  
		Size: 1.9 MB (1865186 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d10950ddb761cd2dd3151e65b8ead68e2efbc2f73ff0b2df2b5c1f99f845116`  
		Last Modified: Fri, 24 May 2019 22:32:44 GMT  
		Size: 50.4 MB (50430485 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ee5125e8fd0d1c25da95217ee39a09e1127514d27af0b85173af2e9764858d7`  
		Last Modified: Fri, 24 May 2019 22:32:37 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:601861c19a001f77abaedd837434cc7d74e5e8b83a3de58ba33f0cd8fd18f8f1`  
		Last Modified: Fri, 24 May 2019 22:32:37 GMT  
		Size: 210.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd050848ec848a6e96b1fbf9ef2b2ad82e0f7b547219a37a13aa3c0d8b350e39`  
		Last Modified: Fri, 24 May 2019 22:32:37 GMT  
		Size: 1.2 KB (1164 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `influxdb:1.7-alpine`

```console
$ docker pull influxdb@sha256:4ba363315807fc6e35e98bc9d4760f417a681e4d3a547a0b24b135c56af96376
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `influxdb:1.7-alpine` - linux; amd64

```console
$ docker pull influxdb@sha256:82b14a14dcc512e6468228548303871adafd109c08df4e6f5947a1529e691281
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **55.1 MB (55054455 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9e79be717318909175704384dadf6dc0ab35ca0520901b67dc2cc0d241326c74`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Sat, 11 May 2019 00:07:03 GMT
ADD file:a86aea1f3a7d68f6ae03397b99ea77f2e9ee901c5c59e59f76f93adbb4035913 in / 
# Sat, 11 May 2019 00:07:03 GMT
CMD ["/bin/sh"]
# Fri, 24 May 2019 22:19:29 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf
# Fri, 24 May 2019 22:29:38 GMT
RUN apk add --no-cache tzdata bash ca-certificates &&     update-ca-certificates
# Fri, 24 May 2019 22:30:49 GMT
ENV INFLUXDB_VERSION=1.7.6
# Fri, 24 May 2019 22:30:56 GMT
RUN set -ex &&     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/influxdb/releases/influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/influxdb/releases/influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/influxdb-*/influxdb.conf &&     chmod +x /usr/src/influxdb-*/* &&     cp -a /usr/src/influxdb-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Fri, 24 May 2019 22:30:56 GMT
COPY file:3d8a606d61e1fc0042cf34d036eda4550a18d140c47376dacc02d96ee6f2dd8b in /etc/influxdb/influxdb.conf 
# Fri, 24 May 2019 22:30:56 GMT
EXPOSE 8086
# Fri, 24 May 2019 22:30:56 GMT
VOLUME [/var/lib/influxdb]
# Fri, 24 May 2019 22:30:56 GMT
COPY file:61c4af7a0e637328374ec46266ed6dde40adf7d14ac6c5081100924991beb7f3 in /entrypoint.sh 
# Fri, 24 May 2019 22:30:57 GMT
COPY file:892fcd3130baa17c0b88866ac37e7fe0b7b420a67105d9cd99803c685eaf9df4 in /init-influxdb.sh 
# Fri, 24 May 2019 22:30:57 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 24 May 2019 22:30:57 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:e7c96db7181be991f19a9fb6975cdbbd73c65f4a2681348e63a141a2192a5f10`  
		Last Modified: Sat, 11 May 2019 00:07:31 GMT  
		Size: 2.8 MB (2757034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6f159e68d94418a67508380d165c862e99b062f7e750d89b6878e7cfa18e8b8`  
		Last Modified: Fri, 24 May 2019 22:20:08 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40cfc7884ad1bf576dca4da9bf3383a0be217f65a1137addd216380e376c41e7`  
		Last Modified: Fri, 24 May 2019 22:31:41 GMT  
		Size: 1.9 MB (1865186 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d10950ddb761cd2dd3151e65b8ead68e2efbc2f73ff0b2df2b5c1f99f845116`  
		Last Modified: Fri, 24 May 2019 22:32:44 GMT  
		Size: 50.4 MB (50430485 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ee5125e8fd0d1c25da95217ee39a09e1127514d27af0b85173af2e9764858d7`  
		Last Modified: Fri, 24 May 2019 22:32:37 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:601861c19a001f77abaedd837434cc7d74e5e8b83a3de58ba33f0cd8fd18f8f1`  
		Last Modified: Fri, 24 May 2019 22:32:37 GMT  
		Size: 210.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd050848ec848a6e96b1fbf9ef2b2ad82e0f7b547219a37a13aa3c0d8b350e39`  
		Last Modified: Fri, 24 May 2019 22:32:37 GMT  
		Size: 1.2 KB (1164 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `influxdb:1.7-data`

```console
$ docker pull influxdb@sha256:0232dec930fe1c0742e3425b70c858c5722009b4cb228fad36e6bbd93e57f524
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `influxdb:1.7-data` - linux; amd64

```console
$ docker pull influxdb@sha256:3682992f02bddde4e0d717c0d9cbee50c63fd8eeea85a109cf11e184b353697f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **106.6 MB (106578876 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b4bf61eb85223885abd0eacb4d1764d8f025940d1d060ed1c5da4e9e69f72e3e`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Mon, 10 Jun 2019 23:24:07 GMT
ADD file:6e8620824300ccf3754fb5d8644a1dc7c69431d4cd1ef9d28d73f39260f96020 in / 
# Mon, 10 Jun 2019 23:24:07 GMT
CMD ["bash"]
# Tue, 11 Jun 2019 00:29:50 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 11 Jun 2019 00:30:00 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 11 Jun 2019 08:47:39 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Tue, 11 Jun 2019 08:49:34 GMT
ENV INFLUXDB_VERSION=1.7.5-c1.7.5
# Tue, 11 Jun 2019 08:49:44 GMT
RUN wget --no-verbose https://dl.influxdata.com/enterprise/releases/influxdb-data_${INFLUXDB_VERSION}_amd64.deb.asc &&     wget --no-verbose https://dl.influxdata.com/enterprise/releases/influxdb-data_${INFLUXDB_VERSION}_amd64.deb &&     gpg --batch --verify influxdb-data_${INFLUXDB_VERSION}_amd64.deb.asc influxdb-data_${INFLUXDB_VERSION}_amd64.deb &&     dpkg -i influxdb-data_${INFLUXDB_VERSION}_amd64.deb &&     rm -f influxdb-data_${INFLUXDB_VERSION}_amd64.deb*
# Tue, 11 Jun 2019 08:49:44 GMT
COPY file:bf2f42b62a32a7ee3ab93d9a5e451b7d59af1a97e40dc4a76b8aaf2f64383d7a in /etc/influxdb/influxdb.conf 
# Tue, 11 Jun 2019 08:49:44 GMT
EXPOSE 8086
# Tue, 11 Jun 2019 08:49:44 GMT
VOLUME [/var/lib/influxdb]
# Tue, 11 Jun 2019 08:49:45 GMT
COPY file:182a0176834db40043100d082d05e5aded9887c94b02416f6e3154c827c07360 in /entrypoint.sh 
# Tue, 11 Jun 2019 08:49:45 GMT
COPY file:892fcd3130baa17c0b88866ac37e7fe0b7b420a67105d9cd99803c685eaf9df4 in /init-influxdb.sh 
# Tue, 11 Jun 2019 08:49:45 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 11 Jun 2019 08:49:45 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:6f2f362378c5a6fd915d96d11dda1e0223ccf213bf121ace56ae0f6616ea1dc8`  
		Last Modified: Mon, 10 Jun 2019 23:27:55 GMT  
		Size: 45.3 MB (45339350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:494c27a8a6b820f9167ec7e368b3a9bb47d7029f4dc8c97c67091f3757a5bc4e`  
		Last Modified: Tue, 11 Jun 2019 00:37:59 GMT  
		Size: 10.8 MB (10785105 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7596bb83081b6c8410df557d538a0ae45922cbf81e469c6f4cfa835247cb24ab`  
		Last Modified: Tue, 11 Jun 2019 00:37:59 GMT  
		Size: 4.3 MB (4340143 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:058194e879938a49f17a6b38e4bbad333fc180da0644f975d63502ec1151ed47`  
		Last Modified: Tue, 11 Jun 2019 08:50:41 GMT  
		Size: 2.8 KB (2773 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a3aa2d5849cca47ad4180daebc4db9459a1408a7ddd5bfd563b1759f9247a8e`  
		Last Modified: Tue, 11 Jun 2019 08:52:35 GMT  
		Size: 46.1 MB (46109845 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:327d9a1ac2b8d583c707989225889985e5498eedbcdcce3f28406c93a48f90d2`  
		Last Modified: Tue, 11 Jun 2019 08:52:18 GMT  
		Size: 243.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9309ae270a446111e31dd9f2316ecce891b1433f55e3d36e9e0367898a4602fe`  
		Last Modified: Tue, 11 Jun 2019 08:52:19 GMT  
		Size: 252.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75e4171af70dc498d8b967659d525a683269f1e46b16262d3e70dc8be7be28c0`  
		Last Modified: Tue, 11 Jun 2019 08:52:18 GMT  
		Size: 1.2 KB (1165 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `influxdb:1.7-data-alpine`

```console
$ docker pull influxdb@sha256:994e2154814d5aa2a862074c3c4d17ecd9c2eb86af255a77e088a7133c86c05c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `influxdb:1.7-data-alpine` - linux; amd64

```console
$ docker pull influxdb@sha256:e31c9cb6c3b8c0b87c4c26c43366fc2c5222ee4a386cf47dd1270f24278beeb1
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **50.6 MB (50556242 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ef21d7ceff61e2e8b77a7df03a303903a3c50663e519d983c7804803d5dfc285`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Sat, 11 May 2019 00:07:03 GMT
ADD file:a86aea1f3a7d68f6ae03397b99ea77f2e9ee901c5c59e59f76f93adbb4035913 in / 
# Sat, 11 May 2019 00:07:03 GMT
CMD ["/bin/sh"]
# Fri, 24 May 2019 22:19:29 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf
# Fri, 24 May 2019 22:29:38 GMT
RUN apk add --no-cache tzdata bash ca-certificates &&     update-ca-certificates
# Fri, 24 May 2019 22:31:03 GMT
ENV INFLUXDB_VERSION=1.7.5-c1.7.5
# Fri, 24 May 2019 22:31:10 GMT
RUN set -ex &&     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/enterprise/releases/influxdb-data-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/enterprise/releases/influxdb-data-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify influxdb-data-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc influxdb-data-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf influxdb-data-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/influxdb-*/influxdb.conf &&     chmod +x /usr/src/influxdb-*/* &&     cp -a /usr/src/influxdb-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Fri, 24 May 2019 22:31:10 GMT
COPY file:bf2f42b62a32a7ee3ab93d9a5e451b7d59af1a97e40dc4a76b8aaf2f64383d7a in /etc/influxdb/influxdb.conf 
# Fri, 24 May 2019 22:31:10 GMT
EXPOSE 8086
# Fri, 24 May 2019 22:31:11 GMT
VOLUME [/var/lib/influxdb]
# Fri, 24 May 2019 22:31:11 GMT
COPY file:182a0176834db40043100d082d05e5aded9887c94b02416f6e3154c827c07360 in /entrypoint.sh 
# Fri, 24 May 2019 22:31:11 GMT
COPY file:892fcd3130baa17c0b88866ac37e7fe0b7b420a67105d9cd99803c685eaf9df4 in /init-influxdb.sh 
# Fri, 24 May 2019 22:31:11 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 24 May 2019 22:31:11 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:e7c96db7181be991f19a9fb6975cdbbd73c65f4a2681348e63a141a2192a5f10`  
		Last Modified: Sat, 11 May 2019 00:07:31 GMT  
		Size: 2.8 MB (2757034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6f159e68d94418a67508380d165c862e99b062f7e750d89b6878e7cfa18e8b8`  
		Last Modified: Fri, 24 May 2019 22:20:08 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40cfc7884ad1bf576dca4da9bf3383a0be217f65a1137addd216380e376c41e7`  
		Last Modified: Fri, 24 May 2019 22:31:41 GMT  
		Size: 1.9 MB (1865186 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:863aa9d345ace0d2261394789401aa8ce428fb808b15fc848c9e01cae5aeca96`  
		Last Modified: Fri, 24 May 2019 22:33:05 GMT  
		Size: 45.9 MB (45932212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38b99683eafe2a7d7255f99bc704e13dba6eec6b6a91015cbd56abf22a570be9`  
		Last Modified: Fri, 24 May 2019 22:32:49 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2f192d82ab3fb28b3b62d764a5d37f297c1ca2663d8848b1acff5cfa3e0054c`  
		Last Modified: Fri, 24 May 2019 22:32:49 GMT  
		Size: 251.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:979fb8b09ff55707058337236db8a2608bbaf71414f2f5c381ac30639324cde5`  
		Last Modified: Fri, 24 May 2019 22:32:49 GMT  
		Size: 1.2 KB (1165 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `influxdb:1.7-meta`

```console
$ docker pull influxdb@sha256:c8829caec8811fb0fc315745af93aff9946178085c7abdc402b9127fff599004
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `influxdb:1.7-meta` - linux; amd64

```console
$ docker pull influxdb@sha256:481e317a92141878b8de19370ba6c589490d99fa099685cafe7062f324321ddc
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **75.4 MB (75366465 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c04c6c95ea3eb913b5d060f76a458ef2b34a4c0a3483a766d583835a059f0b0a`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd-meta"]`

```dockerfile
# Mon, 10 Jun 2019 23:24:07 GMT
ADD file:6e8620824300ccf3754fb5d8644a1dc7c69431d4cd1ef9d28d73f39260f96020 in / 
# Mon, 10 Jun 2019 23:24:07 GMT
CMD ["bash"]
# Tue, 11 Jun 2019 00:29:50 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 11 Jun 2019 00:30:00 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 11 Jun 2019 08:47:39 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Tue, 11 Jun 2019 08:49:34 GMT
ENV INFLUXDB_VERSION=1.7.5-c1.7.5
# Tue, 11 Jun 2019 08:49:57 GMT
RUN wget --no-verbose https://dl.influxdata.com/enterprise/releases/influxdb-meta_${INFLUXDB_VERSION}_amd64.deb.asc &&     wget --no-verbose https://dl.influxdata.com/enterprise/releases/influxdb-meta_${INFLUXDB_VERSION}_amd64.deb &&     gpg --batch --verify influxdb-meta_${INFLUXDB_VERSION}_amd64.deb.asc influxdb-meta_${INFLUXDB_VERSION}_amd64.deb &&     dpkg -i influxdb-meta_${INFLUXDB_VERSION}_amd64.deb &&     rm -f influxdb-meta_${INFLUXDB_VERSION}_amd64.deb*
# Tue, 11 Jun 2019 08:49:57 GMT
COPY file:5d8d1b0acfd7ca05cf6698246b28d240206fa448f4aa5ac839c9ad323adbeac2 in /etc/influxdb/influxdb-meta.conf 
# Tue, 11 Jun 2019 08:49:58 GMT
EXPOSE 8091
# Tue, 11 Jun 2019 08:49:58 GMT
VOLUME [/var/lib/influxdb]
# Tue, 11 Jun 2019 08:49:58 GMT
COPY file:126b1f7e41b4975cf2ce23037cf6a46253fb817023062317380c48ff5df47228 in /entrypoint.sh 
# Tue, 11 Jun 2019 08:49:58 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 11 Jun 2019 08:49:59 GMT
CMD ["influxd-meta"]
```

-	Layers:
	-	`sha256:6f2f362378c5a6fd915d96d11dda1e0223ccf213bf121ace56ae0f6616ea1dc8`  
		Last Modified: Mon, 10 Jun 2019 23:27:55 GMT  
		Size: 45.3 MB (45339350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:494c27a8a6b820f9167ec7e368b3a9bb47d7029f4dc8c97c67091f3757a5bc4e`  
		Last Modified: Tue, 11 Jun 2019 00:37:59 GMT  
		Size: 10.8 MB (10785105 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7596bb83081b6c8410df557d538a0ae45922cbf81e469c6f4cfa835247cb24ab`  
		Last Modified: Tue, 11 Jun 2019 00:37:59 GMT  
		Size: 4.3 MB (4340143 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:058194e879938a49f17a6b38e4bbad333fc180da0644f975d63502ec1151ed47`  
		Last Modified: Tue, 11 Jun 2019 08:50:41 GMT  
		Size: 2.8 KB (2773 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23dba8dfb70d1bc420aca95eb0633fd3cd09d75c1cc7408db7edd4f183bf024f`  
		Last Modified: Tue, 11 Jun 2019 08:52:46 GMT  
		Size: 14.9 MB (14898524 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c43a37a34862d991a713c3886c55cfc5879de4af4e92363c6238a063887d35c`  
		Last Modified: Tue, 11 Jun 2019 08:52:42 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ff2309db4ed45e139a08c6180142754be928a3ca28d142350d52b5e8ed56488`  
		Last Modified: Tue, 11 Jun 2019 08:52:42 GMT  
		Size: 375.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `influxdb:1.7-meta-alpine`

```console
$ docker pull influxdb@sha256:fb194ca93c589f34dcd9633139346ffb1f36e1070ea403bc59b705d28c9bad15
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `influxdb:1.7-meta-alpine` - linux; amd64

```console
$ docker pull influxdb@sha256:e743e8b36902672054b36b460eba771aa211bd90464c07e76beda5d16f1518db
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **19.5 MB (19476564 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c6340e701accb8fae03e986e61c61ff341ede4342bb189c880a55a69e21e041c`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd-meta"]`

```dockerfile
# Sat, 11 May 2019 00:07:03 GMT
ADD file:a86aea1f3a7d68f6ae03397b99ea77f2e9ee901c5c59e59f76f93adbb4035913 in / 
# Sat, 11 May 2019 00:07:03 GMT
CMD ["/bin/sh"]
# Fri, 24 May 2019 22:19:29 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf
# Fri, 24 May 2019 22:29:38 GMT
RUN apk add --no-cache tzdata bash ca-certificates &&     update-ca-certificates
# Fri, 24 May 2019 22:31:03 GMT
ENV INFLUXDB_VERSION=1.7.5-c1.7.5
# Fri, 24 May 2019 22:31:20 GMT
RUN set -ex &&     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/enterprise/releases/influxdb-meta-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/enterprise/releases/influxdb-meta-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify influxdb-meta-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc influxdb-meta-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf influxdb-meta-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/influxdb-*/influxdb-meta.conf &&     chmod +x /usr/src/influxdb-*/* &&     cp -a /usr/src/influxdb-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Fri, 24 May 2019 22:31:21 GMT
COPY file:5d8d1b0acfd7ca05cf6698246b28d240206fa448f4aa5ac839c9ad323adbeac2 in /etc/influxdb/influxdb-meta.conf 
# Fri, 24 May 2019 22:31:21 GMT
EXPOSE 8091
# Fri, 24 May 2019 22:31:21 GMT
VOLUME [/var/lib/influxdb]
# Fri, 24 May 2019 22:31:21 GMT
COPY file:126b1f7e41b4975cf2ce23037cf6a46253fb817023062317380c48ff5df47228 in /entrypoint.sh 
# Fri, 24 May 2019 22:31:21 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 24 May 2019 22:31:22 GMT
CMD ["influxd-meta"]
```

-	Layers:
	-	`sha256:e7c96db7181be991f19a9fb6975cdbbd73c65f4a2681348e63a141a2192a5f10`  
		Last Modified: Sat, 11 May 2019 00:07:31 GMT  
		Size: 2.8 MB (2757034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6f159e68d94418a67508380d165c862e99b062f7e750d89b6878e7cfa18e8b8`  
		Last Modified: Fri, 24 May 2019 22:20:08 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40cfc7884ad1bf576dca4da9bf3383a0be217f65a1137addd216380e376c41e7`  
		Last Modified: Fri, 24 May 2019 22:31:41 GMT  
		Size: 1.9 MB (1865186 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9235f8891365298cd0b320a1853ee1c3fc9ed581525fbd85d32971dd08d98bef`  
		Last Modified: Fri, 24 May 2019 22:33:14 GMT  
		Size: 14.9 MB (14853620 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a720c28161857ab8ad36843d45d6a537dd44da1b5bc769086b9e882c39588ea`  
		Last Modified: Fri, 24 May 2019 22:33:11 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7ca8fce2f64b3d9d578f1bc7284eb2d149857bc8644adfb8374d58c1671e9eb`  
		Last Modified: Fri, 24 May 2019 22:33:11 GMT  
		Size: 375.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `influxdb:alpine`

```console
$ docker pull influxdb@sha256:4ba363315807fc6e35e98bc9d4760f417a681e4d3a547a0b24b135c56af96376
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `influxdb:alpine` - linux; amd64

```console
$ docker pull influxdb@sha256:82b14a14dcc512e6468228548303871adafd109c08df4e6f5947a1529e691281
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **55.1 MB (55054455 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9e79be717318909175704384dadf6dc0ab35ca0520901b67dc2cc0d241326c74`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Sat, 11 May 2019 00:07:03 GMT
ADD file:a86aea1f3a7d68f6ae03397b99ea77f2e9ee901c5c59e59f76f93adbb4035913 in / 
# Sat, 11 May 2019 00:07:03 GMT
CMD ["/bin/sh"]
# Fri, 24 May 2019 22:19:29 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf
# Fri, 24 May 2019 22:29:38 GMT
RUN apk add --no-cache tzdata bash ca-certificates &&     update-ca-certificates
# Fri, 24 May 2019 22:30:49 GMT
ENV INFLUXDB_VERSION=1.7.6
# Fri, 24 May 2019 22:30:56 GMT
RUN set -ex &&     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/influxdb/releases/influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/influxdb/releases/influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/influxdb-*/influxdb.conf &&     chmod +x /usr/src/influxdb-*/* &&     cp -a /usr/src/influxdb-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Fri, 24 May 2019 22:30:56 GMT
COPY file:3d8a606d61e1fc0042cf34d036eda4550a18d140c47376dacc02d96ee6f2dd8b in /etc/influxdb/influxdb.conf 
# Fri, 24 May 2019 22:30:56 GMT
EXPOSE 8086
# Fri, 24 May 2019 22:30:56 GMT
VOLUME [/var/lib/influxdb]
# Fri, 24 May 2019 22:30:56 GMT
COPY file:61c4af7a0e637328374ec46266ed6dde40adf7d14ac6c5081100924991beb7f3 in /entrypoint.sh 
# Fri, 24 May 2019 22:30:57 GMT
COPY file:892fcd3130baa17c0b88866ac37e7fe0b7b420a67105d9cd99803c685eaf9df4 in /init-influxdb.sh 
# Fri, 24 May 2019 22:30:57 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 24 May 2019 22:30:57 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:e7c96db7181be991f19a9fb6975cdbbd73c65f4a2681348e63a141a2192a5f10`  
		Last Modified: Sat, 11 May 2019 00:07:31 GMT  
		Size: 2.8 MB (2757034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6f159e68d94418a67508380d165c862e99b062f7e750d89b6878e7cfa18e8b8`  
		Last Modified: Fri, 24 May 2019 22:20:08 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40cfc7884ad1bf576dca4da9bf3383a0be217f65a1137addd216380e376c41e7`  
		Last Modified: Fri, 24 May 2019 22:31:41 GMT  
		Size: 1.9 MB (1865186 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d10950ddb761cd2dd3151e65b8ead68e2efbc2f73ff0b2df2b5c1f99f845116`  
		Last Modified: Fri, 24 May 2019 22:32:44 GMT  
		Size: 50.4 MB (50430485 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ee5125e8fd0d1c25da95217ee39a09e1127514d27af0b85173af2e9764858d7`  
		Last Modified: Fri, 24 May 2019 22:32:37 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:601861c19a001f77abaedd837434cc7d74e5e8b83a3de58ba33f0cd8fd18f8f1`  
		Last Modified: Fri, 24 May 2019 22:32:37 GMT  
		Size: 210.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd050848ec848a6e96b1fbf9ef2b2ad82e0f7b547219a37a13aa3c0d8b350e39`  
		Last Modified: Fri, 24 May 2019 22:32:37 GMT  
		Size: 1.2 KB (1164 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `influxdb:data`

```console
$ docker pull influxdb@sha256:0232dec930fe1c0742e3425b70c858c5722009b4cb228fad36e6bbd93e57f524
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `influxdb:data` - linux; amd64

```console
$ docker pull influxdb@sha256:3682992f02bddde4e0d717c0d9cbee50c63fd8eeea85a109cf11e184b353697f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **106.6 MB (106578876 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b4bf61eb85223885abd0eacb4d1764d8f025940d1d060ed1c5da4e9e69f72e3e`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Mon, 10 Jun 2019 23:24:07 GMT
ADD file:6e8620824300ccf3754fb5d8644a1dc7c69431d4cd1ef9d28d73f39260f96020 in / 
# Mon, 10 Jun 2019 23:24:07 GMT
CMD ["bash"]
# Tue, 11 Jun 2019 00:29:50 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 11 Jun 2019 00:30:00 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 11 Jun 2019 08:47:39 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Tue, 11 Jun 2019 08:49:34 GMT
ENV INFLUXDB_VERSION=1.7.5-c1.7.5
# Tue, 11 Jun 2019 08:49:44 GMT
RUN wget --no-verbose https://dl.influxdata.com/enterprise/releases/influxdb-data_${INFLUXDB_VERSION}_amd64.deb.asc &&     wget --no-verbose https://dl.influxdata.com/enterprise/releases/influxdb-data_${INFLUXDB_VERSION}_amd64.deb &&     gpg --batch --verify influxdb-data_${INFLUXDB_VERSION}_amd64.deb.asc influxdb-data_${INFLUXDB_VERSION}_amd64.deb &&     dpkg -i influxdb-data_${INFLUXDB_VERSION}_amd64.deb &&     rm -f influxdb-data_${INFLUXDB_VERSION}_amd64.deb*
# Tue, 11 Jun 2019 08:49:44 GMT
COPY file:bf2f42b62a32a7ee3ab93d9a5e451b7d59af1a97e40dc4a76b8aaf2f64383d7a in /etc/influxdb/influxdb.conf 
# Tue, 11 Jun 2019 08:49:44 GMT
EXPOSE 8086
# Tue, 11 Jun 2019 08:49:44 GMT
VOLUME [/var/lib/influxdb]
# Tue, 11 Jun 2019 08:49:45 GMT
COPY file:182a0176834db40043100d082d05e5aded9887c94b02416f6e3154c827c07360 in /entrypoint.sh 
# Tue, 11 Jun 2019 08:49:45 GMT
COPY file:892fcd3130baa17c0b88866ac37e7fe0b7b420a67105d9cd99803c685eaf9df4 in /init-influxdb.sh 
# Tue, 11 Jun 2019 08:49:45 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 11 Jun 2019 08:49:45 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:6f2f362378c5a6fd915d96d11dda1e0223ccf213bf121ace56ae0f6616ea1dc8`  
		Last Modified: Mon, 10 Jun 2019 23:27:55 GMT  
		Size: 45.3 MB (45339350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:494c27a8a6b820f9167ec7e368b3a9bb47d7029f4dc8c97c67091f3757a5bc4e`  
		Last Modified: Tue, 11 Jun 2019 00:37:59 GMT  
		Size: 10.8 MB (10785105 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7596bb83081b6c8410df557d538a0ae45922cbf81e469c6f4cfa835247cb24ab`  
		Last Modified: Tue, 11 Jun 2019 00:37:59 GMT  
		Size: 4.3 MB (4340143 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:058194e879938a49f17a6b38e4bbad333fc180da0644f975d63502ec1151ed47`  
		Last Modified: Tue, 11 Jun 2019 08:50:41 GMT  
		Size: 2.8 KB (2773 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a3aa2d5849cca47ad4180daebc4db9459a1408a7ddd5bfd563b1759f9247a8e`  
		Last Modified: Tue, 11 Jun 2019 08:52:35 GMT  
		Size: 46.1 MB (46109845 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:327d9a1ac2b8d583c707989225889985e5498eedbcdcce3f28406c93a48f90d2`  
		Last Modified: Tue, 11 Jun 2019 08:52:18 GMT  
		Size: 243.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9309ae270a446111e31dd9f2316ecce891b1433f55e3d36e9e0367898a4602fe`  
		Last Modified: Tue, 11 Jun 2019 08:52:19 GMT  
		Size: 252.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75e4171af70dc498d8b967659d525a683269f1e46b16262d3e70dc8be7be28c0`  
		Last Modified: Tue, 11 Jun 2019 08:52:18 GMT  
		Size: 1.2 KB (1165 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `influxdb:data-alpine`

```console
$ docker pull influxdb@sha256:994e2154814d5aa2a862074c3c4d17ecd9c2eb86af255a77e088a7133c86c05c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `influxdb:data-alpine` - linux; amd64

```console
$ docker pull influxdb@sha256:e31c9cb6c3b8c0b87c4c26c43366fc2c5222ee4a386cf47dd1270f24278beeb1
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **50.6 MB (50556242 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ef21d7ceff61e2e8b77a7df03a303903a3c50663e519d983c7804803d5dfc285`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Sat, 11 May 2019 00:07:03 GMT
ADD file:a86aea1f3a7d68f6ae03397b99ea77f2e9ee901c5c59e59f76f93adbb4035913 in / 
# Sat, 11 May 2019 00:07:03 GMT
CMD ["/bin/sh"]
# Fri, 24 May 2019 22:19:29 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf
# Fri, 24 May 2019 22:29:38 GMT
RUN apk add --no-cache tzdata bash ca-certificates &&     update-ca-certificates
# Fri, 24 May 2019 22:31:03 GMT
ENV INFLUXDB_VERSION=1.7.5-c1.7.5
# Fri, 24 May 2019 22:31:10 GMT
RUN set -ex &&     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/enterprise/releases/influxdb-data-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/enterprise/releases/influxdb-data-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify influxdb-data-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc influxdb-data-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf influxdb-data-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/influxdb-*/influxdb.conf &&     chmod +x /usr/src/influxdb-*/* &&     cp -a /usr/src/influxdb-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Fri, 24 May 2019 22:31:10 GMT
COPY file:bf2f42b62a32a7ee3ab93d9a5e451b7d59af1a97e40dc4a76b8aaf2f64383d7a in /etc/influxdb/influxdb.conf 
# Fri, 24 May 2019 22:31:10 GMT
EXPOSE 8086
# Fri, 24 May 2019 22:31:11 GMT
VOLUME [/var/lib/influxdb]
# Fri, 24 May 2019 22:31:11 GMT
COPY file:182a0176834db40043100d082d05e5aded9887c94b02416f6e3154c827c07360 in /entrypoint.sh 
# Fri, 24 May 2019 22:31:11 GMT
COPY file:892fcd3130baa17c0b88866ac37e7fe0b7b420a67105d9cd99803c685eaf9df4 in /init-influxdb.sh 
# Fri, 24 May 2019 22:31:11 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 24 May 2019 22:31:11 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:e7c96db7181be991f19a9fb6975cdbbd73c65f4a2681348e63a141a2192a5f10`  
		Last Modified: Sat, 11 May 2019 00:07:31 GMT  
		Size: 2.8 MB (2757034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6f159e68d94418a67508380d165c862e99b062f7e750d89b6878e7cfa18e8b8`  
		Last Modified: Fri, 24 May 2019 22:20:08 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40cfc7884ad1bf576dca4da9bf3383a0be217f65a1137addd216380e376c41e7`  
		Last Modified: Fri, 24 May 2019 22:31:41 GMT  
		Size: 1.9 MB (1865186 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:863aa9d345ace0d2261394789401aa8ce428fb808b15fc848c9e01cae5aeca96`  
		Last Modified: Fri, 24 May 2019 22:33:05 GMT  
		Size: 45.9 MB (45932212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38b99683eafe2a7d7255f99bc704e13dba6eec6b6a91015cbd56abf22a570be9`  
		Last Modified: Fri, 24 May 2019 22:32:49 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2f192d82ab3fb28b3b62d764a5d37f297c1ca2663d8848b1acff5cfa3e0054c`  
		Last Modified: Fri, 24 May 2019 22:32:49 GMT  
		Size: 251.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:979fb8b09ff55707058337236db8a2608bbaf71414f2f5c381ac30639324cde5`  
		Last Modified: Fri, 24 May 2019 22:32:49 GMT  
		Size: 1.2 KB (1165 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `influxdb:latest`

```console
$ docker pull influxdb@sha256:af07db2e2040b27d4ae4c57b51729503802d22c1632893fe63ea054afe632ecc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `influxdb:latest` - linux; amd64

```console
$ docker pull influxdb@sha256:0e5673ea8a4c254dc007700c938836565e8a1e5d97b2772cdb334ebce2732eda
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **111.1 MB (111127556 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8a4e8eda54c156f14441c8bcc1ad351b772d41955c0c622d9ab63e1b31cec4e1`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Mon, 10 Jun 2019 23:24:07 GMT
ADD file:6e8620824300ccf3754fb5d8644a1dc7c69431d4cd1ef9d28d73f39260f96020 in / 
# Mon, 10 Jun 2019 23:24:07 GMT
CMD ["bash"]
# Tue, 11 Jun 2019 00:29:50 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 11 Jun 2019 00:30:00 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 11 Jun 2019 08:47:39 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Tue, 11 Jun 2019 08:49:15 GMT
ENV INFLUXDB_VERSION=1.7.6
# Tue, 11 Jun 2019 08:49:25 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     gpg --batch --verify influxdb_${INFLUXDB_VERSION}_${ARCH}.deb.asc influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     dpkg -i influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     rm -f influxdb_${INFLUXDB_VERSION}_${ARCH}.deb*
# Tue, 11 Jun 2019 08:49:25 GMT
COPY file:3d8a606d61e1fc0042cf34d036eda4550a18d140c47376dacc02d96ee6f2dd8b in /etc/influxdb/influxdb.conf 
# Tue, 11 Jun 2019 08:49:25 GMT
EXPOSE 8086
# Tue, 11 Jun 2019 08:49:26 GMT
VOLUME [/var/lib/influxdb]
# Tue, 11 Jun 2019 08:49:26 GMT
COPY file:61c4af7a0e637328374ec46266ed6dde40adf7d14ac6c5081100924991beb7f3 in /entrypoint.sh 
# Tue, 11 Jun 2019 08:49:26 GMT
COPY file:892fcd3130baa17c0b88866ac37e7fe0b7b420a67105d9cd99803c685eaf9df4 in /init-influxdb.sh 
# Tue, 11 Jun 2019 08:49:26 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 11 Jun 2019 08:49:27 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:6f2f362378c5a6fd915d96d11dda1e0223ccf213bf121ace56ae0f6616ea1dc8`  
		Last Modified: Mon, 10 Jun 2019 23:27:55 GMT  
		Size: 45.3 MB (45339350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:494c27a8a6b820f9167ec7e368b3a9bb47d7029f4dc8c97c67091f3757a5bc4e`  
		Last Modified: Tue, 11 Jun 2019 00:37:59 GMT  
		Size: 10.8 MB (10785105 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7596bb83081b6c8410df557d538a0ae45922cbf81e469c6f4cfa835247cb24ab`  
		Last Modified: Tue, 11 Jun 2019 00:37:59 GMT  
		Size: 4.3 MB (4340143 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:058194e879938a49f17a6b38e4bbad333fc180da0644f975d63502ec1151ed47`  
		Last Modified: Tue, 11 Jun 2019 08:50:41 GMT  
		Size: 2.8 KB (2773 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9382c8196521df4ebcfc500d524eb1cbc7fabb3f6b087969c1e1854ce69517e8`  
		Last Modified: Tue, 11 Jun 2019 08:52:11 GMT  
		Size: 50.7 MB (50658583 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:651ab765a68f9a96e5a9d34cc4a3f25b6f52a36a6aa700a9c883ff9e61d733bb`  
		Last Modified: Tue, 11 Jun 2019 08:51:56 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8620b54be93df4a9a94ebb13d0f4c7d4512ff2eb469c4ea34b4e5d428e66a0b`  
		Last Modified: Tue, 11 Jun 2019 08:51:56 GMT  
		Size: 211.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5386872a43f3cbd562d617ddfec98dc625ff4890710bb8a289397e916bab8cbe`  
		Last Modified: Tue, 11 Jun 2019 08:51:56 GMT  
		Size: 1.2 KB (1165 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `influxdb:latest` - linux; arm variant v7

```console
$ docker pull influxdb@sha256:4af613ee742c8e02a0ab3da10f61d3de60aad72a594a44230efe443485342ac5
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **103.2 MB (103172637 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:657844c38e5c83671c062d272d9e5d94e6ed87506d29d5bb5fdf21a51a5de6dc`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Tue, 11 Jun 2019 00:02:40 GMT
ADD file:a533ab960a52dd32ca40bdcb55083ba8c340e110f8519a3eda696b46a4a07165 in / 
# Tue, 11 Jun 2019 00:02:41 GMT
CMD ["bash"]
# Tue, 11 Jun 2019 01:09:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 11 Jun 2019 01:09:19 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 13 Jun 2019 00:30:31 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Thu, 13 Jun 2019 00:31:11 GMT
ENV INFLUXDB_VERSION=1.7.6
# Thu, 13 Jun 2019 00:31:20 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     gpg --batch --verify influxdb_${INFLUXDB_VERSION}_${ARCH}.deb.asc influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     dpkg -i influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     rm -f influxdb_${INFLUXDB_VERSION}_${ARCH}.deb*
# Thu, 13 Jun 2019 00:31:20 GMT
COPY file:3d8a606d61e1fc0042cf34d036eda4550a18d140c47376dacc02d96ee6f2dd8b in /etc/influxdb/influxdb.conf 
# Thu, 13 Jun 2019 00:31:21 GMT
EXPOSE 8086
# Thu, 13 Jun 2019 00:31:22 GMT
VOLUME [/var/lib/influxdb]
# Thu, 13 Jun 2019 00:31:22 GMT
COPY file:61c4af7a0e637328374ec46266ed6dde40adf7d14ac6c5081100924991beb7f3 in /entrypoint.sh 
# Thu, 13 Jun 2019 00:31:23 GMT
COPY file:892fcd3130baa17c0b88866ac37e7fe0b7b420a67105d9cd99803c685eaf9df4 in /init-influxdb.sh 
# Thu, 13 Jun 2019 00:31:24 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 13 Jun 2019 00:31:24 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:162e276b1a29dfd1a4601fd55aeaeb0175b63182e9190b1b0068252e5196b015`  
		Last Modified: Tue, 11 Jun 2019 00:09:02 GMT  
		Size: 42.1 MB (42082622 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:052e820679506cc68db5317ee3f92e7f5f520894f881940a686f7b1280ff93a0`  
		Last Modified: Tue, 11 Jun 2019 01:17:33 GMT  
		Size: 9.5 MB (9485206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f5e84bede193d1aa79031526fbcfa99e8b6cf354b12a7cfbe5cdfe2c9acf155`  
		Last Modified: Tue, 11 Jun 2019 01:17:32 GMT  
		Size: 3.9 MB (3918643 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:269727385d075ffeeff0c3f9ddce8009ea58bb8a959b813302a1566f1acdc1a0`  
		Last Modified: Thu, 13 Jun 2019 00:31:37 GMT  
		Size: 2.8 KB (2801 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8103c9f6238f06d81c6043418b3f18feada8d238b7f97f78c8477c023f6591f3`  
		Last Modified: Thu, 13 Jun 2019 00:32:18 GMT  
		Size: 47.7 MB (47681765 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4083e278aa3378baf249b42d99fae263eb9a7ff6e2aa0b47c21461d0c1dd1a06`  
		Last Modified: Thu, 13 Jun 2019 00:32:06 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9147d8d1a80880493816869408eb90cd2f0e8f7bffa6f9dffd68992d4bdff0f8`  
		Last Modified: Thu, 13 Jun 2019 00:32:06 GMT  
		Size: 208.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:accbcd58f1ea77d54b2214e4b37800298ed2f3fb6ad6df401aeb27aec08cf1c9`  
		Last Modified: Thu, 13 Jun 2019 00:32:06 GMT  
		Size: 1.2 KB (1166 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `influxdb:latest` - linux; arm64 variant v8

```console
$ docker pull influxdb@sha256:ef103a50126d61722a747b8f9b54284d51f28b5569a7e245500d8f69d6cdce12
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **104.0 MB (103951018 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6fb24aa8ecc4b9539f1d04181d630df048c12e7e3dbeb3dbcf78cf6fcf3c921f`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Wed, 08 May 2019 08:48:25 GMT
ADD file:153045f4fe6532d8c2ff273bb249a7a3a4cba913c26a4103ba5ddce1af02c1e5 in / 
# Wed, 08 May 2019 08:48:26 GMT
CMD ["bash"]
# Tue, 11 Jun 2019 00:19:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 11 Jun 2019 00:19:38 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 13 Jun 2019 00:19:57 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Thu, 13 Jun 2019 00:20:27 GMT
ENV INFLUXDB_VERSION=1.7.6
# Thu, 13 Jun 2019 00:20:35 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     gpg --batch --verify influxdb_${INFLUXDB_VERSION}_${ARCH}.deb.asc influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     dpkg -i influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     rm -f influxdb_${INFLUXDB_VERSION}_${ARCH}.deb*
# Thu, 13 Jun 2019 00:20:36 GMT
COPY file:3d8a606d61e1fc0042cf34d036eda4550a18d140c47376dacc02d96ee6f2dd8b in /etc/influxdb/influxdb.conf 
# Thu, 13 Jun 2019 00:20:37 GMT
EXPOSE 8086
# Thu, 13 Jun 2019 00:20:38 GMT
VOLUME [/var/lib/influxdb]
# Thu, 13 Jun 2019 00:20:39 GMT
COPY file:61c4af7a0e637328374ec46266ed6dde40adf7d14ac6c5081100924991beb7f3 in /entrypoint.sh 
# Thu, 13 Jun 2019 00:20:39 GMT
COPY file:892fcd3130baa17c0b88866ac37e7fe0b7b420a67105d9cd99803c685eaf9df4 in /init-influxdb.sh 
# Thu, 13 Jun 2019 00:20:40 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 13 Jun 2019 00:20:41 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:5894e28291972e44f5c3eba2779a85979bae6f95ed4f3e43ea5c98a132f06c48`  
		Last Modified: Wed, 08 May 2019 08:54:43 GMT  
		Size: 43.1 MB (43141955 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4579724c1a9cbbeb91053f719bf515654043a3e39cfaa248ebedc84c2f0460ea`  
		Last Modified: Tue, 11 Jun 2019 00:36:45 GMT  
		Size: 9.7 MB (9734083 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a493ac681ca78302ad6a97cd01e4daa5f1d995f0523f5e5cb8306071eea417b5`  
		Last Modified: Tue, 11 Jun 2019 00:36:43 GMT  
		Size: 4.1 MB (4094360 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1717658875655479c6ac9da01ba542fac343b49eb5f8646d039b6880740f9389`  
		Last Modified: Thu, 13 Jun 2019 00:20:53 GMT  
		Size: 2.8 KB (2804 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8762395b4c7564706e59d1fe4214661d0bf67b27f204de8ffc817a043c3dc50`  
		Last Modified: Thu, 13 Jun 2019 00:21:41 GMT  
		Size: 47.0 MB (46976218 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eaf8f86584a6dffd214ce76ea879b9012abe7a2a538c807fab4efc97d8245763`  
		Last Modified: Thu, 13 Jun 2019 00:21:28 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5a787a99bef2e4e7ee0e2aaec8eedf28c3de315308b16eee2f46db48409742e`  
		Last Modified: Thu, 13 Jun 2019 00:21:28 GMT  
		Size: 207.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c035a6eebafaad9789d949591f56bf83b420052f36b1396ad423cc2fdbb95f8b`  
		Last Modified: Thu, 13 Jun 2019 00:21:28 GMT  
		Size: 1.2 KB (1165 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `influxdb:meta`

```console
$ docker pull influxdb@sha256:c8829caec8811fb0fc315745af93aff9946178085c7abdc402b9127fff599004
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `influxdb:meta` - linux; amd64

```console
$ docker pull influxdb@sha256:481e317a92141878b8de19370ba6c589490d99fa099685cafe7062f324321ddc
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **75.4 MB (75366465 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c04c6c95ea3eb913b5d060f76a458ef2b34a4c0a3483a766d583835a059f0b0a`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd-meta"]`

```dockerfile
# Mon, 10 Jun 2019 23:24:07 GMT
ADD file:6e8620824300ccf3754fb5d8644a1dc7c69431d4cd1ef9d28d73f39260f96020 in / 
# Mon, 10 Jun 2019 23:24:07 GMT
CMD ["bash"]
# Tue, 11 Jun 2019 00:29:50 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 11 Jun 2019 00:30:00 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 11 Jun 2019 08:47:39 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Tue, 11 Jun 2019 08:49:34 GMT
ENV INFLUXDB_VERSION=1.7.5-c1.7.5
# Tue, 11 Jun 2019 08:49:57 GMT
RUN wget --no-verbose https://dl.influxdata.com/enterprise/releases/influxdb-meta_${INFLUXDB_VERSION}_amd64.deb.asc &&     wget --no-verbose https://dl.influxdata.com/enterprise/releases/influxdb-meta_${INFLUXDB_VERSION}_amd64.deb &&     gpg --batch --verify influxdb-meta_${INFLUXDB_VERSION}_amd64.deb.asc influxdb-meta_${INFLUXDB_VERSION}_amd64.deb &&     dpkg -i influxdb-meta_${INFLUXDB_VERSION}_amd64.deb &&     rm -f influxdb-meta_${INFLUXDB_VERSION}_amd64.deb*
# Tue, 11 Jun 2019 08:49:57 GMT
COPY file:5d8d1b0acfd7ca05cf6698246b28d240206fa448f4aa5ac839c9ad323adbeac2 in /etc/influxdb/influxdb-meta.conf 
# Tue, 11 Jun 2019 08:49:58 GMT
EXPOSE 8091
# Tue, 11 Jun 2019 08:49:58 GMT
VOLUME [/var/lib/influxdb]
# Tue, 11 Jun 2019 08:49:58 GMT
COPY file:126b1f7e41b4975cf2ce23037cf6a46253fb817023062317380c48ff5df47228 in /entrypoint.sh 
# Tue, 11 Jun 2019 08:49:58 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 11 Jun 2019 08:49:59 GMT
CMD ["influxd-meta"]
```

-	Layers:
	-	`sha256:6f2f362378c5a6fd915d96d11dda1e0223ccf213bf121ace56ae0f6616ea1dc8`  
		Last Modified: Mon, 10 Jun 2019 23:27:55 GMT  
		Size: 45.3 MB (45339350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:494c27a8a6b820f9167ec7e368b3a9bb47d7029f4dc8c97c67091f3757a5bc4e`  
		Last Modified: Tue, 11 Jun 2019 00:37:59 GMT  
		Size: 10.8 MB (10785105 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7596bb83081b6c8410df557d538a0ae45922cbf81e469c6f4cfa835247cb24ab`  
		Last Modified: Tue, 11 Jun 2019 00:37:59 GMT  
		Size: 4.3 MB (4340143 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:058194e879938a49f17a6b38e4bbad333fc180da0644f975d63502ec1151ed47`  
		Last Modified: Tue, 11 Jun 2019 08:50:41 GMT  
		Size: 2.8 KB (2773 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23dba8dfb70d1bc420aca95eb0633fd3cd09d75c1cc7408db7edd4f183bf024f`  
		Last Modified: Tue, 11 Jun 2019 08:52:46 GMT  
		Size: 14.9 MB (14898524 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c43a37a34862d991a713c3886c55cfc5879de4af4e92363c6238a063887d35c`  
		Last Modified: Tue, 11 Jun 2019 08:52:42 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ff2309db4ed45e139a08c6180142754be928a3ca28d142350d52b5e8ed56488`  
		Last Modified: Tue, 11 Jun 2019 08:52:42 GMT  
		Size: 375.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `influxdb:meta-alpine`

```console
$ docker pull influxdb@sha256:fb194ca93c589f34dcd9633139346ffb1f36e1070ea403bc59b705d28c9bad15
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `influxdb:meta-alpine` - linux; amd64

```console
$ docker pull influxdb@sha256:e743e8b36902672054b36b460eba771aa211bd90464c07e76beda5d16f1518db
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **19.5 MB (19476564 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c6340e701accb8fae03e986e61c61ff341ede4342bb189c880a55a69e21e041c`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd-meta"]`

```dockerfile
# Sat, 11 May 2019 00:07:03 GMT
ADD file:a86aea1f3a7d68f6ae03397b99ea77f2e9ee901c5c59e59f76f93adbb4035913 in / 
# Sat, 11 May 2019 00:07:03 GMT
CMD ["/bin/sh"]
# Fri, 24 May 2019 22:19:29 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf
# Fri, 24 May 2019 22:29:38 GMT
RUN apk add --no-cache tzdata bash ca-certificates &&     update-ca-certificates
# Fri, 24 May 2019 22:31:03 GMT
ENV INFLUXDB_VERSION=1.7.5-c1.7.5
# Fri, 24 May 2019 22:31:20 GMT
RUN set -ex &&     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/enterprise/releases/influxdb-meta-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/enterprise/releases/influxdb-meta-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify influxdb-meta-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc influxdb-meta-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf influxdb-meta-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/influxdb-*/influxdb-meta.conf &&     chmod +x /usr/src/influxdb-*/* &&     cp -a /usr/src/influxdb-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Fri, 24 May 2019 22:31:21 GMT
COPY file:5d8d1b0acfd7ca05cf6698246b28d240206fa448f4aa5ac839c9ad323adbeac2 in /etc/influxdb/influxdb-meta.conf 
# Fri, 24 May 2019 22:31:21 GMT
EXPOSE 8091
# Fri, 24 May 2019 22:31:21 GMT
VOLUME [/var/lib/influxdb]
# Fri, 24 May 2019 22:31:21 GMT
COPY file:126b1f7e41b4975cf2ce23037cf6a46253fb817023062317380c48ff5df47228 in /entrypoint.sh 
# Fri, 24 May 2019 22:31:21 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 24 May 2019 22:31:22 GMT
CMD ["influxd-meta"]
```

-	Layers:
	-	`sha256:e7c96db7181be991f19a9fb6975cdbbd73c65f4a2681348e63a141a2192a5f10`  
		Last Modified: Sat, 11 May 2019 00:07:31 GMT  
		Size: 2.8 MB (2757034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6f159e68d94418a67508380d165c862e99b062f7e750d89b6878e7cfa18e8b8`  
		Last Modified: Fri, 24 May 2019 22:20:08 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40cfc7884ad1bf576dca4da9bf3383a0be217f65a1137addd216380e376c41e7`  
		Last Modified: Fri, 24 May 2019 22:31:41 GMT  
		Size: 1.9 MB (1865186 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9235f8891365298cd0b320a1853ee1c3fc9ed581525fbd85d32971dd08d98bef`  
		Last Modified: Fri, 24 May 2019 22:33:14 GMT  
		Size: 14.9 MB (14853620 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a720c28161857ab8ad36843d45d6a537dd44da1b5bc769086b9e882c39588ea`  
		Last Modified: Fri, 24 May 2019 22:33:11 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7ca8fce2f64b3d9d578f1bc7284eb2d149857bc8644adfb8374d58c1671e9eb`  
		Last Modified: Fri, 24 May 2019 22:33:11 GMT  
		Size: 375.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
