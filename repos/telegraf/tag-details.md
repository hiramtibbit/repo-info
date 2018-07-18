<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `telegraf`

-	[`telegraf:1.5`](#telegraf15)
-	[`telegraf:1.5.3`](#telegraf153)
-	[`telegraf:1.5.3-alpine`](#telegraf153-alpine)
-	[`telegraf:1.5-alpine`](#telegraf15-alpine)
-	[`telegraf:1.6`](#telegraf16)
-	[`telegraf:1.6.4`](#telegraf164)
-	[`telegraf:1.6.4-alpine`](#telegraf164-alpine)
-	[`telegraf:1.6-alpine`](#telegraf16-alpine)
-	[`telegraf:1.7`](#telegraf17)
-	[`telegraf:1.7.1`](#telegraf171)
-	[`telegraf:1.7.1-alpine`](#telegraf171-alpine)
-	[`telegraf:1.7-alpine`](#telegraf17-alpine)
-	[`telegraf:alpine`](#telegrafalpine)
-	[`telegraf:latest`](#telegraflatest)

## `telegraf:1.5`

```console
$ docker pull telegraf@sha256:591afa216a19f4df817ce711ec38ca112302619ed4401edd4e0e7bf56a781573
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `telegraf:1.5` - linux; amd64

```console
$ docker pull telegraf@sha256:2898ffc36277d5f7f59589ca27de926f54506a0b034c485f5263f4e494337ba2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **85.8 MB (85846393 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:95eced36f2ae5e10647e8b5d2d29202a3dd7fb7f61b81b5a5e34945aaa07582c`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Tue, 17 Jul 2018 00:27:24 GMT
ADD file:370028dca6e8ca9ed228549d52231cf8139515cc3a14c00aaed75a60b679775f in / 
# Tue, 17 Jul 2018 00:27:24 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 03:12:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 03:13:02 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 17 Jul 2018 23:20:30 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends iputils-ping snmp procps lm-sensors &&     rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 23:20:43 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Tue, 17 Jul 2018 23:20:43 GMT
ENV TELEGRAF_VERSION=1.5.3
# Tue, 17 Jul 2018 23:20:46 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     gpg --batch --verify telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     dpkg -i telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     rm -f telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb*
# Tue, 17 Jul 2018 23:20:46 GMT
EXPOSE 8092/udp 8094/tcp 8125/udp
# Tue, 17 Jul 2018 23:20:47 GMT
COPY file:7211de01f296351833389a1a1879d450e2cb727d7e2910d5807937f99983edf7 in /entrypoint.sh 
# Tue, 17 Jul 2018 23:20:47 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 17 Jul 2018 23:20:47 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:55cbf04beb7001d222c71bfdeae780bda19d5cb37b8dbd65ff0d3e6a0b9b74e6`  
		Last Modified: Tue, 17 Jul 2018 00:42:31 GMT  
		Size: 45.3 MB (45310044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1607093a898cc241de8712e4361dcd907898fff35b945adca42db3963f3827b3`  
		Last Modified: Tue, 17 Jul 2018 03:53:34 GMT  
		Size: 10.7 MB (10740168 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a8ea045c9261c180a34df19cfc9bb3c3f28f29b279bf964ee801536e8244f2f`  
		Last Modified: Tue, 17 Jul 2018 03:53:32 GMT  
		Size: 4.3 MB (4336107 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9dbf507f8efacd0094ccabf8ea83afe058a672463c0366caa0004ad1e527c718`  
		Last Modified: Tue, 17 Jul 2018 23:23:54 GMT  
		Size: 16.0 MB (15963861 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7bbc4db97cd33b299b774bd79446ee886409e709de11f424d2f57b764a2c6dd`  
		Last Modified: Tue, 17 Jul 2018 23:23:49 GMT  
		Size: 2.9 KB (2885 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9dbc49f60f7cf1c560f158c2f9d73e9568263345723fbce00402b4dc1c335ab6`  
		Last Modified: Tue, 17 Jul 2018 23:23:53 GMT  
		Size: 9.5 MB (9493144 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:edc74e677a21b53f314f5d29dc8c718f9ad35c71de0b90720fbcd768c6866c7f`  
		Last Modified: Tue, 17 Jul 2018 23:23:49 GMT  
		Size: 184.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `telegraf:1.5` - linux; arm variant v7

```console
$ docker pull telegraf@sha256:b1cf8cbdc3cf938f7bac469dea26e7bfa4b4132f4302e9ac4c84de5e3b49aaa8
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **78.8 MB (78815635 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0a96d9bd60691b3c33dd913b9f328f8cd97318afee68b0201f82e961e991f755`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Tue, 17 Jul 2018 12:05:25 GMT
ADD file:77cbe27c4436cc4c9d81bee6c5ae0fee0c6d1708813d34abd2af2d3ebd7d96a5 in / 
# Tue, 17 Jul 2018 12:05:26 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 13:46:48 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 13:46:56 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 17 Jul 2018 18:17:48 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends iputils-ping snmp procps &&     rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 18:17:51 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Tue, 17 Jul 2018 18:17:52 GMT
ENV TELEGRAF_VERSION=1.5.3
# Tue, 17 Jul 2018 18:17:55 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     gpg --batch --verify telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     dpkg -i telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     rm -f telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb*
# Tue, 17 Jul 2018 18:17:55 GMT
EXPOSE 8092/udp 8094/tcp 8125/udp
# Tue, 17 Jul 2018 18:17:56 GMT
COPY file:7211de01f296351833389a1a1879d450e2cb727d7e2910d5807937f99983edf7 in /entrypoint.sh 
# Tue, 17 Jul 2018 18:17:56 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 17 Jul 2018 18:17:56 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:a92bc499a4699bc1d9bd6631daec00b7b440346221ce91af635e3460f7d4d70b`  
		Last Modified: Tue, 17 Jul 2018 12:17:32 GMT  
		Size: 42.1 MB (42060835 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d56e34dc5db45e25c590c9a353c3562d66546b06312f418f9aae4661c28ee94f`  
		Last Modified: Tue, 17 Jul 2018 14:10:12 GMT  
		Size: 9.4 MB (9440199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:948d2574fcb06c4081812a267179437a8d624eba8741a8fb5a6e3ef655c3dcff`  
		Last Modified: Tue, 17 Jul 2018 14:10:10 GMT  
		Size: 3.9 MB (3912954 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f31679ebf92c73a8165fe361aa1e7a34257d7f0ea0e946ee61ae7abf41b87662`  
		Last Modified: Tue, 17 Jul 2018 18:18:52 GMT  
		Size: 14.5 MB (14465506 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a85c52308ebb2bf8661189f76a8fc8e8e32923b333404664a445734b1d3f82a5`  
		Last Modified: Tue, 17 Jul 2018 18:18:46 GMT  
		Size: 2.9 KB (2912 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b8f1bb7e48f28cc9acb4233941fd90b700834f603b81d28e193ecafb38cff22`  
		Last Modified: Tue, 17 Jul 2018 18:18:51 GMT  
		Size: 8.9 MB (8933046 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0529687b920f1585a93980e3044571b09ff2c91ccd7c4843e6c3ff88958a592a`  
		Last Modified: Tue, 17 Jul 2018 18:18:46 GMT  
		Size: 183.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `telegraf:1.5` - linux; arm64 variant v8

```console
$ docker pull telegraf@sha256:73410be7a17ad8b31bd351eada36c2145a60b866cb85a67daecbe0106c0ce9d6
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **80.8 MB (80803252 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:028d963b97959ec22eb158759d4bd0f888e95709c6796633f125f6dc9dd30603`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Wed, 27 Jun 2018 08:47:01 GMT
ADD file:0f69db95e9a06ee21c38014c8bc6c142be97ec4d5127ba83f1d0ef48806f7415 in / 
# Wed, 27 Jun 2018 08:47:02 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 10:46:58 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 10:47:23 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 27 Jun 2018 21:49:35 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends iputils-ping snmp procps &&     rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 21:49:41 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Wed, 27 Jun 2018 21:49:42 GMT
ENV TELEGRAF_VERSION=1.5.3
# Wed, 27 Jun 2018 21:49:51 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     gpg --batch --verify telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     dpkg -i telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     rm -f telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb*
# Wed, 27 Jun 2018 21:49:51 GMT
EXPOSE 8092/udp 8094/tcp 8125/udp
# Wed, 27 Jun 2018 21:49:53 GMT
COPY file:7211de01f296351833389a1a1879d450e2cb727d7e2910d5807937f99983edf7 in /entrypoint.sh 
# Wed, 27 Jun 2018 21:49:53 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 27 Jun 2018 21:49:55 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:6054c6775a4e4515d2365ad9337e322dd5c6ad0e0bc8e5bb6b0252461e71afc4`  
		Last Modified: Wed, 27 Jun 2018 08:57:38 GMT  
		Size: 43.1 MB (43115791 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d57f1ab872b53f8ac8eff946226a3ff9d5fb929656964b75dae06303e9c8ef4`  
		Last Modified: Wed, 27 Jun 2018 11:06:29 GMT  
		Size: 9.7 MB (9722190 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:662e63f6b578575fadc2ae00bf10794a2a45166c03105d940c919da9f78c1c43`  
		Last Modified: Wed, 27 Jun 2018 11:06:28 GMT  
		Size: 4.1 MB (4088526 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3567141197cf1e728adad538ee37d487a4a610343634de444ff8488e7a28c8fc`  
		Last Modified: Wed, 27 Jun 2018 21:51:34 GMT  
		Size: 15.2 MB (15162576 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7174a8f560e5530fb5f34f178eb873552011443e17a0d1061ff87aeb6fc3ae48`  
		Last Modified: Wed, 27 Jun 2018 21:51:28 GMT  
		Size: 2.9 KB (2887 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2fc82d0382b73d868518c2ced55cff535847ae191c1390a4a4ce52985fef40a8`  
		Last Modified: Wed, 27 Jun 2018 21:51:32 GMT  
		Size: 8.7 MB (8711098 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b110c35f2714b2afefd4858400670d0f69ffa16b12c73b41fb948a843692485`  
		Last Modified: Wed, 27 Jun 2018 21:51:28 GMT  
		Size: 184.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `telegraf:1.5.3`

```console
$ docker pull telegraf@sha256:591afa216a19f4df817ce711ec38ca112302619ed4401edd4e0e7bf56a781573
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `telegraf:1.5.3` - linux; amd64

```console
$ docker pull telegraf@sha256:2898ffc36277d5f7f59589ca27de926f54506a0b034c485f5263f4e494337ba2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **85.8 MB (85846393 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:95eced36f2ae5e10647e8b5d2d29202a3dd7fb7f61b81b5a5e34945aaa07582c`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Tue, 17 Jul 2018 00:27:24 GMT
ADD file:370028dca6e8ca9ed228549d52231cf8139515cc3a14c00aaed75a60b679775f in / 
# Tue, 17 Jul 2018 00:27:24 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 03:12:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 03:13:02 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 17 Jul 2018 23:20:30 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends iputils-ping snmp procps lm-sensors &&     rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 23:20:43 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Tue, 17 Jul 2018 23:20:43 GMT
ENV TELEGRAF_VERSION=1.5.3
# Tue, 17 Jul 2018 23:20:46 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     gpg --batch --verify telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     dpkg -i telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     rm -f telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb*
# Tue, 17 Jul 2018 23:20:46 GMT
EXPOSE 8092/udp 8094/tcp 8125/udp
# Tue, 17 Jul 2018 23:20:47 GMT
COPY file:7211de01f296351833389a1a1879d450e2cb727d7e2910d5807937f99983edf7 in /entrypoint.sh 
# Tue, 17 Jul 2018 23:20:47 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 17 Jul 2018 23:20:47 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:55cbf04beb7001d222c71bfdeae780bda19d5cb37b8dbd65ff0d3e6a0b9b74e6`  
		Last Modified: Tue, 17 Jul 2018 00:42:31 GMT  
		Size: 45.3 MB (45310044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1607093a898cc241de8712e4361dcd907898fff35b945adca42db3963f3827b3`  
		Last Modified: Tue, 17 Jul 2018 03:53:34 GMT  
		Size: 10.7 MB (10740168 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a8ea045c9261c180a34df19cfc9bb3c3f28f29b279bf964ee801536e8244f2f`  
		Last Modified: Tue, 17 Jul 2018 03:53:32 GMT  
		Size: 4.3 MB (4336107 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9dbf507f8efacd0094ccabf8ea83afe058a672463c0366caa0004ad1e527c718`  
		Last Modified: Tue, 17 Jul 2018 23:23:54 GMT  
		Size: 16.0 MB (15963861 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7bbc4db97cd33b299b774bd79446ee886409e709de11f424d2f57b764a2c6dd`  
		Last Modified: Tue, 17 Jul 2018 23:23:49 GMT  
		Size: 2.9 KB (2885 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9dbc49f60f7cf1c560f158c2f9d73e9568263345723fbce00402b4dc1c335ab6`  
		Last Modified: Tue, 17 Jul 2018 23:23:53 GMT  
		Size: 9.5 MB (9493144 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:edc74e677a21b53f314f5d29dc8c718f9ad35c71de0b90720fbcd768c6866c7f`  
		Last Modified: Tue, 17 Jul 2018 23:23:49 GMT  
		Size: 184.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `telegraf:1.5.3` - linux; arm variant v7

```console
$ docker pull telegraf@sha256:b1cf8cbdc3cf938f7bac469dea26e7bfa4b4132f4302e9ac4c84de5e3b49aaa8
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **78.8 MB (78815635 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0a96d9bd60691b3c33dd913b9f328f8cd97318afee68b0201f82e961e991f755`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Tue, 17 Jul 2018 12:05:25 GMT
ADD file:77cbe27c4436cc4c9d81bee6c5ae0fee0c6d1708813d34abd2af2d3ebd7d96a5 in / 
# Tue, 17 Jul 2018 12:05:26 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 13:46:48 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 13:46:56 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 17 Jul 2018 18:17:48 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends iputils-ping snmp procps &&     rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 18:17:51 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Tue, 17 Jul 2018 18:17:52 GMT
ENV TELEGRAF_VERSION=1.5.3
# Tue, 17 Jul 2018 18:17:55 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     gpg --batch --verify telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     dpkg -i telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     rm -f telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb*
# Tue, 17 Jul 2018 18:17:55 GMT
EXPOSE 8092/udp 8094/tcp 8125/udp
# Tue, 17 Jul 2018 18:17:56 GMT
COPY file:7211de01f296351833389a1a1879d450e2cb727d7e2910d5807937f99983edf7 in /entrypoint.sh 
# Tue, 17 Jul 2018 18:17:56 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 17 Jul 2018 18:17:56 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:a92bc499a4699bc1d9bd6631daec00b7b440346221ce91af635e3460f7d4d70b`  
		Last Modified: Tue, 17 Jul 2018 12:17:32 GMT  
		Size: 42.1 MB (42060835 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d56e34dc5db45e25c590c9a353c3562d66546b06312f418f9aae4661c28ee94f`  
		Last Modified: Tue, 17 Jul 2018 14:10:12 GMT  
		Size: 9.4 MB (9440199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:948d2574fcb06c4081812a267179437a8d624eba8741a8fb5a6e3ef655c3dcff`  
		Last Modified: Tue, 17 Jul 2018 14:10:10 GMT  
		Size: 3.9 MB (3912954 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f31679ebf92c73a8165fe361aa1e7a34257d7f0ea0e946ee61ae7abf41b87662`  
		Last Modified: Tue, 17 Jul 2018 18:18:52 GMT  
		Size: 14.5 MB (14465506 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a85c52308ebb2bf8661189f76a8fc8e8e32923b333404664a445734b1d3f82a5`  
		Last Modified: Tue, 17 Jul 2018 18:18:46 GMT  
		Size: 2.9 KB (2912 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b8f1bb7e48f28cc9acb4233941fd90b700834f603b81d28e193ecafb38cff22`  
		Last Modified: Tue, 17 Jul 2018 18:18:51 GMT  
		Size: 8.9 MB (8933046 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0529687b920f1585a93980e3044571b09ff2c91ccd7c4843e6c3ff88958a592a`  
		Last Modified: Tue, 17 Jul 2018 18:18:46 GMT  
		Size: 183.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `telegraf:1.5.3` - linux; arm64 variant v8

```console
$ docker pull telegraf@sha256:73410be7a17ad8b31bd351eada36c2145a60b866cb85a67daecbe0106c0ce9d6
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **80.8 MB (80803252 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:028d963b97959ec22eb158759d4bd0f888e95709c6796633f125f6dc9dd30603`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Wed, 27 Jun 2018 08:47:01 GMT
ADD file:0f69db95e9a06ee21c38014c8bc6c142be97ec4d5127ba83f1d0ef48806f7415 in / 
# Wed, 27 Jun 2018 08:47:02 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 10:46:58 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 10:47:23 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 27 Jun 2018 21:49:35 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends iputils-ping snmp procps &&     rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 21:49:41 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Wed, 27 Jun 2018 21:49:42 GMT
ENV TELEGRAF_VERSION=1.5.3
# Wed, 27 Jun 2018 21:49:51 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     gpg --batch --verify telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     dpkg -i telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     rm -f telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb*
# Wed, 27 Jun 2018 21:49:51 GMT
EXPOSE 8092/udp 8094/tcp 8125/udp
# Wed, 27 Jun 2018 21:49:53 GMT
COPY file:7211de01f296351833389a1a1879d450e2cb727d7e2910d5807937f99983edf7 in /entrypoint.sh 
# Wed, 27 Jun 2018 21:49:53 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 27 Jun 2018 21:49:55 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:6054c6775a4e4515d2365ad9337e322dd5c6ad0e0bc8e5bb6b0252461e71afc4`  
		Last Modified: Wed, 27 Jun 2018 08:57:38 GMT  
		Size: 43.1 MB (43115791 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d57f1ab872b53f8ac8eff946226a3ff9d5fb929656964b75dae06303e9c8ef4`  
		Last Modified: Wed, 27 Jun 2018 11:06:29 GMT  
		Size: 9.7 MB (9722190 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:662e63f6b578575fadc2ae00bf10794a2a45166c03105d940c919da9f78c1c43`  
		Last Modified: Wed, 27 Jun 2018 11:06:28 GMT  
		Size: 4.1 MB (4088526 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3567141197cf1e728adad538ee37d487a4a610343634de444ff8488e7a28c8fc`  
		Last Modified: Wed, 27 Jun 2018 21:51:34 GMT  
		Size: 15.2 MB (15162576 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7174a8f560e5530fb5f34f178eb873552011443e17a0d1061ff87aeb6fc3ae48`  
		Last Modified: Wed, 27 Jun 2018 21:51:28 GMT  
		Size: 2.9 KB (2887 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2fc82d0382b73d868518c2ced55cff535847ae191c1390a4a4ce52985fef40a8`  
		Last Modified: Wed, 27 Jun 2018 21:51:32 GMT  
		Size: 8.7 MB (8711098 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b110c35f2714b2afefd4858400670d0f69ffa16b12c73b41fb948a843692485`  
		Last Modified: Wed, 27 Jun 2018 21:51:28 GMT  
		Size: 184.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `telegraf:1.5.3-alpine`

```console
$ docker pull telegraf@sha256:1767cd4d94112e8185c2e769b9bb60af9769f4c9160259660d482dd270a73676
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `telegraf:1.5.3-alpine` - linux; amd64

```console
$ docker pull telegraf@sha256:3b4909d6305d753a46d69c6e6e27c310655a6331f81b536bb37c14ad1cfda717
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.8 MB (14819101 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:77bdc6526639c46f0a7177568cced5a48b67635d6defb99656fe5433ab83ec5e`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Fri, 06 Jul 2018 14:13:25 GMT
ADD file:eceadb32d029164d23db918d14c88df7186b6ee9645fa2f0c0a7e3e046a6a129 in / 
# Fri, 06 Jul 2018 14:13:25 GMT
CMD ["/bin/sh"]
# Fri, 06 Jul 2018 15:20:56 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf
# Tue, 17 Jul 2018 23:21:09 GMT
RUN apk add --no-cache iputils ca-certificates net-snmp-tools procps lm_sensors &&     update-ca-certificates
# Tue, 17 Jul 2018 23:21:22 GMT
ENV TELEGRAF_VERSION=1.5.3
# Tue, 17 Jul 2018 23:21:29 GMT
RUN set -ex &&     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf-${TELEGRAF_VERSION}-static_linux_amd64.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf-${TELEGRAF_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify telegraf-${TELEGRAF_VERSION}-static_linux_amd64.tar.gz.asc telegraf-${TELEGRAF_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src /etc/telegraf &&     tar -C /usr/src -xzf telegraf-${TELEGRAF_VERSION}-static_linux_amd64.tar.gz &&     mv /usr/src/telegraf*/telegraf.conf /etc/telegraf/ &&     chmod +x /usr/src/telegraf*/* &&     cp -a /usr/src/telegraf*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Tue, 17 Jul 2018 23:21:30 GMT
EXPOSE 8092/udp 8094/tcp 8125/udp
# Tue, 17 Jul 2018 23:21:30 GMT
COPY file:43e6828e001b57ab465cff8dfd3d30830289afe7ca5944b61641956bfe38cd1c in /entrypoint.sh 
# Tue, 17 Jul 2018 23:21:30 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 17 Jul 2018 23:21:31 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:a073c86ecf9e0f29180e80e9638d4c741970695851ea48247276c32c57e40282`  
		Last Modified: Fri, 06 Jul 2018 14:16:26 GMT  
		Size: 2.0 MB (2014658 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e3fc09cd3173af0ccd136f8de7a9f2352e1e8d0fa0c7df8233c7c0092ff4faa`  
		Last Modified: Fri, 06 Jul 2018 15:23:05 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42f39ed2e1344853a0bfec2e846d27e44d0d1cb77a6f78b122a5870c7da5cbe9`  
		Last Modified: Tue, 17 Jul 2018 23:24:34 GMT  
		Size: 3.3 MB (3346823 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4fe3080aefa58408009ef7bb27f8720a9a55e535f526f812bfd7f81a7cf543b`  
		Last Modified: Tue, 17 Jul 2018 23:24:37 GMT  
		Size: 9.5 MB (9457283 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7ade3ecf58b929960d5b057220f620af939e1170b7f87455bf763b6d9dcad5a`  
		Last Modified: Tue, 17 Jul 2018 23:24:31 GMT  
		Size: 184.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `telegraf:1.5-alpine`

```console
$ docker pull telegraf@sha256:1767cd4d94112e8185c2e769b9bb60af9769f4c9160259660d482dd270a73676
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `telegraf:1.5-alpine` - linux; amd64

```console
$ docker pull telegraf@sha256:3b4909d6305d753a46d69c6e6e27c310655a6331f81b536bb37c14ad1cfda717
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.8 MB (14819101 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:77bdc6526639c46f0a7177568cced5a48b67635d6defb99656fe5433ab83ec5e`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Fri, 06 Jul 2018 14:13:25 GMT
ADD file:eceadb32d029164d23db918d14c88df7186b6ee9645fa2f0c0a7e3e046a6a129 in / 
# Fri, 06 Jul 2018 14:13:25 GMT
CMD ["/bin/sh"]
# Fri, 06 Jul 2018 15:20:56 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf
# Tue, 17 Jul 2018 23:21:09 GMT
RUN apk add --no-cache iputils ca-certificates net-snmp-tools procps lm_sensors &&     update-ca-certificates
# Tue, 17 Jul 2018 23:21:22 GMT
ENV TELEGRAF_VERSION=1.5.3
# Tue, 17 Jul 2018 23:21:29 GMT
RUN set -ex &&     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf-${TELEGRAF_VERSION}-static_linux_amd64.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf-${TELEGRAF_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify telegraf-${TELEGRAF_VERSION}-static_linux_amd64.tar.gz.asc telegraf-${TELEGRAF_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src /etc/telegraf &&     tar -C /usr/src -xzf telegraf-${TELEGRAF_VERSION}-static_linux_amd64.tar.gz &&     mv /usr/src/telegraf*/telegraf.conf /etc/telegraf/ &&     chmod +x /usr/src/telegraf*/* &&     cp -a /usr/src/telegraf*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Tue, 17 Jul 2018 23:21:30 GMT
EXPOSE 8092/udp 8094/tcp 8125/udp
# Tue, 17 Jul 2018 23:21:30 GMT
COPY file:43e6828e001b57ab465cff8dfd3d30830289afe7ca5944b61641956bfe38cd1c in /entrypoint.sh 
# Tue, 17 Jul 2018 23:21:30 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 17 Jul 2018 23:21:31 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:a073c86ecf9e0f29180e80e9638d4c741970695851ea48247276c32c57e40282`  
		Last Modified: Fri, 06 Jul 2018 14:16:26 GMT  
		Size: 2.0 MB (2014658 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e3fc09cd3173af0ccd136f8de7a9f2352e1e8d0fa0c7df8233c7c0092ff4faa`  
		Last Modified: Fri, 06 Jul 2018 15:23:05 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42f39ed2e1344853a0bfec2e846d27e44d0d1cb77a6f78b122a5870c7da5cbe9`  
		Last Modified: Tue, 17 Jul 2018 23:24:34 GMT  
		Size: 3.3 MB (3346823 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4fe3080aefa58408009ef7bb27f8720a9a55e535f526f812bfd7f81a7cf543b`  
		Last Modified: Tue, 17 Jul 2018 23:24:37 GMT  
		Size: 9.5 MB (9457283 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7ade3ecf58b929960d5b057220f620af939e1170b7f87455bf763b6d9dcad5a`  
		Last Modified: Tue, 17 Jul 2018 23:24:31 GMT  
		Size: 184.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `telegraf:1.6`

```console
$ docker pull telegraf@sha256:03de21749bcb11072541242a9836f281c08318269b651aa2176fb058ec5b60a6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `telegraf:1.6` - linux; amd64

```console
$ docker pull telegraf@sha256:e6b1613a540f6cf71322e092ebfc4d928764ebdea8d4936778b4a6a9d35f6f90
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **86.2 MB (86234876 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6c0e2da417d88f2cecedc8388e52a6aa22404e27f2099a9b43d46e22b463086b`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Tue, 17 Jul 2018 00:27:24 GMT
ADD file:370028dca6e8ca9ed228549d52231cf8139515cc3a14c00aaed75a60b679775f in / 
# Tue, 17 Jul 2018 00:27:24 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 03:12:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 03:13:02 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 17 Jul 2018 23:20:30 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends iputils-ping snmp procps lm-sensors &&     rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 23:20:43 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Tue, 17 Jul 2018 23:21:47 GMT
ENV TELEGRAF_VERSION=1.6.4
# Tue, 17 Jul 2018 23:21:49 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     gpg --batch --verify telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     dpkg -i telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     rm -f telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb*
# Tue, 17 Jul 2018 23:21:50 GMT
EXPOSE 8092/udp 8094/tcp 8125/udp
# Tue, 17 Jul 2018 23:21:50 GMT
COPY file:7211de01f296351833389a1a1879d450e2cb727d7e2910d5807937f99983edf7 in /entrypoint.sh 
# Tue, 17 Jul 2018 23:21:51 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 17 Jul 2018 23:21:51 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:55cbf04beb7001d222c71bfdeae780bda19d5cb37b8dbd65ff0d3e6a0b9b74e6`  
		Last Modified: Tue, 17 Jul 2018 00:42:31 GMT  
		Size: 45.3 MB (45310044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1607093a898cc241de8712e4361dcd907898fff35b945adca42db3963f3827b3`  
		Last Modified: Tue, 17 Jul 2018 03:53:34 GMT  
		Size: 10.7 MB (10740168 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a8ea045c9261c180a34df19cfc9bb3c3f28f29b279bf964ee801536e8244f2f`  
		Last Modified: Tue, 17 Jul 2018 03:53:32 GMT  
		Size: 4.3 MB (4336107 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9dbf507f8efacd0094ccabf8ea83afe058a672463c0366caa0004ad1e527c718`  
		Last Modified: Tue, 17 Jul 2018 23:23:54 GMT  
		Size: 16.0 MB (15963861 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7bbc4db97cd33b299b774bd79446ee886409e709de11f424d2f57b764a2c6dd`  
		Last Modified: Tue, 17 Jul 2018 23:23:49 GMT  
		Size: 2.9 KB (2885 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8898b2dd4b3fe1e26e8dd6ac3a77a920ecc83c4b838501eb8d85f7c27a49081`  
		Last Modified: Tue, 17 Jul 2018 23:25:23 GMT  
		Size: 9.9 MB (9881625 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:595512eec93697127a9f356ce927aa0cf6c76fd5243c4567a4c41c21d3d066c2`  
		Last Modified: Tue, 17 Jul 2018 23:25:19 GMT  
		Size: 186.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `telegraf:1.6` - linux; arm variant v7

```console
$ docker pull telegraf@sha256:4c96138ba6fe00b2bc5f9d246b087996a01d562bfac5db4ee518b5cd4249da98
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **79.2 MB (79182763 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e06088335dc1c27c5d8e592c006c291322c0ceafcd299ad8f942db0387a142e9`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Tue, 17 Jul 2018 12:05:25 GMT
ADD file:77cbe27c4436cc4c9d81bee6c5ae0fee0c6d1708813d34abd2af2d3ebd7d96a5 in / 
# Tue, 17 Jul 2018 12:05:26 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 13:46:48 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 13:46:56 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 17 Jul 2018 18:17:48 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends iputils-ping snmp procps &&     rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 18:17:51 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Tue, 17 Jul 2018 18:18:09 GMT
ENV TELEGRAF_VERSION=1.6.4
# Tue, 17 Jul 2018 18:18:12 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     gpg --batch --verify telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     dpkg -i telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     rm -f telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb*
# Tue, 17 Jul 2018 18:18:12 GMT
EXPOSE 8092/udp 8094/tcp 8125/udp
# Tue, 17 Jul 2018 18:18:13 GMT
COPY file:7211de01f296351833389a1a1879d450e2cb727d7e2910d5807937f99983edf7 in /entrypoint.sh 
# Tue, 17 Jul 2018 18:18:13 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 17 Jul 2018 18:18:14 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:a92bc499a4699bc1d9bd6631daec00b7b440346221ce91af635e3460f7d4d70b`  
		Last Modified: Tue, 17 Jul 2018 12:17:32 GMT  
		Size: 42.1 MB (42060835 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d56e34dc5db45e25c590c9a353c3562d66546b06312f418f9aae4661c28ee94f`  
		Last Modified: Tue, 17 Jul 2018 14:10:12 GMT  
		Size: 9.4 MB (9440199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:948d2574fcb06c4081812a267179437a8d624eba8741a8fb5a6e3ef655c3dcff`  
		Last Modified: Tue, 17 Jul 2018 14:10:10 GMT  
		Size: 3.9 MB (3912954 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f31679ebf92c73a8165fe361aa1e7a34257d7f0ea0e946ee61ae7abf41b87662`  
		Last Modified: Tue, 17 Jul 2018 18:18:52 GMT  
		Size: 14.5 MB (14465506 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a85c52308ebb2bf8661189f76a8fc8e8e32923b333404664a445734b1d3f82a5`  
		Last Modified: Tue, 17 Jul 2018 18:18:46 GMT  
		Size: 2.9 KB (2912 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a79e3dbf61aa83ba8f881249fe4b136cdb5b33918d46a9858b2c9594cc1cc646`  
		Last Modified: Tue, 17 Jul 2018 18:19:18 GMT  
		Size: 9.3 MB (9300172 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afb8d12e86204fdce5618e5a49e53b26c45ac966a4ddc83da470e8d07a1d0ebf`  
		Last Modified: Tue, 17 Jul 2018 18:19:15 GMT  
		Size: 185.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `telegraf:1.6` - linux; arm64 variant v8

```console
$ docker pull telegraf@sha256:db6574e3fe1a2c8d17eb348e2d7932f8e05ef788aab82d7c8a2cd53839c9697b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **81.2 MB (81170786 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:28a9a9fdd1f427a384ee4c98a3e71aee1e5981e168ce0ddba8b5d1f55630e3f8`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Wed, 27 Jun 2018 08:47:01 GMT
ADD file:0f69db95e9a06ee21c38014c8bc6c142be97ec4d5127ba83f1d0ef48806f7415 in / 
# Wed, 27 Jun 2018 08:47:02 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 10:46:58 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 10:47:23 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 27 Jun 2018 21:49:35 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends iputils-ping snmp procps &&     rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 21:49:41 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Wed, 27 Jun 2018 21:50:18 GMT
ENV TELEGRAF_VERSION=1.6.4
# Wed, 27 Jun 2018 21:50:27 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     gpg --batch --verify telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     dpkg -i telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     rm -f telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb*
# Wed, 27 Jun 2018 21:50:29 GMT
EXPOSE 8092/udp 8094/tcp 8125/udp
# Wed, 27 Jun 2018 21:50:30 GMT
COPY file:7211de01f296351833389a1a1879d450e2cb727d7e2910d5807937f99983edf7 in /entrypoint.sh 
# Wed, 27 Jun 2018 21:50:32 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 27 Jun 2018 21:50:34 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:6054c6775a4e4515d2365ad9337e322dd5c6ad0e0bc8e5bb6b0252461e71afc4`  
		Last Modified: Wed, 27 Jun 2018 08:57:38 GMT  
		Size: 43.1 MB (43115791 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d57f1ab872b53f8ac8eff946226a3ff9d5fb929656964b75dae06303e9c8ef4`  
		Last Modified: Wed, 27 Jun 2018 11:06:29 GMT  
		Size: 9.7 MB (9722190 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:662e63f6b578575fadc2ae00bf10794a2a45166c03105d940c919da9f78c1c43`  
		Last Modified: Wed, 27 Jun 2018 11:06:28 GMT  
		Size: 4.1 MB (4088526 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3567141197cf1e728adad538ee37d487a4a610343634de444ff8488e7a28c8fc`  
		Last Modified: Wed, 27 Jun 2018 21:51:34 GMT  
		Size: 15.2 MB (15162576 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7174a8f560e5530fb5f34f178eb873552011443e17a0d1061ff87aeb6fc3ae48`  
		Last Modified: Wed, 27 Jun 2018 21:51:28 GMT  
		Size: 2.9 KB (2887 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:215ae7bb7c1f4186fef8e06d8b866b1e4fedbe19ed520c49bdcee2e148c1757c`  
		Last Modified: Wed, 27 Jun 2018 21:52:03 GMT  
		Size: 9.1 MB (9078633 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d798f213e91d08ff7ea5790373bcbb7fc7d38dde546a29786c2c7e8a1b37b10`  
		Last Modified: Wed, 27 Jun 2018 21:51:59 GMT  
		Size: 183.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `telegraf:1.6.4`

```console
$ docker pull telegraf@sha256:03de21749bcb11072541242a9836f281c08318269b651aa2176fb058ec5b60a6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `telegraf:1.6.4` - linux; amd64

```console
$ docker pull telegraf@sha256:e6b1613a540f6cf71322e092ebfc4d928764ebdea8d4936778b4a6a9d35f6f90
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **86.2 MB (86234876 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6c0e2da417d88f2cecedc8388e52a6aa22404e27f2099a9b43d46e22b463086b`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Tue, 17 Jul 2018 00:27:24 GMT
ADD file:370028dca6e8ca9ed228549d52231cf8139515cc3a14c00aaed75a60b679775f in / 
# Tue, 17 Jul 2018 00:27:24 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 03:12:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 03:13:02 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 17 Jul 2018 23:20:30 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends iputils-ping snmp procps lm-sensors &&     rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 23:20:43 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Tue, 17 Jul 2018 23:21:47 GMT
ENV TELEGRAF_VERSION=1.6.4
# Tue, 17 Jul 2018 23:21:49 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     gpg --batch --verify telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     dpkg -i telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     rm -f telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb*
# Tue, 17 Jul 2018 23:21:50 GMT
EXPOSE 8092/udp 8094/tcp 8125/udp
# Tue, 17 Jul 2018 23:21:50 GMT
COPY file:7211de01f296351833389a1a1879d450e2cb727d7e2910d5807937f99983edf7 in /entrypoint.sh 
# Tue, 17 Jul 2018 23:21:51 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 17 Jul 2018 23:21:51 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:55cbf04beb7001d222c71bfdeae780bda19d5cb37b8dbd65ff0d3e6a0b9b74e6`  
		Last Modified: Tue, 17 Jul 2018 00:42:31 GMT  
		Size: 45.3 MB (45310044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1607093a898cc241de8712e4361dcd907898fff35b945adca42db3963f3827b3`  
		Last Modified: Tue, 17 Jul 2018 03:53:34 GMT  
		Size: 10.7 MB (10740168 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a8ea045c9261c180a34df19cfc9bb3c3f28f29b279bf964ee801536e8244f2f`  
		Last Modified: Tue, 17 Jul 2018 03:53:32 GMT  
		Size: 4.3 MB (4336107 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9dbf507f8efacd0094ccabf8ea83afe058a672463c0366caa0004ad1e527c718`  
		Last Modified: Tue, 17 Jul 2018 23:23:54 GMT  
		Size: 16.0 MB (15963861 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7bbc4db97cd33b299b774bd79446ee886409e709de11f424d2f57b764a2c6dd`  
		Last Modified: Tue, 17 Jul 2018 23:23:49 GMT  
		Size: 2.9 KB (2885 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8898b2dd4b3fe1e26e8dd6ac3a77a920ecc83c4b838501eb8d85f7c27a49081`  
		Last Modified: Tue, 17 Jul 2018 23:25:23 GMT  
		Size: 9.9 MB (9881625 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:595512eec93697127a9f356ce927aa0cf6c76fd5243c4567a4c41c21d3d066c2`  
		Last Modified: Tue, 17 Jul 2018 23:25:19 GMT  
		Size: 186.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `telegraf:1.6.4` - linux; arm variant v7

```console
$ docker pull telegraf@sha256:4c96138ba6fe00b2bc5f9d246b087996a01d562bfac5db4ee518b5cd4249da98
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **79.2 MB (79182763 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e06088335dc1c27c5d8e592c006c291322c0ceafcd299ad8f942db0387a142e9`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Tue, 17 Jul 2018 12:05:25 GMT
ADD file:77cbe27c4436cc4c9d81bee6c5ae0fee0c6d1708813d34abd2af2d3ebd7d96a5 in / 
# Tue, 17 Jul 2018 12:05:26 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 13:46:48 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 13:46:56 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 17 Jul 2018 18:17:48 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends iputils-ping snmp procps &&     rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 18:17:51 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Tue, 17 Jul 2018 18:18:09 GMT
ENV TELEGRAF_VERSION=1.6.4
# Tue, 17 Jul 2018 18:18:12 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     gpg --batch --verify telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     dpkg -i telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     rm -f telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb*
# Tue, 17 Jul 2018 18:18:12 GMT
EXPOSE 8092/udp 8094/tcp 8125/udp
# Tue, 17 Jul 2018 18:18:13 GMT
COPY file:7211de01f296351833389a1a1879d450e2cb727d7e2910d5807937f99983edf7 in /entrypoint.sh 
# Tue, 17 Jul 2018 18:18:13 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 17 Jul 2018 18:18:14 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:a92bc499a4699bc1d9bd6631daec00b7b440346221ce91af635e3460f7d4d70b`  
		Last Modified: Tue, 17 Jul 2018 12:17:32 GMT  
		Size: 42.1 MB (42060835 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d56e34dc5db45e25c590c9a353c3562d66546b06312f418f9aae4661c28ee94f`  
		Last Modified: Tue, 17 Jul 2018 14:10:12 GMT  
		Size: 9.4 MB (9440199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:948d2574fcb06c4081812a267179437a8d624eba8741a8fb5a6e3ef655c3dcff`  
		Last Modified: Tue, 17 Jul 2018 14:10:10 GMT  
		Size: 3.9 MB (3912954 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f31679ebf92c73a8165fe361aa1e7a34257d7f0ea0e946ee61ae7abf41b87662`  
		Last Modified: Tue, 17 Jul 2018 18:18:52 GMT  
		Size: 14.5 MB (14465506 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a85c52308ebb2bf8661189f76a8fc8e8e32923b333404664a445734b1d3f82a5`  
		Last Modified: Tue, 17 Jul 2018 18:18:46 GMT  
		Size: 2.9 KB (2912 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a79e3dbf61aa83ba8f881249fe4b136cdb5b33918d46a9858b2c9594cc1cc646`  
		Last Modified: Tue, 17 Jul 2018 18:19:18 GMT  
		Size: 9.3 MB (9300172 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afb8d12e86204fdce5618e5a49e53b26c45ac966a4ddc83da470e8d07a1d0ebf`  
		Last Modified: Tue, 17 Jul 2018 18:19:15 GMT  
		Size: 185.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `telegraf:1.6.4` - linux; arm64 variant v8

```console
$ docker pull telegraf@sha256:db6574e3fe1a2c8d17eb348e2d7932f8e05ef788aab82d7c8a2cd53839c9697b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **81.2 MB (81170786 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:28a9a9fdd1f427a384ee4c98a3e71aee1e5981e168ce0ddba8b5d1f55630e3f8`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Wed, 27 Jun 2018 08:47:01 GMT
ADD file:0f69db95e9a06ee21c38014c8bc6c142be97ec4d5127ba83f1d0ef48806f7415 in / 
# Wed, 27 Jun 2018 08:47:02 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 10:46:58 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 10:47:23 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 27 Jun 2018 21:49:35 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends iputils-ping snmp procps &&     rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 21:49:41 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Wed, 27 Jun 2018 21:50:18 GMT
ENV TELEGRAF_VERSION=1.6.4
# Wed, 27 Jun 2018 21:50:27 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     gpg --batch --verify telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     dpkg -i telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     rm -f telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb*
# Wed, 27 Jun 2018 21:50:29 GMT
EXPOSE 8092/udp 8094/tcp 8125/udp
# Wed, 27 Jun 2018 21:50:30 GMT
COPY file:7211de01f296351833389a1a1879d450e2cb727d7e2910d5807937f99983edf7 in /entrypoint.sh 
# Wed, 27 Jun 2018 21:50:32 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 27 Jun 2018 21:50:34 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:6054c6775a4e4515d2365ad9337e322dd5c6ad0e0bc8e5bb6b0252461e71afc4`  
		Last Modified: Wed, 27 Jun 2018 08:57:38 GMT  
		Size: 43.1 MB (43115791 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d57f1ab872b53f8ac8eff946226a3ff9d5fb929656964b75dae06303e9c8ef4`  
		Last Modified: Wed, 27 Jun 2018 11:06:29 GMT  
		Size: 9.7 MB (9722190 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:662e63f6b578575fadc2ae00bf10794a2a45166c03105d940c919da9f78c1c43`  
		Last Modified: Wed, 27 Jun 2018 11:06:28 GMT  
		Size: 4.1 MB (4088526 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3567141197cf1e728adad538ee37d487a4a610343634de444ff8488e7a28c8fc`  
		Last Modified: Wed, 27 Jun 2018 21:51:34 GMT  
		Size: 15.2 MB (15162576 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7174a8f560e5530fb5f34f178eb873552011443e17a0d1061ff87aeb6fc3ae48`  
		Last Modified: Wed, 27 Jun 2018 21:51:28 GMT  
		Size: 2.9 KB (2887 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:215ae7bb7c1f4186fef8e06d8b866b1e4fedbe19ed520c49bdcee2e148c1757c`  
		Last Modified: Wed, 27 Jun 2018 21:52:03 GMT  
		Size: 9.1 MB (9078633 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d798f213e91d08ff7ea5790373bcbb7fc7d38dde546a29786c2c7e8a1b37b10`  
		Last Modified: Wed, 27 Jun 2018 21:51:59 GMT  
		Size: 183.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `telegraf:1.6.4-alpine`

```console
$ docker pull telegraf@sha256:7c8862c4ae77a174e5542209b6c34eeee18b3c5b2b1120dd49a4476d447080c9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `telegraf:1.6.4-alpine` - linux; amd64

```console
$ docker pull telegraf@sha256:d41883e36d7d7e8208115e4fc3366931bdd280427a201527dddafcdbd6838daf
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.2 MB (15211581 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fc6970d4ca72d8be89a2bfde877bb265cc45ab840710270d5b56a3878ebafe72`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Fri, 06 Jul 2018 14:13:25 GMT
ADD file:eceadb32d029164d23db918d14c88df7186b6ee9645fa2f0c0a7e3e046a6a129 in / 
# Fri, 06 Jul 2018 14:13:25 GMT
CMD ["/bin/sh"]
# Fri, 06 Jul 2018 15:20:56 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf
# Tue, 17 Jul 2018 23:21:09 GMT
RUN apk add --no-cache iputils ca-certificates net-snmp-tools procps lm_sensors &&     update-ca-certificates
# Tue, 17 Jul 2018 23:22:05 GMT
ENV TELEGRAF_VERSION=1.6.4
# Tue, 17 Jul 2018 23:22:13 GMT
RUN set -ex &&     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf-${TELEGRAF_VERSION}-static_linux_amd64.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf-${TELEGRAF_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify telegraf-${TELEGRAF_VERSION}-static_linux_amd64.tar.gz.asc telegraf-${TELEGRAF_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src /etc/telegraf &&     tar -C /usr/src -xzf telegraf-${TELEGRAF_VERSION}-static_linux_amd64.tar.gz &&     mv /usr/src/telegraf*/telegraf.conf /etc/telegraf/ &&     chmod +x /usr/src/telegraf*/* &&     cp -a /usr/src/telegraf*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Tue, 17 Jul 2018 23:22:13 GMT
EXPOSE 8092/udp 8094/tcp 8125/udp
# Tue, 17 Jul 2018 23:22:14 GMT
COPY file:43e6828e001b57ab465cff8dfd3d30830289afe7ca5944b61641956bfe38cd1c in /entrypoint.sh 
# Tue, 17 Jul 2018 23:22:14 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 17 Jul 2018 23:22:14 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:a073c86ecf9e0f29180e80e9638d4c741970695851ea48247276c32c57e40282`  
		Last Modified: Fri, 06 Jul 2018 14:16:26 GMT  
		Size: 2.0 MB (2014658 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e3fc09cd3173af0ccd136f8de7a9f2352e1e8d0fa0c7df8233c7c0092ff4faa`  
		Last Modified: Fri, 06 Jul 2018 15:23:05 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42f39ed2e1344853a0bfec2e846d27e44d0d1cb77a6f78b122a5870c7da5cbe9`  
		Last Modified: Tue, 17 Jul 2018 23:24:34 GMT  
		Size: 3.3 MB (3346823 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aeb7e3ffca366175fce4aeb6fab26ffc7f14e2d44f623910645eb31253d2589b`  
		Last Modified: Tue, 17 Jul 2018 23:26:13 GMT  
		Size: 9.8 MB (9849763 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5cb6f28a1acaa828705bb9b4b40dcc2872c6850739e301d8b1df1b0afa0f101a`  
		Last Modified: Tue, 17 Jul 2018 23:26:09 GMT  
		Size: 184.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `telegraf:1.6-alpine`

```console
$ docker pull telegraf@sha256:7c8862c4ae77a174e5542209b6c34eeee18b3c5b2b1120dd49a4476d447080c9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `telegraf:1.6-alpine` - linux; amd64

```console
$ docker pull telegraf@sha256:d41883e36d7d7e8208115e4fc3366931bdd280427a201527dddafcdbd6838daf
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.2 MB (15211581 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fc6970d4ca72d8be89a2bfde877bb265cc45ab840710270d5b56a3878ebafe72`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Fri, 06 Jul 2018 14:13:25 GMT
ADD file:eceadb32d029164d23db918d14c88df7186b6ee9645fa2f0c0a7e3e046a6a129 in / 
# Fri, 06 Jul 2018 14:13:25 GMT
CMD ["/bin/sh"]
# Fri, 06 Jul 2018 15:20:56 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf
# Tue, 17 Jul 2018 23:21:09 GMT
RUN apk add --no-cache iputils ca-certificates net-snmp-tools procps lm_sensors &&     update-ca-certificates
# Tue, 17 Jul 2018 23:22:05 GMT
ENV TELEGRAF_VERSION=1.6.4
# Tue, 17 Jul 2018 23:22:13 GMT
RUN set -ex &&     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf-${TELEGRAF_VERSION}-static_linux_amd64.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf-${TELEGRAF_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify telegraf-${TELEGRAF_VERSION}-static_linux_amd64.tar.gz.asc telegraf-${TELEGRAF_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src /etc/telegraf &&     tar -C /usr/src -xzf telegraf-${TELEGRAF_VERSION}-static_linux_amd64.tar.gz &&     mv /usr/src/telegraf*/telegraf.conf /etc/telegraf/ &&     chmod +x /usr/src/telegraf*/* &&     cp -a /usr/src/telegraf*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Tue, 17 Jul 2018 23:22:13 GMT
EXPOSE 8092/udp 8094/tcp 8125/udp
# Tue, 17 Jul 2018 23:22:14 GMT
COPY file:43e6828e001b57ab465cff8dfd3d30830289afe7ca5944b61641956bfe38cd1c in /entrypoint.sh 
# Tue, 17 Jul 2018 23:22:14 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 17 Jul 2018 23:22:14 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:a073c86ecf9e0f29180e80e9638d4c741970695851ea48247276c32c57e40282`  
		Last Modified: Fri, 06 Jul 2018 14:16:26 GMT  
		Size: 2.0 MB (2014658 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e3fc09cd3173af0ccd136f8de7a9f2352e1e8d0fa0c7df8233c7c0092ff4faa`  
		Last Modified: Fri, 06 Jul 2018 15:23:05 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42f39ed2e1344853a0bfec2e846d27e44d0d1cb77a6f78b122a5870c7da5cbe9`  
		Last Modified: Tue, 17 Jul 2018 23:24:34 GMT  
		Size: 3.3 MB (3346823 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aeb7e3ffca366175fce4aeb6fab26ffc7f14e2d44f623910645eb31253d2589b`  
		Last Modified: Tue, 17 Jul 2018 23:26:13 GMT  
		Size: 9.8 MB (9849763 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5cb6f28a1acaa828705bb9b4b40dcc2872c6850739e301d8b1df1b0afa0f101a`  
		Last Modified: Tue, 17 Jul 2018 23:26:09 GMT  
		Size: 184.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `telegraf:1.7`

```console
$ docker pull telegraf@sha256:93e85deb450edd1e7c4b8e827968b63321f9aa7a8159b3f0f70fb411ef1ea849
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `telegraf:1.7` - linux; amd64

```console
$ docker pull telegraf@sha256:16e790e734cb4df0a469cf121f3364091837fd4e60990d5bed5f8b221585bb74
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **86.8 MB (86849917 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:225b88e337aa14511a021cf00a593fc9f0c85ed7084b8bae602a6511080c94bc`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Tue, 17 Jul 2018 00:27:24 GMT
ADD file:370028dca6e8ca9ed228549d52231cf8139515cc3a14c00aaed75a60b679775f in / 
# Tue, 17 Jul 2018 00:27:24 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 03:12:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 03:13:02 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 17 Jul 2018 23:20:30 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends iputils-ping snmp procps lm-sensors &&     rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 23:20:43 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Tue, 17 Jul 2018 23:22:43 GMT
ENV TELEGRAF_VERSION=1.7.1
# Tue, 17 Jul 2018 23:22:46 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     gpg --batch --verify telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     dpkg -i telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     rm -f telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb*
# Tue, 17 Jul 2018 23:22:46 GMT
EXPOSE 8092/udp 8094/tcp 8125/udp
# Tue, 17 Jul 2018 23:22:46 GMT
COPY file:7211de01f296351833389a1a1879d450e2cb727d7e2910d5807937f99983edf7 in /entrypoint.sh 
# Tue, 17 Jul 2018 23:22:47 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 17 Jul 2018 23:22:47 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:55cbf04beb7001d222c71bfdeae780bda19d5cb37b8dbd65ff0d3e6a0b9b74e6`  
		Last Modified: Tue, 17 Jul 2018 00:42:31 GMT  
		Size: 45.3 MB (45310044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1607093a898cc241de8712e4361dcd907898fff35b945adca42db3963f3827b3`  
		Last Modified: Tue, 17 Jul 2018 03:53:34 GMT  
		Size: 10.7 MB (10740168 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a8ea045c9261c180a34df19cfc9bb3c3f28f29b279bf964ee801536e8244f2f`  
		Last Modified: Tue, 17 Jul 2018 03:53:32 GMT  
		Size: 4.3 MB (4336107 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9dbf507f8efacd0094ccabf8ea83afe058a672463c0366caa0004ad1e527c718`  
		Last Modified: Tue, 17 Jul 2018 23:23:54 GMT  
		Size: 16.0 MB (15963861 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7bbc4db97cd33b299b774bd79446ee886409e709de11f424d2f57b764a2c6dd`  
		Last Modified: Tue, 17 Jul 2018 23:23:49 GMT  
		Size: 2.9 KB (2885 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dfb3042c568d8294b02851191b241040f5df8f3895f239ca4970dea8f2efd4ca`  
		Last Modified: Tue, 17 Jul 2018 23:27:06 GMT  
		Size: 10.5 MB (10496668 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4415a92f4f4942c26b132bae931550cf52b1b167bb4f32067e1ba8137b5bac5d`  
		Last Modified: Tue, 17 Jul 2018 23:27:00 GMT  
		Size: 184.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `telegraf:1.7` - linux; arm variant v7

```console
$ docker pull telegraf@sha256:74e4f129a97ef6cd44dfc96a563ce57e5d11a77a26596ed5f7634b9fc162b73b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **80.0 MB (79970075 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9a8b42d491b02bcba0c2bed418ec7b35e4d43ca86c255bcf010a30089ac7377f`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Tue, 17 Jul 2018 12:05:25 GMT
ADD file:77cbe27c4436cc4c9d81bee6c5ae0fee0c6d1708813d34abd2af2d3ebd7d96a5 in / 
# Tue, 17 Jul 2018 12:05:26 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 13:46:48 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 13:46:56 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 17 Jul 2018 18:17:48 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends iputils-ping snmp procps &&     rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 18:17:51 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Tue, 17 Jul 2018 18:18:25 GMT
ENV TELEGRAF_VERSION=1.7.1
# Tue, 17 Jul 2018 18:18:28 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     gpg --batch --verify telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     dpkg -i telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     rm -f telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb*
# Tue, 17 Jul 2018 18:18:29 GMT
EXPOSE 8092/udp 8094/tcp 8125/udp
# Tue, 17 Jul 2018 18:18:29 GMT
COPY file:7211de01f296351833389a1a1879d450e2cb727d7e2910d5807937f99983edf7 in /entrypoint.sh 
# Tue, 17 Jul 2018 18:18:30 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 17 Jul 2018 18:18:30 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:a92bc499a4699bc1d9bd6631daec00b7b440346221ce91af635e3460f7d4d70b`  
		Last Modified: Tue, 17 Jul 2018 12:17:32 GMT  
		Size: 42.1 MB (42060835 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d56e34dc5db45e25c590c9a353c3562d66546b06312f418f9aae4661c28ee94f`  
		Last Modified: Tue, 17 Jul 2018 14:10:12 GMT  
		Size: 9.4 MB (9440199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:948d2574fcb06c4081812a267179437a8d624eba8741a8fb5a6e3ef655c3dcff`  
		Last Modified: Tue, 17 Jul 2018 14:10:10 GMT  
		Size: 3.9 MB (3912954 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f31679ebf92c73a8165fe361aa1e7a34257d7f0ea0e946ee61ae7abf41b87662`  
		Last Modified: Tue, 17 Jul 2018 18:18:52 GMT  
		Size: 14.5 MB (14465506 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a85c52308ebb2bf8661189f76a8fc8e8e32923b333404664a445734b1d3f82a5`  
		Last Modified: Tue, 17 Jul 2018 18:18:46 GMT  
		Size: 2.9 KB (2912 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:846bfcfed18fb0b66afa33f3b71a35de8645f6e65e54683b65743a2644813661`  
		Last Modified: Tue, 17 Jul 2018 18:19:42 GMT  
		Size: 10.1 MB (10087484 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38b7bc14d370ba3c1475bd2bd26bc5d47a231b9af1ea85f3f7dcbceb8fa1c53e`  
		Last Modified: Tue, 17 Jul 2018 18:19:39 GMT  
		Size: 185.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `telegraf:1.7` - linux; arm64 variant v8

```console
$ docker pull telegraf@sha256:28bea3a5d73f4e6c713876a155ab8505e6922ad0f3f3190badd33ced95aaf887
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **82.0 MB (81956613 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:04a9f7d5149585895d65d344bb9391a064cdf402615c1edc2d74376e820d6682`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Wed, 27 Jun 2018 08:47:01 GMT
ADD file:0f69db95e9a06ee21c38014c8bc6c142be97ec4d5127ba83f1d0ef48806f7415 in / 
# Wed, 27 Jun 2018 08:47:02 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 10:46:58 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 10:47:23 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 27 Jun 2018 21:49:35 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends iputils-ping snmp procps &&     rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 21:49:41 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Fri, 06 Jul 2018 09:29:36 GMT
ENV TELEGRAF_VERSION=1.7.1
# Fri, 06 Jul 2018 09:29:44 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     gpg --batch --verify telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     dpkg -i telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     rm -f telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb*
# Fri, 06 Jul 2018 09:29:45 GMT
EXPOSE 8092/udp 8094/tcp 8125/udp
# Fri, 06 Jul 2018 09:29:46 GMT
COPY file:7211de01f296351833389a1a1879d450e2cb727d7e2910d5807937f99983edf7 in /entrypoint.sh 
# Fri, 06 Jul 2018 09:29:46 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 06 Jul 2018 09:29:47 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:6054c6775a4e4515d2365ad9337e322dd5c6ad0e0bc8e5bb6b0252461e71afc4`  
		Last Modified: Wed, 27 Jun 2018 08:57:38 GMT  
		Size: 43.1 MB (43115791 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d57f1ab872b53f8ac8eff946226a3ff9d5fb929656964b75dae06303e9c8ef4`  
		Last Modified: Wed, 27 Jun 2018 11:06:29 GMT  
		Size: 9.7 MB (9722190 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:662e63f6b578575fadc2ae00bf10794a2a45166c03105d940c919da9f78c1c43`  
		Last Modified: Wed, 27 Jun 2018 11:06:28 GMT  
		Size: 4.1 MB (4088526 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3567141197cf1e728adad538ee37d487a4a610343634de444ff8488e7a28c8fc`  
		Last Modified: Wed, 27 Jun 2018 21:51:34 GMT  
		Size: 15.2 MB (15162576 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7174a8f560e5530fb5f34f178eb873552011443e17a0d1061ff87aeb6fc3ae48`  
		Last Modified: Wed, 27 Jun 2018 21:51:28 GMT  
		Size: 2.9 KB (2887 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce70d70035b232e41caf889d630b88967ec9a41cb220590ee90f457776a3da73`  
		Last Modified: Fri, 06 Jul 2018 09:30:12 GMT  
		Size: 9.9 MB (9864460 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b17c8031d632576ca851b933fe0ecc79777417c23222ddc1971375257b1d07f`  
		Last Modified: Fri, 06 Jul 2018 09:30:08 GMT  
		Size: 183.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `telegraf:1.7.1`

```console
$ docker pull telegraf@sha256:93e85deb450edd1e7c4b8e827968b63321f9aa7a8159b3f0f70fb411ef1ea849
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `telegraf:1.7.1` - linux; amd64

```console
$ docker pull telegraf@sha256:16e790e734cb4df0a469cf121f3364091837fd4e60990d5bed5f8b221585bb74
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **86.8 MB (86849917 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:225b88e337aa14511a021cf00a593fc9f0c85ed7084b8bae602a6511080c94bc`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Tue, 17 Jul 2018 00:27:24 GMT
ADD file:370028dca6e8ca9ed228549d52231cf8139515cc3a14c00aaed75a60b679775f in / 
# Tue, 17 Jul 2018 00:27:24 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 03:12:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 03:13:02 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 17 Jul 2018 23:20:30 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends iputils-ping snmp procps lm-sensors &&     rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 23:20:43 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Tue, 17 Jul 2018 23:22:43 GMT
ENV TELEGRAF_VERSION=1.7.1
# Tue, 17 Jul 2018 23:22:46 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     gpg --batch --verify telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     dpkg -i telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     rm -f telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb*
# Tue, 17 Jul 2018 23:22:46 GMT
EXPOSE 8092/udp 8094/tcp 8125/udp
# Tue, 17 Jul 2018 23:22:46 GMT
COPY file:7211de01f296351833389a1a1879d450e2cb727d7e2910d5807937f99983edf7 in /entrypoint.sh 
# Tue, 17 Jul 2018 23:22:47 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 17 Jul 2018 23:22:47 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:55cbf04beb7001d222c71bfdeae780bda19d5cb37b8dbd65ff0d3e6a0b9b74e6`  
		Last Modified: Tue, 17 Jul 2018 00:42:31 GMT  
		Size: 45.3 MB (45310044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1607093a898cc241de8712e4361dcd907898fff35b945adca42db3963f3827b3`  
		Last Modified: Tue, 17 Jul 2018 03:53:34 GMT  
		Size: 10.7 MB (10740168 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a8ea045c9261c180a34df19cfc9bb3c3f28f29b279bf964ee801536e8244f2f`  
		Last Modified: Tue, 17 Jul 2018 03:53:32 GMT  
		Size: 4.3 MB (4336107 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9dbf507f8efacd0094ccabf8ea83afe058a672463c0366caa0004ad1e527c718`  
		Last Modified: Tue, 17 Jul 2018 23:23:54 GMT  
		Size: 16.0 MB (15963861 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7bbc4db97cd33b299b774bd79446ee886409e709de11f424d2f57b764a2c6dd`  
		Last Modified: Tue, 17 Jul 2018 23:23:49 GMT  
		Size: 2.9 KB (2885 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dfb3042c568d8294b02851191b241040f5df8f3895f239ca4970dea8f2efd4ca`  
		Last Modified: Tue, 17 Jul 2018 23:27:06 GMT  
		Size: 10.5 MB (10496668 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4415a92f4f4942c26b132bae931550cf52b1b167bb4f32067e1ba8137b5bac5d`  
		Last Modified: Tue, 17 Jul 2018 23:27:00 GMT  
		Size: 184.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `telegraf:1.7.1` - linux; arm variant v7

```console
$ docker pull telegraf@sha256:74e4f129a97ef6cd44dfc96a563ce57e5d11a77a26596ed5f7634b9fc162b73b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **80.0 MB (79970075 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9a8b42d491b02bcba0c2bed418ec7b35e4d43ca86c255bcf010a30089ac7377f`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Tue, 17 Jul 2018 12:05:25 GMT
ADD file:77cbe27c4436cc4c9d81bee6c5ae0fee0c6d1708813d34abd2af2d3ebd7d96a5 in / 
# Tue, 17 Jul 2018 12:05:26 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 13:46:48 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 13:46:56 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 17 Jul 2018 18:17:48 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends iputils-ping snmp procps &&     rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 18:17:51 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Tue, 17 Jul 2018 18:18:25 GMT
ENV TELEGRAF_VERSION=1.7.1
# Tue, 17 Jul 2018 18:18:28 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     gpg --batch --verify telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     dpkg -i telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     rm -f telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb*
# Tue, 17 Jul 2018 18:18:29 GMT
EXPOSE 8092/udp 8094/tcp 8125/udp
# Tue, 17 Jul 2018 18:18:29 GMT
COPY file:7211de01f296351833389a1a1879d450e2cb727d7e2910d5807937f99983edf7 in /entrypoint.sh 
# Tue, 17 Jul 2018 18:18:30 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 17 Jul 2018 18:18:30 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:a92bc499a4699bc1d9bd6631daec00b7b440346221ce91af635e3460f7d4d70b`  
		Last Modified: Tue, 17 Jul 2018 12:17:32 GMT  
		Size: 42.1 MB (42060835 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d56e34dc5db45e25c590c9a353c3562d66546b06312f418f9aae4661c28ee94f`  
		Last Modified: Tue, 17 Jul 2018 14:10:12 GMT  
		Size: 9.4 MB (9440199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:948d2574fcb06c4081812a267179437a8d624eba8741a8fb5a6e3ef655c3dcff`  
		Last Modified: Tue, 17 Jul 2018 14:10:10 GMT  
		Size: 3.9 MB (3912954 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f31679ebf92c73a8165fe361aa1e7a34257d7f0ea0e946ee61ae7abf41b87662`  
		Last Modified: Tue, 17 Jul 2018 18:18:52 GMT  
		Size: 14.5 MB (14465506 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a85c52308ebb2bf8661189f76a8fc8e8e32923b333404664a445734b1d3f82a5`  
		Last Modified: Tue, 17 Jul 2018 18:18:46 GMT  
		Size: 2.9 KB (2912 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:846bfcfed18fb0b66afa33f3b71a35de8645f6e65e54683b65743a2644813661`  
		Last Modified: Tue, 17 Jul 2018 18:19:42 GMT  
		Size: 10.1 MB (10087484 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38b7bc14d370ba3c1475bd2bd26bc5d47a231b9af1ea85f3f7dcbceb8fa1c53e`  
		Last Modified: Tue, 17 Jul 2018 18:19:39 GMT  
		Size: 185.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `telegraf:1.7.1` - linux; arm64 variant v8

```console
$ docker pull telegraf@sha256:28bea3a5d73f4e6c713876a155ab8505e6922ad0f3f3190badd33ced95aaf887
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **82.0 MB (81956613 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:04a9f7d5149585895d65d344bb9391a064cdf402615c1edc2d74376e820d6682`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Wed, 27 Jun 2018 08:47:01 GMT
ADD file:0f69db95e9a06ee21c38014c8bc6c142be97ec4d5127ba83f1d0ef48806f7415 in / 
# Wed, 27 Jun 2018 08:47:02 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 10:46:58 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 10:47:23 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 27 Jun 2018 21:49:35 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends iputils-ping snmp procps &&     rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 21:49:41 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Fri, 06 Jul 2018 09:29:36 GMT
ENV TELEGRAF_VERSION=1.7.1
# Fri, 06 Jul 2018 09:29:44 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     gpg --batch --verify telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     dpkg -i telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     rm -f telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb*
# Fri, 06 Jul 2018 09:29:45 GMT
EXPOSE 8092/udp 8094/tcp 8125/udp
# Fri, 06 Jul 2018 09:29:46 GMT
COPY file:7211de01f296351833389a1a1879d450e2cb727d7e2910d5807937f99983edf7 in /entrypoint.sh 
# Fri, 06 Jul 2018 09:29:46 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 06 Jul 2018 09:29:47 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:6054c6775a4e4515d2365ad9337e322dd5c6ad0e0bc8e5bb6b0252461e71afc4`  
		Last Modified: Wed, 27 Jun 2018 08:57:38 GMT  
		Size: 43.1 MB (43115791 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d57f1ab872b53f8ac8eff946226a3ff9d5fb929656964b75dae06303e9c8ef4`  
		Last Modified: Wed, 27 Jun 2018 11:06:29 GMT  
		Size: 9.7 MB (9722190 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:662e63f6b578575fadc2ae00bf10794a2a45166c03105d940c919da9f78c1c43`  
		Last Modified: Wed, 27 Jun 2018 11:06:28 GMT  
		Size: 4.1 MB (4088526 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3567141197cf1e728adad538ee37d487a4a610343634de444ff8488e7a28c8fc`  
		Last Modified: Wed, 27 Jun 2018 21:51:34 GMT  
		Size: 15.2 MB (15162576 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7174a8f560e5530fb5f34f178eb873552011443e17a0d1061ff87aeb6fc3ae48`  
		Last Modified: Wed, 27 Jun 2018 21:51:28 GMT  
		Size: 2.9 KB (2887 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce70d70035b232e41caf889d630b88967ec9a41cb220590ee90f457776a3da73`  
		Last Modified: Fri, 06 Jul 2018 09:30:12 GMT  
		Size: 9.9 MB (9864460 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b17c8031d632576ca851b933fe0ecc79777417c23222ddc1971375257b1d07f`  
		Last Modified: Fri, 06 Jul 2018 09:30:08 GMT  
		Size: 183.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `telegraf:1.7.1-alpine`

```console
$ docker pull telegraf@sha256:9fbcf587b7f38a6061da0d52df4b5a203c1d836dd6db4257fbe196e1b9c3e9a5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `telegraf:1.7.1-alpine` - linux; amd64

```console
$ docker pull telegraf@sha256:63c05baf05c077ead5da813f8bdec73086bdc2e43aea59f51fa8001bca10a020
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.8 MB (15826871 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b3abbde3ce62b0a9b4c07dca5a217c520bea49a5109a4f209dee17f2fa93078c`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Fri, 06 Jul 2018 14:13:25 GMT
ADD file:eceadb32d029164d23db918d14c88df7186b6ee9645fa2f0c0a7e3e046a6a129 in / 
# Fri, 06 Jul 2018 14:13:25 GMT
CMD ["/bin/sh"]
# Fri, 06 Jul 2018 15:20:56 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf
# Tue, 17 Jul 2018 23:21:09 GMT
RUN apk add --no-cache iputils ca-certificates net-snmp-tools procps lm_sensors &&     update-ca-certificates
# Tue, 17 Jul 2018 23:23:04 GMT
ENV TELEGRAF_VERSION=1.7.1
# Tue, 17 Jul 2018 23:23:11 GMT
RUN set -ex &&     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf-${TELEGRAF_VERSION}-static_linux_amd64.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf-${TELEGRAF_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify telegraf-${TELEGRAF_VERSION}-static_linux_amd64.tar.gz.asc telegraf-${TELEGRAF_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src /etc/telegraf &&     tar -C /usr/src -xzf telegraf-${TELEGRAF_VERSION}-static_linux_amd64.tar.gz &&     mv /usr/src/telegraf*/telegraf.conf /etc/telegraf/ &&     chmod +x /usr/src/telegraf*/* &&     cp -a /usr/src/telegraf*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Tue, 17 Jul 2018 23:23:24 GMT
EXPOSE 8092/udp 8094/tcp 8125/udp
# Tue, 17 Jul 2018 23:23:25 GMT
COPY file:43e6828e001b57ab465cff8dfd3d30830289afe7ca5944b61641956bfe38cd1c in /entrypoint.sh 
# Tue, 17 Jul 2018 23:23:25 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 17 Jul 2018 23:23:26 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:a073c86ecf9e0f29180e80e9638d4c741970695851ea48247276c32c57e40282`  
		Last Modified: Fri, 06 Jul 2018 14:16:26 GMT  
		Size: 2.0 MB (2014658 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e3fc09cd3173af0ccd136f8de7a9f2352e1e8d0fa0c7df8233c7c0092ff4faa`  
		Last Modified: Fri, 06 Jul 2018 15:23:05 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42f39ed2e1344853a0bfec2e846d27e44d0d1cb77a6f78b122a5870c7da5cbe9`  
		Last Modified: Tue, 17 Jul 2018 23:24:34 GMT  
		Size: 3.3 MB (3346823 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83d69a0e587a624b30574e51ee2d070a1984630cd71d1c5cc556fa6f7d2a229d`  
		Last Modified: Tue, 17 Jul 2018 23:28:16 GMT  
		Size: 10.5 MB (10465056 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0694bad76779181ab014ad17a13cf76b0d435af14126d4ddc70c9d99e210a024`  
		Last Modified: Tue, 17 Jul 2018 23:28:10 GMT  
		Size: 181.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `telegraf:1.7-alpine`

```console
$ docker pull telegraf@sha256:9fbcf587b7f38a6061da0d52df4b5a203c1d836dd6db4257fbe196e1b9c3e9a5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `telegraf:1.7-alpine` - linux; amd64

```console
$ docker pull telegraf@sha256:63c05baf05c077ead5da813f8bdec73086bdc2e43aea59f51fa8001bca10a020
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.8 MB (15826871 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b3abbde3ce62b0a9b4c07dca5a217c520bea49a5109a4f209dee17f2fa93078c`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Fri, 06 Jul 2018 14:13:25 GMT
ADD file:eceadb32d029164d23db918d14c88df7186b6ee9645fa2f0c0a7e3e046a6a129 in / 
# Fri, 06 Jul 2018 14:13:25 GMT
CMD ["/bin/sh"]
# Fri, 06 Jul 2018 15:20:56 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf
# Tue, 17 Jul 2018 23:21:09 GMT
RUN apk add --no-cache iputils ca-certificates net-snmp-tools procps lm_sensors &&     update-ca-certificates
# Tue, 17 Jul 2018 23:23:04 GMT
ENV TELEGRAF_VERSION=1.7.1
# Tue, 17 Jul 2018 23:23:11 GMT
RUN set -ex &&     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf-${TELEGRAF_VERSION}-static_linux_amd64.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf-${TELEGRAF_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify telegraf-${TELEGRAF_VERSION}-static_linux_amd64.tar.gz.asc telegraf-${TELEGRAF_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src /etc/telegraf &&     tar -C /usr/src -xzf telegraf-${TELEGRAF_VERSION}-static_linux_amd64.tar.gz &&     mv /usr/src/telegraf*/telegraf.conf /etc/telegraf/ &&     chmod +x /usr/src/telegraf*/* &&     cp -a /usr/src/telegraf*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Tue, 17 Jul 2018 23:23:24 GMT
EXPOSE 8092/udp 8094/tcp 8125/udp
# Tue, 17 Jul 2018 23:23:25 GMT
COPY file:43e6828e001b57ab465cff8dfd3d30830289afe7ca5944b61641956bfe38cd1c in /entrypoint.sh 
# Tue, 17 Jul 2018 23:23:25 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 17 Jul 2018 23:23:26 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:a073c86ecf9e0f29180e80e9638d4c741970695851ea48247276c32c57e40282`  
		Last Modified: Fri, 06 Jul 2018 14:16:26 GMT  
		Size: 2.0 MB (2014658 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e3fc09cd3173af0ccd136f8de7a9f2352e1e8d0fa0c7df8233c7c0092ff4faa`  
		Last Modified: Fri, 06 Jul 2018 15:23:05 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42f39ed2e1344853a0bfec2e846d27e44d0d1cb77a6f78b122a5870c7da5cbe9`  
		Last Modified: Tue, 17 Jul 2018 23:24:34 GMT  
		Size: 3.3 MB (3346823 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83d69a0e587a624b30574e51ee2d070a1984630cd71d1c5cc556fa6f7d2a229d`  
		Last Modified: Tue, 17 Jul 2018 23:28:16 GMT  
		Size: 10.5 MB (10465056 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0694bad76779181ab014ad17a13cf76b0d435af14126d4ddc70c9d99e210a024`  
		Last Modified: Tue, 17 Jul 2018 23:28:10 GMT  
		Size: 181.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `telegraf:alpine`

```console
$ docker pull telegraf@sha256:9fbcf587b7f38a6061da0d52df4b5a203c1d836dd6db4257fbe196e1b9c3e9a5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `telegraf:alpine` - linux; amd64

```console
$ docker pull telegraf@sha256:63c05baf05c077ead5da813f8bdec73086bdc2e43aea59f51fa8001bca10a020
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.8 MB (15826871 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b3abbde3ce62b0a9b4c07dca5a217c520bea49a5109a4f209dee17f2fa93078c`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Fri, 06 Jul 2018 14:13:25 GMT
ADD file:eceadb32d029164d23db918d14c88df7186b6ee9645fa2f0c0a7e3e046a6a129 in / 
# Fri, 06 Jul 2018 14:13:25 GMT
CMD ["/bin/sh"]
# Fri, 06 Jul 2018 15:20:56 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf
# Tue, 17 Jul 2018 23:21:09 GMT
RUN apk add --no-cache iputils ca-certificates net-snmp-tools procps lm_sensors &&     update-ca-certificates
# Tue, 17 Jul 2018 23:23:04 GMT
ENV TELEGRAF_VERSION=1.7.1
# Tue, 17 Jul 2018 23:23:11 GMT
RUN set -ex &&     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf-${TELEGRAF_VERSION}-static_linux_amd64.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf-${TELEGRAF_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify telegraf-${TELEGRAF_VERSION}-static_linux_amd64.tar.gz.asc telegraf-${TELEGRAF_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src /etc/telegraf &&     tar -C /usr/src -xzf telegraf-${TELEGRAF_VERSION}-static_linux_amd64.tar.gz &&     mv /usr/src/telegraf*/telegraf.conf /etc/telegraf/ &&     chmod +x /usr/src/telegraf*/* &&     cp -a /usr/src/telegraf*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Tue, 17 Jul 2018 23:23:24 GMT
EXPOSE 8092/udp 8094/tcp 8125/udp
# Tue, 17 Jul 2018 23:23:25 GMT
COPY file:43e6828e001b57ab465cff8dfd3d30830289afe7ca5944b61641956bfe38cd1c in /entrypoint.sh 
# Tue, 17 Jul 2018 23:23:25 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 17 Jul 2018 23:23:26 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:a073c86ecf9e0f29180e80e9638d4c741970695851ea48247276c32c57e40282`  
		Last Modified: Fri, 06 Jul 2018 14:16:26 GMT  
		Size: 2.0 MB (2014658 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e3fc09cd3173af0ccd136f8de7a9f2352e1e8d0fa0c7df8233c7c0092ff4faa`  
		Last Modified: Fri, 06 Jul 2018 15:23:05 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42f39ed2e1344853a0bfec2e846d27e44d0d1cb77a6f78b122a5870c7da5cbe9`  
		Last Modified: Tue, 17 Jul 2018 23:24:34 GMT  
		Size: 3.3 MB (3346823 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83d69a0e587a624b30574e51ee2d070a1984630cd71d1c5cc556fa6f7d2a229d`  
		Last Modified: Tue, 17 Jul 2018 23:28:16 GMT  
		Size: 10.5 MB (10465056 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0694bad76779181ab014ad17a13cf76b0d435af14126d4ddc70c9d99e210a024`  
		Last Modified: Tue, 17 Jul 2018 23:28:10 GMT  
		Size: 181.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `telegraf:latest`

```console
$ docker pull telegraf@sha256:93e85deb450edd1e7c4b8e827968b63321f9aa7a8159b3f0f70fb411ef1ea849
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `telegraf:latest` - linux; amd64

```console
$ docker pull telegraf@sha256:16e790e734cb4df0a469cf121f3364091837fd4e60990d5bed5f8b221585bb74
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **86.8 MB (86849917 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:225b88e337aa14511a021cf00a593fc9f0c85ed7084b8bae602a6511080c94bc`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Tue, 17 Jul 2018 00:27:24 GMT
ADD file:370028dca6e8ca9ed228549d52231cf8139515cc3a14c00aaed75a60b679775f in / 
# Tue, 17 Jul 2018 00:27:24 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 03:12:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 03:13:02 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 17 Jul 2018 23:20:30 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends iputils-ping snmp procps lm-sensors &&     rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 23:20:43 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Tue, 17 Jul 2018 23:22:43 GMT
ENV TELEGRAF_VERSION=1.7.1
# Tue, 17 Jul 2018 23:22:46 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     gpg --batch --verify telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     dpkg -i telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     rm -f telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb*
# Tue, 17 Jul 2018 23:22:46 GMT
EXPOSE 8092/udp 8094/tcp 8125/udp
# Tue, 17 Jul 2018 23:22:46 GMT
COPY file:7211de01f296351833389a1a1879d450e2cb727d7e2910d5807937f99983edf7 in /entrypoint.sh 
# Tue, 17 Jul 2018 23:22:47 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 17 Jul 2018 23:22:47 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:55cbf04beb7001d222c71bfdeae780bda19d5cb37b8dbd65ff0d3e6a0b9b74e6`  
		Last Modified: Tue, 17 Jul 2018 00:42:31 GMT  
		Size: 45.3 MB (45310044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1607093a898cc241de8712e4361dcd907898fff35b945adca42db3963f3827b3`  
		Last Modified: Tue, 17 Jul 2018 03:53:34 GMT  
		Size: 10.7 MB (10740168 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a8ea045c9261c180a34df19cfc9bb3c3f28f29b279bf964ee801536e8244f2f`  
		Last Modified: Tue, 17 Jul 2018 03:53:32 GMT  
		Size: 4.3 MB (4336107 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9dbf507f8efacd0094ccabf8ea83afe058a672463c0366caa0004ad1e527c718`  
		Last Modified: Tue, 17 Jul 2018 23:23:54 GMT  
		Size: 16.0 MB (15963861 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7bbc4db97cd33b299b774bd79446ee886409e709de11f424d2f57b764a2c6dd`  
		Last Modified: Tue, 17 Jul 2018 23:23:49 GMT  
		Size: 2.9 KB (2885 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dfb3042c568d8294b02851191b241040f5df8f3895f239ca4970dea8f2efd4ca`  
		Last Modified: Tue, 17 Jul 2018 23:27:06 GMT  
		Size: 10.5 MB (10496668 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4415a92f4f4942c26b132bae931550cf52b1b167bb4f32067e1ba8137b5bac5d`  
		Last Modified: Tue, 17 Jul 2018 23:27:00 GMT  
		Size: 184.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `telegraf:latest` - linux; arm variant v7

```console
$ docker pull telegraf@sha256:74e4f129a97ef6cd44dfc96a563ce57e5d11a77a26596ed5f7634b9fc162b73b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **80.0 MB (79970075 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9a8b42d491b02bcba0c2bed418ec7b35e4d43ca86c255bcf010a30089ac7377f`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Tue, 17 Jul 2018 12:05:25 GMT
ADD file:77cbe27c4436cc4c9d81bee6c5ae0fee0c6d1708813d34abd2af2d3ebd7d96a5 in / 
# Tue, 17 Jul 2018 12:05:26 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 13:46:48 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 13:46:56 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 17 Jul 2018 18:17:48 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends iputils-ping snmp procps &&     rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 18:17:51 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Tue, 17 Jul 2018 18:18:25 GMT
ENV TELEGRAF_VERSION=1.7.1
# Tue, 17 Jul 2018 18:18:28 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     gpg --batch --verify telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     dpkg -i telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     rm -f telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb*
# Tue, 17 Jul 2018 18:18:29 GMT
EXPOSE 8092/udp 8094/tcp 8125/udp
# Tue, 17 Jul 2018 18:18:29 GMT
COPY file:7211de01f296351833389a1a1879d450e2cb727d7e2910d5807937f99983edf7 in /entrypoint.sh 
# Tue, 17 Jul 2018 18:18:30 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 17 Jul 2018 18:18:30 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:a92bc499a4699bc1d9bd6631daec00b7b440346221ce91af635e3460f7d4d70b`  
		Last Modified: Tue, 17 Jul 2018 12:17:32 GMT  
		Size: 42.1 MB (42060835 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d56e34dc5db45e25c590c9a353c3562d66546b06312f418f9aae4661c28ee94f`  
		Last Modified: Tue, 17 Jul 2018 14:10:12 GMT  
		Size: 9.4 MB (9440199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:948d2574fcb06c4081812a267179437a8d624eba8741a8fb5a6e3ef655c3dcff`  
		Last Modified: Tue, 17 Jul 2018 14:10:10 GMT  
		Size: 3.9 MB (3912954 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f31679ebf92c73a8165fe361aa1e7a34257d7f0ea0e946ee61ae7abf41b87662`  
		Last Modified: Tue, 17 Jul 2018 18:18:52 GMT  
		Size: 14.5 MB (14465506 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a85c52308ebb2bf8661189f76a8fc8e8e32923b333404664a445734b1d3f82a5`  
		Last Modified: Tue, 17 Jul 2018 18:18:46 GMT  
		Size: 2.9 KB (2912 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:846bfcfed18fb0b66afa33f3b71a35de8645f6e65e54683b65743a2644813661`  
		Last Modified: Tue, 17 Jul 2018 18:19:42 GMT  
		Size: 10.1 MB (10087484 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38b7bc14d370ba3c1475bd2bd26bc5d47a231b9af1ea85f3f7dcbceb8fa1c53e`  
		Last Modified: Tue, 17 Jul 2018 18:19:39 GMT  
		Size: 185.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `telegraf:latest` - linux; arm64 variant v8

```console
$ docker pull telegraf@sha256:28bea3a5d73f4e6c713876a155ab8505e6922ad0f3f3190badd33ced95aaf887
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **82.0 MB (81956613 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:04a9f7d5149585895d65d344bb9391a064cdf402615c1edc2d74376e820d6682`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Wed, 27 Jun 2018 08:47:01 GMT
ADD file:0f69db95e9a06ee21c38014c8bc6c142be97ec4d5127ba83f1d0ef48806f7415 in / 
# Wed, 27 Jun 2018 08:47:02 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 10:46:58 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 10:47:23 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 27 Jun 2018 21:49:35 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends iputils-ping snmp procps &&     rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 21:49:41 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Fri, 06 Jul 2018 09:29:36 GMT
ENV TELEGRAF_VERSION=1.7.1
# Fri, 06 Jul 2018 09:29:44 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     gpg --batch --verify telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     dpkg -i telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     rm -f telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb*
# Fri, 06 Jul 2018 09:29:45 GMT
EXPOSE 8092/udp 8094/tcp 8125/udp
# Fri, 06 Jul 2018 09:29:46 GMT
COPY file:7211de01f296351833389a1a1879d450e2cb727d7e2910d5807937f99983edf7 in /entrypoint.sh 
# Fri, 06 Jul 2018 09:29:46 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 06 Jul 2018 09:29:47 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:6054c6775a4e4515d2365ad9337e322dd5c6ad0e0bc8e5bb6b0252461e71afc4`  
		Last Modified: Wed, 27 Jun 2018 08:57:38 GMT  
		Size: 43.1 MB (43115791 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d57f1ab872b53f8ac8eff946226a3ff9d5fb929656964b75dae06303e9c8ef4`  
		Last Modified: Wed, 27 Jun 2018 11:06:29 GMT  
		Size: 9.7 MB (9722190 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:662e63f6b578575fadc2ae00bf10794a2a45166c03105d940c919da9f78c1c43`  
		Last Modified: Wed, 27 Jun 2018 11:06:28 GMT  
		Size: 4.1 MB (4088526 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3567141197cf1e728adad538ee37d487a4a610343634de444ff8488e7a28c8fc`  
		Last Modified: Wed, 27 Jun 2018 21:51:34 GMT  
		Size: 15.2 MB (15162576 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7174a8f560e5530fb5f34f178eb873552011443e17a0d1061ff87aeb6fc3ae48`  
		Last Modified: Wed, 27 Jun 2018 21:51:28 GMT  
		Size: 2.9 KB (2887 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce70d70035b232e41caf889d630b88967ec9a41cb220590ee90f457776a3da73`  
		Last Modified: Fri, 06 Jul 2018 09:30:12 GMT  
		Size: 9.9 MB (9864460 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b17c8031d632576ca851b933fe0ecc79777417c23222ddc1971375257b1d07f`  
		Last Modified: Fri, 06 Jul 2018 09:30:08 GMT  
		Size: 183.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
