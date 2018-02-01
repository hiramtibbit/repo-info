<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `influxdb`

-	[`influxdb:1.3`](#influxdb13)
-	[`influxdb:1.3.9`](#influxdb139)
-	[`influxdb:1.3.9-alpine`](#influxdb139-alpine)
-	[`influxdb:1.3.9-data`](#influxdb139-data)
-	[`influxdb:1.3.9-data-alpine`](#influxdb139-data-alpine)
-	[`influxdb:1.3.9-meta`](#influxdb139-meta)
-	[`influxdb:1.3.9-meta-alpine`](#influxdb139-meta-alpine)
-	[`influxdb:1.3-alpine`](#influxdb13-alpine)
-	[`influxdb:1.3-data`](#influxdb13-data)
-	[`influxdb:1.3-data-alpine`](#influxdb13-data-alpine)
-	[`influxdb:1.3-meta`](#influxdb13-meta)
-	[`influxdb:1.3-meta-alpine`](#influxdb13-meta-alpine)
-	[`influxdb:1.4`](#influxdb14)
-	[`influxdb:1.4.3`](#influxdb143)
-	[`influxdb:1.4.3-alpine`](#influxdb143-alpine)
-	[`influxdb:1.4-alpine`](#influxdb14-alpine)
-	[`influxdb:alpine`](#influxdbalpine)
-	[`influxdb:data`](#influxdbdata)
-	[`influxdb:data-alpine`](#influxdbdata-alpine)
-	[`influxdb:latest`](#influxdblatest)
-	[`influxdb:meta`](#influxdbmeta)
-	[`influxdb:meta-alpine`](#influxdbmeta-alpine)

## `influxdb:1.3`

```console
$ docker pull influxdb@sha256:68832532f9370365531d0e7a9cb9145cd62cf736b00809abb7185b0d69340ae7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `influxdb:1.3` - linux; amd64

```console
$ docker pull influxdb@sha256:6d9f6282b816b62c2d3c8a5e8d9ca778d179c28ac284913a39304e6dd0784b00
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **79.7 MB (79710735 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bc8fd0bb03662e04f10cb58ec3e87c55d8a91cb696892c83ee627340680a24f8`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Tue, 12 Dec 2017 01:44:20 GMT
ADD file:eb2519421c9794ccc99d483c07f59ba305531bc9b4dc294e74d2ddb7de69e52a in / 
# Tue, 12 Dec 2017 01:44:21 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 07:54:08 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 07:54:15 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 12 Dec 2017 12:45:00 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Tue, 23 Jan 2018 00:12:04 GMT
ENV INFLUXDB_VERSION=1.3.9
# Tue, 23 Jan 2018 00:12:08 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget -q https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_${ARCH}.deb.asc &&     wget -q https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     gpg --batch --verify influxdb_${INFLUXDB_VERSION}_${ARCH}.deb.asc influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     dpkg -i influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     rm -f influxdb_${INFLUXDB_VERSION}_${ARCH}.deb*
# Tue, 23 Jan 2018 00:12:15 GMT
COPY file:3ee2bc0321c2aa2451df7a508649c3a54f0eebc1ef9b8a24967c58105b4d3160 in /etc/influxdb/influxdb.conf 
# Tue, 23 Jan 2018 00:12:16 GMT
EXPOSE 8086/tcp
# Tue, 23 Jan 2018 00:12:16 GMT
VOLUME [/var/lib/influxdb]
# Tue, 23 Jan 2018 00:12:26 GMT
COPY file:098affa3d1b749dacb263ddacfd86a5de1f598d6ba1f7c789ce482c66ee9c80b in /entrypoint.sh 
# Tue, 23 Jan 2018 00:12:27 GMT
COPY file:8c68fc25e98c2a2f524d6b945934ef5ec3a3d95e8ac816c7f6e6d2783913da7a in /init-influxdb.sh 
# Tue, 23 Jan 2018 00:12:27 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 23 Jan 2018 00:12:27 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:723254a2c089166d4bcfa917be0181ddbecd94971ebfe85792d96e7e29be9c68`  
		Last Modified: Tue, 12 Dec 2017 01:53:22 GMT  
		Size: 45.1 MB (45121631 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:abe15a44e12f84b4aac20d4f2b450ec8638cc0b176c9130d1802cb4fed17d953`  
		Last Modified: Tue, 12 Dec 2017 08:03:48 GMT  
		Size: 11.1 MB (11107352 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:409a28e3cc3de08700c9d37c809a6d3aa43dc076402943919f4a78c286c60a0b`  
		Last Modified: Tue, 12 Dec 2017 08:03:48 GMT  
		Size: 4.3 MB (4335420 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:920d0ed5293ba6eddd661638fac496fab6c4af46ddb6a48f67a891a791986d6e`  
		Last Modified: Tue, 12 Dec 2017 12:46:04 GMT  
		Size: 2.9 KB (2895 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23f4ef171d7d2fcf06c6ae322882e9320c15bda624efdfcab6a3456891834035`  
		Last Modified: Tue, 23 Jan 2018 00:17:40 GMT  
		Size: 19.1 MB (19141837 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:303fdfcfaac149b33e67c066d528ca64d14ca2794ef39710802d5bcf3c11ad7c`  
		Last Modified: Tue, 23 Jan 2018 00:17:36 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6ea3ea8dd067ad889300240c4d88d7646961003c676333e456f84439c04c8e5`  
		Last Modified: Tue, 23 Jan 2018 00:17:36 GMT  
		Size: 210.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8b9a3fa54e5716ebfaf99b2b45f83116f99444bebdcc8171f6ba1307130fc80`  
		Last Modified: Tue, 23 Jan 2018 00:17:36 GMT  
		Size: 1.2 KB (1166 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `influxdb:1.3` - linux; arm variant v7

```console
$ docker pull influxdb@sha256:d924ce1abc9d697d518d45d069209376a636a0741b40587cbf72d3cb599762ef
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **73.8 MB (73774524 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a14ced55389a1c7dd6cb1f78050dfa4d8171d509f3a4ac4579134dd0b7b4dd65`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Tue, 12 Dec 2017 13:32:59 GMT
ADD file:d49e67cdc6ae27f43c5c002d96bff764fd43188dd7e8036f5d5f8c44eb12dcad in / 
# Tue, 12 Dec 2017 13:32:59 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 14:21:12 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 14:21:22 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 12 Dec 2017 16:47:06 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Tue, 23 Jan 2018 10:12:30 GMT
ENV INFLUXDB_VERSION=1.3.9
# Tue, 23 Jan 2018 10:12:34 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget -q https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_${ARCH}.deb.asc &&     wget -q https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     gpg --batch --verify influxdb_${INFLUXDB_VERSION}_${ARCH}.deb.asc influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     dpkg -i influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     rm -f influxdb_${INFLUXDB_VERSION}_${ARCH}.deb*
# Tue, 23 Jan 2018 10:12:34 GMT
COPY file:3ee2bc0321c2aa2451df7a508649c3a54f0eebc1ef9b8a24967c58105b4d3160 in /etc/influxdb/influxdb.conf 
# Tue, 23 Jan 2018 10:12:34 GMT
EXPOSE 8086/tcp
# Tue, 23 Jan 2018 10:12:35 GMT
VOLUME [/var/lib/influxdb]
# Tue, 23 Jan 2018 10:12:35 GMT
COPY file:098affa3d1b749dacb263ddacfd86a5de1f598d6ba1f7c789ce482c66ee9c80b in /entrypoint.sh 
# Tue, 23 Jan 2018 10:12:35 GMT
COPY file:8c68fc25e98c2a2f524d6b945934ef5ec3a3d95e8ac816c7f6e6d2783913da7a in /init-influxdb.sh 
# Tue, 23 Jan 2018 10:12:35 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 23 Jan 2018 10:12:36 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:0e10ef01c84000f6f5865b480436e689e2d437a4a8b63b01d5ce85532872b636`  
		Last Modified: Tue, 12 Dec 2017 13:44:34 GMT  
		Size: 41.8 MB (41849695 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ed40614ea2a08dbc6237155db97d58d7051efa214bab1fd556c4414db68cb7c`  
		Last Modified: Tue, 12 Dec 2017 14:34:18 GMT  
		Size: 9.8 MB (9824565 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad0ea8727ac09b97803f430b101f4c67cbf9c7bc372a44c190f5a9719f5fb1e9`  
		Last Modified: Tue, 12 Dec 2017 14:34:16 GMT  
		Size: 3.9 MB (3912457 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2865f1bdf683cc300fe667d3fce8d278fa5bad277629b599dc4a9ec7c1ee3ba`  
		Last Modified: Tue, 12 Dec 2017 16:48:05 GMT  
		Size: 2.9 KB (2915 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79f3f48e7c972b1d55941d80ed104619584dbc6e94d339e9b4c03fd6a1fd3794`  
		Last Modified: Tue, 23 Jan 2018 10:13:00 GMT  
		Size: 18.2 MB (18183294 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d4c213e8973262f156e95cfc811fc4729183eff6b9af8f6b8a81c64121f9521`  
		Last Modified: Tue, 23 Jan 2018 10:12:54 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4cdb6af4c5c3efce6a8cacf17eb6ca5784990b970ba4ed26162a1dc8dc3bc34b`  
		Last Modified: Tue, 23 Jan 2018 10:12:54 GMT  
		Size: 208.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90de4b555ec1f51ab483170ec0e5b994e58cf3e0362208eaf46e8341236d9f8b`  
		Last Modified: Tue, 23 Jan 2018 10:12:54 GMT  
		Size: 1.2 KB (1167 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `influxdb:1.3` - linux; arm64 variant v8

```console
$ docker pull influxdb@sha256:78a8a5577b4e0adcdd7d399a24c3627b2e863af59a37bfaca66fb3bdb35909f3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **74.9 MB (74937943 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0c192497617f9b6aa0063359d2c9a33d928147a7a45deb71d4512287e9e2f83e`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Tue, 12 Dec 2017 18:33:14 GMT
ADD file:ae07a2e0bd59c986cf9cec3d7ce9a3db8f8034bac7b69938557e472980c70cdc in / 
# Tue, 12 Dec 2017 18:33:14 GMT
CMD ["bash"]
# Fri, 15 Dec 2017 16:14:25 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 15 Dec 2017 16:14:42 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 15 Dec 2017 21:27:31 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Tue, 23 Jan 2018 16:43:38 GMT
ENV INFLUXDB_VERSION=1.3.9
# Tue, 23 Jan 2018 16:43:46 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget -q https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_${ARCH}.deb.asc &&     wget -q https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     gpg --batch --verify influxdb_${INFLUXDB_VERSION}_${ARCH}.deb.asc influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     dpkg -i influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     rm -f influxdb_${INFLUXDB_VERSION}_${ARCH}.deb*
# Tue, 23 Jan 2018 16:43:46 GMT
COPY file:3ee2bc0321c2aa2451df7a508649c3a54f0eebc1ef9b8a24967c58105b4d3160 in /etc/influxdb/influxdb.conf 
# Tue, 23 Jan 2018 16:43:47 GMT
EXPOSE 8086/tcp
# Tue, 23 Jan 2018 16:43:47 GMT
VOLUME [/var/lib/influxdb]
# Tue, 23 Jan 2018 16:43:48 GMT
COPY file:098affa3d1b749dacb263ddacfd86a5de1f598d6ba1f7c789ce482c66ee9c80b in /entrypoint.sh 
# Tue, 23 Jan 2018 16:43:49 GMT
COPY file:8c68fc25e98c2a2f524d6b945934ef5ec3a3d95e8ac816c7f6e6d2783913da7a in /init-influxdb.sh 
# Tue, 23 Jan 2018 16:43:49 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 23 Jan 2018 16:43:50 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:91ea0aed359111bf5beb30e4bebd50fac25bc40a69e1bb3bf0f8e3c6dcd5fa7f`  
		Last Modified: Tue, 12 Dec 2017 18:47:08 GMT  
		Size: 42.9 MB (42912813 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc2797c29bc6ab5e2ad91b16dea60d7b6f0d4fffb5261f539870b43a7ffca40e`  
		Last Modified: Fri, 15 Dec 2017 17:19:24 GMT  
		Size: 10.1 MB (10066285 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8edcd3d8093caa7ca86f40f4413c1ae7ca97ae1480289f06339fff174a2a7d6a`  
		Last Modified: Fri, 15 Dec 2017 17:19:21 GMT  
		Size: 4.1 MB (4087788 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca6aeaa516d034de5a99b1352580c534769cbeb2498f5c6c899ecd9277bd7356`  
		Last Modified: Fri, 15 Dec 2017 21:28:18 GMT  
		Size: 2.9 KB (2890 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ffe19341cf077730f26ef8f5c8c01e8b5ca047bb5b5c2d98ca51ab7f27d6dcd2`  
		Last Modified: Tue, 23 Jan 2018 16:44:24 GMT  
		Size: 17.9 MB (17866568 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7940a357d136866af4208c9a4b24d6f08c940c6dd0d5cf0bedf253449c0a7055`  
		Last Modified: Tue, 23 Jan 2018 16:44:18 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4af02309bf008edfac2f3271d3868eb4a4bbd323f2884ae8cbf8a3ff34e47dab`  
		Last Modified: Tue, 23 Jan 2018 16:44:17 GMT  
		Size: 208.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b55acc2d7dd0f6b4c3a4625570703d2a102f7a3d9a6c9a75348988d7b60c188`  
		Last Modified: Tue, 23 Jan 2018 16:44:18 GMT  
		Size: 1.2 KB (1168 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `influxdb:1.3.9`

```console
$ docker pull influxdb@sha256:68832532f9370365531d0e7a9cb9145cd62cf736b00809abb7185b0d69340ae7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `influxdb:1.3.9` - linux; amd64

```console
$ docker pull influxdb@sha256:6d9f6282b816b62c2d3c8a5e8d9ca778d179c28ac284913a39304e6dd0784b00
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **79.7 MB (79710735 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bc8fd0bb03662e04f10cb58ec3e87c55d8a91cb696892c83ee627340680a24f8`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Tue, 12 Dec 2017 01:44:20 GMT
ADD file:eb2519421c9794ccc99d483c07f59ba305531bc9b4dc294e74d2ddb7de69e52a in / 
# Tue, 12 Dec 2017 01:44:21 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 07:54:08 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 07:54:15 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 12 Dec 2017 12:45:00 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Tue, 23 Jan 2018 00:12:04 GMT
ENV INFLUXDB_VERSION=1.3.9
# Tue, 23 Jan 2018 00:12:08 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget -q https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_${ARCH}.deb.asc &&     wget -q https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     gpg --batch --verify influxdb_${INFLUXDB_VERSION}_${ARCH}.deb.asc influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     dpkg -i influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     rm -f influxdb_${INFLUXDB_VERSION}_${ARCH}.deb*
# Tue, 23 Jan 2018 00:12:15 GMT
COPY file:3ee2bc0321c2aa2451df7a508649c3a54f0eebc1ef9b8a24967c58105b4d3160 in /etc/influxdb/influxdb.conf 
# Tue, 23 Jan 2018 00:12:16 GMT
EXPOSE 8086/tcp
# Tue, 23 Jan 2018 00:12:16 GMT
VOLUME [/var/lib/influxdb]
# Tue, 23 Jan 2018 00:12:26 GMT
COPY file:098affa3d1b749dacb263ddacfd86a5de1f598d6ba1f7c789ce482c66ee9c80b in /entrypoint.sh 
# Tue, 23 Jan 2018 00:12:27 GMT
COPY file:8c68fc25e98c2a2f524d6b945934ef5ec3a3d95e8ac816c7f6e6d2783913da7a in /init-influxdb.sh 
# Tue, 23 Jan 2018 00:12:27 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 23 Jan 2018 00:12:27 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:723254a2c089166d4bcfa917be0181ddbecd94971ebfe85792d96e7e29be9c68`  
		Last Modified: Tue, 12 Dec 2017 01:53:22 GMT  
		Size: 45.1 MB (45121631 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:abe15a44e12f84b4aac20d4f2b450ec8638cc0b176c9130d1802cb4fed17d953`  
		Last Modified: Tue, 12 Dec 2017 08:03:48 GMT  
		Size: 11.1 MB (11107352 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:409a28e3cc3de08700c9d37c809a6d3aa43dc076402943919f4a78c286c60a0b`  
		Last Modified: Tue, 12 Dec 2017 08:03:48 GMT  
		Size: 4.3 MB (4335420 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:920d0ed5293ba6eddd661638fac496fab6c4af46ddb6a48f67a891a791986d6e`  
		Last Modified: Tue, 12 Dec 2017 12:46:04 GMT  
		Size: 2.9 KB (2895 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23f4ef171d7d2fcf06c6ae322882e9320c15bda624efdfcab6a3456891834035`  
		Last Modified: Tue, 23 Jan 2018 00:17:40 GMT  
		Size: 19.1 MB (19141837 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:303fdfcfaac149b33e67c066d528ca64d14ca2794ef39710802d5bcf3c11ad7c`  
		Last Modified: Tue, 23 Jan 2018 00:17:36 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6ea3ea8dd067ad889300240c4d88d7646961003c676333e456f84439c04c8e5`  
		Last Modified: Tue, 23 Jan 2018 00:17:36 GMT  
		Size: 210.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8b9a3fa54e5716ebfaf99b2b45f83116f99444bebdcc8171f6ba1307130fc80`  
		Last Modified: Tue, 23 Jan 2018 00:17:36 GMT  
		Size: 1.2 KB (1166 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `influxdb:1.3.9` - linux; arm variant v7

```console
$ docker pull influxdb@sha256:d924ce1abc9d697d518d45d069209376a636a0741b40587cbf72d3cb599762ef
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **73.8 MB (73774524 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a14ced55389a1c7dd6cb1f78050dfa4d8171d509f3a4ac4579134dd0b7b4dd65`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Tue, 12 Dec 2017 13:32:59 GMT
ADD file:d49e67cdc6ae27f43c5c002d96bff764fd43188dd7e8036f5d5f8c44eb12dcad in / 
# Tue, 12 Dec 2017 13:32:59 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 14:21:12 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 14:21:22 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 12 Dec 2017 16:47:06 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Tue, 23 Jan 2018 10:12:30 GMT
ENV INFLUXDB_VERSION=1.3.9
# Tue, 23 Jan 2018 10:12:34 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget -q https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_${ARCH}.deb.asc &&     wget -q https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     gpg --batch --verify influxdb_${INFLUXDB_VERSION}_${ARCH}.deb.asc influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     dpkg -i influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     rm -f influxdb_${INFLUXDB_VERSION}_${ARCH}.deb*
# Tue, 23 Jan 2018 10:12:34 GMT
COPY file:3ee2bc0321c2aa2451df7a508649c3a54f0eebc1ef9b8a24967c58105b4d3160 in /etc/influxdb/influxdb.conf 
# Tue, 23 Jan 2018 10:12:34 GMT
EXPOSE 8086/tcp
# Tue, 23 Jan 2018 10:12:35 GMT
VOLUME [/var/lib/influxdb]
# Tue, 23 Jan 2018 10:12:35 GMT
COPY file:098affa3d1b749dacb263ddacfd86a5de1f598d6ba1f7c789ce482c66ee9c80b in /entrypoint.sh 
# Tue, 23 Jan 2018 10:12:35 GMT
COPY file:8c68fc25e98c2a2f524d6b945934ef5ec3a3d95e8ac816c7f6e6d2783913da7a in /init-influxdb.sh 
# Tue, 23 Jan 2018 10:12:35 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 23 Jan 2018 10:12:36 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:0e10ef01c84000f6f5865b480436e689e2d437a4a8b63b01d5ce85532872b636`  
		Last Modified: Tue, 12 Dec 2017 13:44:34 GMT  
		Size: 41.8 MB (41849695 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ed40614ea2a08dbc6237155db97d58d7051efa214bab1fd556c4414db68cb7c`  
		Last Modified: Tue, 12 Dec 2017 14:34:18 GMT  
		Size: 9.8 MB (9824565 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad0ea8727ac09b97803f430b101f4c67cbf9c7bc372a44c190f5a9719f5fb1e9`  
		Last Modified: Tue, 12 Dec 2017 14:34:16 GMT  
		Size: 3.9 MB (3912457 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2865f1bdf683cc300fe667d3fce8d278fa5bad277629b599dc4a9ec7c1ee3ba`  
		Last Modified: Tue, 12 Dec 2017 16:48:05 GMT  
		Size: 2.9 KB (2915 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79f3f48e7c972b1d55941d80ed104619584dbc6e94d339e9b4c03fd6a1fd3794`  
		Last Modified: Tue, 23 Jan 2018 10:13:00 GMT  
		Size: 18.2 MB (18183294 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d4c213e8973262f156e95cfc811fc4729183eff6b9af8f6b8a81c64121f9521`  
		Last Modified: Tue, 23 Jan 2018 10:12:54 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4cdb6af4c5c3efce6a8cacf17eb6ca5784990b970ba4ed26162a1dc8dc3bc34b`  
		Last Modified: Tue, 23 Jan 2018 10:12:54 GMT  
		Size: 208.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90de4b555ec1f51ab483170ec0e5b994e58cf3e0362208eaf46e8341236d9f8b`  
		Last Modified: Tue, 23 Jan 2018 10:12:54 GMT  
		Size: 1.2 KB (1167 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `influxdb:1.3.9` - linux; arm64 variant v8

```console
$ docker pull influxdb@sha256:78a8a5577b4e0adcdd7d399a24c3627b2e863af59a37bfaca66fb3bdb35909f3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **74.9 MB (74937943 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0c192497617f9b6aa0063359d2c9a33d928147a7a45deb71d4512287e9e2f83e`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Tue, 12 Dec 2017 18:33:14 GMT
ADD file:ae07a2e0bd59c986cf9cec3d7ce9a3db8f8034bac7b69938557e472980c70cdc in / 
# Tue, 12 Dec 2017 18:33:14 GMT
CMD ["bash"]
# Fri, 15 Dec 2017 16:14:25 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 15 Dec 2017 16:14:42 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 15 Dec 2017 21:27:31 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Tue, 23 Jan 2018 16:43:38 GMT
ENV INFLUXDB_VERSION=1.3.9
# Tue, 23 Jan 2018 16:43:46 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget -q https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_${ARCH}.deb.asc &&     wget -q https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     gpg --batch --verify influxdb_${INFLUXDB_VERSION}_${ARCH}.deb.asc influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     dpkg -i influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     rm -f influxdb_${INFLUXDB_VERSION}_${ARCH}.deb*
# Tue, 23 Jan 2018 16:43:46 GMT
COPY file:3ee2bc0321c2aa2451df7a508649c3a54f0eebc1ef9b8a24967c58105b4d3160 in /etc/influxdb/influxdb.conf 
# Tue, 23 Jan 2018 16:43:47 GMT
EXPOSE 8086/tcp
# Tue, 23 Jan 2018 16:43:47 GMT
VOLUME [/var/lib/influxdb]
# Tue, 23 Jan 2018 16:43:48 GMT
COPY file:098affa3d1b749dacb263ddacfd86a5de1f598d6ba1f7c789ce482c66ee9c80b in /entrypoint.sh 
# Tue, 23 Jan 2018 16:43:49 GMT
COPY file:8c68fc25e98c2a2f524d6b945934ef5ec3a3d95e8ac816c7f6e6d2783913da7a in /init-influxdb.sh 
# Tue, 23 Jan 2018 16:43:49 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 23 Jan 2018 16:43:50 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:91ea0aed359111bf5beb30e4bebd50fac25bc40a69e1bb3bf0f8e3c6dcd5fa7f`  
		Last Modified: Tue, 12 Dec 2017 18:47:08 GMT  
		Size: 42.9 MB (42912813 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc2797c29bc6ab5e2ad91b16dea60d7b6f0d4fffb5261f539870b43a7ffca40e`  
		Last Modified: Fri, 15 Dec 2017 17:19:24 GMT  
		Size: 10.1 MB (10066285 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8edcd3d8093caa7ca86f40f4413c1ae7ca97ae1480289f06339fff174a2a7d6a`  
		Last Modified: Fri, 15 Dec 2017 17:19:21 GMT  
		Size: 4.1 MB (4087788 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca6aeaa516d034de5a99b1352580c534769cbeb2498f5c6c899ecd9277bd7356`  
		Last Modified: Fri, 15 Dec 2017 21:28:18 GMT  
		Size: 2.9 KB (2890 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ffe19341cf077730f26ef8f5c8c01e8b5ca047bb5b5c2d98ca51ab7f27d6dcd2`  
		Last Modified: Tue, 23 Jan 2018 16:44:24 GMT  
		Size: 17.9 MB (17866568 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7940a357d136866af4208c9a4b24d6f08c940c6dd0d5cf0bedf253449c0a7055`  
		Last Modified: Tue, 23 Jan 2018 16:44:18 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4af02309bf008edfac2f3271d3868eb4a4bbd323f2884ae8cbf8a3ff34e47dab`  
		Last Modified: Tue, 23 Jan 2018 16:44:17 GMT  
		Size: 208.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b55acc2d7dd0f6b4c3a4625570703d2a102f7a3d9a6c9a75348988d7b60c188`  
		Last Modified: Tue, 23 Jan 2018 16:44:18 GMT  
		Size: 1.2 KB (1168 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `influxdb:1.3.9-alpine`

```console
$ docker pull influxdb@sha256:54c5f10b7a15eb1eadb19bbb74cc9da1cdbfeafa8d5a0ff16598e625c45ec185
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `influxdb:1.3.9-alpine` - linux; amd64

```console
$ docker pull influxdb@sha256:83f20d7935631d6f0e77ab8952a905d525eeb04e8f27e4eaf2749f8e899a3b72
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **22.5 MB (22536946 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7a8bc3333b65687873c6df552328358381f977f5edb08f816f7e42a1c6ce7a35`
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
# Tue, 23 Jan 2018 00:12:59 GMT
ENV INFLUXDB_VERSION=1.3.9
# Tue, 23 Jan 2018 00:13:08 GMT
RUN set -ex &&     apk add --no-cache --virtual .build-deps wget gnupg tar ca-certificates &&     update-ca-certificates &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done &&     wget -q https://dl.influxdata.com/influxdb/releases/influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc &&     wget -q https://dl.influxdata.com/influxdb/releases/influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/influxdb-*/influxdb.conf &&     chmod +x /usr/src/influxdb-*/* &&     cp -a /usr/src/influxdb-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Tue, 23 Jan 2018 00:13:18 GMT
COPY file:3ee2bc0321c2aa2451df7a508649c3a54f0eebc1ef9b8a24967c58105b4d3160 in /etc/influxdb/influxdb.conf 
# Tue, 23 Jan 2018 00:13:19 GMT
EXPOSE 8086/tcp
# Tue, 23 Jan 2018 00:13:19 GMT
VOLUME [/var/lib/influxdb]
# Tue, 23 Jan 2018 00:13:19 GMT
COPY file:098affa3d1b749dacb263ddacfd86a5de1f598d6ba1f7c789ce482c66ee9c80b in /entrypoint.sh 
# Tue, 23 Jan 2018 00:13:30 GMT
COPY file:8c68fc25e98c2a2f524d6b945934ef5ec3a3d95e8ac816c7f6e6d2783913da7a in /init-influxdb.sh 
# Tue, 23 Jan 2018 00:13:30 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 23 Jan 2018 00:13:30 GMT
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
	-	`sha256:7219dfc35274a5987a97b40f18f68156396edcf8402732633d842af9fd1ece89`  
		Last Modified: Tue, 23 Jan 2018 00:18:20 GMT  
		Size: 19.0 MB (19039174 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8fe9a0878f04310d538598163c6902f1e71981ae7720032b46093ea9aaabdc15`  
		Last Modified: Tue, 23 Jan 2018 00:18:18 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:288e09cf749a56d11a9d7872421a90fbf1a60c7ea260d57fb1a703118e2e00f1`  
		Last Modified: Tue, 23 Jan 2018 00:18:16 GMT  
		Size: 209.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac07caa3f843f72ac122d4e2a9bea28ed5e1190a869e6e8781d13d44adc2bc9f`  
		Last Modified: Tue, 23 Jan 2018 00:18:16 GMT  
		Size: 1.2 KB (1167 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `influxdb:1.3.9-data`

```console
$ docker pull influxdb@sha256:97dc3db3cfd6080b9a1fcd6528b558016c54aeac4ecca0d49b2a561139793b98
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `influxdb:1.3.9-data` - linux; amd64

```console
$ docker pull influxdb@sha256:eb17212ad4b05cec0d41419823ea41975d4a38b15be440c3df490bf4fde74c47
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **80.6 MB (80554491 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c087166cee2cf4cda310058911e6e7a269d2922a48cc0aa30efc241621096d17`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Tue, 12 Dec 2017 01:44:20 GMT
ADD file:eb2519421c9794ccc99d483c07f59ba305531bc9b4dc294e74d2ddb7de69e52a in / 
# Tue, 12 Dec 2017 01:44:21 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 07:54:08 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 07:54:15 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 12 Dec 2017 12:45:00 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Tue, 23 Jan 2018 00:13:52 GMT
ENV INFLUXDB_VERSION=1.3.9-c1.3.9
# Tue, 23 Jan 2018 00:13:54 GMT
RUN wget -q https://dl.influxdata.com/enterprise/releases/influxdb-data_${INFLUXDB_VERSION}_amd64.deb.asc &&     wget -q https://dl.influxdata.com/enterprise/releases/influxdb-data_${INFLUXDB_VERSION}_amd64.deb &&     gpg --batch --verify influxdb-data_${INFLUXDB_VERSION}_amd64.deb.asc influxdb-data_${INFLUXDB_VERSION}_amd64.deb &&     dpkg -i influxdb-data_${INFLUXDB_VERSION}_amd64.deb &&     rm -f influxdb-data_${INFLUXDB_VERSION}_amd64.deb*
# Tue, 23 Jan 2018 00:14:04 GMT
COPY file:a7fc957fd6465cc132b5d41618061e4ac55bd347b790cd87cc496ab4f67a274b in /etc/influxdb/influxdb.conf 
# Tue, 23 Jan 2018 00:14:04 GMT
EXPOSE 8086/tcp
# Tue, 23 Jan 2018 00:14:04 GMT
VOLUME [/var/lib/influxdb]
# Tue, 23 Jan 2018 00:14:04 GMT
COPY file:efb819384a9e7a972c15df74e1d18c7d6296e633a7c533def9a6d400b69468fc in /entrypoint.sh 
# Tue, 23 Jan 2018 00:14:05 GMT
COPY file:8c68fc25e98c2a2f524d6b945934ef5ec3a3d95e8ac816c7f6e6d2783913da7a in /init-influxdb.sh 
# Tue, 23 Jan 2018 00:14:05 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 23 Jan 2018 00:14:05 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:723254a2c089166d4bcfa917be0181ddbecd94971ebfe85792d96e7e29be9c68`  
		Last Modified: Tue, 12 Dec 2017 01:53:22 GMT  
		Size: 45.1 MB (45121631 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:abe15a44e12f84b4aac20d4f2b450ec8638cc0b176c9130d1802cb4fed17d953`  
		Last Modified: Tue, 12 Dec 2017 08:03:48 GMT  
		Size: 11.1 MB (11107352 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:409a28e3cc3de08700c9d37c809a6d3aa43dc076402943919f4a78c286c60a0b`  
		Last Modified: Tue, 12 Dec 2017 08:03:48 GMT  
		Size: 4.3 MB (4335420 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:920d0ed5293ba6eddd661638fac496fab6c4af46ddb6a48f67a891a791986d6e`  
		Last Modified: Tue, 12 Dec 2017 12:46:04 GMT  
		Size: 2.9 KB (2895 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b777db319140b1f82e6e1e10c95fd4d9a112f49ac3149cb2e4f49fdab68ec8d`  
		Last Modified: Tue, 23 Jan 2018 00:19:01 GMT  
		Size: 20.0 MB (19985532 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b3f5f68519dc3e6c97e3c4b79ca2feeecd0f29155ad39d07d43b4ee36fc6928`  
		Last Modified: Tue, 23 Jan 2018 00:18:57 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d63103a677f716fe5e2546befbd84c04df48f2056359ead06cda33fb0f7651dc`  
		Last Modified: Tue, 23 Jan 2018 00:18:57 GMT  
		Size: 252.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e87cfbfcde48414735d2236637137eb86af05f6d8d9ac68ed9a93f56e5db0142`  
		Last Modified: Tue, 23 Jan 2018 00:18:57 GMT  
		Size: 1.2 KB (1168 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `influxdb:1.3.9-data-alpine`

```console
$ docker pull influxdb@sha256:d8239914f572acecfd61f027e9cee4d9fa4eda18cb60e6c1a5a7b6c6d42731ee
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `influxdb:1.3.9-data-alpine` - linux; amd64

```console
$ docker pull influxdb@sha256:c0c6f356e4ff4a49e68d8249593c4402d20f4c92c0743ce56408385c7952efda
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.7 MB (23728444 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:93d4d66958c05a0196dd06b7802f6336f4083444bd0f32f620e894408f30f101`
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
# Tue, 23 Jan 2018 00:14:27 GMT
ENV INFLUXDB_VERSION=1.3.9-c1.3.9
# Tue, 23 Jan 2018 00:14:35 GMT
RUN set -ex &&     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done &&     wget -q https://dl.influxdata.com/enterprise/releases/influxdb-data-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc &&     wget -q https://dl.influxdata.com/enterprise/releases/influxdb-data-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify influxdb-data-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc influxdb-data-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf influxdb-data-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/influxdb-*/influxdb.conf &&     chmod +x /usr/src/influxdb-*/* &&     cp -a /usr/src/influxdb-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Tue, 23 Jan 2018 00:14:35 GMT
COPY file:a7fc957fd6465cc132b5d41618061e4ac55bd347b790cd87cc496ab4f67a274b in /etc/influxdb/influxdb.conf 
# Tue, 23 Jan 2018 00:14:35 GMT
EXPOSE 8086/tcp
# Tue, 23 Jan 2018 00:14:36 GMT
VOLUME [/var/lib/influxdb]
# Tue, 23 Jan 2018 00:14:36 GMT
COPY file:efb819384a9e7a972c15df74e1d18c7d6296e633a7c533def9a6d400b69468fc in /entrypoint.sh 
# Tue, 23 Jan 2018 00:14:36 GMT
COPY file:8c68fc25e98c2a2f524d6b945934ef5ec3a3d95e8ac816c7f6e6d2783913da7a in /init-influxdb.sh 
# Tue, 23 Jan 2018 00:14:37 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 23 Jan 2018 00:14:37 GMT
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
	-	`sha256:53ef1efd91cfd084586039a7a7898cfec7913829a70b4cbd2f0fd359ea13342e`  
		Last Modified: Tue, 23 Jan 2018 00:20:02 GMT  
		Size: 19.9 MB (19886306 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed94e7884749b58593fc168b3eba5e12d3b6dcc346d6b8a927e770c74a1c1719`  
		Last Modified: Tue, 23 Jan 2018 00:19:57 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d583759593d61cd44d6ef528aaca47569d868d1c51bc3adad75b7e8932d78001`  
		Last Modified: Tue, 23 Jan 2018 00:19:59 GMT  
		Size: 251.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1801ab4b0fb5f0f9b16443340e2c38e10948e403195ac3f38ca22d1ce3240498`  
		Last Modified: Tue, 23 Jan 2018 00:19:58 GMT  
		Size: 1.2 KB (1168 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `influxdb:1.3.9-meta`

```console
$ docker pull influxdb@sha256:34a35ed7b36254f2d0f620bfd6017db7a007254f11637d0e48c271002d4f55dd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `influxdb:1.3.9-meta` - linux; amd64

```console
$ docker pull influxdb@sha256:c6212c00cee9b893075434b22c795cd0027f93c540f3bb6ee1e551bc30d85a7c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **69.8 MB (69843809 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7209a7cb71ec30be5c6b1e273078be685ae11b13bf177653e8af7cd07a6a8e96`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd-meta"]`

```dockerfile
# Tue, 12 Dec 2017 01:44:20 GMT
ADD file:eb2519421c9794ccc99d483c07f59ba305531bc9b4dc294e74d2ddb7de69e52a in / 
# Tue, 12 Dec 2017 01:44:21 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 07:54:08 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 07:54:15 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 12 Dec 2017 12:45:00 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Tue, 23 Jan 2018 00:13:52 GMT
ENV INFLUXDB_VERSION=1.3.9-c1.3.9
# Tue, 23 Jan 2018 00:15:11 GMT
RUN wget -q https://dl.influxdata.com/enterprise/releases/influxdb-meta_${INFLUXDB_VERSION}_amd64.deb.asc &&     wget -q https://dl.influxdata.com/enterprise/releases/influxdb-meta_${INFLUXDB_VERSION}_amd64.deb &&     gpg --batch --verify influxdb-meta_${INFLUXDB_VERSION}_amd64.deb.asc influxdb-meta_${INFLUXDB_VERSION}_amd64.deb &&     dpkg -i influxdb-meta_${INFLUXDB_VERSION}_amd64.deb &&     rm -f influxdb-meta_${INFLUXDB_VERSION}_amd64.deb*
# Tue, 23 Jan 2018 00:15:21 GMT
COPY file:95a6fe33e203909c093135fff9ff2b4cdc02ca4f1fe1dec109b5a9cf6b7a0946 in /etc/influxdb/influxdb-meta.conf 
# Tue, 23 Jan 2018 00:15:21 GMT
EXPOSE 8091/tcp
# Tue, 23 Jan 2018 00:15:21 GMT
VOLUME [/var/lib/influxdb]
# Tue, 23 Jan 2018 00:15:22 GMT
COPY file:b4fa000cf2aff5bf4e5093021ca6255fffa17c43ae18eb4c55ae28a3cc2dc281 in /entrypoint.sh 
# Tue, 23 Jan 2018 00:15:22 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 23 Jan 2018 00:15:22 GMT
CMD ["influxd-meta"]
```

-	Layers:
	-	`sha256:723254a2c089166d4bcfa917be0181ddbecd94971ebfe85792d96e7e29be9c68`  
		Last Modified: Tue, 12 Dec 2017 01:53:22 GMT  
		Size: 45.1 MB (45121631 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:abe15a44e12f84b4aac20d4f2b450ec8638cc0b176c9130d1802cb4fed17d953`  
		Last Modified: Tue, 12 Dec 2017 08:03:48 GMT  
		Size: 11.1 MB (11107352 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:409a28e3cc3de08700c9d37c809a6d3aa43dc076402943919f4a78c286c60a0b`  
		Last Modified: Tue, 12 Dec 2017 08:03:48 GMT  
		Size: 4.3 MB (4335420 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:920d0ed5293ba6eddd661638fac496fab6c4af46ddb6a48f67a891a791986d6e`  
		Last Modified: Tue, 12 Dec 2017 12:46:04 GMT  
		Size: 2.9 KB (2895 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd90a2011e52a575b8009a633273881b85e3580b1327cfb4f0be88e7657933f0`  
		Last Modified: Tue, 23 Jan 2018 00:20:46 GMT  
		Size: 9.3 MB (9275941 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c65904c3362e11b0be811ccfc57cfd0350b6a07dbe0537f044ce90862b373bde`  
		Last Modified: Tue, 23 Jan 2018 00:20:44 GMT  
		Size: 196.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b6a613ebfd7779fd99c943f0561edae4d433f3017246de610dad3d01b22ba4b`  
		Last Modified: Tue, 23 Jan 2018 00:20:44 GMT  
		Size: 374.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `influxdb:1.3.9-meta-alpine`

```console
$ docker pull influxdb@sha256:2d7541ff05332338ab6084d2745e1a17e26b932adc5044cb9b30b80c77fa8197
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `influxdb:1.3.9-meta-alpine` - linux; amd64

```console
$ docker pull influxdb@sha256:6f5743533aa3b04a494ffeabb50c2e79d0d9dd744d681f937135ee67284625e8
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.1 MB (13071812 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e97cf18245e862a20d42c2b227f4454c4272fa0015e2301d8ce383317fda9c61`
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
# Tue, 23 Jan 2018 00:14:27 GMT
ENV INFLUXDB_VERSION=1.3.9-c1.3.9
# Tue, 23 Jan 2018 00:15:55 GMT
RUN set -ex &&     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done &&     wget -q https://dl.influxdata.com/enterprise/releases/influxdb-meta-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc &&     wget -q https://dl.influxdata.com/enterprise/releases/influxdb-meta-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify influxdb-meta-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc influxdb-meta-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf influxdb-meta-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/influxdb-*/influxdb-meta.conf &&     chmod +x /usr/src/influxdb-*/* &&     cp -a /usr/src/influxdb-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Tue, 23 Jan 2018 00:15:57 GMT
COPY file:95a6fe33e203909c093135fff9ff2b4cdc02ca4f1fe1dec109b5a9cf6b7a0946 in /etc/influxdb/influxdb-meta.conf 
# Tue, 23 Jan 2018 00:15:57 GMT
EXPOSE 8091/tcp
# Tue, 23 Jan 2018 00:15:58 GMT
VOLUME [/var/lib/influxdb]
# Tue, 23 Jan 2018 00:15:58 GMT
COPY file:b4fa000cf2aff5bf4e5093021ca6255fffa17c43ae18eb4c55ae28a3cc2dc281 in /entrypoint.sh 
# Tue, 23 Jan 2018 00:16:08 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 23 Jan 2018 00:16:08 GMT
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
	-	`sha256:c7296d9bbe3c19e7f654b9f77c6855cf32d2728f55398304113ddaa85a288ce4`  
		Last Modified: Tue, 23 Jan 2018 00:21:42 GMT  
		Size: 9.2 MB (9230765 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:935fb0c6f1c583a6efc69c66e8fb8821dfc5e4c9ac7e1670049d8f2125781069`  
		Last Modified: Tue, 23 Jan 2018 00:21:40 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ee8831b6d549e8aed4f575d2600b924a64f801bb62292a3c57658756dd6197a`  
		Last Modified: Tue, 23 Jan 2018 00:21:40 GMT  
		Size: 374.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `influxdb:1.3-alpine`

```console
$ docker pull influxdb@sha256:54c5f10b7a15eb1eadb19bbb74cc9da1cdbfeafa8d5a0ff16598e625c45ec185
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `influxdb:1.3-alpine` - linux; amd64

```console
$ docker pull influxdb@sha256:83f20d7935631d6f0e77ab8952a905d525eeb04e8f27e4eaf2749f8e899a3b72
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **22.5 MB (22536946 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7a8bc3333b65687873c6df552328358381f977f5edb08f816f7e42a1c6ce7a35`
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
# Tue, 23 Jan 2018 00:12:59 GMT
ENV INFLUXDB_VERSION=1.3.9
# Tue, 23 Jan 2018 00:13:08 GMT
RUN set -ex &&     apk add --no-cache --virtual .build-deps wget gnupg tar ca-certificates &&     update-ca-certificates &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done &&     wget -q https://dl.influxdata.com/influxdb/releases/influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc &&     wget -q https://dl.influxdata.com/influxdb/releases/influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/influxdb-*/influxdb.conf &&     chmod +x /usr/src/influxdb-*/* &&     cp -a /usr/src/influxdb-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Tue, 23 Jan 2018 00:13:18 GMT
COPY file:3ee2bc0321c2aa2451df7a508649c3a54f0eebc1ef9b8a24967c58105b4d3160 in /etc/influxdb/influxdb.conf 
# Tue, 23 Jan 2018 00:13:19 GMT
EXPOSE 8086/tcp
# Tue, 23 Jan 2018 00:13:19 GMT
VOLUME [/var/lib/influxdb]
# Tue, 23 Jan 2018 00:13:19 GMT
COPY file:098affa3d1b749dacb263ddacfd86a5de1f598d6ba1f7c789ce482c66ee9c80b in /entrypoint.sh 
# Tue, 23 Jan 2018 00:13:30 GMT
COPY file:8c68fc25e98c2a2f524d6b945934ef5ec3a3d95e8ac816c7f6e6d2783913da7a in /init-influxdb.sh 
# Tue, 23 Jan 2018 00:13:30 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 23 Jan 2018 00:13:30 GMT
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
	-	`sha256:7219dfc35274a5987a97b40f18f68156396edcf8402732633d842af9fd1ece89`  
		Last Modified: Tue, 23 Jan 2018 00:18:20 GMT  
		Size: 19.0 MB (19039174 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8fe9a0878f04310d538598163c6902f1e71981ae7720032b46093ea9aaabdc15`  
		Last Modified: Tue, 23 Jan 2018 00:18:18 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:288e09cf749a56d11a9d7872421a90fbf1a60c7ea260d57fb1a703118e2e00f1`  
		Last Modified: Tue, 23 Jan 2018 00:18:16 GMT  
		Size: 209.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac07caa3f843f72ac122d4e2a9bea28ed5e1190a869e6e8781d13d44adc2bc9f`  
		Last Modified: Tue, 23 Jan 2018 00:18:16 GMT  
		Size: 1.2 KB (1167 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `influxdb:1.3-data`

```console
$ docker pull influxdb@sha256:97dc3db3cfd6080b9a1fcd6528b558016c54aeac4ecca0d49b2a561139793b98
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `influxdb:1.3-data` - linux; amd64

```console
$ docker pull influxdb@sha256:eb17212ad4b05cec0d41419823ea41975d4a38b15be440c3df490bf4fde74c47
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **80.6 MB (80554491 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c087166cee2cf4cda310058911e6e7a269d2922a48cc0aa30efc241621096d17`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Tue, 12 Dec 2017 01:44:20 GMT
ADD file:eb2519421c9794ccc99d483c07f59ba305531bc9b4dc294e74d2ddb7de69e52a in / 
# Tue, 12 Dec 2017 01:44:21 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 07:54:08 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 07:54:15 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 12 Dec 2017 12:45:00 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Tue, 23 Jan 2018 00:13:52 GMT
ENV INFLUXDB_VERSION=1.3.9-c1.3.9
# Tue, 23 Jan 2018 00:13:54 GMT
RUN wget -q https://dl.influxdata.com/enterprise/releases/influxdb-data_${INFLUXDB_VERSION}_amd64.deb.asc &&     wget -q https://dl.influxdata.com/enterprise/releases/influxdb-data_${INFLUXDB_VERSION}_amd64.deb &&     gpg --batch --verify influxdb-data_${INFLUXDB_VERSION}_amd64.deb.asc influxdb-data_${INFLUXDB_VERSION}_amd64.deb &&     dpkg -i influxdb-data_${INFLUXDB_VERSION}_amd64.deb &&     rm -f influxdb-data_${INFLUXDB_VERSION}_amd64.deb*
# Tue, 23 Jan 2018 00:14:04 GMT
COPY file:a7fc957fd6465cc132b5d41618061e4ac55bd347b790cd87cc496ab4f67a274b in /etc/influxdb/influxdb.conf 
# Tue, 23 Jan 2018 00:14:04 GMT
EXPOSE 8086/tcp
# Tue, 23 Jan 2018 00:14:04 GMT
VOLUME [/var/lib/influxdb]
# Tue, 23 Jan 2018 00:14:04 GMT
COPY file:efb819384a9e7a972c15df74e1d18c7d6296e633a7c533def9a6d400b69468fc in /entrypoint.sh 
# Tue, 23 Jan 2018 00:14:05 GMT
COPY file:8c68fc25e98c2a2f524d6b945934ef5ec3a3d95e8ac816c7f6e6d2783913da7a in /init-influxdb.sh 
# Tue, 23 Jan 2018 00:14:05 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 23 Jan 2018 00:14:05 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:723254a2c089166d4bcfa917be0181ddbecd94971ebfe85792d96e7e29be9c68`  
		Last Modified: Tue, 12 Dec 2017 01:53:22 GMT  
		Size: 45.1 MB (45121631 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:abe15a44e12f84b4aac20d4f2b450ec8638cc0b176c9130d1802cb4fed17d953`  
		Last Modified: Tue, 12 Dec 2017 08:03:48 GMT  
		Size: 11.1 MB (11107352 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:409a28e3cc3de08700c9d37c809a6d3aa43dc076402943919f4a78c286c60a0b`  
		Last Modified: Tue, 12 Dec 2017 08:03:48 GMT  
		Size: 4.3 MB (4335420 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:920d0ed5293ba6eddd661638fac496fab6c4af46ddb6a48f67a891a791986d6e`  
		Last Modified: Tue, 12 Dec 2017 12:46:04 GMT  
		Size: 2.9 KB (2895 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b777db319140b1f82e6e1e10c95fd4d9a112f49ac3149cb2e4f49fdab68ec8d`  
		Last Modified: Tue, 23 Jan 2018 00:19:01 GMT  
		Size: 20.0 MB (19985532 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b3f5f68519dc3e6c97e3c4b79ca2feeecd0f29155ad39d07d43b4ee36fc6928`  
		Last Modified: Tue, 23 Jan 2018 00:18:57 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d63103a677f716fe5e2546befbd84c04df48f2056359ead06cda33fb0f7651dc`  
		Last Modified: Tue, 23 Jan 2018 00:18:57 GMT  
		Size: 252.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e87cfbfcde48414735d2236637137eb86af05f6d8d9ac68ed9a93f56e5db0142`  
		Last Modified: Tue, 23 Jan 2018 00:18:57 GMT  
		Size: 1.2 KB (1168 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `influxdb:1.3-data-alpine`

```console
$ docker pull influxdb@sha256:d8239914f572acecfd61f027e9cee4d9fa4eda18cb60e6c1a5a7b6c6d42731ee
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `influxdb:1.3-data-alpine` - linux; amd64

```console
$ docker pull influxdb@sha256:c0c6f356e4ff4a49e68d8249593c4402d20f4c92c0743ce56408385c7952efda
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.7 MB (23728444 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:93d4d66958c05a0196dd06b7802f6336f4083444bd0f32f620e894408f30f101`
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
# Tue, 23 Jan 2018 00:14:27 GMT
ENV INFLUXDB_VERSION=1.3.9-c1.3.9
# Tue, 23 Jan 2018 00:14:35 GMT
RUN set -ex &&     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done &&     wget -q https://dl.influxdata.com/enterprise/releases/influxdb-data-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc &&     wget -q https://dl.influxdata.com/enterprise/releases/influxdb-data-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify influxdb-data-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc influxdb-data-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf influxdb-data-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/influxdb-*/influxdb.conf &&     chmod +x /usr/src/influxdb-*/* &&     cp -a /usr/src/influxdb-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Tue, 23 Jan 2018 00:14:35 GMT
COPY file:a7fc957fd6465cc132b5d41618061e4ac55bd347b790cd87cc496ab4f67a274b in /etc/influxdb/influxdb.conf 
# Tue, 23 Jan 2018 00:14:35 GMT
EXPOSE 8086/tcp
# Tue, 23 Jan 2018 00:14:36 GMT
VOLUME [/var/lib/influxdb]
# Tue, 23 Jan 2018 00:14:36 GMT
COPY file:efb819384a9e7a972c15df74e1d18c7d6296e633a7c533def9a6d400b69468fc in /entrypoint.sh 
# Tue, 23 Jan 2018 00:14:36 GMT
COPY file:8c68fc25e98c2a2f524d6b945934ef5ec3a3d95e8ac816c7f6e6d2783913da7a in /init-influxdb.sh 
# Tue, 23 Jan 2018 00:14:37 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 23 Jan 2018 00:14:37 GMT
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
	-	`sha256:53ef1efd91cfd084586039a7a7898cfec7913829a70b4cbd2f0fd359ea13342e`  
		Last Modified: Tue, 23 Jan 2018 00:20:02 GMT  
		Size: 19.9 MB (19886306 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed94e7884749b58593fc168b3eba5e12d3b6dcc346d6b8a927e770c74a1c1719`  
		Last Modified: Tue, 23 Jan 2018 00:19:57 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d583759593d61cd44d6ef528aaca47569d868d1c51bc3adad75b7e8932d78001`  
		Last Modified: Tue, 23 Jan 2018 00:19:59 GMT  
		Size: 251.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1801ab4b0fb5f0f9b16443340e2c38e10948e403195ac3f38ca22d1ce3240498`  
		Last Modified: Tue, 23 Jan 2018 00:19:58 GMT  
		Size: 1.2 KB (1168 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `influxdb:1.3-meta`

```console
$ docker pull influxdb@sha256:34a35ed7b36254f2d0f620bfd6017db7a007254f11637d0e48c271002d4f55dd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `influxdb:1.3-meta` - linux; amd64

```console
$ docker pull influxdb@sha256:c6212c00cee9b893075434b22c795cd0027f93c540f3bb6ee1e551bc30d85a7c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **69.8 MB (69843809 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7209a7cb71ec30be5c6b1e273078be685ae11b13bf177653e8af7cd07a6a8e96`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd-meta"]`

```dockerfile
# Tue, 12 Dec 2017 01:44:20 GMT
ADD file:eb2519421c9794ccc99d483c07f59ba305531bc9b4dc294e74d2ddb7de69e52a in / 
# Tue, 12 Dec 2017 01:44:21 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 07:54:08 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 07:54:15 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 12 Dec 2017 12:45:00 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Tue, 23 Jan 2018 00:13:52 GMT
ENV INFLUXDB_VERSION=1.3.9-c1.3.9
# Tue, 23 Jan 2018 00:15:11 GMT
RUN wget -q https://dl.influxdata.com/enterprise/releases/influxdb-meta_${INFLUXDB_VERSION}_amd64.deb.asc &&     wget -q https://dl.influxdata.com/enterprise/releases/influxdb-meta_${INFLUXDB_VERSION}_amd64.deb &&     gpg --batch --verify influxdb-meta_${INFLUXDB_VERSION}_amd64.deb.asc influxdb-meta_${INFLUXDB_VERSION}_amd64.deb &&     dpkg -i influxdb-meta_${INFLUXDB_VERSION}_amd64.deb &&     rm -f influxdb-meta_${INFLUXDB_VERSION}_amd64.deb*
# Tue, 23 Jan 2018 00:15:21 GMT
COPY file:95a6fe33e203909c093135fff9ff2b4cdc02ca4f1fe1dec109b5a9cf6b7a0946 in /etc/influxdb/influxdb-meta.conf 
# Tue, 23 Jan 2018 00:15:21 GMT
EXPOSE 8091/tcp
# Tue, 23 Jan 2018 00:15:21 GMT
VOLUME [/var/lib/influxdb]
# Tue, 23 Jan 2018 00:15:22 GMT
COPY file:b4fa000cf2aff5bf4e5093021ca6255fffa17c43ae18eb4c55ae28a3cc2dc281 in /entrypoint.sh 
# Tue, 23 Jan 2018 00:15:22 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 23 Jan 2018 00:15:22 GMT
CMD ["influxd-meta"]
```

-	Layers:
	-	`sha256:723254a2c089166d4bcfa917be0181ddbecd94971ebfe85792d96e7e29be9c68`  
		Last Modified: Tue, 12 Dec 2017 01:53:22 GMT  
		Size: 45.1 MB (45121631 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:abe15a44e12f84b4aac20d4f2b450ec8638cc0b176c9130d1802cb4fed17d953`  
		Last Modified: Tue, 12 Dec 2017 08:03:48 GMT  
		Size: 11.1 MB (11107352 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:409a28e3cc3de08700c9d37c809a6d3aa43dc076402943919f4a78c286c60a0b`  
		Last Modified: Tue, 12 Dec 2017 08:03:48 GMT  
		Size: 4.3 MB (4335420 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:920d0ed5293ba6eddd661638fac496fab6c4af46ddb6a48f67a891a791986d6e`  
		Last Modified: Tue, 12 Dec 2017 12:46:04 GMT  
		Size: 2.9 KB (2895 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd90a2011e52a575b8009a633273881b85e3580b1327cfb4f0be88e7657933f0`  
		Last Modified: Tue, 23 Jan 2018 00:20:46 GMT  
		Size: 9.3 MB (9275941 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c65904c3362e11b0be811ccfc57cfd0350b6a07dbe0537f044ce90862b373bde`  
		Last Modified: Tue, 23 Jan 2018 00:20:44 GMT  
		Size: 196.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b6a613ebfd7779fd99c943f0561edae4d433f3017246de610dad3d01b22ba4b`  
		Last Modified: Tue, 23 Jan 2018 00:20:44 GMT  
		Size: 374.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `influxdb:1.3-meta-alpine`

```console
$ docker pull influxdb@sha256:2d7541ff05332338ab6084d2745e1a17e26b932adc5044cb9b30b80c77fa8197
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `influxdb:1.3-meta-alpine` - linux; amd64

```console
$ docker pull influxdb@sha256:6f5743533aa3b04a494ffeabb50c2e79d0d9dd744d681f937135ee67284625e8
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.1 MB (13071812 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e97cf18245e862a20d42c2b227f4454c4272fa0015e2301d8ce383317fda9c61`
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
# Tue, 23 Jan 2018 00:14:27 GMT
ENV INFLUXDB_VERSION=1.3.9-c1.3.9
# Tue, 23 Jan 2018 00:15:55 GMT
RUN set -ex &&     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done &&     wget -q https://dl.influxdata.com/enterprise/releases/influxdb-meta-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc &&     wget -q https://dl.influxdata.com/enterprise/releases/influxdb-meta-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify influxdb-meta-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc influxdb-meta-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf influxdb-meta-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/influxdb-*/influxdb-meta.conf &&     chmod +x /usr/src/influxdb-*/* &&     cp -a /usr/src/influxdb-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Tue, 23 Jan 2018 00:15:57 GMT
COPY file:95a6fe33e203909c093135fff9ff2b4cdc02ca4f1fe1dec109b5a9cf6b7a0946 in /etc/influxdb/influxdb-meta.conf 
# Tue, 23 Jan 2018 00:15:57 GMT
EXPOSE 8091/tcp
# Tue, 23 Jan 2018 00:15:58 GMT
VOLUME [/var/lib/influxdb]
# Tue, 23 Jan 2018 00:15:58 GMT
COPY file:b4fa000cf2aff5bf4e5093021ca6255fffa17c43ae18eb4c55ae28a3cc2dc281 in /entrypoint.sh 
# Tue, 23 Jan 2018 00:16:08 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 23 Jan 2018 00:16:08 GMT
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
	-	`sha256:c7296d9bbe3c19e7f654b9f77c6855cf32d2728f55398304113ddaa85a288ce4`  
		Last Modified: Tue, 23 Jan 2018 00:21:42 GMT  
		Size: 9.2 MB (9230765 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:935fb0c6f1c583a6efc69c66e8fb8821dfc5e4c9ac7e1670049d8f2125781069`  
		Last Modified: Tue, 23 Jan 2018 00:21:40 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ee8831b6d549e8aed4f575d2600b924a64f801bb62292a3c57658756dd6197a`  
		Last Modified: Tue, 23 Jan 2018 00:21:40 GMT  
		Size: 374.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `influxdb:1.4`

```console
$ docker pull influxdb@sha256:763ca416cec24b92cb8bf07c4d85a7c76bf766362411e4d04c2d7ca9216a7f8b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `influxdb:1.4` - linux; amd64

```console
$ docker pull influxdb@sha256:2d611a1643b01a9fbecfbc04a51b467fc599facbdd0e3472d4199286a8b73e11
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **81.7 MB (81727976 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9f8135a319d3b30c13184c9d05cbf78777bc28a21fc5d004db56068eb2fad579`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Tue, 12 Dec 2017 01:44:20 GMT
ADD file:eb2519421c9794ccc99d483c07f59ba305531bc9b4dc294e74d2ddb7de69e52a in / 
# Tue, 12 Dec 2017 01:44:21 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 07:54:08 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 07:54:15 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 12 Dec 2017 12:45:00 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Thu, 01 Feb 2018 00:39:59 GMT
ENV INFLUXDB_VERSION=1.4.3
# Thu, 01 Feb 2018 00:40:03 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget -q https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_${ARCH}.deb.asc &&     wget -q https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     gpg --batch --verify influxdb_${INFLUXDB_VERSION}_${ARCH}.deb.asc influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     dpkg -i influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     rm -f influxdb_${INFLUXDB_VERSION}_${ARCH}.deb*
# Thu, 01 Feb 2018 00:40:03 GMT
COPY file:3ee2bc0321c2aa2451df7a508649c3a54f0eebc1ef9b8a24967c58105b4d3160 in /etc/influxdb/influxdb.conf 
# Thu, 01 Feb 2018 00:40:04 GMT
EXPOSE 8086/tcp
# Thu, 01 Feb 2018 00:40:04 GMT
VOLUME [/var/lib/influxdb]
# Thu, 01 Feb 2018 00:40:04 GMT
COPY file:098affa3d1b749dacb263ddacfd86a5de1f598d6ba1f7c789ce482c66ee9c80b in /entrypoint.sh 
# Thu, 01 Feb 2018 00:40:05 GMT
COPY file:8c68fc25e98c2a2f524d6b945934ef5ec3a3d95e8ac816c7f6e6d2783913da7a in /init-influxdb.sh 
# Thu, 01 Feb 2018 00:40:05 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 01 Feb 2018 00:40:05 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:723254a2c089166d4bcfa917be0181ddbecd94971ebfe85792d96e7e29be9c68`  
		Last Modified: Tue, 12 Dec 2017 01:53:22 GMT  
		Size: 45.1 MB (45121631 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:abe15a44e12f84b4aac20d4f2b450ec8638cc0b176c9130d1802cb4fed17d953`  
		Last Modified: Tue, 12 Dec 2017 08:03:48 GMT  
		Size: 11.1 MB (11107352 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:409a28e3cc3de08700c9d37c809a6d3aa43dc076402943919f4a78c286c60a0b`  
		Last Modified: Tue, 12 Dec 2017 08:03:48 GMT  
		Size: 4.3 MB (4335420 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:920d0ed5293ba6eddd661638fac496fab6c4af46ddb6a48f67a891a791986d6e`  
		Last Modified: Tue, 12 Dec 2017 12:46:04 GMT  
		Size: 2.9 KB (2895 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5abfd9ddc4f8a6efad5e0a948a4b1f689333f176fdcd3211f27dba46be03738e`  
		Last Modified: Thu, 01 Feb 2018 00:41:34 GMT  
		Size: 21.2 MB (21159077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c85a74024420a5272b8af00dc305129ca0e8c8841584565d0b638f0579917b6`  
		Last Modified: Thu, 01 Feb 2018 00:41:29 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67417790f6eafdcfd34a0d78c84351a510e7dc401db5e2086066a1a0eddbad76`  
		Last Modified: Thu, 01 Feb 2018 00:41:30 GMT  
		Size: 211.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:310fcefee441eaa8aa8ba53b65208158ac60d7866fe5f8ecc51d9161d809fe5b`  
		Last Modified: Thu, 01 Feb 2018 00:41:30 GMT  
		Size: 1.2 KB (1167 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `influxdb:1.4` - linux; arm variant v7

```console
$ docker pull influxdb@sha256:c7a76f078fed787089564ded217cd01c2db439aadb21dd1497e9744fc3113c0f
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **75.4 MB (75404549 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:59c7804a120f82cc0fba91312d909144fa73b4b6507ea484521c0f75f32ee7cc`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Tue, 12 Dec 2017 13:32:59 GMT
ADD file:d49e67cdc6ae27f43c5c002d96bff764fd43188dd7e8036f5d5f8c44eb12dcad in / 
# Tue, 12 Dec 2017 13:32:59 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 14:21:12 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 14:21:22 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 12 Dec 2017 16:47:06 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Tue, 12 Dec 2017 17:38:22 GMT
ENV INFLUXDB_VERSION=1.4.2
# Tue, 12 Dec 2017 17:38:39 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget -q https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_${ARCH}.deb.asc &&     wget -q https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     gpg --batch --verify influxdb_${INFLUXDB_VERSION}_${ARCH}.deb.asc influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     dpkg -i influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     rm -f influxdb_${INFLUXDB_VERSION}_${ARCH}.deb*
# Tue, 12 Dec 2017 17:38:40 GMT
COPY file:3ee2bc0321c2aa2451df7a508649c3a54f0eebc1ef9b8a24967c58105b4d3160 in /etc/influxdb/influxdb.conf 
# Tue, 12 Dec 2017 17:38:40 GMT
EXPOSE 8086/tcp
# Tue, 12 Dec 2017 17:38:41 GMT
VOLUME [/var/lib/influxdb]
# Tue, 12 Dec 2017 17:38:42 GMT
COPY file:098affa3d1b749dacb263ddacfd86a5de1f598d6ba1f7c789ce482c66ee9c80b in /entrypoint.sh 
# Tue, 12 Dec 2017 17:38:43 GMT
COPY file:8c68fc25e98c2a2f524d6b945934ef5ec3a3d95e8ac816c7f6e6d2783913da7a in /init-influxdb.sh 
# Tue, 12 Dec 2017 17:38:43 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 12 Dec 2017 17:38:44 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:0e10ef01c84000f6f5865b480436e689e2d437a4a8b63b01d5ce85532872b636`  
		Last Modified: Tue, 12 Dec 2017 13:44:34 GMT  
		Size: 41.8 MB (41849695 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ed40614ea2a08dbc6237155db97d58d7051efa214bab1fd556c4414db68cb7c`  
		Last Modified: Tue, 12 Dec 2017 14:34:18 GMT  
		Size: 9.8 MB (9824565 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad0ea8727ac09b97803f430b101f4c67cbf9c7bc372a44c190f5a9719f5fb1e9`  
		Last Modified: Tue, 12 Dec 2017 14:34:16 GMT  
		Size: 3.9 MB (3912457 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2865f1bdf683cc300fe667d3fce8d278fa5bad277629b599dc4a9ec7c1ee3ba`  
		Last Modified: Tue, 12 Dec 2017 16:48:05 GMT  
		Size: 2.9 KB (2915 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4beeba172e909c15a803e043e0e13fe8c164bdf598c37743895f967691636996`  
		Last Modified: Tue, 12 Dec 2017 17:39:50 GMT  
		Size: 19.8 MB (19813319 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf63b94a459bb1b494def4a46a76dc7440021ecfccb03cbf14973b8c56ae946a`  
		Last Modified: Tue, 12 Dec 2017 17:39:43 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:841f191a3df44e1bcd22f3a4ca44c735bca4a7d1a77f91adaec7918923af4939`  
		Last Modified: Tue, 12 Dec 2017 17:39:43 GMT  
		Size: 208.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1cca5ab0fb431853db92a0581419c827b89c182ea641d7ad63d89323a4a8c7f2`  
		Last Modified: Tue, 12 Dec 2017 17:39:44 GMT  
		Size: 1.2 KB (1167 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `influxdb:1.4` - linux; arm64 variant v8

```console
$ docker pull influxdb@sha256:a9571dfaf06a57c39ebb65da0e6dce8d7d2f143ce6086dd1bd6b0893e601d57d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **76.3 MB (76314313 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cd5993bc287fce14c7b32b7fd5395762671d7b3c9a97040e31724308257d6e96`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Tue, 12 Dec 2017 18:33:14 GMT
ADD file:ae07a2e0bd59c986cf9cec3d7ce9a3db8f8034bac7b69938557e472980c70cdc in / 
# Tue, 12 Dec 2017 18:33:14 GMT
CMD ["bash"]
# Fri, 15 Dec 2017 16:14:25 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 15 Dec 2017 16:14:42 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 15 Dec 2017 21:27:31 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Fri, 15 Dec 2017 21:27:55 GMT
ENV INFLUXDB_VERSION=1.4.2
# Fri, 15 Dec 2017 21:28:01 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget -q https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_${ARCH}.deb.asc &&     wget -q https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     gpg --batch --verify influxdb_${INFLUXDB_VERSION}_${ARCH}.deb.asc influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     dpkg -i influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     rm -f influxdb_${INFLUXDB_VERSION}_${ARCH}.deb*
# Fri, 15 Dec 2017 21:28:03 GMT
COPY file:3ee2bc0321c2aa2451df7a508649c3a54f0eebc1ef9b8a24967c58105b4d3160 in /etc/influxdb/influxdb.conf 
# Fri, 15 Dec 2017 21:28:04 GMT
EXPOSE 8086/tcp
# Fri, 15 Dec 2017 21:28:04 GMT
VOLUME [/var/lib/influxdb]
# Fri, 15 Dec 2017 21:28:05 GMT
COPY file:098affa3d1b749dacb263ddacfd86a5de1f598d6ba1f7c789ce482c66ee9c80b in /entrypoint.sh 
# Fri, 15 Dec 2017 21:28:06 GMT
COPY file:8c68fc25e98c2a2f524d6b945934ef5ec3a3d95e8ac816c7f6e6d2783913da7a in /init-influxdb.sh 
# Fri, 15 Dec 2017 21:28:07 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 15 Dec 2017 21:28:07 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:91ea0aed359111bf5beb30e4bebd50fac25bc40a69e1bb3bf0f8e3c6dcd5fa7f`  
		Last Modified: Tue, 12 Dec 2017 18:47:08 GMT  
		Size: 42.9 MB (42912813 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc2797c29bc6ab5e2ad91b16dea60d7b6f0d4fffb5261f539870b43a7ffca40e`  
		Last Modified: Fri, 15 Dec 2017 17:19:24 GMT  
		Size: 10.1 MB (10066285 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8edcd3d8093caa7ca86f40f4413c1ae7ca97ae1480289f06339fff174a2a7d6a`  
		Last Modified: Fri, 15 Dec 2017 17:19:21 GMT  
		Size: 4.1 MB (4087788 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca6aeaa516d034de5a99b1352580c534769cbeb2498f5c6c899ecd9277bd7356`  
		Last Modified: Fri, 15 Dec 2017 21:28:18 GMT  
		Size: 2.9 KB (2890 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a8303a0d7862edfb4c095c6dffb4d406959d060fbc0e2a4bac68306da84f2bc`  
		Last Modified: Fri, 15 Dec 2017 21:28:46 GMT  
		Size: 19.2 MB (19242936 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f54ce3e6219eaff7cdafaa8f3614b2f66bf83b7851789e413e82ccfe3a03c665`  
		Last Modified: Fri, 15 Dec 2017 21:28:38 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14ba4b27b560b10f402a43322b8f0e9cbb0920f86d18c11e69f062e7b4854040`  
		Last Modified: Fri, 15 Dec 2017 21:28:38 GMT  
		Size: 209.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21a89272eebc8010ce4a8f3b18f41b629d670a980c0bdb6915ee05428d842a00`  
		Last Modified: Fri, 15 Dec 2017 21:28:37 GMT  
		Size: 1.2 KB (1166 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `influxdb:1.4.3`

```console
$ docker pull influxdb@sha256:763ca416cec24b92cb8bf07c4d85a7c76bf766362411e4d04c2d7ca9216a7f8b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `influxdb:1.4.3` - linux; amd64

```console
$ docker pull influxdb@sha256:2d611a1643b01a9fbecfbc04a51b467fc599facbdd0e3472d4199286a8b73e11
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **81.7 MB (81727976 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9f8135a319d3b30c13184c9d05cbf78777bc28a21fc5d004db56068eb2fad579`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Tue, 12 Dec 2017 01:44:20 GMT
ADD file:eb2519421c9794ccc99d483c07f59ba305531bc9b4dc294e74d2ddb7de69e52a in / 
# Tue, 12 Dec 2017 01:44:21 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 07:54:08 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 07:54:15 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 12 Dec 2017 12:45:00 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Thu, 01 Feb 2018 00:39:59 GMT
ENV INFLUXDB_VERSION=1.4.3
# Thu, 01 Feb 2018 00:40:03 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget -q https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_${ARCH}.deb.asc &&     wget -q https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     gpg --batch --verify influxdb_${INFLUXDB_VERSION}_${ARCH}.deb.asc influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     dpkg -i influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     rm -f influxdb_${INFLUXDB_VERSION}_${ARCH}.deb*
# Thu, 01 Feb 2018 00:40:03 GMT
COPY file:3ee2bc0321c2aa2451df7a508649c3a54f0eebc1ef9b8a24967c58105b4d3160 in /etc/influxdb/influxdb.conf 
# Thu, 01 Feb 2018 00:40:04 GMT
EXPOSE 8086/tcp
# Thu, 01 Feb 2018 00:40:04 GMT
VOLUME [/var/lib/influxdb]
# Thu, 01 Feb 2018 00:40:04 GMT
COPY file:098affa3d1b749dacb263ddacfd86a5de1f598d6ba1f7c789ce482c66ee9c80b in /entrypoint.sh 
# Thu, 01 Feb 2018 00:40:05 GMT
COPY file:8c68fc25e98c2a2f524d6b945934ef5ec3a3d95e8ac816c7f6e6d2783913da7a in /init-influxdb.sh 
# Thu, 01 Feb 2018 00:40:05 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 01 Feb 2018 00:40:05 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:723254a2c089166d4bcfa917be0181ddbecd94971ebfe85792d96e7e29be9c68`  
		Last Modified: Tue, 12 Dec 2017 01:53:22 GMT  
		Size: 45.1 MB (45121631 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:abe15a44e12f84b4aac20d4f2b450ec8638cc0b176c9130d1802cb4fed17d953`  
		Last Modified: Tue, 12 Dec 2017 08:03:48 GMT  
		Size: 11.1 MB (11107352 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:409a28e3cc3de08700c9d37c809a6d3aa43dc076402943919f4a78c286c60a0b`  
		Last Modified: Tue, 12 Dec 2017 08:03:48 GMT  
		Size: 4.3 MB (4335420 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:920d0ed5293ba6eddd661638fac496fab6c4af46ddb6a48f67a891a791986d6e`  
		Last Modified: Tue, 12 Dec 2017 12:46:04 GMT  
		Size: 2.9 KB (2895 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5abfd9ddc4f8a6efad5e0a948a4b1f689333f176fdcd3211f27dba46be03738e`  
		Last Modified: Thu, 01 Feb 2018 00:41:34 GMT  
		Size: 21.2 MB (21159077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c85a74024420a5272b8af00dc305129ca0e8c8841584565d0b638f0579917b6`  
		Last Modified: Thu, 01 Feb 2018 00:41:29 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67417790f6eafdcfd34a0d78c84351a510e7dc401db5e2086066a1a0eddbad76`  
		Last Modified: Thu, 01 Feb 2018 00:41:30 GMT  
		Size: 211.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:310fcefee441eaa8aa8ba53b65208158ac60d7866fe5f8ecc51d9161d809fe5b`  
		Last Modified: Thu, 01 Feb 2018 00:41:30 GMT  
		Size: 1.2 KB (1167 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `influxdb:1.4.3` - linux; arm variant v7

```console
$ docker pull influxdb@sha256:c7a76f078fed787089564ded217cd01c2db439aadb21dd1497e9744fc3113c0f
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **75.4 MB (75404549 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:59c7804a120f82cc0fba91312d909144fa73b4b6507ea484521c0f75f32ee7cc`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Tue, 12 Dec 2017 13:32:59 GMT
ADD file:d49e67cdc6ae27f43c5c002d96bff764fd43188dd7e8036f5d5f8c44eb12dcad in / 
# Tue, 12 Dec 2017 13:32:59 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 14:21:12 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 14:21:22 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 12 Dec 2017 16:47:06 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Tue, 12 Dec 2017 17:38:22 GMT
ENV INFLUXDB_VERSION=1.4.2
# Tue, 12 Dec 2017 17:38:39 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget -q https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_${ARCH}.deb.asc &&     wget -q https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     gpg --batch --verify influxdb_${INFLUXDB_VERSION}_${ARCH}.deb.asc influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     dpkg -i influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     rm -f influxdb_${INFLUXDB_VERSION}_${ARCH}.deb*
# Tue, 12 Dec 2017 17:38:40 GMT
COPY file:3ee2bc0321c2aa2451df7a508649c3a54f0eebc1ef9b8a24967c58105b4d3160 in /etc/influxdb/influxdb.conf 
# Tue, 12 Dec 2017 17:38:40 GMT
EXPOSE 8086/tcp
# Tue, 12 Dec 2017 17:38:41 GMT
VOLUME [/var/lib/influxdb]
# Tue, 12 Dec 2017 17:38:42 GMT
COPY file:098affa3d1b749dacb263ddacfd86a5de1f598d6ba1f7c789ce482c66ee9c80b in /entrypoint.sh 
# Tue, 12 Dec 2017 17:38:43 GMT
COPY file:8c68fc25e98c2a2f524d6b945934ef5ec3a3d95e8ac816c7f6e6d2783913da7a in /init-influxdb.sh 
# Tue, 12 Dec 2017 17:38:43 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 12 Dec 2017 17:38:44 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:0e10ef01c84000f6f5865b480436e689e2d437a4a8b63b01d5ce85532872b636`  
		Last Modified: Tue, 12 Dec 2017 13:44:34 GMT  
		Size: 41.8 MB (41849695 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ed40614ea2a08dbc6237155db97d58d7051efa214bab1fd556c4414db68cb7c`  
		Last Modified: Tue, 12 Dec 2017 14:34:18 GMT  
		Size: 9.8 MB (9824565 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad0ea8727ac09b97803f430b101f4c67cbf9c7bc372a44c190f5a9719f5fb1e9`  
		Last Modified: Tue, 12 Dec 2017 14:34:16 GMT  
		Size: 3.9 MB (3912457 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2865f1bdf683cc300fe667d3fce8d278fa5bad277629b599dc4a9ec7c1ee3ba`  
		Last Modified: Tue, 12 Dec 2017 16:48:05 GMT  
		Size: 2.9 KB (2915 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4beeba172e909c15a803e043e0e13fe8c164bdf598c37743895f967691636996`  
		Last Modified: Tue, 12 Dec 2017 17:39:50 GMT  
		Size: 19.8 MB (19813319 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf63b94a459bb1b494def4a46a76dc7440021ecfccb03cbf14973b8c56ae946a`  
		Last Modified: Tue, 12 Dec 2017 17:39:43 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:841f191a3df44e1bcd22f3a4ca44c735bca4a7d1a77f91adaec7918923af4939`  
		Last Modified: Tue, 12 Dec 2017 17:39:43 GMT  
		Size: 208.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1cca5ab0fb431853db92a0581419c827b89c182ea641d7ad63d89323a4a8c7f2`  
		Last Modified: Tue, 12 Dec 2017 17:39:44 GMT  
		Size: 1.2 KB (1167 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `influxdb:1.4.3` - linux; arm64 variant v8

```console
$ docker pull influxdb@sha256:a9571dfaf06a57c39ebb65da0e6dce8d7d2f143ce6086dd1bd6b0893e601d57d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **76.3 MB (76314313 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cd5993bc287fce14c7b32b7fd5395762671d7b3c9a97040e31724308257d6e96`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Tue, 12 Dec 2017 18:33:14 GMT
ADD file:ae07a2e0bd59c986cf9cec3d7ce9a3db8f8034bac7b69938557e472980c70cdc in / 
# Tue, 12 Dec 2017 18:33:14 GMT
CMD ["bash"]
# Fri, 15 Dec 2017 16:14:25 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 15 Dec 2017 16:14:42 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 15 Dec 2017 21:27:31 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Fri, 15 Dec 2017 21:27:55 GMT
ENV INFLUXDB_VERSION=1.4.2
# Fri, 15 Dec 2017 21:28:01 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget -q https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_${ARCH}.deb.asc &&     wget -q https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     gpg --batch --verify influxdb_${INFLUXDB_VERSION}_${ARCH}.deb.asc influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     dpkg -i influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     rm -f influxdb_${INFLUXDB_VERSION}_${ARCH}.deb*
# Fri, 15 Dec 2017 21:28:03 GMT
COPY file:3ee2bc0321c2aa2451df7a508649c3a54f0eebc1ef9b8a24967c58105b4d3160 in /etc/influxdb/influxdb.conf 
# Fri, 15 Dec 2017 21:28:04 GMT
EXPOSE 8086/tcp
# Fri, 15 Dec 2017 21:28:04 GMT
VOLUME [/var/lib/influxdb]
# Fri, 15 Dec 2017 21:28:05 GMT
COPY file:098affa3d1b749dacb263ddacfd86a5de1f598d6ba1f7c789ce482c66ee9c80b in /entrypoint.sh 
# Fri, 15 Dec 2017 21:28:06 GMT
COPY file:8c68fc25e98c2a2f524d6b945934ef5ec3a3d95e8ac816c7f6e6d2783913da7a in /init-influxdb.sh 
# Fri, 15 Dec 2017 21:28:07 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 15 Dec 2017 21:28:07 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:91ea0aed359111bf5beb30e4bebd50fac25bc40a69e1bb3bf0f8e3c6dcd5fa7f`  
		Last Modified: Tue, 12 Dec 2017 18:47:08 GMT  
		Size: 42.9 MB (42912813 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc2797c29bc6ab5e2ad91b16dea60d7b6f0d4fffb5261f539870b43a7ffca40e`  
		Last Modified: Fri, 15 Dec 2017 17:19:24 GMT  
		Size: 10.1 MB (10066285 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8edcd3d8093caa7ca86f40f4413c1ae7ca97ae1480289f06339fff174a2a7d6a`  
		Last Modified: Fri, 15 Dec 2017 17:19:21 GMT  
		Size: 4.1 MB (4087788 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca6aeaa516d034de5a99b1352580c534769cbeb2498f5c6c899ecd9277bd7356`  
		Last Modified: Fri, 15 Dec 2017 21:28:18 GMT  
		Size: 2.9 KB (2890 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a8303a0d7862edfb4c095c6dffb4d406959d060fbc0e2a4bac68306da84f2bc`  
		Last Modified: Fri, 15 Dec 2017 21:28:46 GMT  
		Size: 19.2 MB (19242936 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f54ce3e6219eaff7cdafaa8f3614b2f66bf83b7851789e413e82ccfe3a03c665`  
		Last Modified: Fri, 15 Dec 2017 21:28:38 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14ba4b27b560b10f402a43322b8f0e9cbb0920f86d18c11e69f062e7b4854040`  
		Last Modified: Fri, 15 Dec 2017 21:28:38 GMT  
		Size: 209.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21a89272eebc8010ce4a8f3b18f41b629d670a980c0bdb6915ee05428d842a00`  
		Last Modified: Fri, 15 Dec 2017 21:28:37 GMT  
		Size: 1.2 KB (1166 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `influxdb:1.4.3-alpine`

```console
$ docker pull influxdb@sha256:a15d2082eb02e88087b95ef7131766ad70a4dd3d3d653eaa7069fc369cde41ab
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `influxdb:1.4.3-alpine` - linux; amd64

```console
$ docker pull influxdb@sha256:be6ff2d6c62504be7f083d814265b8696e7099964b2e92ccd59207a968e6d7b0
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **24.5 MB (24543558 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5ba40ae935c32c21458c8d32c4cefa05a3abfe7faac3d185255f5e12e4b51f04`
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
# Thu, 01 Feb 2018 00:40:55 GMT
RUN set -ex &&     apk add --no-cache --virtual .build-deps wget gnupg tar ca-certificates &&     update-ca-certificates &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done &&     wget -q https://dl.influxdata.com/influxdb/releases/influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc &&     wget -q https://dl.influxdata.com/influxdb/releases/influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/influxdb-*/influxdb.conf &&     chmod +x /usr/src/influxdb-*/* &&     cp -a /usr/src/influxdb-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Thu, 01 Feb 2018 00:40:56 GMT
COPY file:3ee2bc0321c2aa2451df7a508649c3a54f0eebc1ef9b8a24967c58105b4d3160 in /etc/influxdb/influxdb.conf 
# Thu, 01 Feb 2018 00:40:56 GMT
EXPOSE 8086/tcp
# Thu, 01 Feb 2018 00:40:56 GMT
VOLUME [/var/lib/influxdb]
# Thu, 01 Feb 2018 00:40:57 GMT
COPY file:098affa3d1b749dacb263ddacfd86a5de1f598d6ba1f7c789ce482c66ee9c80b in /entrypoint.sh 
# Thu, 01 Feb 2018 00:40:57 GMT
COPY file:8c68fc25e98c2a2f524d6b945934ef5ec3a3d95e8ac816c7f6e6d2783913da7a in /init-influxdb.sh 
# Thu, 01 Feb 2018 00:40:57 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 01 Feb 2018 00:40:57 GMT
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
	-	`sha256:530b2090a4ef16620da7d821e68635c50fb11b751c95766bc5c981e9fa259c16`  
		Last Modified: Thu, 01 Feb 2018 00:42:44 GMT  
		Size: 21.0 MB (21045787 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f15056f4bc8a62b4010a8f03d75d1df4b1efd9ae9ef0f2aa981a61485dd48224`  
		Last Modified: Thu, 01 Feb 2018 00:42:42 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:293eb9ac3ea317788242d809d65ed4bb657e777b51b40e397b6b13295e289a7e`  
		Last Modified: Thu, 01 Feb 2018 00:42:39 GMT  
		Size: 208.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c37bb7352a21b5d51711a44e144577206e8524ba6b7bc102f9eacec2f41c83c7`  
		Last Modified: Thu, 01 Feb 2018 00:42:39 GMT  
		Size: 1.2 KB (1167 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `influxdb:1.4-alpine`

```console
$ docker pull influxdb@sha256:a15d2082eb02e88087b95ef7131766ad70a4dd3d3d653eaa7069fc369cde41ab
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `influxdb:1.4-alpine` - linux; amd64

```console
$ docker pull influxdb@sha256:be6ff2d6c62504be7f083d814265b8696e7099964b2e92ccd59207a968e6d7b0
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **24.5 MB (24543558 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5ba40ae935c32c21458c8d32c4cefa05a3abfe7faac3d185255f5e12e4b51f04`
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
# Thu, 01 Feb 2018 00:40:55 GMT
RUN set -ex &&     apk add --no-cache --virtual .build-deps wget gnupg tar ca-certificates &&     update-ca-certificates &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done &&     wget -q https://dl.influxdata.com/influxdb/releases/influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc &&     wget -q https://dl.influxdata.com/influxdb/releases/influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/influxdb-*/influxdb.conf &&     chmod +x /usr/src/influxdb-*/* &&     cp -a /usr/src/influxdb-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Thu, 01 Feb 2018 00:40:56 GMT
COPY file:3ee2bc0321c2aa2451df7a508649c3a54f0eebc1ef9b8a24967c58105b4d3160 in /etc/influxdb/influxdb.conf 
# Thu, 01 Feb 2018 00:40:56 GMT
EXPOSE 8086/tcp
# Thu, 01 Feb 2018 00:40:56 GMT
VOLUME [/var/lib/influxdb]
# Thu, 01 Feb 2018 00:40:57 GMT
COPY file:098affa3d1b749dacb263ddacfd86a5de1f598d6ba1f7c789ce482c66ee9c80b in /entrypoint.sh 
# Thu, 01 Feb 2018 00:40:57 GMT
COPY file:8c68fc25e98c2a2f524d6b945934ef5ec3a3d95e8ac816c7f6e6d2783913da7a in /init-influxdb.sh 
# Thu, 01 Feb 2018 00:40:57 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 01 Feb 2018 00:40:57 GMT
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
	-	`sha256:530b2090a4ef16620da7d821e68635c50fb11b751c95766bc5c981e9fa259c16`  
		Last Modified: Thu, 01 Feb 2018 00:42:44 GMT  
		Size: 21.0 MB (21045787 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f15056f4bc8a62b4010a8f03d75d1df4b1efd9ae9ef0f2aa981a61485dd48224`  
		Last Modified: Thu, 01 Feb 2018 00:42:42 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:293eb9ac3ea317788242d809d65ed4bb657e777b51b40e397b6b13295e289a7e`  
		Last Modified: Thu, 01 Feb 2018 00:42:39 GMT  
		Size: 208.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c37bb7352a21b5d51711a44e144577206e8524ba6b7bc102f9eacec2f41c83c7`  
		Last Modified: Thu, 01 Feb 2018 00:42:39 GMT  
		Size: 1.2 KB (1167 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `influxdb:alpine`

```console
$ docker pull influxdb@sha256:a15d2082eb02e88087b95ef7131766ad70a4dd3d3d653eaa7069fc369cde41ab
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `influxdb:alpine` - linux; amd64

```console
$ docker pull influxdb@sha256:be6ff2d6c62504be7f083d814265b8696e7099964b2e92ccd59207a968e6d7b0
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **24.5 MB (24543558 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5ba40ae935c32c21458c8d32c4cefa05a3abfe7faac3d185255f5e12e4b51f04`
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
# Thu, 01 Feb 2018 00:40:55 GMT
RUN set -ex &&     apk add --no-cache --virtual .build-deps wget gnupg tar ca-certificates &&     update-ca-certificates &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done &&     wget -q https://dl.influxdata.com/influxdb/releases/influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc &&     wget -q https://dl.influxdata.com/influxdb/releases/influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/influxdb-*/influxdb.conf &&     chmod +x /usr/src/influxdb-*/* &&     cp -a /usr/src/influxdb-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Thu, 01 Feb 2018 00:40:56 GMT
COPY file:3ee2bc0321c2aa2451df7a508649c3a54f0eebc1ef9b8a24967c58105b4d3160 in /etc/influxdb/influxdb.conf 
# Thu, 01 Feb 2018 00:40:56 GMT
EXPOSE 8086/tcp
# Thu, 01 Feb 2018 00:40:56 GMT
VOLUME [/var/lib/influxdb]
# Thu, 01 Feb 2018 00:40:57 GMT
COPY file:098affa3d1b749dacb263ddacfd86a5de1f598d6ba1f7c789ce482c66ee9c80b in /entrypoint.sh 
# Thu, 01 Feb 2018 00:40:57 GMT
COPY file:8c68fc25e98c2a2f524d6b945934ef5ec3a3d95e8ac816c7f6e6d2783913da7a in /init-influxdb.sh 
# Thu, 01 Feb 2018 00:40:57 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 01 Feb 2018 00:40:57 GMT
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
	-	`sha256:530b2090a4ef16620da7d821e68635c50fb11b751c95766bc5c981e9fa259c16`  
		Last Modified: Thu, 01 Feb 2018 00:42:44 GMT  
		Size: 21.0 MB (21045787 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f15056f4bc8a62b4010a8f03d75d1df4b1efd9ae9ef0f2aa981a61485dd48224`  
		Last Modified: Thu, 01 Feb 2018 00:42:42 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:293eb9ac3ea317788242d809d65ed4bb657e777b51b40e397b6b13295e289a7e`  
		Last Modified: Thu, 01 Feb 2018 00:42:39 GMT  
		Size: 208.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c37bb7352a21b5d51711a44e144577206e8524ba6b7bc102f9eacec2f41c83c7`  
		Last Modified: Thu, 01 Feb 2018 00:42:39 GMT  
		Size: 1.2 KB (1167 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `influxdb:data`

```console
$ docker pull influxdb@sha256:97dc3db3cfd6080b9a1fcd6528b558016c54aeac4ecca0d49b2a561139793b98
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `influxdb:data` - linux; amd64

```console
$ docker pull influxdb@sha256:eb17212ad4b05cec0d41419823ea41975d4a38b15be440c3df490bf4fde74c47
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **80.6 MB (80554491 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c087166cee2cf4cda310058911e6e7a269d2922a48cc0aa30efc241621096d17`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Tue, 12 Dec 2017 01:44:20 GMT
ADD file:eb2519421c9794ccc99d483c07f59ba305531bc9b4dc294e74d2ddb7de69e52a in / 
# Tue, 12 Dec 2017 01:44:21 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 07:54:08 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 07:54:15 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 12 Dec 2017 12:45:00 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Tue, 23 Jan 2018 00:13:52 GMT
ENV INFLUXDB_VERSION=1.3.9-c1.3.9
# Tue, 23 Jan 2018 00:13:54 GMT
RUN wget -q https://dl.influxdata.com/enterprise/releases/influxdb-data_${INFLUXDB_VERSION}_amd64.deb.asc &&     wget -q https://dl.influxdata.com/enterprise/releases/influxdb-data_${INFLUXDB_VERSION}_amd64.deb &&     gpg --batch --verify influxdb-data_${INFLUXDB_VERSION}_amd64.deb.asc influxdb-data_${INFLUXDB_VERSION}_amd64.deb &&     dpkg -i influxdb-data_${INFLUXDB_VERSION}_amd64.deb &&     rm -f influxdb-data_${INFLUXDB_VERSION}_amd64.deb*
# Tue, 23 Jan 2018 00:14:04 GMT
COPY file:a7fc957fd6465cc132b5d41618061e4ac55bd347b790cd87cc496ab4f67a274b in /etc/influxdb/influxdb.conf 
# Tue, 23 Jan 2018 00:14:04 GMT
EXPOSE 8086/tcp
# Tue, 23 Jan 2018 00:14:04 GMT
VOLUME [/var/lib/influxdb]
# Tue, 23 Jan 2018 00:14:04 GMT
COPY file:efb819384a9e7a972c15df74e1d18c7d6296e633a7c533def9a6d400b69468fc in /entrypoint.sh 
# Tue, 23 Jan 2018 00:14:05 GMT
COPY file:8c68fc25e98c2a2f524d6b945934ef5ec3a3d95e8ac816c7f6e6d2783913da7a in /init-influxdb.sh 
# Tue, 23 Jan 2018 00:14:05 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 23 Jan 2018 00:14:05 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:723254a2c089166d4bcfa917be0181ddbecd94971ebfe85792d96e7e29be9c68`  
		Last Modified: Tue, 12 Dec 2017 01:53:22 GMT  
		Size: 45.1 MB (45121631 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:abe15a44e12f84b4aac20d4f2b450ec8638cc0b176c9130d1802cb4fed17d953`  
		Last Modified: Tue, 12 Dec 2017 08:03:48 GMT  
		Size: 11.1 MB (11107352 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:409a28e3cc3de08700c9d37c809a6d3aa43dc076402943919f4a78c286c60a0b`  
		Last Modified: Tue, 12 Dec 2017 08:03:48 GMT  
		Size: 4.3 MB (4335420 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:920d0ed5293ba6eddd661638fac496fab6c4af46ddb6a48f67a891a791986d6e`  
		Last Modified: Tue, 12 Dec 2017 12:46:04 GMT  
		Size: 2.9 KB (2895 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b777db319140b1f82e6e1e10c95fd4d9a112f49ac3149cb2e4f49fdab68ec8d`  
		Last Modified: Tue, 23 Jan 2018 00:19:01 GMT  
		Size: 20.0 MB (19985532 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b3f5f68519dc3e6c97e3c4b79ca2feeecd0f29155ad39d07d43b4ee36fc6928`  
		Last Modified: Tue, 23 Jan 2018 00:18:57 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d63103a677f716fe5e2546befbd84c04df48f2056359ead06cda33fb0f7651dc`  
		Last Modified: Tue, 23 Jan 2018 00:18:57 GMT  
		Size: 252.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e87cfbfcde48414735d2236637137eb86af05f6d8d9ac68ed9a93f56e5db0142`  
		Last Modified: Tue, 23 Jan 2018 00:18:57 GMT  
		Size: 1.2 KB (1168 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `influxdb:data-alpine`

```console
$ docker pull influxdb@sha256:d8239914f572acecfd61f027e9cee4d9fa4eda18cb60e6c1a5a7b6c6d42731ee
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `influxdb:data-alpine` - linux; amd64

```console
$ docker pull influxdb@sha256:c0c6f356e4ff4a49e68d8249593c4402d20f4c92c0743ce56408385c7952efda
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.7 MB (23728444 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:93d4d66958c05a0196dd06b7802f6336f4083444bd0f32f620e894408f30f101`
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
# Tue, 23 Jan 2018 00:14:27 GMT
ENV INFLUXDB_VERSION=1.3.9-c1.3.9
# Tue, 23 Jan 2018 00:14:35 GMT
RUN set -ex &&     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done &&     wget -q https://dl.influxdata.com/enterprise/releases/influxdb-data-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc &&     wget -q https://dl.influxdata.com/enterprise/releases/influxdb-data-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify influxdb-data-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc influxdb-data-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf influxdb-data-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/influxdb-*/influxdb.conf &&     chmod +x /usr/src/influxdb-*/* &&     cp -a /usr/src/influxdb-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Tue, 23 Jan 2018 00:14:35 GMT
COPY file:a7fc957fd6465cc132b5d41618061e4ac55bd347b790cd87cc496ab4f67a274b in /etc/influxdb/influxdb.conf 
# Tue, 23 Jan 2018 00:14:35 GMT
EXPOSE 8086/tcp
# Tue, 23 Jan 2018 00:14:36 GMT
VOLUME [/var/lib/influxdb]
# Tue, 23 Jan 2018 00:14:36 GMT
COPY file:efb819384a9e7a972c15df74e1d18c7d6296e633a7c533def9a6d400b69468fc in /entrypoint.sh 
# Tue, 23 Jan 2018 00:14:36 GMT
COPY file:8c68fc25e98c2a2f524d6b945934ef5ec3a3d95e8ac816c7f6e6d2783913da7a in /init-influxdb.sh 
# Tue, 23 Jan 2018 00:14:37 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 23 Jan 2018 00:14:37 GMT
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
	-	`sha256:53ef1efd91cfd084586039a7a7898cfec7913829a70b4cbd2f0fd359ea13342e`  
		Last Modified: Tue, 23 Jan 2018 00:20:02 GMT  
		Size: 19.9 MB (19886306 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed94e7884749b58593fc168b3eba5e12d3b6dcc346d6b8a927e770c74a1c1719`  
		Last Modified: Tue, 23 Jan 2018 00:19:57 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d583759593d61cd44d6ef528aaca47569d868d1c51bc3adad75b7e8932d78001`  
		Last Modified: Tue, 23 Jan 2018 00:19:59 GMT  
		Size: 251.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1801ab4b0fb5f0f9b16443340e2c38e10948e403195ac3f38ca22d1ce3240498`  
		Last Modified: Tue, 23 Jan 2018 00:19:58 GMT  
		Size: 1.2 KB (1168 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `influxdb:latest`

```console
$ docker pull influxdb@sha256:763ca416cec24b92cb8bf07c4d85a7c76bf766362411e4d04c2d7ca9216a7f8b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `influxdb:latest` - linux; amd64

```console
$ docker pull influxdb@sha256:2d611a1643b01a9fbecfbc04a51b467fc599facbdd0e3472d4199286a8b73e11
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **81.7 MB (81727976 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9f8135a319d3b30c13184c9d05cbf78777bc28a21fc5d004db56068eb2fad579`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Tue, 12 Dec 2017 01:44:20 GMT
ADD file:eb2519421c9794ccc99d483c07f59ba305531bc9b4dc294e74d2ddb7de69e52a in / 
# Tue, 12 Dec 2017 01:44:21 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 07:54:08 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 07:54:15 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 12 Dec 2017 12:45:00 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Thu, 01 Feb 2018 00:39:59 GMT
ENV INFLUXDB_VERSION=1.4.3
# Thu, 01 Feb 2018 00:40:03 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget -q https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_${ARCH}.deb.asc &&     wget -q https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     gpg --batch --verify influxdb_${INFLUXDB_VERSION}_${ARCH}.deb.asc influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     dpkg -i influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     rm -f influxdb_${INFLUXDB_VERSION}_${ARCH}.deb*
# Thu, 01 Feb 2018 00:40:03 GMT
COPY file:3ee2bc0321c2aa2451df7a508649c3a54f0eebc1ef9b8a24967c58105b4d3160 in /etc/influxdb/influxdb.conf 
# Thu, 01 Feb 2018 00:40:04 GMT
EXPOSE 8086/tcp
# Thu, 01 Feb 2018 00:40:04 GMT
VOLUME [/var/lib/influxdb]
# Thu, 01 Feb 2018 00:40:04 GMT
COPY file:098affa3d1b749dacb263ddacfd86a5de1f598d6ba1f7c789ce482c66ee9c80b in /entrypoint.sh 
# Thu, 01 Feb 2018 00:40:05 GMT
COPY file:8c68fc25e98c2a2f524d6b945934ef5ec3a3d95e8ac816c7f6e6d2783913da7a in /init-influxdb.sh 
# Thu, 01 Feb 2018 00:40:05 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 01 Feb 2018 00:40:05 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:723254a2c089166d4bcfa917be0181ddbecd94971ebfe85792d96e7e29be9c68`  
		Last Modified: Tue, 12 Dec 2017 01:53:22 GMT  
		Size: 45.1 MB (45121631 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:abe15a44e12f84b4aac20d4f2b450ec8638cc0b176c9130d1802cb4fed17d953`  
		Last Modified: Tue, 12 Dec 2017 08:03:48 GMT  
		Size: 11.1 MB (11107352 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:409a28e3cc3de08700c9d37c809a6d3aa43dc076402943919f4a78c286c60a0b`  
		Last Modified: Tue, 12 Dec 2017 08:03:48 GMT  
		Size: 4.3 MB (4335420 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:920d0ed5293ba6eddd661638fac496fab6c4af46ddb6a48f67a891a791986d6e`  
		Last Modified: Tue, 12 Dec 2017 12:46:04 GMT  
		Size: 2.9 KB (2895 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5abfd9ddc4f8a6efad5e0a948a4b1f689333f176fdcd3211f27dba46be03738e`  
		Last Modified: Thu, 01 Feb 2018 00:41:34 GMT  
		Size: 21.2 MB (21159077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c85a74024420a5272b8af00dc305129ca0e8c8841584565d0b638f0579917b6`  
		Last Modified: Thu, 01 Feb 2018 00:41:29 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67417790f6eafdcfd34a0d78c84351a510e7dc401db5e2086066a1a0eddbad76`  
		Last Modified: Thu, 01 Feb 2018 00:41:30 GMT  
		Size: 211.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:310fcefee441eaa8aa8ba53b65208158ac60d7866fe5f8ecc51d9161d809fe5b`  
		Last Modified: Thu, 01 Feb 2018 00:41:30 GMT  
		Size: 1.2 KB (1167 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `influxdb:latest` - linux; arm variant v7

```console
$ docker pull influxdb@sha256:c7a76f078fed787089564ded217cd01c2db439aadb21dd1497e9744fc3113c0f
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **75.4 MB (75404549 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:59c7804a120f82cc0fba91312d909144fa73b4b6507ea484521c0f75f32ee7cc`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Tue, 12 Dec 2017 13:32:59 GMT
ADD file:d49e67cdc6ae27f43c5c002d96bff764fd43188dd7e8036f5d5f8c44eb12dcad in / 
# Tue, 12 Dec 2017 13:32:59 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 14:21:12 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 14:21:22 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 12 Dec 2017 16:47:06 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Tue, 12 Dec 2017 17:38:22 GMT
ENV INFLUXDB_VERSION=1.4.2
# Tue, 12 Dec 2017 17:38:39 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget -q https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_${ARCH}.deb.asc &&     wget -q https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     gpg --batch --verify influxdb_${INFLUXDB_VERSION}_${ARCH}.deb.asc influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     dpkg -i influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     rm -f influxdb_${INFLUXDB_VERSION}_${ARCH}.deb*
# Tue, 12 Dec 2017 17:38:40 GMT
COPY file:3ee2bc0321c2aa2451df7a508649c3a54f0eebc1ef9b8a24967c58105b4d3160 in /etc/influxdb/influxdb.conf 
# Tue, 12 Dec 2017 17:38:40 GMT
EXPOSE 8086/tcp
# Tue, 12 Dec 2017 17:38:41 GMT
VOLUME [/var/lib/influxdb]
# Tue, 12 Dec 2017 17:38:42 GMT
COPY file:098affa3d1b749dacb263ddacfd86a5de1f598d6ba1f7c789ce482c66ee9c80b in /entrypoint.sh 
# Tue, 12 Dec 2017 17:38:43 GMT
COPY file:8c68fc25e98c2a2f524d6b945934ef5ec3a3d95e8ac816c7f6e6d2783913da7a in /init-influxdb.sh 
# Tue, 12 Dec 2017 17:38:43 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 12 Dec 2017 17:38:44 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:0e10ef01c84000f6f5865b480436e689e2d437a4a8b63b01d5ce85532872b636`  
		Last Modified: Tue, 12 Dec 2017 13:44:34 GMT  
		Size: 41.8 MB (41849695 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ed40614ea2a08dbc6237155db97d58d7051efa214bab1fd556c4414db68cb7c`  
		Last Modified: Tue, 12 Dec 2017 14:34:18 GMT  
		Size: 9.8 MB (9824565 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad0ea8727ac09b97803f430b101f4c67cbf9c7bc372a44c190f5a9719f5fb1e9`  
		Last Modified: Tue, 12 Dec 2017 14:34:16 GMT  
		Size: 3.9 MB (3912457 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2865f1bdf683cc300fe667d3fce8d278fa5bad277629b599dc4a9ec7c1ee3ba`  
		Last Modified: Tue, 12 Dec 2017 16:48:05 GMT  
		Size: 2.9 KB (2915 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4beeba172e909c15a803e043e0e13fe8c164bdf598c37743895f967691636996`  
		Last Modified: Tue, 12 Dec 2017 17:39:50 GMT  
		Size: 19.8 MB (19813319 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf63b94a459bb1b494def4a46a76dc7440021ecfccb03cbf14973b8c56ae946a`  
		Last Modified: Tue, 12 Dec 2017 17:39:43 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:841f191a3df44e1bcd22f3a4ca44c735bca4a7d1a77f91adaec7918923af4939`  
		Last Modified: Tue, 12 Dec 2017 17:39:43 GMT  
		Size: 208.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1cca5ab0fb431853db92a0581419c827b89c182ea641d7ad63d89323a4a8c7f2`  
		Last Modified: Tue, 12 Dec 2017 17:39:44 GMT  
		Size: 1.2 KB (1167 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `influxdb:latest` - linux; arm64 variant v8

```console
$ docker pull influxdb@sha256:a9571dfaf06a57c39ebb65da0e6dce8d7d2f143ce6086dd1bd6b0893e601d57d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **76.3 MB (76314313 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cd5993bc287fce14c7b32b7fd5395762671d7b3c9a97040e31724308257d6e96`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Tue, 12 Dec 2017 18:33:14 GMT
ADD file:ae07a2e0bd59c986cf9cec3d7ce9a3db8f8034bac7b69938557e472980c70cdc in / 
# Tue, 12 Dec 2017 18:33:14 GMT
CMD ["bash"]
# Fri, 15 Dec 2017 16:14:25 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 15 Dec 2017 16:14:42 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 15 Dec 2017 21:27:31 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Fri, 15 Dec 2017 21:27:55 GMT
ENV INFLUXDB_VERSION=1.4.2
# Fri, 15 Dec 2017 21:28:01 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget -q https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_${ARCH}.deb.asc &&     wget -q https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     gpg --batch --verify influxdb_${INFLUXDB_VERSION}_${ARCH}.deb.asc influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     dpkg -i influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     rm -f influxdb_${INFLUXDB_VERSION}_${ARCH}.deb*
# Fri, 15 Dec 2017 21:28:03 GMT
COPY file:3ee2bc0321c2aa2451df7a508649c3a54f0eebc1ef9b8a24967c58105b4d3160 in /etc/influxdb/influxdb.conf 
# Fri, 15 Dec 2017 21:28:04 GMT
EXPOSE 8086/tcp
# Fri, 15 Dec 2017 21:28:04 GMT
VOLUME [/var/lib/influxdb]
# Fri, 15 Dec 2017 21:28:05 GMT
COPY file:098affa3d1b749dacb263ddacfd86a5de1f598d6ba1f7c789ce482c66ee9c80b in /entrypoint.sh 
# Fri, 15 Dec 2017 21:28:06 GMT
COPY file:8c68fc25e98c2a2f524d6b945934ef5ec3a3d95e8ac816c7f6e6d2783913da7a in /init-influxdb.sh 
# Fri, 15 Dec 2017 21:28:07 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 15 Dec 2017 21:28:07 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:91ea0aed359111bf5beb30e4bebd50fac25bc40a69e1bb3bf0f8e3c6dcd5fa7f`  
		Last Modified: Tue, 12 Dec 2017 18:47:08 GMT  
		Size: 42.9 MB (42912813 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc2797c29bc6ab5e2ad91b16dea60d7b6f0d4fffb5261f539870b43a7ffca40e`  
		Last Modified: Fri, 15 Dec 2017 17:19:24 GMT  
		Size: 10.1 MB (10066285 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8edcd3d8093caa7ca86f40f4413c1ae7ca97ae1480289f06339fff174a2a7d6a`  
		Last Modified: Fri, 15 Dec 2017 17:19:21 GMT  
		Size: 4.1 MB (4087788 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca6aeaa516d034de5a99b1352580c534769cbeb2498f5c6c899ecd9277bd7356`  
		Last Modified: Fri, 15 Dec 2017 21:28:18 GMT  
		Size: 2.9 KB (2890 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a8303a0d7862edfb4c095c6dffb4d406959d060fbc0e2a4bac68306da84f2bc`  
		Last Modified: Fri, 15 Dec 2017 21:28:46 GMT  
		Size: 19.2 MB (19242936 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f54ce3e6219eaff7cdafaa8f3614b2f66bf83b7851789e413e82ccfe3a03c665`  
		Last Modified: Fri, 15 Dec 2017 21:28:38 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14ba4b27b560b10f402a43322b8f0e9cbb0920f86d18c11e69f062e7b4854040`  
		Last Modified: Fri, 15 Dec 2017 21:28:38 GMT  
		Size: 209.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21a89272eebc8010ce4a8f3b18f41b629d670a980c0bdb6915ee05428d842a00`  
		Last Modified: Fri, 15 Dec 2017 21:28:37 GMT  
		Size: 1.2 KB (1166 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `influxdb:meta`

```console
$ docker pull influxdb@sha256:34a35ed7b36254f2d0f620bfd6017db7a007254f11637d0e48c271002d4f55dd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `influxdb:meta` - linux; amd64

```console
$ docker pull influxdb@sha256:c6212c00cee9b893075434b22c795cd0027f93c540f3bb6ee1e551bc30d85a7c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **69.8 MB (69843809 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7209a7cb71ec30be5c6b1e273078be685ae11b13bf177653e8af7cd07a6a8e96`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd-meta"]`

```dockerfile
# Tue, 12 Dec 2017 01:44:20 GMT
ADD file:eb2519421c9794ccc99d483c07f59ba305531bc9b4dc294e74d2ddb7de69e52a in / 
# Tue, 12 Dec 2017 01:44:21 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 07:54:08 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 07:54:15 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 12 Dec 2017 12:45:00 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Tue, 23 Jan 2018 00:13:52 GMT
ENV INFLUXDB_VERSION=1.3.9-c1.3.9
# Tue, 23 Jan 2018 00:15:11 GMT
RUN wget -q https://dl.influxdata.com/enterprise/releases/influxdb-meta_${INFLUXDB_VERSION}_amd64.deb.asc &&     wget -q https://dl.influxdata.com/enterprise/releases/influxdb-meta_${INFLUXDB_VERSION}_amd64.deb &&     gpg --batch --verify influxdb-meta_${INFLUXDB_VERSION}_amd64.deb.asc influxdb-meta_${INFLUXDB_VERSION}_amd64.deb &&     dpkg -i influxdb-meta_${INFLUXDB_VERSION}_amd64.deb &&     rm -f influxdb-meta_${INFLUXDB_VERSION}_amd64.deb*
# Tue, 23 Jan 2018 00:15:21 GMT
COPY file:95a6fe33e203909c093135fff9ff2b4cdc02ca4f1fe1dec109b5a9cf6b7a0946 in /etc/influxdb/influxdb-meta.conf 
# Tue, 23 Jan 2018 00:15:21 GMT
EXPOSE 8091/tcp
# Tue, 23 Jan 2018 00:15:21 GMT
VOLUME [/var/lib/influxdb]
# Tue, 23 Jan 2018 00:15:22 GMT
COPY file:b4fa000cf2aff5bf4e5093021ca6255fffa17c43ae18eb4c55ae28a3cc2dc281 in /entrypoint.sh 
# Tue, 23 Jan 2018 00:15:22 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 23 Jan 2018 00:15:22 GMT
CMD ["influxd-meta"]
```

-	Layers:
	-	`sha256:723254a2c089166d4bcfa917be0181ddbecd94971ebfe85792d96e7e29be9c68`  
		Last Modified: Tue, 12 Dec 2017 01:53:22 GMT  
		Size: 45.1 MB (45121631 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:abe15a44e12f84b4aac20d4f2b450ec8638cc0b176c9130d1802cb4fed17d953`  
		Last Modified: Tue, 12 Dec 2017 08:03:48 GMT  
		Size: 11.1 MB (11107352 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:409a28e3cc3de08700c9d37c809a6d3aa43dc076402943919f4a78c286c60a0b`  
		Last Modified: Tue, 12 Dec 2017 08:03:48 GMT  
		Size: 4.3 MB (4335420 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:920d0ed5293ba6eddd661638fac496fab6c4af46ddb6a48f67a891a791986d6e`  
		Last Modified: Tue, 12 Dec 2017 12:46:04 GMT  
		Size: 2.9 KB (2895 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd90a2011e52a575b8009a633273881b85e3580b1327cfb4f0be88e7657933f0`  
		Last Modified: Tue, 23 Jan 2018 00:20:46 GMT  
		Size: 9.3 MB (9275941 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c65904c3362e11b0be811ccfc57cfd0350b6a07dbe0537f044ce90862b373bde`  
		Last Modified: Tue, 23 Jan 2018 00:20:44 GMT  
		Size: 196.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b6a613ebfd7779fd99c943f0561edae4d433f3017246de610dad3d01b22ba4b`  
		Last Modified: Tue, 23 Jan 2018 00:20:44 GMT  
		Size: 374.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `influxdb:meta-alpine`

```console
$ docker pull influxdb@sha256:2d7541ff05332338ab6084d2745e1a17e26b932adc5044cb9b30b80c77fa8197
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `influxdb:meta-alpine` - linux; amd64

```console
$ docker pull influxdb@sha256:6f5743533aa3b04a494ffeabb50c2e79d0d9dd744d681f937135ee67284625e8
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.1 MB (13071812 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e97cf18245e862a20d42c2b227f4454c4272fa0015e2301d8ce383317fda9c61`
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
# Tue, 23 Jan 2018 00:14:27 GMT
ENV INFLUXDB_VERSION=1.3.9-c1.3.9
# Tue, 23 Jan 2018 00:15:55 GMT
RUN set -ex &&     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done &&     wget -q https://dl.influxdata.com/enterprise/releases/influxdb-meta-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc &&     wget -q https://dl.influxdata.com/enterprise/releases/influxdb-meta-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify influxdb-meta-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc influxdb-meta-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf influxdb-meta-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/influxdb-*/influxdb-meta.conf &&     chmod +x /usr/src/influxdb-*/* &&     cp -a /usr/src/influxdb-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Tue, 23 Jan 2018 00:15:57 GMT
COPY file:95a6fe33e203909c093135fff9ff2b4cdc02ca4f1fe1dec109b5a9cf6b7a0946 in /etc/influxdb/influxdb-meta.conf 
# Tue, 23 Jan 2018 00:15:57 GMT
EXPOSE 8091/tcp
# Tue, 23 Jan 2018 00:15:58 GMT
VOLUME [/var/lib/influxdb]
# Tue, 23 Jan 2018 00:15:58 GMT
COPY file:b4fa000cf2aff5bf4e5093021ca6255fffa17c43ae18eb4c55ae28a3cc2dc281 in /entrypoint.sh 
# Tue, 23 Jan 2018 00:16:08 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 23 Jan 2018 00:16:08 GMT
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
	-	`sha256:c7296d9bbe3c19e7f654b9f77c6855cf32d2728f55398304113ddaa85a288ce4`  
		Last Modified: Tue, 23 Jan 2018 00:21:42 GMT  
		Size: 9.2 MB (9230765 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:935fb0c6f1c583a6efc69c66e8fb8821dfc5e4c9ac7e1670049d8f2125781069`  
		Last Modified: Tue, 23 Jan 2018 00:21:40 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ee8831b6d549e8aed4f575d2600b924a64f801bb62292a3c57658756dd6197a`  
		Last Modified: Tue, 23 Jan 2018 00:21:40 GMT  
		Size: 374.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
