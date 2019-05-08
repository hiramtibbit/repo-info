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
$ docker pull influxdb@sha256:bc8dd17828c3f25c4746c56cfd5de944b66737189db4b5844a70c89d8458a0ae
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `influxdb:1.5` - linux; amd64

```console
$ docker pull influxdb@sha256:20299927bfae35ea8ab81ddca06c6b5df0ae59e97d4706db040fe131fdd7aae4
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **83.5 MB (83497597 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7628589901d1e6fbcd343d3c4a081ac4b543ed65ca56f23dbda755c14cd84112`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Wed, 08 May 2019 00:33:09 GMT
ADD file:caf91edab64f988bc24766c58ee66c00311c7c921296b8e5b51d7023422a1485 in / 
# Wed, 08 May 2019 00:33:10 GMT
CMD ["bash"]
# Wed, 08 May 2019 01:40:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 01:40:12 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 08 May 2019 07:34:07 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Wed, 08 May 2019 07:34:07 GMT
ENV INFLUXDB_VERSION=1.5.4
# Wed, 08 May 2019 07:34:12 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     gpg --batch --verify influxdb_${INFLUXDB_VERSION}_${ARCH}.deb.asc influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     dpkg -i influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     rm -f influxdb_${INFLUXDB_VERSION}_${ARCH}.deb*
# Wed, 08 May 2019 07:34:12 GMT
COPY file:3d8a606d61e1fc0042cf34d036eda4550a18d140c47376dacc02d96ee6f2dd8b in /etc/influxdb/influxdb.conf 
# Wed, 08 May 2019 07:34:12 GMT
EXPOSE 8086
# Wed, 08 May 2019 07:34:12 GMT
VOLUME [/var/lib/influxdb]
# Wed, 08 May 2019 07:34:13 GMT
COPY file:61c4af7a0e637328374ec46266ed6dde40adf7d14ac6c5081100924991beb7f3 in /entrypoint.sh 
# Wed, 08 May 2019 07:34:13 GMT
COPY file:892fcd3130baa17c0b88866ac37e7fe0b7b420a67105d9cd99803c685eaf9df4 in /init-influxdb.sh 
# Wed, 08 May 2019 07:34:13 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 08 May 2019 07:34:14 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:c5e155d5a1d130a7f8a3e24cee0d9e1349bff13f90ec6a941478e558fde53c14`  
		Last Modified: Wed, 08 May 2019 00:37:42 GMT  
		Size: 45.3 MB (45339314 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:221d80d00ae9675aad24913aacbadfac1ce8b7084f9765a6c0813486082c5c69`  
		Last Modified: Wed, 08 May 2019 01:45:42 GMT  
		Size: 10.8 MB (10784878 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4250b3117dca5e14edc32ebf1366cd54e4cda91f17610b76c504a86917ff8b95`  
		Last Modified: Wed, 08 May 2019 01:45:41 GMT  
		Size: 4.3 MB (4340094 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e51b6917b8bea39091733d42fc84ed055d24bab253f1180353c2f0fc24cddfa`  
		Last Modified: Wed, 08 May 2019 07:36:49 GMT  
		Size: 2.8 KB (2772 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fce17f6e1dedf95d4e055dd6a5780980f9981d5f9b84dfca4fbe8b6c1a3d6631`  
		Last Modified: Wed, 08 May 2019 07:36:56 GMT  
		Size: 23.0 MB (23028938 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fcd122848c808ceacaf1639fdff0811dcc3e1eddea7a6b5bfa4d788acfe1d80a`  
		Last Modified: Wed, 08 May 2019 07:36:49 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a300d9a603a01a1f4abeb73ae5d229a5176f50a047c1721d7a5494122bb4bcdd`  
		Last Modified: Wed, 08 May 2019 07:36:49 GMT  
		Size: 209.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0da0e0301c229ddfaa74c986af6d5cead8be708ae9a6a501ff12edbf745b38fc`  
		Last Modified: Wed, 08 May 2019 07:36:49 GMT  
		Size: 1.2 KB (1166 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `influxdb:1.5` - linux; arm variant v7

```console
$ docker pull influxdb@sha256:4b5efb4b194d9255cdaf827c5c4f1f9bbc530a33660cba802d56d97cf0f21b5b
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **77.1 MB (77149653 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a3e7726385e40a63ca81a3f9fa53bc76de4d65293e56797be6c90c9386cc6e51`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Wed, 08 May 2019 12:03:26 GMT
ADD file:7e8dcc40e246d53b86266855a2de8080d26e6b4ed9f594c1acc565784405735b in / 
# Wed, 08 May 2019 12:03:27 GMT
CMD ["bash"]
# Wed, 08 May 2019 13:04:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 13:04:42 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 08 May 2019 16:17:27 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Wed, 08 May 2019 16:17:27 GMT
ENV INFLUXDB_VERSION=1.5.4
# Wed, 08 May 2019 16:17:32 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     gpg --batch --verify influxdb_${INFLUXDB_VERSION}_${ARCH}.deb.asc influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     dpkg -i influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     rm -f influxdb_${INFLUXDB_VERSION}_${ARCH}.deb*
# Wed, 08 May 2019 16:17:33 GMT
COPY file:3d8a606d61e1fc0042cf34d036eda4550a18d140c47376dacc02d96ee6f2dd8b in /etc/influxdb/influxdb.conf 
# Wed, 08 May 2019 16:17:34 GMT
EXPOSE 8086
# Wed, 08 May 2019 16:17:34 GMT
VOLUME [/var/lib/influxdb]
# Wed, 08 May 2019 16:17:35 GMT
COPY file:61c4af7a0e637328374ec46266ed6dde40adf7d14ac6c5081100924991beb7f3 in /entrypoint.sh 
# Wed, 08 May 2019 16:17:35 GMT
COPY file:892fcd3130baa17c0b88866ac37e7fe0b7b420a67105d9cd99803c685eaf9df4 in /init-influxdb.sh 
# Wed, 08 May 2019 16:17:36 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 08 May 2019 16:17:36 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:f2a2fd7c1ab35cd1b5ea6fcc2b801f3877852797e2698ecdb9556e0dee3accb5`  
		Last Modified: Wed, 08 May 2019 12:09:40 GMT  
		Size: 42.1 MB (42082604 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:047df9a92c9f7376283a8d6af526f5126d95995ba48dd7de49979ef57da3e15b`  
		Last Modified: Wed, 08 May 2019 13:12:20 GMT  
		Size: 9.5 MB (9485167 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ddeed4ac8d1e2c751afd6fd3517f1d154365467039353c377c8206fd5eb81d4b`  
		Last Modified: Wed, 08 May 2019 13:12:18 GMT  
		Size: 3.9 MB (3918605 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b668daec8214e7fe112e89f2ad6e22651d66c490c182af5be7b786ca304c7b5`  
		Last Modified: Wed, 08 May 2019 16:18:17 GMT  
		Size: 2.8 KB (2801 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d416f9d8ab718db174bf7db40424bddb0a62088b829a6ce6083880a07859c6e6`  
		Last Modified: Wed, 08 May 2019 16:18:25 GMT  
		Size: 21.7 MB (21658873 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3eca76a2efe6685f1276919e019919b3a0921e2799186ddc68abb42e0dbda303`  
		Last Modified: Wed, 08 May 2019 16:18:17 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b11a48315f8f005406e2c9dc0b7e816f311047e8d2393ed02eda70466314533`  
		Last Modified: Wed, 08 May 2019 16:18:17 GMT  
		Size: 211.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c194a970245c2c018e1c62e2637dfd546e0c5af4abf82302bdf118f5e00a883e`  
		Last Modified: Wed, 08 May 2019 16:18:17 GMT  
		Size: 1.2 KB (1167 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `influxdb:1.5` - linux; arm64 variant v8

```console
$ docker pull influxdb@sha256:c4c1edc5d6d3aec8d3486c5431521ab58dfe9bd35b1b0c3350edd136c78555de
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **78.0 MB (77971278 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dc0dad29353d341a406d6f7035ae1545555756a13b51d0697f498be256fe35d1`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Wed, 27 Mar 2019 08:47:20 GMT
ADD file:8f991b13b28ce1de362b9f00e69aac8edc28124a08adeeb3b7fb02153e0b4e92 in / 
# Wed, 27 Mar 2019 08:47:21 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 10:15:55 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 10:16:13 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 27 Mar 2019 23:45:16 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Wed, 27 Mar 2019 23:45:17 GMT
ENV INFLUXDB_VERSION=1.5.4
# Wed, 27 Mar 2019 23:45:25 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     gpg --batch --verify influxdb_${INFLUXDB_VERSION}_${ARCH}.deb.asc influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     dpkg -i influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     rm -f influxdb_${INFLUXDB_VERSION}_${ARCH}.deb*
# Wed, 27 Mar 2019 23:45:26 GMT
COPY file:3d8a606d61e1fc0042cf34d036eda4550a18d140c47376dacc02d96ee6f2dd8b in /etc/influxdb/influxdb.conf 
# Wed, 27 Mar 2019 23:45:27 GMT
EXPOSE 8086
# Wed, 27 Mar 2019 23:45:28 GMT
VOLUME [/var/lib/influxdb]
# Wed, 27 Mar 2019 23:45:29 GMT
COPY file:61c4af7a0e637328374ec46266ed6dde40adf7d14ac6c5081100924991beb7f3 in /entrypoint.sh 
# Wed, 27 Mar 2019 23:45:30 GMT
COPY file:892fcd3130baa17c0b88866ac37e7fe0b7b420a67105d9cd99803c685eaf9df4 in /init-influxdb.sh 
# Wed, 27 Mar 2019 23:45:31 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 27 Mar 2019 23:45:32 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:5385e634d2a1a330aea59f510b0676b269167a579dddb586b27917d80d0dfd01`  
		Last Modified: Wed, 27 Mar 2019 08:52:30 GMT  
		Size: 43.1 MB (43132000 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6696bae2f570e0c96dcb21308e525216796d3452d1a9b8dcaba168ba37f3f464`  
		Last Modified: Wed, 27 Mar 2019 10:36:08 GMT  
		Size: 9.7 MB (9730463 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6dca82770cb3702e9c92d2f155923c0fb55671c1c373b8b50640b7bf05ed8418`  
		Last Modified: Wed, 27 Mar 2019 10:36:05 GMT  
		Size: 4.1 MB (4094072 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56a1a37594e065b68838715135cc87c8000f3e4f977d81709d1dc0b1f54ca93d`  
		Last Modified: Wed, 27 Mar 2019 23:46:46 GMT  
		Size: 2.8 KB (2776 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:569ed7dd30012e0c7844cd2d303613f9871b9594c9eac1d0e9a164f6a6d87272`  
		Last Modified: Wed, 27 Mar 2019 23:46:57 GMT  
		Size: 21.0 MB (21010364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a382fe6e8ddc4f431ec90c020e7059da37db142fa51998d801fb7a8adf9c2e9`  
		Last Modified: Wed, 27 Mar 2019 23:46:45 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05d9ada926ea18c4b189024360c32aa3c7c4c97e9dcd9f4af553b0054a1e7567`  
		Last Modified: Wed, 27 Mar 2019 23:46:45 GMT  
		Size: 210.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9cb75d999de87e543d141b5cc8c5b6ed581d525b727dd681adfff59507f89fe`  
		Last Modified: Wed, 27 Mar 2019 23:46:46 GMT  
		Size: 1.2 KB (1167 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `influxdb:1.5.4`

```console
$ docker pull influxdb@sha256:bc8dd17828c3f25c4746c56cfd5de944b66737189db4b5844a70c89d8458a0ae
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `influxdb:1.5.4` - linux; amd64

```console
$ docker pull influxdb@sha256:20299927bfae35ea8ab81ddca06c6b5df0ae59e97d4706db040fe131fdd7aae4
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **83.5 MB (83497597 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7628589901d1e6fbcd343d3c4a081ac4b543ed65ca56f23dbda755c14cd84112`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Wed, 08 May 2019 00:33:09 GMT
ADD file:caf91edab64f988bc24766c58ee66c00311c7c921296b8e5b51d7023422a1485 in / 
# Wed, 08 May 2019 00:33:10 GMT
CMD ["bash"]
# Wed, 08 May 2019 01:40:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 01:40:12 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 08 May 2019 07:34:07 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Wed, 08 May 2019 07:34:07 GMT
ENV INFLUXDB_VERSION=1.5.4
# Wed, 08 May 2019 07:34:12 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     gpg --batch --verify influxdb_${INFLUXDB_VERSION}_${ARCH}.deb.asc influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     dpkg -i influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     rm -f influxdb_${INFLUXDB_VERSION}_${ARCH}.deb*
# Wed, 08 May 2019 07:34:12 GMT
COPY file:3d8a606d61e1fc0042cf34d036eda4550a18d140c47376dacc02d96ee6f2dd8b in /etc/influxdb/influxdb.conf 
# Wed, 08 May 2019 07:34:12 GMT
EXPOSE 8086
# Wed, 08 May 2019 07:34:12 GMT
VOLUME [/var/lib/influxdb]
# Wed, 08 May 2019 07:34:13 GMT
COPY file:61c4af7a0e637328374ec46266ed6dde40adf7d14ac6c5081100924991beb7f3 in /entrypoint.sh 
# Wed, 08 May 2019 07:34:13 GMT
COPY file:892fcd3130baa17c0b88866ac37e7fe0b7b420a67105d9cd99803c685eaf9df4 in /init-influxdb.sh 
# Wed, 08 May 2019 07:34:13 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 08 May 2019 07:34:14 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:c5e155d5a1d130a7f8a3e24cee0d9e1349bff13f90ec6a941478e558fde53c14`  
		Last Modified: Wed, 08 May 2019 00:37:42 GMT  
		Size: 45.3 MB (45339314 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:221d80d00ae9675aad24913aacbadfac1ce8b7084f9765a6c0813486082c5c69`  
		Last Modified: Wed, 08 May 2019 01:45:42 GMT  
		Size: 10.8 MB (10784878 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4250b3117dca5e14edc32ebf1366cd54e4cda91f17610b76c504a86917ff8b95`  
		Last Modified: Wed, 08 May 2019 01:45:41 GMT  
		Size: 4.3 MB (4340094 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e51b6917b8bea39091733d42fc84ed055d24bab253f1180353c2f0fc24cddfa`  
		Last Modified: Wed, 08 May 2019 07:36:49 GMT  
		Size: 2.8 KB (2772 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fce17f6e1dedf95d4e055dd6a5780980f9981d5f9b84dfca4fbe8b6c1a3d6631`  
		Last Modified: Wed, 08 May 2019 07:36:56 GMT  
		Size: 23.0 MB (23028938 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fcd122848c808ceacaf1639fdff0811dcc3e1eddea7a6b5bfa4d788acfe1d80a`  
		Last Modified: Wed, 08 May 2019 07:36:49 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a300d9a603a01a1f4abeb73ae5d229a5176f50a047c1721d7a5494122bb4bcdd`  
		Last Modified: Wed, 08 May 2019 07:36:49 GMT  
		Size: 209.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0da0e0301c229ddfaa74c986af6d5cead8be708ae9a6a501ff12edbf745b38fc`  
		Last Modified: Wed, 08 May 2019 07:36:49 GMT  
		Size: 1.2 KB (1166 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `influxdb:1.5.4` - linux; arm variant v7

```console
$ docker pull influxdb@sha256:4b5efb4b194d9255cdaf827c5c4f1f9bbc530a33660cba802d56d97cf0f21b5b
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **77.1 MB (77149653 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a3e7726385e40a63ca81a3f9fa53bc76de4d65293e56797be6c90c9386cc6e51`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Wed, 08 May 2019 12:03:26 GMT
ADD file:7e8dcc40e246d53b86266855a2de8080d26e6b4ed9f594c1acc565784405735b in / 
# Wed, 08 May 2019 12:03:27 GMT
CMD ["bash"]
# Wed, 08 May 2019 13:04:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 13:04:42 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 08 May 2019 16:17:27 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Wed, 08 May 2019 16:17:27 GMT
ENV INFLUXDB_VERSION=1.5.4
# Wed, 08 May 2019 16:17:32 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     gpg --batch --verify influxdb_${INFLUXDB_VERSION}_${ARCH}.deb.asc influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     dpkg -i influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     rm -f influxdb_${INFLUXDB_VERSION}_${ARCH}.deb*
# Wed, 08 May 2019 16:17:33 GMT
COPY file:3d8a606d61e1fc0042cf34d036eda4550a18d140c47376dacc02d96ee6f2dd8b in /etc/influxdb/influxdb.conf 
# Wed, 08 May 2019 16:17:34 GMT
EXPOSE 8086
# Wed, 08 May 2019 16:17:34 GMT
VOLUME [/var/lib/influxdb]
# Wed, 08 May 2019 16:17:35 GMT
COPY file:61c4af7a0e637328374ec46266ed6dde40adf7d14ac6c5081100924991beb7f3 in /entrypoint.sh 
# Wed, 08 May 2019 16:17:35 GMT
COPY file:892fcd3130baa17c0b88866ac37e7fe0b7b420a67105d9cd99803c685eaf9df4 in /init-influxdb.sh 
# Wed, 08 May 2019 16:17:36 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 08 May 2019 16:17:36 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:f2a2fd7c1ab35cd1b5ea6fcc2b801f3877852797e2698ecdb9556e0dee3accb5`  
		Last Modified: Wed, 08 May 2019 12:09:40 GMT  
		Size: 42.1 MB (42082604 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:047df9a92c9f7376283a8d6af526f5126d95995ba48dd7de49979ef57da3e15b`  
		Last Modified: Wed, 08 May 2019 13:12:20 GMT  
		Size: 9.5 MB (9485167 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ddeed4ac8d1e2c751afd6fd3517f1d154365467039353c377c8206fd5eb81d4b`  
		Last Modified: Wed, 08 May 2019 13:12:18 GMT  
		Size: 3.9 MB (3918605 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b668daec8214e7fe112e89f2ad6e22651d66c490c182af5be7b786ca304c7b5`  
		Last Modified: Wed, 08 May 2019 16:18:17 GMT  
		Size: 2.8 KB (2801 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d416f9d8ab718db174bf7db40424bddb0a62088b829a6ce6083880a07859c6e6`  
		Last Modified: Wed, 08 May 2019 16:18:25 GMT  
		Size: 21.7 MB (21658873 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3eca76a2efe6685f1276919e019919b3a0921e2799186ddc68abb42e0dbda303`  
		Last Modified: Wed, 08 May 2019 16:18:17 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b11a48315f8f005406e2c9dc0b7e816f311047e8d2393ed02eda70466314533`  
		Last Modified: Wed, 08 May 2019 16:18:17 GMT  
		Size: 211.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c194a970245c2c018e1c62e2637dfd546e0c5af4abf82302bdf118f5e00a883e`  
		Last Modified: Wed, 08 May 2019 16:18:17 GMT  
		Size: 1.2 KB (1167 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `influxdb:1.5.4` - linux; arm64 variant v8

```console
$ docker pull influxdb@sha256:c4c1edc5d6d3aec8d3486c5431521ab58dfe9bd35b1b0c3350edd136c78555de
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **78.0 MB (77971278 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dc0dad29353d341a406d6f7035ae1545555756a13b51d0697f498be256fe35d1`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Wed, 27 Mar 2019 08:47:20 GMT
ADD file:8f991b13b28ce1de362b9f00e69aac8edc28124a08adeeb3b7fb02153e0b4e92 in / 
# Wed, 27 Mar 2019 08:47:21 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 10:15:55 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 10:16:13 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 27 Mar 2019 23:45:16 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Wed, 27 Mar 2019 23:45:17 GMT
ENV INFLUXDB_VERSION=1.5.4
# Wed, 27 Mar 2019 23:45:25 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     gpg --batch --verify influxdb_${INFLUXDB_VERSION}_${ARCH}.deb.asc influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     dpkg -i influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     rm -f influxdb_${INFLUXDB_VERSION}_${ARCH}.deb*
# Wed, 27 Mar 2019 23:45:26 GMT
COPY file:3d8a606d61e1fc0042cf34d036eda4550a18d140c47376dacc02d96ee6f2dd8b in /etc/influxdb/influxdb.conf 
# Wed, 27 Mar 2019 23:45:27 GMT
EXPOSE 8086
# Wed, 27 Mar 2019 23:45:28 GMT
VOLUME [/var/lib/influxdb]
# Wed, 27 Mar 2019 23:45:29 GMT
COPY file:61c4af7a0e637328374ec46266ed6dde40adf7d14ac6c5081100924991beb7f3 in /entrypoint.sh 
# Wed, 27 Mar 2019 23:45:30 GMT
COPY file:892fcd3130baa17c0b88866ac37e7fe0b7b420a67105d9cd99803c685eaf9df4 in /init-influxdb.sh 
# Wed, 27 Mar 2019 23:45:31 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 27 Mar 2019 23:45:32 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:5385e634d2a1a330aea59f510b0676b269167a579dddb586b27917d80d0dfd01`  
		Last Modified: Wed, 27 Mar 2019 08:52:30 GMT  
		Size: 43.1 MB (43132000 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6696bae2f570e0c96dcb21308e525216796d3452d1a9b8dcaba168ba37f3f464`  
		Last Modified: Wed, 27 Mar 2019 10:36:08 GMT  
		Size: 9.7 MB (9730463 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6dca82770cb3702e9c92d2f155923c0fb55671c1c373b8b50640b7bf05ed8418`  
		Last Modified: Wed, 27 Mar 2019 10:36:05 GMT  
		Size: 4.1 MB (4094072 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56a1a37594e065b68838715135cc87c8000f3e4f977d81709d1dc0b1f54ca93d`  
		Last Modified: Wed, 27 Mar 2019 23:46:46 GMT  
		Size: 2.8 KB (2776 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:569ed7dd30012e0c7844cd2d303613f9871b9594c9eac1d0e9a164f6a6d87272`  
		Last Modified: Wed, 27 Mar 2019 23:46:57 GMT  
		Size: 21.0 MB (21010364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a382fe6e8ddc4f431ec90c020e7059da37db142fa51998d801fb7a8adf9c2e9`  
		Last Modified: Wed, 27 Mar 2019 23:46:45 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05d9ada926ea18c4b189024360c32aa3c7c4c97e9dcd9f4af553b0054a1e7567`  
		Last Modified: Wed, 27 Mar 2019 23:46:45 GMT  
		Size: 210.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9cb75d999de87e543d141b5cc8c5b6ed581d525b727dd681adfff59507f89fe`  
		Last Modified: Wed, 27 Mar 2019 23:46:46 GMT  
		Size: 1.2 KB (1167 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `influxdb:1.5.4-alpine`

```console
$ docker pull influxdb@sha256:6081419b42850c1b09f7beb06324aad3de577c30eb02ef7919d7dc05a25b498b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `influxdb:1.5.4-alpine` - linux; amd64

```console
$ docker pull influxdb@sha256:a1302785f71719d3fd5546014c25a7be27da744f2294887c5bd58ea0ed215045
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.0 MB (26995404 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:98d4efc98e5f8d580027ae5359f5f1f19d8950ab18f0cf8392d222af90ef5ed9`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Thu, 07 Mar 2019 22:19:46 GMT
ADD file:38bc6b51693b13d84a63e281403e2f6d0218c44b1d7ff12157c4523f9f0ebb1e in / 
# Thu, 07 Mar 2019 22:19:46 GMT
CMD ["/bin/sh"]
# Thu, 07 Mar 2019 23:09:58 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf
# Thu, 07 Mar 2019 23:13:21 GMT
RUN apk add --no-cache tzdata bash ca-certificates &&     update-ca-certificates
# Thu, 07 Mar 2019 23:13:22 GMT
ENV INFLUXDB_VERSION=1.5.4
# Thu, 07 Mar 2019 23:13:27 GMT
RUN set -ex &&     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/influxdb/releases/influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/influxdb/releases/influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/influxdb-*/influxdb.conf &&     chmod +x /usr/src/influxdb-*/* &&     cp -a /usr/src/influxdb-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Thu, 07 Mar 2019 23:13:28 GMT
COPY file:3d8a606d61e1fc0042cf34d036eda4550a18d140c47376dacc02d96ee6f2dd8b in /etc/influxdb/influxdb.conf 
# Thu, 07 Mar 2019 23:13:28 GMT
EXPOSE 8086
# Thu, 07 Mar 2019 23:13:28 GMT
VOLUME [/var/lib/influxdb]
# Thu, 07 Mar 2019 23:13:28 GMT
COPY file:61c4af7a0e637328374ec46266ed6dde40adf7d14ac6c5081100924991beb7f3 in /entrypoint.sh 
# Thu, 07 Mar 2019 23:13:28 GMT
COPY file:892fcd3130baa17c0b88866ac37e7fe0b7b420a67105d9cd99803c685eaf9df4 in /init-influxdb.sh 
# Thu, 07 Mar 2019 23:13:28 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 07 Mar 2019 23:13:29 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:c87736221ed0bcaa60b8e92a19bec2284899ef89226f2a07968677cf59e637a4`  
		Last Modified: Thu, 07 Mar 2019 22:20:20 GMT  
		Size: 2.2 MB (2207176 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a7c3edaa27ffab3a4de5b02e8f2ac780fca60d75bf7c7846352103c7f9fff6e`  
		Last Modified: Thu, 07 Mar 2019 23:10:40 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:611215ad6fd94aca0d418348501999c7c156cbec717f6a020ff0f94f2202ba45`  
		Last Modified: Thu, 07 Mar 2019 23:15:25 GMT  
		Size: 1.9 MB (1870457 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f938b9e7458d6305b1246580230970f07b5c970519d3960411bac2e05278c64`  
		Last Modified: Thu, 07 Mar 2019 23:15:30 GMT  
		Size: 22.9 MB (22916021 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74a782da9c98c44265bf9f2391520eee593aad72636093aef0db5e942af375a9`  
		Last Modified: Thu, 07 Mar 2019 23:15:24 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fba407c557d92d206eb955b7e1d89b6aa07ad18152a30b22930c41eb337baccc`  
		Last Modified: Thu, 07 Mar 2019 23:15:24 GMT  
		Size: 208.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be47fc4248e020cc38044086b54ec523e93b065ad239585f551d01edfd69bd7e`  
		Last Modified: Thu, 07 Mar 2019 23:15:24 GMT  
		Size: 1.2 KB (1165 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `influxdb:1.5.4-data`

```console
$ docker pull influxdb@sha256:6bc8cd0413b22be328600c42aaf4563f3d5eae80218f19801ce60e6c7bae836f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `influxdb:1.5.4-data` - linux; amd64

```console
$ docker pull influxdb@sha256:a2f2a6082fd4ad5bb90528e7da5d215ff21c764e0d7621e7bdf8fa7a23f451f1
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **84.3 MB (84251415 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ccf4c4585c74b52b3b61fee20f7decd4c7ff27e4e0ebad420f6516f251e7697c`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Wed, 08 May 2019 00:33:09 GMT
ADD file:caf91edab64f988bc24766c58ee66c00311c7c921296b8e5b51d7023422a1485 in / 
# Wed, 08 May 2019 00:33:10 GMT
CMD ["bash"]
# Wed, 08 May 2019 01:40:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 01:40:12 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 08 May 2019 07:34:07 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Wed, 08 May 2019 07:34:22 GMT
ENV INFLUXDB_VERSION=1.5.4-c1.5.4
# Wed, 08 May 2019 07:34:26 GMT
RUN wget --no-verbose https://dl.influxdata.com/enterprise/releases/influxdb-data_${INFLUXDB_VERSION}_amd64.deb.asc &&     wget --no-verbose https://dl.influxdata.com/enterprise/releases/influxdb-data_${INFLUXDB_VERSION}_amd64.deb &&     gpg --batch --verify influxdb-data_${INFLUXDB_VERSION}_amd64.deb.asc influxdb-data_${INFLUXDB_VERSION}_amd64.deb &&     dpkg -i influxdb-data_${INFLUXDB_VERSION}_amd64.deb &&     rm -f influxdb-data_${INFLUXDB_VERSION}_amd64.deb*
# Wed, 08 May 2019 07:34:26 GMT
COPY file:bf2f42b62a32a7ee3ab93d9a5e451b7d59af1a97e40dc4a76b8aaf2f64383d7a in /etc/influxdb/influxdb.conf 
# Wed, 08 May 2019 07:34:27 GMT
EXPOSE 8086
# Wed, 08 May 2019 07:34:27 GMT
VOLUME [/var/lib/influxdb]
# Wed, 08 May 2019 07:34:27 GMT
COPY file:182a0176834db40043100d082d05e5aded9887c94b02416f6e3154c827c07360 in /entrypoint.sh 
# Wed, 08 May 2019 07:34:28 GMT
COPY file:892fcd3130baa17c0b88866ac37e7fe0b7b420a67105d9cd99803c685eaf9df4 in /init-influxdb.sh 
# Wed, 08 May 2019 07:34:28 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 08 May 2019 07:34:28 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:c5e155d5a1d130a7f8a3e24cee0d9e1349bff13f90ec6a941478e558fde53c14`  
		Last Modified: Wed, 08 May 2019 00:37:42 GMT  
		Size: 45.3 MB (45339314 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:221d80d00ae9675aad24913aacbadfac1ce8b7084f9765a6c0813486082c5c69`  
		Last Modified: Wed, 08 May 2019 01:45:42 GMT  
		Size: 10.8 MB (10784878 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4250b3117dca5e14edc32ebf1366cd54e4cda91f17610b76c504a86917ff8b95`  
		Last Modified: Wed, 08 May 2019 01:45:41 GMT  
		Size: 4.3 MB (4340094 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e51b6917b8bea39091733d42fc84ed055d24bab253f1180353c2f0fc24cddfa`  
		Last Modified: Wed, 08 May 2019 07:36:49 GMT  
		Size: 2.8 KB (2772 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57c81e8e71b87c648c5c0e5e4722bbf0f5667525b4b49cbabeb81a09494df98e`  
		Last Modified: Wed, 08 May 2019 07:37:08 GMT  
		Size: 23.8 MB (23782698 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c07061a448477b0cbbbe0bc8136a90d6e1b6738b6ccc6b775465d50ff408302`  
		Last Modified: Wed, 08 May 2019 07:37:01 GMT  
		Size: 243.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3519bf98368aba2e2b2ca7f6b0164ee6389366eb2e6b4456df7cef3c21ba5d58`  
		Last Modified: Wed, 08 May 2019 07:37:01 GMT  
		Size: 251.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c55a1a05dd28392801422eed0d2ffa6a2f669edb04ae6461cdefaba52f9daf22`  
		Last Modified: Wed, 08 May 2019 07:37:01 GMT  
		Size: 1.2 KB (1165 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `influxdb:1.5.4-data-alpine`

```console
$ docker pull influxdb@sha256:d1404c20d3545794aa896cead2e8c921a5117e424dc880a74c8a0c3e15d9ca67
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `influxdb:1.5.4-data-alpine` - linux; amd64

```console
$ docker pull influxdb@sha256:7bce8189457f7ceff29bf046d2e888633bb6868c2ba17c971b0d2cbf8c18b8bd
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.7 MB (27748996 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7bd2e5971514f6fc7f57a355dbb474a5e5937b391f3654084bb38c34739167d3`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Thu, 07 Mar 2019 22:19:46 GMT
ADD file:38bc6b51693b13d84a63e281403e2f6d0218c44b1d7ff12157c4523f9f0ebb1e in / 
# Thu, 07 Mar 2019 22:19:46 GMT
CMD ["/bin/sh"]
# Thu, 07 Mar 2019 23:09:58 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf
# Thu, 07 Mar 2019 23:13:21 GMT
RUN apk add --no-cache tzdata bash ca-certificates &&     update-ca-certificates
# Thu, 07 Mar 2019 23:13:35 GMT
ENV INFLUXDB_VERSION=1.5.4-c1.5.4
# Thu, 07 Mar 2019 23:13:41 GMT
RUN set -ex &&     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/enterprise/releases/influxdb-data-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/enterprise/releases/influxdb-data-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify influxdb-data-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc influxdb-data-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf influxdb-data-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/influxdb-*/influxdb.conf &&     chmod +x /usr/src/influxdb-*/* &&     cp -a /usr/src/influxdb-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Thu, 07 Mar 2019 23:13:41 GMT
COPY file:bf2f42b62a32a7ee3ab93d9a5e451b7d59af1a97e40dc4a76b8aaf2f64383d7a in /etc/influxdb/influxdb.conf 
# Thu, 07 Mar 2019 23:13:41 GMT
EXPOSE 8086
# Thu, 07 Mar 2019 23:13:41 GMT
VOLUME [/var/lib/influxdb]
# Thu, 07 Mar 2019 23:13:41 GMT
COPY file:182a0176834db40043100d082d05e5aded9887c94b02416f6e3154c827c07360 in /entrypoint.sh 
# Thu, 07 Mar 2019 23:13:41 GMT
COPY file:892fcd3130baa17c0b88866ac37e7fe0b7b420a67105d9cd99803c685eaf9df4 in /init-influxdb.sh 
# Thu, 07 Mar 2019 23:13:42 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 07 Mar 2019 23:13:42 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:c87736221ed0bcaa60b8e92a19bec2284899ef89226f2a07968677cf59e637a4`  
		Last Modified: Thu, 07 Mar 2019 22:20:20 GMT  
		Size: 2.2 MB (2207176 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a7c3edaa27ffab3a4de5b02e8f2ac780fca60d75bf7c7846352103c7f9fff6e`  
		Last Modified: Thu, 07 Mar 2019 23:10:40 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:611215ad6fd94aca0d418348501999c7c156cbec717f6a020ff0f94f2202ba45`  
		Last Modified: Thu, 07 Mar 2019 23:15:25 GMT  
		Size: 1.9 MB (1870457 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65b87a9a533e340bb4b8ba231283b7d1bb1de1ab881cd072543bead3d15b96cf`  
		Last Modified: Thu, 07 Mar 2019 23:15:44 GMT  
		Size: 23.7 MB (23669553 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5209b90e7668b5b22f939211144e340a4562775ed89829d3e8256f224d60fba7`  
		Last Modified: Thu, 07 Mar 2019 23:15:35 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00dab641669c04ae1090d2b3df71eff48acd5b32a884018298b9d7e975de85f9`  
		Last Modified: Thu, 07 Mar 2019 23:15:35 GMT  
		Size: 251.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b19fe35c1e1328fdff83d61a6c5b026459fcec8222aab4863653549a530eb52c`  
		Last Modified: Thu, 07 Mar 2019 23:15:35 GMT  
		Size: 1.2 KB (1165 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `influxdb:1.5.4-meta`

```console
$ docker pull influxdb@sha256:2cce42c274fa3815813d3a9c1ce9b03b6a2418aa76a661e11218b859c064d975
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `influxdb:1.5.4-meta` - linux; amd64

```console
$ docker pull influxdb@sha256:99aa445a0f7f9b3d085cc7ca71540e2c50e07d201b91e3228be1862ebcd06a3b
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **71.7 MB (71661677 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ec28fcdfcf9c7c61756691225fcbe9c6db72567746814c49e07c17c22e487be7`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd-meta"]`

```dockerfile
# Wed, 08 May 2019 00:33:09 GMT
ADD file:caf91edab64f988bc24766c58ee66c00311c7c921296b8e5b51d7023422a1485 in / 
# Wed, 08 May 2019 00:33:10 GMT
CMD ["bash"]
# Wed, 08 May 2019 01:40:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 01:40:12 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 08 May 2019 07:34:07 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Wed, 08 May 2019 07:34:22 GMT
ENV INFLUXDB_VERSION=1.5.4-c1.5.4
# Wed, 08 May 2019 07:34:37 GMT
RUN wget --no-verbose https://dl.influxdata.com/enterprise/releases/influxdb-meta_${INFLUXDB_VERSION}_amd64.deb.asc &&     wget --no-verbose https://dl.influxdata.com/enterprise/releases/influxdb-meta_${INFLUXDB_VERSION}_amd64.deb &&     gpg --batch --verify influxdb-meta_${INFLUXDB_VERSION}_amd64.deb.asc influxdb-meta_${INFLUXDB_VERSION}_amd64.deb &&     dpkg -i influxdb-meta_${INFLUXDB_VERSION}_amd64.deb &&     rm -f influxdb-meta_${INFLUXDB_VERSION}_amd64.deb*
# Wed, 08 May 2019 07:34:38 GMT
COPY file:5d8d1b0acfd7ca05cf6698246b28d240206fa448f4aa5ac839c9ad323adbeac2 in /etc/influxdb/influxdb-meta.conf 
# Wed, 08 May 2019 07:34:38 GMT
EXPOSE 8091
# Wed, 08 May 2019 07:34:38 GMT
VOLUME [/var/lib/influxdb]
# Wed, 08 May 2019 07:34:38 GMT
COPY file:126b1f7e41b4975cf2ce23037cf6a46253fb817023062317380c48ff5df47228 in /entrypoint.sh 
# Wed, 08 May 2019 07:34:39 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 08 May 2019 07:34:39 GMT
CMD ["influxd-meta"]
```

-	Layers:
	-	`sha256:c5e155d5a1d130a7f8a3e24cee0d9e1349bff13f90ec6a941478e558fde53c14`  
		Last Modified: Wed, 08 May 2019 00:37:42 GMT  
		Size: 45.3 MB (45339314 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:221d80d00ae9675aad24913aacbadfac1ce8b7084f9765a6c0813486082c5c69`  
		Last Modified: Wed, 08 May 2019 01:45:42 GMT  
		Size: 10.8 MB (10784878 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4250b3117dca5e14edc32ebf1366cd54e4cda91f17610b76c504a86917ff8b95`  
		Last Modified: Wed, 08 May 2019 01:45:41 GMT  
		Size: 4.3 MB (4340094 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e51b6917b8bea39091733d42fc84ed055d24bab253f1180353c2f0fc24cddfa`  
		Last Modified: Wed, 08 May 2019 07:36:49 GMT  
		Size: 2.8 KB (2772 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d46df3d21cb883f2c6c3405de038f25fda4c44247f2ad96f108cbf62272d142e`  
		Last Modified: Wed, 08 May 2019 07:37:16 GMT  
		Size: 11.2 MB (11194048 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:641a232139223d2ef909ef0e37f48b036b41737c3cf509f5e6cc6430c8dff57d`  
		Last Modified: Wed, 08 May 2019 07:37:13 GMT  
		Size: 196.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de5425a697080942a68a708177413348905b953ee4f42ce48e578107ebf5a5ed`  
		Last Modified: Wed, 08 May 2019 07:37:13 GMT  
		Size: 375.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `influxdb:1.5.4-meta-alpine`

```console
$ docker pull influxdb@sha256:cc8a747544147cc7fe81a10ed29b7050185f12ee90617d5d27b5a94fea7dff1e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `influxdb:1.5.4-meta-alpine` - linux; amd64

```console
$ docker pull influxdb@sha256:634ae2ba10f72d0caa50f5c13954e1b32881d38f05004150b15261fef5b99801
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.2 MB (15229378 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:807c219d7656cc423880730159a45ce288531d3c058b71ff0fbdb1eaca95f32e`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd-meta"]`

```dockerfile
# Thu, 07 Mar 2019 22:19:46 GMT
ADD file:38bc6b51693b13d84a63e281403e2f6d0218c44b1d7ff12157c4523f9f0ebb1e in / 
# Thu, 07 Mar 2019 22:19:46 GMT
CMD ["/bin/sh"]
# Thu, 07 Mar 2019 23:09:58 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf
# Thu, 07 Mar 2019 23:13:21 GMT
RUN apk add --no-cache tzdata bash ca-certificates &&     update-ca-certificates
# Thu, 07 Mar 2019 23:13:35 GMT
ENV INFLUXDB_VERSION=1.5.4-c1.5.4
# Thu, 07 Mar 2019 23:13:51 GMT
RUN set -ex &&     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/enterprise/releases/influxdb-meta-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/enterprise/releases/influxdb-meta-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify influxdb-meta-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc influxdb-meta-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf influxdb-meta-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/influxdb-*/influxdb-meta.conf &&     chmod +x /usr/src/influxdb-*/* &&     cp -a /usr/src/influxdb-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Thu, 07 Mar 2019 23:13:51 GMT
COPY file:5d8d1b0acfd7ca05cf6698246b28d240206fa448f4aa5ac839c9ad323adbeac2 in /etc/influxdb/influxdb-meta.conf 
# Thu, 07 Mar 2019 23:13:52 GMT
EXPOSE 8091
# Thu, 07 Mar 2019 23:13:52 GMT
VOLUME [/var/lib/influxdb]
# Thu, 07 Mar 2019 23:13:52 GMT
COPY file:126b1f7e41b4975cf2ce23037cf6a46253fb817023062317380c48ff5df47228 in /entrypoint.sh 
# Thu, 07 Mar 2019 23:13:52 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 07 Mar 2019 23:13:52 GMT
CMD ["influxd-meta"]
```

-	Layers:
	-	`sha256:c87736221ed0bcaa60b8e92a19bec2284899ef89226f2a07968677cf59e637a4`  
		Last Modified: Thu, 07 Mar 2019 22:20:20 GMT  
		Size: 2.2 MB (2207176 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a7c3edaa27ffab3a4de5b02e8f2ac780fca60d75bf7c7846352103c7f9fff6e`  
		Last Modified: Thu, 07 Mar 2019 23:10:40 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:611215ad6fd94aca0d418348501999c7c156cbec717f6a020ff0f94f2202ba45`  
		Last Modified: Thu, 07 Mar 2019 23:15:25 GMT  
		Size: 1.9 MB (1870457 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:182c468adb9a6b770f1617f98f08db2ef3f428aa527a5785b8454393604c7544`  
		Last Modified: Thu, 07 Mar 2019 23:15:52 GMT  
		Size: 11.2 MB (11151022 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26346906ac8537b7362a631aad2b204c8be9cd6b1c13f952b85d633be10b3e5f`  
		Last Modified: Thu, 07 Mar 2019 23:15:48 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0834e36596dee1e94c8cc72b29ce89bf75ad6288b8a518c2af96952a059d77c9`  
		Last Modified: Thu, 07 Mar 2019 23:15:48 GMT  
		Size: 375.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `influxdb:1.5-alpine`

```console
$ docker pull influxdb@sha256:6081419b42850c1b09f7beb06324aad3de577c30eb02ef7919d7dc05a25b498b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `influxdb:1.5-alpine` - linux; amd64

```console
$ docker pull influxdb@sha256:a1302785f71719d3fd5546014c25a7be27da744f2294887c5bd58ea0ed215045
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.0 MB (26995404 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:98d4efc98e5f8d580027ae5359f5f1f19d8950ab18f0cf8392d222af90ef5ed9`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Thu, 07 Mar 2019 22:19:46 GMT
ADD file:38bc6b51693b13d84a63e281403e2f6d0218c44b1d7ff12157c4523f9f0ebb1e in / 
# Thu, 07 Mar 2019 22:19:46 GMT
CMD ["/bin/sh"]
# Thu, 07 Mar 2019 23:09:58 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf
# Thu, 07 Mar 2019 23:13:21 GMT
RUN apk add --no-cache tzdata bash ca-certificates &&     update-ca-certificates
# Thu, 07 Mar 2019 23:13:22 GMT
ENV INFLUXDB_VERSION=1.5.4
# Thu, 07 Mar 2019 23:13:27 GMT
RUN set -ex &&     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/influxdb/releases/influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/influxdb/releases/influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/influxdb-*/influxdb.conf &&     chmod +x /usr/src/influxdb-*/* &&     cp -a /usr/src/influxdb-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Thu, 07 Mar 2019 23:13:28 GMT
COPY file:3d8a606d61e1fc0042cf34d036eda4550a18d140c47376dacc02d96ee6f2dd8b in /etc/influxdb/influxdb.conf 
# Thu, 07 Mar 2019 23:13:28 GMT
EXPOSE 8086
# Thu, 07 Mar 2019 23:13:28 GMT
VOLUME [/var/lib/influxdb]
# Thu, 07 Mar 2019 23:13:28 GMT
COPY file:61c4af7a0e637328374ec46266ed6dde40adf7d14ac6c5081100924991beb7f3 in /entrypoint.sh 
# Thu, 07 Mar 2019 23:13:28 GMT
COPY file:892fcd3130baa17c0b88866ac37e7fe0b7b420a67105d9cd99803c685eaf9df4 in /init-influxdb.sh 
# Thu, 07 Mar 2019 23:13:28 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 07 Mar 2019 23:13:29 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:c87736221ed0bcaa60b8e92a19bec2284899ef89226f2a07968677cf59e637a4`  
		Last Modified: Thu, 07 Mar 2019 22:20:20 GMT  
		Size: 2.2 MB (2207176 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a7c3edaa27ffab3a4de5b02e8f2ac780fca60d75bf7c7846352103c7f9fff6e`  
		Last Modified: Thu, 07 Mar 2019 23:10:40 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:611215ad6fd94aca0d418348501999c7c156cbec717f6a020ff0f94f2202ba45`  
		Last Modified: Thu, 07 Mar 2019 23:15:25 GMT  
		Size: 1.9 MB (1870457 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f938b9e7458d6305b1246580230970f07b5c970519d3960411bac2e05278c64`  
		Last Modified: Thu, 07 Mar 2019 23:15:30 GMT  
		Size: 22.9 MB (22916021 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74a782da9c98c44265bf9f2391520eee593aad72636093aef0db5e942af375a9`  
		Last Modified: Thu, 07 Mar 2019 23:15:24 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fba407c557d92d206eb955b7e1d89b6aa07ad18152a30b22930c41eb337baccc`  
		Last Modified: Thu, 07 Mar 2019 23:15:24 GMT  
		Size: 208.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be47fc4248e020cc38044086b54ec523e93b065ad239585f551d01edfd69bd7e`  
		Last Modified: Thu, 07 Mar 2019 23:15:24 GMT  
		Size: 1.2 KB (1165 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `influxdb:1.5-data`

```console
$ docker pull influxdb@sha256:6bc8cd0413b22be328600c42aaf4563f3d5eae80218f19801ce60e6c7bae836f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `influxdb:1.5-data` - linux; amd64

```console
$ docker pull influxdb@sha256:a2f2a6082fd4ad5bb90528e7da5d215ff21c764e0d7621e7bdf8fa7a23f451f1
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **84.3 MB (84251415 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ccf4c4585c74b52b3b61fee20f7decd4c7ff27e4e0ebad420f6516f251e7697c`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Wed, 08 May 2019 00:33:09 GMT
ADD file:caf91edab64f988bc24766c58ee66c00311c7c921296b8e5b51d7023422a1485 in / 
# Wed, 08 May 2019 00:33:10 GMT
CMD ["bash"]
# Wed, 08 May 2019 01:40:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 01:40:12 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 08 May 2019 07:34:07 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Wed, 08 May 2019 07:34:22 GMT
ENV INFLUXDB_VERSION=1.5.4-c1.5.4
# Wed, 08 May 2019 07:34:26 GMT
RUN wget --no-verbose https://dl.influxdata.com/enterprise/releases/influxdb-data_${INFLUXDB_VERSION}_amd64.deb.asc &&     wget --no-verbose https://dl.influxdata.com/enterprise/releases/influxdb-data_${INFLUXDB_VERSION}_amd64.deb &&     gpg --batch --verify influxdb-data_${INFLUXDB_VERSION}_amd64.deb.asc influxdb-data_${INFLUXDB_VERSION}_amd64.deb &&     dpkg -i influxdb-data_${INFLUXDB_VERSION}_amd64.deb &&     rm -f influxdb-data_${INFLUXDB_VERSION}_amd64.deb*
# Wed, 08 May 2019 07:34:26 GMT
COPY file:bf2f42b62a32a7ee3ab93d9a5e451b7d59af1a97e40dc4a76b8aaf2f64383d7a in /etc/influxdb/influxdb.conf 
# Wed, 08 May 2019 07:34:27 GMT
EXPOSE 8086
# Wed, 08 May 2019 07:34:27 GMT
VOLUME [/var/lib/influxdb]
# Wed, 08 May 2019 07:34:27 GMT
COPY file:182a0176834db40043100d082d05e5aded9887c94b02416f6e3154c827c07360 in /entrypoint.sh 
# Wed, 08 May 2019 07:34:28 GMT
COPY file:892fcd3130baa17c0b88866ac37e7fe0b7b420a67105d9cd99803c685eaf9df4 in /init-influxdb.sh 
# Wed, 08 May 2019 07:34:28 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 08 May 2019 07:34:28 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:c5e155d5a1d130a7f8a3e24cee0d9e1349bff13f90ec6a941478e558fde53c14`  
		Last Modified: Wed, 08 May 2019 00:37:42 GMT  
		Size: 45.3 MB (45339314 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:221d80d00ae9675aad24913aacbadfac1ce8b7084f9765a6c0813486082c5c69`  
		Last Modified: Wed, 08 May 2019 01:45:42 GMT  
		Size: 10.8 MB (10784878 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4250b3117dca5e14edc32ebf1366cd54e4cda91f17610b76c504a86917ff8b95`  
		Last Modified: Wed, 08 May 2019 01:45:41 GMT  
		Size: 4.3 MB (4340094 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e51b6917b8bea39091733d42fc84ed055d24bab253f1180353c2f0fc24cddfa`  
		Last Modified: Wed, 08 May 2019 07:36:49 GMT  
		Size: 2.8 KB (2772 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57c81e8e71b87c648c5c0e5e4722bbf0f5667525b4b49cbabeb81a09494df98e`  
		Last Modified: Wed, 08 May 2019 07:37:08 GMT  
		Size: 23.8 MB (23782698 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c07061a448477b0cbbbe0bc8136a90d6e1b6738b6ccc6b775465d50ff408302`  
		Last Modified: Wed, 08 May 2019 07:37:01 GMT  
		Size: 243.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3519bf98368aba2e2b2ca7f6b0164ee6389366eb2e6b4456df7cef3c21ba5d58`  
		Last Modified: Wed, 08 May 2019 07:37:01 GMT  
		Size: 251.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c55a1a05dd28392801422eed0d2ffa6a2f669edb04ae6461cdefaba52f9daf22`  
		Last Modified: Wed, 08 May 2019 07:37:01 GMT  
		Size: 1.2 KB (1165 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `influxdb:1.5-data-alpine`

```console
$ docker pull influxdb@sha256:d1404c20d3545794aa896cead2e8c921a5117e424dc880a74c8a0c3e15d9ca67
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `influxdb:1.5-data-alpine` - linux; amd64

```console
$ docker pull influxdb@sha256:7bce8189457f7ceff29bf046d2e888633bb6868c2ba17c971b0d2cbf8c18b8bd
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.7 MB (27748996 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7bd2e5971514f6fc7f57a355dbb474a5e5937b391f3654084bb38c34739167d3`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Thu, 07 Mar 2019 22:19:46 GMT
ADD file:38bc6b51693b13d84a63e281403e2f6d0218c44b1d7ff12157c4523f9f0ebb1e in / 
# Thu, 07 Mar 2019 22:19:46 GMT
CMD ["/bin/sh"]
# Thu, 07 Mar 2019 23:09:58 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf
# Thu, 07 Mar 2019 23:13:21 GMT
RUN apk add --no-cache tzdata bash ca-certificates &&     update-ca-certificates
# Thu, 07 Mar 2019 23:13:35 GMT
ENV INFLUXDB_VERSION=1.5.4-c1.5.4
# Thu, 07 Mar 2019 23:13:41 GMT
RUN set -ex &&     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/enterprise/releases/influxdb-data-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/enterprise/releases/influxdb-data-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify influxdb-data-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc influxdb-data-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf influxdb-data-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/influxdb-*/influxdb.conf &&     chmod +x /usr/src/influxdb-*/* &&     cp -a /usr/src/influxdb-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Thu, 07 Mar 2019 23:13:41 GMT
COPY file:bf2f42b62a32a7ee3ab93d9a5e451b7d59af1a97e40dc4a76b8aaf2f64383d7a in /etc/influxdb/influxdb.conf 
# Thu, 07 Mar 2019 23:13:41 GMT
EXPOSE 8086
# Thu, 07 Mar 2019 23:13:41 GMT
VOLUME [/var/lib/influxdb]
# Thu, 07 Mar 2019 23:13:41 GMT
COPY file:182a0176834db40043100d082d05e5aded9887c94b02416f6e3154c827c07360 in /entrypoint.sh 
# Thu, 07 Mar 2019 23:13:41 GMT
COPY file:892fcd3130baa17c0b88866ac37e7fe0b7b420a67105d9cd99803c685eaf9df4 in /init-influxdb.sh 
# Thu, 07 Mar 2019 23:13:42 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 07 Mar 2019 23:13:42 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:c87736221ed0bcaa60b8e92a19bec2284899ef89226f2a07968677cf59e637a4`  
		Last Modified: Thu, 07 Mar 2019 22:20:20 GMT  
		Size: 2.2 MB (2207176 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a7c3edaa27ffab3a4de5b02e8f2ac780fca60d75bf7c7846352103c7f9fff6e`  
		Last Modified: Thu, 07 Mar 2019 23:10:40 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:611215ad6fd94aca0d418348501999c7c156cbec717f6a020ff0f94f2202ba45`  
		Last Modified: Thu, 07 Mar 2019 23:15:25 GMT  
		Size: 1.9 MB (1870457 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65b87a9a533e340bb4b8ba231283b7d1bb1de1ab881cd072543bead3d15b96cf`  
		Last Modified: Thu, 07 Mar 2019 23:15:44 GMT  
		Size: 23.7 MB (23669553 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5209b90e7668b5b22f939211144e340a4562775ed89829d3e8256f224d60fba7`  
		Last Modified: Thu, 07 Mar 2019 23:15:35 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00dab641669c04ae1090d2b3df71eff48acd5b32a884018298b9d7e975de85f9`  
		Last Modified: Thu, 07 Mar 2019 23:15:35 GMT  
		Size: 251.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b19fe35c1e1328fdff83d61a6c5b026459fcec8222aab4863653549a530eb52c`  
		Last Modified: Thu, 07 Mar 2019 23:15:35 GMT  
		Size: 1.2 KB (1165 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `influxdb:1.5-meta`

```console
$ docker pull influxdb@sha256:2cce42c274fa3815813d3a9c1ce9b03b6a2418aa76a661e11218b859c064d975
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `influxdb:1.5-meta` - linux; amd64

```console
$ docker pull influxdb@sha256:99aa445a0f7f9b3d085cc7ca71540e2c50e07d201b91e3228be1862ebcd06a3b
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **71.7 MB (71661677 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ec28fcdfcf9c7c61756691225fcbe9c6db72567746814c49e07c17c22e487be7`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd-meta"]`

```dockerfile
# Wed, 08 May 2019 00:33:09 GMT
ADD file:caf91edab64f988bc24766c58ee66c00311c7c921296b8e5b51d7023422a1485 in / 
# Wed, 08 May 2019 00:33:10 GMT
CMD ["bash"]
# Wed, 08 May 2019 01:40:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 01:40:12 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 08 May 2019 07:34:07 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Wed, 08 May 2019 07:34:22 GMT
ENV INFLUXDB_VERSION=1.5.4-c1.5.4
# Wed, 08 May 2019 07:34:37 GMT
RUN wget --no-verbose https://dl.influxdata.com/enterprise/releases/influxdb-meta_${INFLUXDB_VERSION}_amd64.deb.asc &&     wget --no-verbose https://dl.influxdata.com/enterprise/releases/influxdb-meta_${INFLUXDB_VERSION}_amd64.deb &&     gpg --batch --verify influxdb-meta_${INFLUXDB_VERSION}_amd64.deb.asc influxdb-meta_${INFLUXDB_VERSION}_amd64.deb &&     dpkg -i influxdb-meta_${INFLUXDB_VERSION}_amd64.deb &&     rm -f influxdb-meta_${INFLUXDB_VERSION}_amd64.deb*
# Wed, 08 May 2019 07:34:38 GMT
COPY file:5d8d1b0acfd7ca05cf6698246b28d240206fa448f4aa5ac839c9ad323adbeac2 in /etc/influxdb/influxdb-meta.conf 
# Wed, 08 May 2019 07:34:38 GMT
EXPOSE 8091
# Wed, 08 May 2019 07:34:38 GMT
VOLUME [/var/lib/influxdb]
# Wed, 08 May 2019 07:34:38 GMT
COPY file:126b1f7e41b4975cf2ce23037cf6a46253fb817023062317380c48ff5df47228 in /entrypoint.sh 
# Wed, 08 May 2019 07:34:39 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 08 May 2019 07:34:39 GMT
CMD ["influxd-meta"]
```

-	Layers:
	-	`sha256:c5e155d5a1d130a7f8a3e24cee0d9e1349bff13f90ec6a941478e558fde53c14`  
		Last Modified: Wed, 08 May 2019 00:37:42 GMT  
		Size: 45.3 MB (45339314 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:221d80d00ae9675aad24913aacbadfac1ce8b7084f9765a6c0813486082c5c69`  
		Last Modified: Wed, 08 May 2019 01:45:42 GMT  
		Size: 10.8 MB (10784878 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4250b3117dca5e14edc32ebf1366cd54e4cda91f17610b76c504a86917ff8b95`  
		Last Modified: Wed, 08 May 2019 01:45:41 GMT  
		Size: 4.3 MB (4340094 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e51b6917b8bea39091733d42fc84ed055d24bab253f1180353c2f0fc24cddfa`  
		Last Modified: Wed, 08 May 2019 07:36:49 GMT  
		Size: 2.8 KB (2772 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d46df3d21cb883f2c6c3405de038f25fda4c44247f2ad96f108cbf62272d142e`  
		Last Modified: Wed, 08 May 2019 07:37:16 GMT  
		Size: 11.2 MB (11194048 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:641a232139223d2ef909ef0e37f48b036b41737c3cf509f5e6cc6430c8dff57d`  
		Last Modified: Wed, 08 May 2019 07:37:13 GMT  
		Size: 196.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de5425a697080942a68a708177413348905b953ee4f42ce48e578107ebf5a5ed`  
		Last Modified: Wed, 08 May 2019 07:37:13 GMT  
		Size: 375.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `influxdb:1.5-meta-alpine`

```console
$ docker pull influxdb@sha256:cc8a747544147cc7fe81a10ed29b7050185f12ee90617d5d27b5a94fea7dff1e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `influxdb:1.5-meta-alpine` - linux; amd64

```console
$ docker pull influxdb@sha256:634ae2ba10f72d0caa50f5c13954e1b32881d38f05004150b15261fef5b99801
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.2 MB (15229378 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:807c219d7656cc423880730159a45ce288531d3c058b71ff0fbdb1eaca95f32e`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd-meta"]`

```dockerfile
# Thu, 07 Mar 2019 22:19:46 GMT
ADD file:38bc6b51693b13d84a63e281403e2f6d0218c44b1d7ff12157c4523f9f0ebb1e in / 
# Thu, 07 Mar 2019 22:19:46 GMT
CMD ["/bin/sh"]
# Thu, 07 Mar 2019 23:09:58 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf
# Thu, 07 Mar 2019 23:13:21 GMT
RUN apk add --no-cache tzdata bash ca-certificates &&     update-ca-certificates
# Thu, 07 Mar 2019 23:13:35 GMT
ENV INFLUXDB_VERSION=1.5.4-c1.5.4
# Thu, 07 Mar 2019 23:13:51 GMT
RUN set -ex &&     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/enterprise/releases/influxdb-meta-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/enterprise/releases/influxdb-meta-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify influxdb-meta-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc influxdb-meta-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf influxdb-meta-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/influxdb-*/influxdb-meta.conf &&     chmod +x /usr/src/influxdb-*/* &&     cp -a /usr/src/influxdb-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Thu, 07 Mar 2019 23:13:51 GMT
COPY file:5d8d1b0acfd7ca05cf6698246b28d240206fa448f4aa5ac839c9ad323adbeac2 in /etc/influxdb/influxdb-meta.conf 
# Thu, 07 Mar 2019 23:13:52 GMT
EXPOSE 8091
# Thu, 07 Mar 2019 23:13:52 GMT
VOLUME [/var/lib/influxdb]
# Thu, 07 Mar 2019 23:13:52 GMT
COPY file:126b1f7e41b4975cf2ce23037cf6a46253fb817023062317380c48ff5df47228 in /entrypoint.sh 
# Thu, 07 Mar 2019 23:13:52 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 07 Mar 2019 23:13:52 GMT
CMD ["influxd-meta"]
```

-	Layers:
	-	`sha256:c87736221ed0bcaa60b8e92a19bec2284899ef89226f2a07968677cf59e637a4`  
		Last Modified: Thu, 07 Mar 2019 22:20:20 GMT  
		Size: 2.2 MB (2207176 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a7c3edaa27ffab3a4de5b02e8f2ac780fca60d75bf7c7846352103c7f9fff6e`  
		Last Modified: Thu, 07 Mar 2019 23:10:40 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:611215ad6fd94aca0d418348501999c7c156cbec717f6a020ff0f94f2202ba45`  
		Last Modified: Thu, 07 Mar 2019 23:15:25 GMT  
		Size: 1.9 MB (1870457 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:182c468adb9a6b770f1617f98f08db2ef3f428aa527a5785b8454393604c7544`  
		Last Modified: Thu, 07 Mar 2019 23:15:52 GMT  
		Size: 11.2 MB (11151022 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26346906ac8537b7362a631aad2b204c8be9cd6b1c13f952b85d633be10b3e5f`  
		Last Modified: Thu, 07 Mar 2019 23:15:48 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0834e36596dee1e94c8cc72b29ce89bf75ad6288b8a518c2af96952a059d77c9`  
		Last Modified: Thu, 07 Mar 2019 23:15:48 GMT  
		Size: 375.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `influxdb:1.6`

```console
$ docker pull influxdb@sha256:3cc8a4ac530b341fbb3a5fa1836ac49bb5b2edcd7648460a23b4ef96fb90bc97
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `influxdb:1.6` - linux; amd64

```console
$ docker pull influxdb@sha256:315bd2c8dddaeb502f89a785febe8dc70db5d97291ffcdc2415c44fe074a8553
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **85.8 MB (85777921 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7dabd0aba28e93faab7f483c4074fc900e70524df40da5eab159fe4321b58c72`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Wed, 08 May 2019 00:33:09 GMT
ADD file:caf91edab64f988bc24766c58ee66c00311c7c921296b8e5b51d7023422a1485 in / 
# Wed, 08 May 2019 00:33:10 GMT
CMD ["bash"]
# Wed, 08 May 2019 01:40:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 01:40:12 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 08 May 2019 07:34:07 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Wed, 08 May 2019 07:34:47 GMT
ENV INFLUXDB_VERSION=1.6.6
# Wed, 08 May 2019 07:34:52 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     gpg --batch --verify influxdb_${INFLUXDB_VERSION}_${ARCH}.deb.asc influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     dpkg -i influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     rm -f influxdb_${INFLUXDB_VERSION}_${ARCH}.deb*
# Wed, 08 May 2019 07:34:52 GMT
COPY file:3d8a606d61e1fc0042cf34d036eda4550a18d140c47376dacc02d96ee6f2dd8b in /etc/influxdb/influxdb.conf 
# Wed, 08 May 2019 07:34:52 GMT
EXPOSE 8086
# Wed, 08 May 2019 07:34:52 GMT
VOLUME [/var/lib/influxdb]
# Wed, 08 May 2019 07:34:53 GMT
COPY file:61c4af7a0e637328374ec46266ed6dde40adf7d14ac6c5081100924991beb7f3 in /entrypoint.sh 
# Wed, 08 May 2019 07:34:53 GMT
COPY file:892fcd3130baa17c0b88866ac37e7fe0b7b420a67105d9cd99803c685eaf9df4 in /init-influxdb.sh 
# Wed, 08 May 2019 07:34:53 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 08 May 2019 07:34:53 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:c5e155d5a1d130a7f8a3e24cee0d9e1349bff13f90ec6a941478e558fde53c14`  
		Last Modified: Wed, 08 May 2019 00:37:42 GMT  
		Size: 45.3 MB (45339314 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:221d80d00ae9675aad24913aacbadfac1ce8b7084f9765a6c0813486082c5c69`  
		Last Modified: Wed, 08 May 2019 01:45:42 GMT  
		Size: 10.8 MB (10784878 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4250b3117dca5e14edc32ebf1366cd54e4cda91f17610b76c504a86917ff8b95`  
		Last Modified: Wed, 08 May 2019 01:45:41 GMT  
		Size: 4.3 MB (4340094 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e51b6917b8bea39091733d42fc84ed055d24bab253f1180353c2f0fc24cddfa`  
		Last Modified: Wed, 08 May 2019 07:36:49 GMT  
		Size: 2.8 KB (2772 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d89e7a73918d3f88ce291c49d2a07b74c324bcacfd65649f6af1e406053b2216`  
		Last Modified: Wed, 08 May 2019 07:37:28 GMT  
		Size: 25.3 MB (25309263 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:676644c1fd87be7db07ba202e2c60d71ca3ae0cf57e77dc8e1b7806103791498`  
		Last Modified: Wed, 08 May 2019 07:37:21 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f897d3c3fb339267c47d774acd876b6017246ec2a1cb25bd96f02c5452c79bd1`  
		Last Modified: Wed, 08 May 2019 07:37:21 GMT  
		Size: 209.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3ddabc5ae27de974ed07f795234c77ef812ef1fdcc729037e10e1e3df99414e`  
		Last Modified: Wed, 08 May 2019 07:37:21 GMT  
		Size: 1.2 KB (1166 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `influxdb:1.6` - linux; arm variant v7

```console
$ docker pull influxdb@sha256:4c76f0a1dede65397266f12a69b6e6877cdb24b2bac3049b87f623b2473c4f88
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **79.8 MB (79838331 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eda9fdad876b94b9bad0fccc09b53e7b0eb2506e683e45286aa7d4d4cdee3a1e`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Wed, 08 May 2019 12:03:26 GMT
ADD file:7e8dcc40e246d53b86266855a2de8080d26e6b4ed9f594c1acc565784405735b in / 
# Wed, 08 May 2019 12:03:27 GMT
CMD ["bash"]
# Wed, 08 May 2019 13:04:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 13:04:42 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 08 May 2019 16:17:27 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Wed, 08 May 2019 16:17:42 GMT
ENV INFLUXDB_VERSION=1.6.6
# Wed, 08 May 2019 16:17:47 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     gpg --batch --verify influxdb_${INFLUXDB_VERSION}_${ARCH}.deb.asc influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     dpkg -i influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     rm -f influxdb_${INFLUXDB_VERSION}_${ARCH}.deb*
# Wed, 08 May 2019 16:17:48 GMT
COPY file:3d8a606d61e1fc0042cf34d036eda4550a18d140c47376dacc02d96ee6f2dd8b in /etc/influxdb/influxdb.conf 
# Wed, 08 May 2019 16:17:48 GMT
EXPOSE 8086
# Wed, 08 May 2019 16:17:49 GMT
VOLUME [/var/lib/influxdb]
# Wed, 08 May 2019 16:17:49 GMT
COPY file:61c4af7a0e637328374ec46266ed6dde40adf7d14ac6c5081100924991beb7f3 in /entrypoint.sh 
# Wed, 08 May 2019 16:17:50 GMT
COPY file:892fcd3130baa17c0b88866ac37e7fe0b7b420a67105d9cd99803c685eaf9df4 in /init-influxdb.sh 
# Wed, 08 May 2019 16:17:50 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 08 May 2019 16:17:51 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:f2a2fd7c1ab35cd1b5ea6fcc2b801f3877852797e2698ecdb9556e0dee3accb5`  
		Last Modified: Wed, 08 May 2019 12:09:40 GMT  
		Size: 42.1 MB (42082604 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:047df9a92c9f7376283a8d6af526f5126d95995ba48dd7de49979ef57da3e15b`  
		Last Modified: Wed, 08 May 2019 13:12:20 GMT  
		Size: 9.5 MB (9485167 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ddeed4ac8d1e2c751afd6fd3517f1d154365467039353c377c8206fd5eb81d4b`  
		Last Modified: Wed, 08 May 2019 13:12:18 GMT  
		Size: 3.9 MB (3918605 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b668daec8214e7fe112e89f2ad6e22651d66c490c182af5be7b786ca304c7b5`  
		Last Modified: Wed, 08 May 2019 16:18:17 GMT  
		Size: 2.8 KB (2801 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ff585dd605242baaa092785239af8c72bfff76d896bd5652479dc9e40052a68`  
		Last Modified: Wed, 08 May 2019 16:18:40 GMT  
		Size: 24.3 MB (24347551 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6df1d895830a61db27fca872baad24452f255034b658b2e8bea9a4e7f086da8e`  
		Last Modified: Wed, 08 May 2019 16:18:31 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b99fc8c6d4f0584a0cdf65ce0a0f3788402ad8238057bbd471f62c18ef4418e`  
		Last Modified: Wed, 08 May 2019 16:18:30 GMT  
		Size: 210.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e8db71e731b513edf26a29170c0e8a21dd2ecda711261f561d8657581f3f4b5`  
		Last Modified: Wed, 08 May 2019 16:18:30 GMT  
		Size: 1.2 KB (1167 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `influxdb:1.6` - linux; arm64 variant v8

```console
$ docker pull influxdb@sha256:0558f353bbf9bb06c59efea6b5139d41b83cdee93abe593392b34fe100307bcd
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **80.6 MB (80625756 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:64f73fe506b0cbacc813aa62aa6795062e7f387d25a12537f0d826b2fcaa5d60`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Wed, 27 Mar 2019 08:47:20 GMT
ADD file:8f991b13b28ce1de362b9f00e69aac8edc28124a08adeeb3b7fb02153e0b4e92 in / 
# Wed, 27 Mar 2019 08:47:21 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 10:15:55 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 10:16:13 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 27 Mar 2019 23:45:16 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Wed, 27 Mar 2019 23:45:41 GMT
ENV INFLUXDB_VERSION=1.6.6
# Wed, 27 Mar 2019 23:45:55 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     gpg --batch --verify influxdb_${INFLUXDB_VERSION}_${ARCH}.deb.asc influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     dpkg -i influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     rm -f influxdb_${INFLUXDB_VERSION}_${ARCH}.deb*
# Wed, 27 Mar 2019 23:45:55 GMT
COPY file:3d8a606d61e1fc0042cf34d036eda4550a18d140c47376dacc02d96ee6f2dd8b in /etc/influxdb/influxdb.conf 
# Wed, 27 Mar 2019 23:45:56 GMT
EXPOSE 8086
# Wed, 27 Mar 2019 23:45:57 GMT
VOLUME [/var/lib/influxdb]
# Wed, 27 Mar 2019 23:45:57 GMT
COPY file:61c4af7a0e637328374ec46266ed6dde40adf7d14ac6c5081100924991beb7f3 in /entrypoint.sh 
# Wed, 27 Mar 2019 23:45:58 GMT
COPY file:892fcd3130baa17c0b88866ac37e7fe0b7b420a67105d9cd99803c685eaf9df4 in /init-influxdb.sh 
# Wed, 27 Mar 2019 23:45:58 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 27 Mar 2019 23:46:00 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:5385e634d2a1a330aea59f510b0676b269167a579dddb586b27917d80d0dfd01`  
		Last Modified: Wed, 27 Mar 2019 08:52:30 GMT  
		Size: 43.1 MB (43132000 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6696bae2f570e0c96dcb21308e525216796d3452d1a9b8dcaba168ba37f3f464`  
		Last Modified: Wed, 27 Mar 2019 10:36:08 GMT  
		Size: 9.7 MB (9730463 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6dca82770cb3702e9c92d2f155923c0fb55671c1c373b8b50640b7bf05ed8418`  
		Last Modified: Wed, 27 Mar 2019 10:36:05 GMT  
		Size: 4.1 MB (4094072 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56a1a37594e065b68838715135cc87c8000f3e4f977d81709d1dc0b1f54ca93d`  
		Last Modified: Wed, 27 Mar 2019 23:46:46 GMT  
		Size: 2.8 KB (2776 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad8e8723f287cc58e898ea81c5c6b27125b2f81e1952d80e014ac10556eaaecc`  
		Last Modified: Wed, 27 Mar 2019 23:47:22 GMT  
		Size: 23.7 MB (23664844 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4778a2517833c4878afbbd02ad1ea1bae6634264ce0d82ae75014ef8b488efa`  
		Last Modified: Wed, 27 Mar 2019 23:47:06 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66629305555d2d4586c57c11e42f3dc2ee203514b598efc8f54ec37f7c4702c1`  
		Last Modified: Wed, 27 Mar 2019 23:47:07 GMT  
		Size: 210.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2570c37e87bf67b3b1ed9229b01b417759a6bd632a7be1cc4bdf5907a81f2990`  
		Last Modified: Wed, 27 Mar 2019 23:47:06 GMT  
		Size: 1.2 KB (1165 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `influxdb:1.6.6`

```console
$ docker pull influxdb@sha256:3cc8a4ac530b341fbb3a5fa1836ac49bb5b2edcd7648460a23b4ef96fb90bc97
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `influxdb:1.6.6` - linux; amd64

```console
$ docker pull influxdb@sha256:315bd2c8dddaeb502f89a785febe8dc70db5d97291ffcdc2415c44fe074a8553
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **85.8 MB (85777921 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7dabd0aba28e93faab7f483c4074fc900e70524df40da5eab159fe4321b58c72`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Wed, 08 May 2019 00:33:09 GMT
ADD file:caf91edab64f988bc24766c58ee66c00311c7c921296b8e5b51d7023422a1485 in / 
# Wed, 08 May 2019 00:33:10 GMT
CMD ["bash"]
# Wed, 08 May 2019 01:40:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 01:40:12 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 08 May 2019 07:34:07 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Wed, 08 May 2019 07:34:47 GMT
ENV INFLUXDB_VERSION=1.6.6
# Wed, 08 May 2019 07:34:52 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     gpg --batch --verify influxdb_${INFLUXDB_VERSION}_${ARCH}.deb.asc influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     dpkg -i influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     rm -f influxdb_${INFLUXDB_VERSION}_${ARCH}.deb*
# Wed, 08 May 2019 07:34:52 GMT
COPY file:3d8a606d61e1fc0042cf34d036eda4550a18d140c47376dacc02d96ee6f2dd8b in /etc/influxdb/influxdb.conf 
# Wed, 08 May 2019 07:34:52 GMT
EXPOSE 8086
# Wed, 08 May 2019 07:34:52 GMT
VOLUME [/var/lib/influxdb]
# Wed, 08 May 2019 07:34:53 GMT
COPY file:61c4af7a0e637328374ec46266ed6dde40adf7d14ac6c5081100924991beb7f3 in /entrypoint.sh 
# Wed, 08 May 2019 07:34:53 GMT
COPY file:892fcd3130baa17c0b88866ac37e7fe0b7b420a67105d9cd99803c685eaf9df4 in /init-influxdb.sh 
# Wed, 08 May 2019 07:34:53 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 08 May 2019 07:34:53 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:c5e155d5a1d130a7f8a3e24cee0d9e1349bff13f90ec6a941478e558fde53c14`  
		Last Modified: Wed, 08 May 2019 00:37:42 GMT  
		Size: 45.3 MB (45339314 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:221d80d00ae9675aad24913aacbadfac1ce8b7084f9765a6c0813486082c5c69`  
		Last Modified: Wed, 08 May 2019 01:45:42 GMT  
		Size: 10.8 MB (10784878 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4250b3117dca5e14edc32ebf1366cd54e4cda91f17610b76c504a86917ff8b95`  
		Last Modified: Wed, 08 May 2019 01:45:41 GMT  
		Size: 4.3 MB (4340094 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e51b6917b8bea39091733d42fc84ed055d24bab253f1180353c2f0fc24cddfa`  
		Last Modified: Wed, 08 May 2019 07:36:49 GMT  
		Size: 2.8 KB (2772 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d89e7a73918d3f88ce291c49d2a07b74c324bcacfd65649f6af1e406053b2216`  
		Last Modified: Wed, 08 May 2019 07:37:28 GMT  
		Size: 25.3 MB (25309263 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:676644c1fd87be7db07ba202e2c60d71ca3ae0cf57e77dc8e1b7806103791498`  
		Last Modified: Wed, 08 May 2019 07:37:21 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f897d3c3fb339267c47d774acd876b6017246ec2a1cb25bd96f02c5452c79bd1`  
		Last Modified: Wed, 08 May 2019 07:37:21 GMT  
		Size: 209.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3ddabc5ae27de974ed07f795234c77ef812ef1fdcc729037e10e1e3df99414e`  
		Last Modified: Wed, 08 May 2019 07:37:21 GMT  
		Size: 1.2 KB (1166 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `influxdb:1.6.6` - linux; arm variant v7

```console
$ docker pull influxdb@sha256:4c76f0a1dede65397266f12a69b6e6877cdb24b2bac3049b87f623b2473c4f88
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **79.8 MB (79838331 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eda9fdad876b94b9bad0fccc09b53e7b0eb2506e683e45286aa7d4d4cdee3a1e`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Wed, 08 May 2019 12:03:26 GMT
ADD file:7e8dcc40e246d53b86266855a2de8080d26e6b4ed9f594c1acc565784405735b in / 
# Wed, 08 May 2019 12:03:27 GMT
CMD ["bash"]
# Wed, 08 May 2019 13:04:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 13:04:42 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 08 May 2019 16:17:27 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Wed, 08 May 2019 16:17:42 GMT
ENV INFLUXDB_VERSION=1.6.6
# Wed, 08 May 2019 16:17:47 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     gpg --batch --verify influxdb_${INFLUXDB_VERSION}_${ARCH}.deb.asc influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     dpkg -i influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     rm -f influxdb_${INFLUXDB_VERSION}_${ARCH}.deb*
# Wed, 08 May 2019 16:17:48 GMT
COPY file:3d8a606d61e1fc0042cf34d036eda4550a18d140c47376dacc02d96ee6f2dd8b in /etc/influxdb/influxdb.conf 
# Wed, 08 May 2019 16:17:48 GMT
EXPOSE 8086
# Wed, 08 May 2019 16:17:49 GMT
VOLUME [/var/lib/influxdb]
# Wed, 08 May 2019 16:17:49 GMT
COPY file:61c4af7a0e637328374ec46266ed6dde40adf7d14ac6c5081100924991beb7f3 in /entrypoint.sh 
# Wed, 08 May 2019 16:17:50 GMT
COPY file:892fcd3130baa17c0b88866ac37e7fe0b7b420a67105d9cd99803c685eaf9df4 in /init-influxdb.sh 
# Wed, 08 May 2019 16:17:50 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 08 May 2019 16:17:51 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:f2a2fd7c1ab35cd1b5ea6fcc2b801f3877852797e2698ecdb9556e0dee3accb5`  
		Last Modified: Wed, 08 May 2019 12:09:40 GMT  
		Size: 42.1 MB (42082604 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:047df9a92c9f7376283a8d6af526f5126d95995ba48dd7de49979ef57da3e15b`  
		Last Modified: Wed, 08 May 2019 13:12:20 GMT  
		Size: 9.5 MB (9485167 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ddeed4ac8d1e2c751afd6fd3517f1d154365467039353c377c8206fd5eb81d4b`  
		Last Modified: Wed, 08 May 2019 13:12:18 GMT  
		Size: 3.9 MB (3918605 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b668daec8214e7fe112e89f2ad6e22651d66c490c182af5be7b786ca304c7b5`  
		Last Modified: Wed, 08 May 2019 16:18:17 GMT  
		Size: 2.8 KB (2801 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ff585dd605242baaa092785239af8c72bfff76d896bd5652479dc9e40052a68`  
		Last Modified: Wed, 08 May 2019 16:18:40 GMT  
		Size: 24.3 MB (24347551 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6df1d895830a61db27fca872baad24452f255034b658b2e8bea9a4e7f086da8e`  
		Last Modified: Wed, 08 May 2019 16:18:31 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b99fc8c6d4f0584a0cdf65ce0a0f3788402ad8238057bbd471f62c18ef4418e`  
		Last Modified: Wed, 08 May 2019 16:18:30 GMT  
		Size: 210.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e8db71e731b513edf26a29170c0e8a21dd2ecda711261f561d8657581f3f4b5`  
		Last Modified: Wed, 08 May 2019 16:18:30 GMT  
		Size: 1.2 KB (1167 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `influxdb:1.6.6` - linux; arm64 variant v8

```console
$ docker pull influxdb@sha256:0558f353bbf9bb06c59efea6b5139d41b83cdee93abe593392b34fe100307bcd
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **80.6 MB (80625756 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:64f73fe506b0cbacc813aa62aa6795062e7f387d25a12537f0d826b2fcaa5d60`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Wed, 27 Mar 2019 08:47:20 GMT
ADD file:8f991b13b28ce1de362b9f00e69aac8edc28124a08adeeb3b7fb02153e0b4e92 in / 
# Wed, 27 Mar 2019 08:47:21 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 10:15:55 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 10:16:13 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 27 Mar 2019 23:45:16 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Wed, 27 Mar 2019 23:45:41 GMT
ENV INFLUXDB_VERSION=1.6.6
# Wed, 27 Mar 2019 23:45:55 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     gpg --batch --verify influxdb_${INFLUXDB_VERSION}_${ARCH}.deb.asc influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     dpkg -i influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     rm -f influxdb_${INFLUXDB_VERSION}_${ARCH}.deb*
# Wed, 27 Mar 2019 23:45:55 GMT
COPY file:3d8a606d61e1fc0042cf34d036eda4550a18d140c47376dacc02d96ee6f2dd8b in /etc/influxdb/influxdb.conf 
# Wed, 27 Mar 2019 23:45:56 GMT
EXPOSE 8086
# Wed, 27 Mar 2019 23:45:57 GMT
VOLUME [/var/lib/influxdb]
# Wed, 27 Mar 2019 23:45:57 GMT
COPY file:61c4af7a0e637328374ec46266ed6dde40adf7d14ac6c5081100924991beb7f3 in /entrypoint.sh 
# Wed, 27 Mar 2019 23:45:58 GMT
COPY file:892fcd3130baa17c0b88866ac37e7fe0b7b420a67105d9cd99803c685eaf9df4 in /init-influxdb.sh 
# Wed, 27 Mar 2019 23:45:58 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 27 Mar 2019 23:46:00 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:5385e634d2a1a330aea59f510b0676b269167a579dddb586b27917d80d0dfd01`  
		Last Modified: Wed, 27 Mar 2019 08:52:30 GMT  
		Size: 43.1 MB (43132000 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6696bae2f570e0c96dcb21308e525216796d3452d1a9b8dcaba168ba37f3f464`  
		Last Modified: Wed, 27 Mar 2019 10:36:08 GMT  
		Size: 9.7 MB (9730463 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6dca82770cb3702e9c92d2f155923c0fb55671c1c373b8b50640b7bf05ed8418`  
		Last Modified: Wed, 27 Mar 2019 10:36:05 GMT  
		Size: 4.1 MB (4094072 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56a1a37594e065b68838715135cc87c8000f3e4f977d81709d1dc0b1f54ca93d`  
		Last Modified: Wed, 27 Mar 2019 23:46:46 GMT  
		Size: 2.8 KB (2776 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad8e8723f287cc58e898ea81c5c6b27125b2f81e1952d80e014ac10556eaaecc`  
		Last Modified: Wed, 27 Mar 2019 23:47:22 GMT  
		Size: 23.7 MB (23664844 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4778a2517833c4878afbbd02ad1ea1bae6634264ce0d82ae75014ef8b488efa`  
		Last Modified: Wed, 27 Mar 2019 23:47:06 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66629305555d2d4586c57c11e42f3dc2ee203514b598efc8f54ec37f7c4702c1`  
		Last Modified: Wed, 27 Mar 2019 23:47:07 GMT  
		Size: 210.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2570c37e87bf67b3b1ed9229b01b417759a6bd632a7be1cc4bdf5907a81f2990`  
		Last Modified: Wed, 27 Mar 2019 23:47:06 GMT  
		Size: 1.2 KB (1165 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `influxdb:1.6.6-alpine`

```console
$ docker pull influxdb@sha256:2ec8fe2fd37830a024193d2f2fafb7afd95f81dc812a851f07037ec866f8f027
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `influxdb:1.6.6-alpine` - linux; amd64

```console
$ docker pull influxdb@sha256:35e445e3a22e836d24649c19d8f1db2fc7b4b0a234253d4f2ed82fc3a974e6b1
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **29.3 MB (29269114 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:df4466d0a255c1690fee7b572e8452e3c3da5c20cef25251d2f78517b2294fbc`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Thu, 07 Mar 2019 22:19:46 GMT
ADD file:38bc6b51693b13d84a63e281403e2f6d0218c44b1d7ff12157c4523f9f0ebb1e in / 
# Thu, 07 Mar 2019 22:19:46 GMT
CMD ["/bin/sh"]
# Thu, 07 Mar 2019 23:09:58 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf
# Thu, 07 Mar 2019 23:13:21 GMT
RUN apk add --no-cache tzdata bash ca-certificates &&     update-ca-certificates
# Thu, 07 Mar 2019 23:13:58 GMT
ENV INFLUXDB_VERSION=1.6.6
# Thu, 07 Mar 2019 23:14:05 GMT
RUN set -ex &&     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/influxdb/releases/influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/influxdb/releases/influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/influxdb-*/influxdb.conf &&     chmod +x /usr/src/influxdb-*/* &&     cp -a /usr/src/influxdb-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Thu, 07 Mar 2019 23:14:05 GMT
COPY file:3d8a606d61e1fc0042cf34d036eda4550a18d140c47376dacc02d96ee6f2dd8b in /etc/influxdb/influxdb.conf 
# Thu, 07 Mar 2019 23:14:05 GMT
EXPOSE 8086
# Thu, 07 Mar 2019 23:14:05 GMT
VOLUME [/var/lib/influxdb]
# Thu, 07 Mar 2019 23:14:06 GMT
COPY file:61c4af7a0e637328374ec46266ed6dde40adf7d14ac6c5081100924991beb7f3 in /entrypoint.sh 
# Thu, 07 Mar 2019 23:14:06 GMT
COPY file:892fcd3130baa17c0b88866ac37e7fe0b7b420a67105d9cd99803c685eaf9df4 in /init-influxdb.sh 
# Thu, 07 Mar 2019 23:14:06 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 07 Mar 2019 23:14:06 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:c87736221ed0bcaa60b8e92a19bec2284899ef89226f2a07968677cf59e637a4`  
		Last Modified: Thu, 07 Mar 2019 22:20:20 GMT  
		Size: 2.2 MB (2207176 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a7c3edaa27ffab3a4de5b02e8f2ac780fca60d75bf7c7846352103c7f9fff6e`  
		Last Modified: Thu, 07 Mar 2019 23:10:40 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:611215ad6fd94aca0d418348501999c7c156cbec717f6a020ff0f94f2202ba45`  
		Last Modified: Thu, 07 Mar 2019 23:15:25 GMT  
		Size: 1.9 MB (1870457 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9419b81f0e6cbfebc4722040b9fbc66b3741670225b4a89de8cbcb4a5d1335c`  
		Last Modified: Thu, 07 Mar 2019 23:16:04 GMT  
		Size: 25.2 MB (25189729 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0491ba45090f2271d5f976af0dad12bcf0159971a334369a0a38f5b3aa8958a2`  
		Last Modified: Thu, 07 Mar 2019 23:15:56 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7cec2f172e00ed7c18cb99fe9c1b70434373f297b620ffd397b4ed79a594cd9`  
		Last Modified: Thu, 07 Mar 2019 23:15:56 GMT  
		Size: 210.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32003d365c1c6c4be7d51dd9ec0e43ab7ffc29846a0c4e30932eb72747acb5a2`  
		Last Modified: Thu, 07 Mar 2019 23:15:56 GMT  
		Size: 1.2 KB (1165 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `influxdb:1.6.6-data`

```console
$ docker pull influxdb@sha256:7fb72edd70333014d71f75d1c99a2efb4825937ad7d704c003bb901205d1f539
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `influxdb:1.6.6-data` - linux; amd64

```console
$ docker pull influxdb@sha256:a779518881f50eff9a95d9205dee2d15ae7d99cb874681d8468a5566b396e3ff
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **87.0 MB (87040798 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fdb083c59ea1b8dc8f63826b7a4607dccc9df71a19b35bb9e542fda804c0c2b3`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Wed, 08 May 2019 00:33:09 GMT
ADD file:caf91edab64f988bc24766c58ee66c00311c7c921296b8e5b51d7023422a1485 in / 
# Wed, 08 May 2019 00:33:10 GMT
CMD ["bash"]
# Wed, 08 May 2019 01:40:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 01:40:12 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 08 May 2019 07:34:07 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Wed, 08 May 2019 07:35:01 GMT
ENV INFLUXDB_VERSION=1.6.6-c1.6.6
# Wed, 08 May 2019 07:35:06 GMT
RUN wget --no-verbose https://dl.influxdata.com/enterprise/releases/influxdb-data_${INFLUXDB_VERSION}_amd64.deb.asc &&     wget --no-verbose https://dl.influxdata.com/enterprise/releases/influxdb-data_${INFLUXDB_VERSION}_amd64.deb &&     gpg --batch --verify influxdb-data_${INFLUXDB_VERSION}_amd64.deb.asc influxdb-data_${INFLUXDB_VERSION}_amd64.deb &&     dpkg -i influxdb-data_${INFLUXDB_VERSION}_amd64.deb &&     rm -f influxdb-data_${INFLUXDB_VERSION}_amd64.deb*
# Wed, 08 May 2019 07:35:06 GMT
COPY file:bf2f42b62a32a7ee3ab93d9a5e451b7d59af1a97e40dc4a76b8aaf2f64383d7a in /etc/influxdb/influxdb.conf 
# Wed, 08 May 2019 07:35:06 GMT
EXPOSE 8086
# Wed, 08 May 2019 07:35:06 GMT
VOLUME [/var/lib/influxdb]
# Wed, 08 May 2019 07:35:07 GMT
COPY file:182a0176834db40043100d082d05e5aded9887c94b02416f6e3154c827c07360 in /entrypoint.sh 
# Wed, 08 May 2019 07:35:07 GMT
COPY file:892fcd3130baa17c0b88866ac37e7fe0b7b420a67105d9cd99803c685eaf9df4 in /init-influxdb.sh 
# Wed, 08 May 2019 07:35:07 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 08 May 2019 07:35:07 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:c5e155d5a1d130a7f8a3e24cee0d9e1349bff13f90ec6a941478e558fde53c14`  
		Last Modified: Wed, 08 May 2019 00:37:42 GMT  
		Size: 45.3 MB (45339314 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:221d80d00ae9675aad24913aacbadfac1ce8b7084f9765a6c0813486082c5c69`  
		Last Modified: Wed, 08 May 2019 01:45:42 GMT  
		Size: 10.8 MB (10784878 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4250b3117dca5e14edc32ebf1366cd54e4cda91f17610b76c504a86917ff8b95`  
		Last Modified: Wed, 08 May 2019 01:45:41 GMT  
		Size: 4.3 MB (4340094 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e51b6917b8bea39091733d42fc84ed055d24bab253f1180353c2f0fc24cddfa`  
		Last Modified: Wed, 08 May 2019 07:36:49 GMT  
		Size: 2.8 KB (2772 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9bb3f5cec7f386e2b4879cf54b1236531f04b565f10e7cc905925abe1af56871`  
		Last Modified: Wed, 08 May 2019 07:37:42 GMT  
		Size: 26.6 MB (26572079 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1a9134e02549b9c98186d96eaff981d67e6a22ef05838be3cfa3d82ec58806d`  
		Last Modified: Wed, 08 May 2019 07:37:33 GMT  
		Size: 243.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af3de2fad9ee942b83a91c6632af4446954123e5519ecc18ef0378703100e6c1`  
		Last Modified: Wed, 08 May 2019 07:37:33 GMT  
		Size: 252.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8ca8159f32476832ffbfa53710b96a5805b7e5ca619ebc83cc4a5bf70501887`  
		Last Modified: Wed, 08 May 2019 07:37:34 GMT  
		Size: 1.2 KB (1166 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `influxdb:1.6.6-data-alpine`

```console
$ docker pull influxdb@sha256:5b0188ad851b49dc900dcbc48c13576a5a8a0fba540e17b22a1d03f35dd31871
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `influxdb:1.6.6-data-alpine` - linux; amd64

```console
$ docker pull influxdb@sha256:c77be5b113b3b3d2555df8029d22491a68dfb00854ede22bb63a3ceccefffecf
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.5 MB (30531353 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5d66485e573ed6f4d423b4b43d01589ff70c2a0337e9e04bbab8584848d490b0`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Thu, 07 Mar 2019 22:19:46 GMT
ADD file:38bc6b51693b13d84a63e281403e2f6d0218c44b1d7ff12157c4523f9f0ebb1e in / 
# Thu, 07 Mar 2019 22:19:46 GMT
CMD ["/bin/sh"]
# Thu, 07 Mar 2019 23:09:58 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf
# Thu, 07 Mar 2019 23:13:21 GMT
RUN apk add --no-cache tzdata bash ca-certificates &&     update-ca-certificates
# Thu, 07 Mar 2019 23:14:11 GMT
ENV INFLUXDB_VERSION=1.6.6-c1.6.6
# Thu, 07 Mar 2019 23:14:18 GMT
RUN set -ex &&     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/enterprise/releases/influxdb-data-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/enterprise/releases/influxdb-data-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify influxdb-data-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc influxdb-data-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf influxdb-data-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/influxdb-*/influxdb.conf &&     chmod +x /usr/src/influxdb-*/* &&     cp -a /usr/src/influxdb-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Thu, 07 Mar 2019 23:14:18 GMT
COPY file:bf2f42b62a32a7ee3ab93d9a5e451b7d59af1a97e40dc4a76b8aaf2f64383d7a in /etc/influxdb/influxdb.conf 
# Thu, 07 Mar 2019 23:14:18 GMT
EXPOSE 8086
# Thu, 07 Mar 2019 23:14:18 GMT
VOLUME [/var/lib/influxdb]
# Thu, 07 Mar 2019 23:14:18 GMT
COPY file:182a0176834db40043100d082d05e5aded9887c94b02416f6e3154c827c07360 in /entrypoint.sh 
# Thu, 07 Mar 2019 23:14:19 GMT
COPY file:892fcd3130baa17c0b88866ac37e7fe0b7b420a67105d9cd99803c685eaf9df4 in /init-influxdb.sh 
# Thu, 07 Mar 2019 23:14:19 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 07 Mar 2019 23:14:19 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:c87736221ed0bcaa60b8e92a19bec2284899ef89226f2a07968677cf59e637a4`  
		Last Modified: Thu, 07 Mar 2019 22:20:20 GMT  
		Size: 2.2 MB (2207176 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a7c3edaa27ffab3a4de5b02e8f2ac780fca60d75bf7c7846352103c7f9fff6e`  
		Last Modified: Thu, 07 Mar 2019 23:10:40 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:611215ad6fd94aca0d418348501999c7c156cbec717f6a020ff0f94f2202ba45`  
		Last Modified: Thu, 07 Mar 2019 23:15:25 GMT  
		Size: 1.9 MB (1870457 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14d4967ef5ba0406b80937d665cb20893f25809a6eacc3be0299f0f91bd7d4ef`  
		Last Modified: Thu, 07 Mar 2019 23:16:15 GMT  
		Size: 26.5 MB (26451909 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40e92568dc251e46181982c7950e1052a3e188907f23f6c83a23ced5087f76b2`  
		Last Modified: Thu, 07 Mar 2019 23:16:08 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0cf32fdb54ae9e81349427f08bb66c9545e600978f730575e03036f4057274f`  
		Last Modified: Thu, 07 Mar 2019 23:16:08 GMT  
		Size: 251.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31574836758c62b8f3e0b0aa6a69a1f1e40d35f6e2807991cefe9f63ef40a87f`  
		Last Modified: Thu, 07 Mar 2019 23:16:08 GMT  
		Size: 1.2 KB (1166 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `influxdb:1.6.6-meta`

```console
$ docker pull influxdb@sha256:36efbe7165981bf3a8893652133e0b468564959f8aca652db0bc0d1eb204eced
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `influxdb:1.6.6-meta` - linux; amd64

```console
$ docker pull influxdb@sha256:9495155aee6885891bb90e81976638b15c5a47661b9ddeb786200a6a558bca0b
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **73.0 MB (73016647 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ce68e6f7b3232e9a3d0f5d01077e9a9971c3972ed6a8e1a2ef51d47a8bbe6eb2`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd-meta"]`

```dockerfile
# Wed, 08 May 2019 00:33:09 GMT
ADD file:caf91edab64f988bc24766c58ee66c00311c7c921296b8e5b51d7023422a1485 in / 
# Wed, 08 May 2019 00:33:10 GMT
CMD ["bash"]
# Wed, 08 May 2019 01:40:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 01:40:12 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 08 May 2019 07:34:07 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Wed, 08 May 2019 07:35:01 GMT
ENV INFLUXDB_VERSION=1.6.6-c1.6.6
# Wed, 08 May 2019 07:35:18 GMT
RUN wget --no-verbose https://dl.influxdata.com/enterprise/releases/influxdb-meta_${INFLUXDB_VERSION}_amd64.deb.asc &&     wget --no-verbose https://dl.influxdata.com/enterprise/releases/influxdb-meta_${INFLUXDB_VERSION}_amd64.deb &&     gpg --batch --verify influxdb-meta_${INFLUXDB_VERSION}_amd64.deb.asc influxdb-meta_${INFLUXDB_VERSION}_amd64.deb &&     dpkg -i influxdb-meta_${INFLUXDB_VERSION}_amd64.deb &&     rm -f influxdb-meta_${INFLUXDB_VERSION}_amd64.deb*
# Wed, 08 May 2019 07:35:19 GMT
COPY file:5d8d1b0acfd7ca05cf6698246b28d240206fa448f4aa5ac839c9ad323adbeac2 in /etc/influxdb/influxdb-meta.conf 
# Wed, 08 May 2019 07:35:19 GMT
EXPOSE 8091
# Wed, 08 May 2019 07:35:19 GMT
VOLUME [/var/lib/influxdb]
# Wed, 08 May 2019 07:35:19 GMT
COPY file:126b1f7e41b4975cf2ce23037cf6a46253fb817023062317380c48ff5df47228 in /entrypoint.sh 
# Wed, 08 May 2019 07:35:20 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 08 May 2019 07:35:20 GMT
CMD ["influxd-meta"]
```

-	Layers:
	-	`sha256:c5e155d5a1d130a7f8a3e24cee0d9e1349bff13f90ec6a941478e558fde53c14`  
		Last Modified: Wed, 08 May 2019 00:37:42 GMT  
		Size: 45.3 MB (45339314 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:221d80d00ae9675aad24913aacbadfac1ce8b7084f9765a6c0813486082c5c69`  
		Last Modified: Wed, 08 May 2019 01:45:42 GMT  
		Size: 10.8 MB (10784878 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4250b3117dca5e14edc32ebf1366cd54e4cda91f17610b76c504a86917ff8b95`  
		Last Modified: Wed, 08 May 2019 01:45:41 GMT  
		Size: 4.3 MB (4340094 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e51b6917b8bea39091733d42fc84ed055d24bab253f1180353c2f0fc24cddfa`  
		Last Modified: Wed, 08 May 2019 07:36:49 GMT  
		Size: 2.8 KB (2772 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37cb6b25bae11468605ef1c4001c4ed9738afb3255c5f0ae36aefb7fc629a003`  
		Last Modified: Wed, 08 May 2019 07:37:52 GMT  
		Size: 12.5 MB (12549019 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d46f9dca42dd119d9ecb71d28cc71d877737de6f64715bba7fdfdc985f5902e6`  
		Last Modified: Wed, 08 May 2019 07:37:49 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5850a2ddcda0e54db886d23800705a6f8c122e84b04fc5e666d6901d6b1c0d9`  
		Last Modified: Wed, 08 May 2019 07:37:48 GMT  
		Size: 375.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `influxdb:1.6.6-meta-alpine`

```console
$ docker pull influxdb@sha256:402e7b76f936441606d18a2b09ddf2454800fd037f90cf14cd14ca41793231ee
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `influxdb:1.6.6-meta-alpine` - linux; amd64

```console
$ docker pull influxdb@sha256:ea6226c8dedc645e6e97801f87a33c4ea3aa85aa384b652bdd22d05d8779f38e
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.6 MB (16583053 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2477e3d8a99018a6aad642a2c5324c5aee0a6f4a349da344fcf438fe558c9e90`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd-meta"]`

```dockerfile
# Thu, 07 Mar 2019 22:19:46 GMT
ADD file:38bc6b51693b13d84a63e281403e2f6d0218c44b1d7ff12157c4523f9f0ebb1e in / 
# Thu, 07 Mar 2019 22:19:46 GMT
CMD ["/bin/sh"]
# Thu, 07 Mar 2019 23:09:58 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf
# Thu, 07 Mar 2019 23:13:21 GMT
RUN apk add --no-cache tzdata bash ca-certificates &&     update-ca-certificates
# Thu, 07 Mar 2019 23:14:11 GMT
ENV INFLUXDB_VERSION=1.6.6-c1.6.6
# Thu, 07 Mar 2019 23:14:28 GMT
RUN set -ex &&     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/enterprise/releases/influxdb-meta-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/enterprise/releases/influxdb-meta-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify influxdb-meta-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc influxdb-meta-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf influxdb-meta-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/influxdb-*/influxdb-meta.conf &&     chmod +x /usr/src/influxdb-*/* &&     cp -a /usr/src/influxdb-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Thu, 07 Mar 2019 23:14:28 GMT
COPY file:5d8d1b0acfd7ca05cf6698246b28d240206fa448f4aa5ac839c9ad323adbeac2 in /etc/influxdb/influxdb-meta.conf 
# Thu, 07 Mar 2019 23:14:28 GMT
EXPOSE 8091
# Thu, 07 Mar 2019 23:14:29 GMT
VOLUME [/var/lib/influxdb]
# Thu, 07 Mar 2019 23:14:29 GMT
COPY file:126b1f7e41b4975cf2ce23037cf6a46253fb817023062317380c48ff5df47228 in /entrypoint.sh 
# Thu, 07 Mar 2019 23:14:29 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 07 Mar 2019 23:14:29 GMT
CMD ["influxd-meta"]
```

-	Layers:
	-	`sha256:c87736221ed0bcaa60b8e92a19bec2284899ef89226f2a07968677cf59e637a4`  
		Last Modified: Thu, 07 Mar 2019 22:20:20 GMT  
		Size: 2.2 MB (2207176 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a7c3edaa27ffab3a4de5b02e8f2ac780fca60d75bf7c7846352103c7f9fff6e`  
		Last Modified: Thu, 07 Mar 2019 23:10:40 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:611215ad6fd94aca0d418348501999c7c156cbec717f6a020ff0f94f2202ba45`  
		Last Modified: Thu, 07 Mar 2019 23:15:25 GMT  
		Size: 1.9 MB (1870457 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66c571c7d091900ac5eb842fdccc609e842d55ca3df790da89539b46dbdc0f90`  
		Last Modified: Thu, 07 Mar 2019 23:16:22 GMT  
		Size: 12.5 MB (12504700 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd41af65e5463d97133c67edc4318d049fe698dd3e6cc358c2b345a3f4e749de`  
		Last Modified: Thu, 07 Mar 2019 23:16:19 GMT  
		Size: 193.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04c6c43ed0e59232408540788e92b7ed02f288a7f91a8bc01195824325199c36`  
		Last Modified: Thu, 07 Mar 2019 23:16:19 GMT  
		Size: 373.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `influxdb:1.6-alpine`

```console
$ docker pull influxdb@sha256:2ec8fe2fd37830a024193d2f2fafb7afd95f81dc812a851f07037ec866f8f027
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `influxdb:1.6-alpine` - linux; amd64

```console
$ docker pull influxdb@sha256:35e445e3a22e836d24649c19d8f1db2fc7b4b0a234253d4f2ed82fc3a974e6b1
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **29.3 MB (29269114 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:df4466d0a255c1690fee7b572e8452e3c3da5c20cef25251d2f78517b2294fbc`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Thu, 07 Mar 2019 22:19:46 GMT
ADD file:38bc6b51693b13d84a63e281403e2f6d0218c44b1d7ff12157c4523f9f0ebb1e in / 
# Thu, 07 Mar 2019 22:19:46 GMT
CMD ["/bin/sh"]
# Thu, 07 Mar 2019 23:09:58 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf
# Thu, 07 Mar 2019 23:13:21 GMT
RUN apk add --no-cache tzdata bash ca-certificates &&     update-ca-certificates
# Thu, 07 Mar 2019 23:13:58 GMT
ENV INFLUXDB_VERSION=1.6.6
# Thu, 07 Mar 2019 23:14:05 GMT
RUN set -ex &&     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/influxdb/releases/influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/influxdb/releases/influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/influxdb-*/influxdb.conf &&     chmod +x /usr/src/influxdb-*/* &&     cp -a /usr/src/influxdb-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Thu, 07 Mar 2019 23:14:05 GMT
COPY file:3d8a606d61e1fc0042cf34d036eda4550a18d140c47376dacc02d96ee6f2dd8b in /etc/influxdb/influxdb.conf 
# Thu, 07 Mar 2019 23:14:05 GMT
EXPOSE 8086
# Thu, 07 Mar 2019 23:14:05 GMT
VOLUME [/var/lib/influxdb]
# Thu, 07 Mar 2019 23:14:06 GMT
COPY file:61c4af7a0e637328374ec46266ed6dde40adf7d14ac6c5081100924991beb7f3 in /entrypoint.sh 
# Thu, 07 Mar 2019 23:14:06 GMT
COPY file:892fcd3130baa17c0b88866ac37e7fe0b7b420a67105d9cd99803c685eaf9df4 in /init-influxdb.sh 
# Thu, 07 Mar 2019 23:14:06 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 07 Mar 2019 23:14:06 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:c87736221ed0bcaa60b8e92a19bec2284899ef89226f2a07968677cf59e637a4`  
		Last Modified: Thu, 07 Mar 2019 22:20:20 GMT  
		Size: 2.2 MB (2207176 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a7c3edaa27ffab3a4de5b02e8f2ac780fca60d75bf7c7846352103c7f9fff6e`  
		Last Modified: Thu, 07 Mar 2019 23:10:40 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:611215ad6fd94aca0d418348501999c7c156cbec717f6a020ff0f94f2202ba45`  
		Last Modified: Thu, 07 Mar 2019 23:15:25 GMT  
		Size: 1.9 MB (1870457 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9419b81f0e6cbfebc4722040b9fbc66b3741670225b4a89de8cbcb4a5d1335c`  
		Last Modified: Thu, 07 Mar 2019 23:16:04 GMT  
		Size: 25.2 MB (25189729 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0491ba45090f2271d5f976af0dad12bcf0159971a334369a0a38f5b3aa8958a2`  
		Last Modified: Thu, 07 Mar 2019 23:15:56 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7cec2f172e00ed7c18cb99fe9c1b70434373f297b620ffd397b4ed79a594cd9`  
		Last Modified: Thu, 07 Mar 2019 23:15:56 GMT  
		Size: 210.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32003d365c1c6c4be7d51dd9ec0e43ab7ffc29846a0c4e30932eb72747acb5a2`  
		Last Modified: Thu, 07 Mar 2019 23:15:56 GMT  
		Size: 1.2 KB (1165 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `influxdb:1.6-data`

```console
$ docker pull influxdb@sha256:7fb72edd70333014d71f75d1c99a2efb4825937ad7d704c003bb901205d1f539
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `influxdb:1.6-data` - linux; amd64

```console
$ docker pull influxdb@sha256:a779518881f50eff9a95d9205dee2d15ae7d99cb874681d8468a5566b396e3ff
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **87.0 MB (87040798 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fdb083c59ea1b8dc8f63826b7a4607dccc9df71a19b35bb9e542fda804c0c2b3`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Wed, 08 May 2019 00:33:09 GMT
ADD file:caf91edab64f988bc24766c58ee66c00311c7c921296b8e5b51d7023422a1485 in / 
# Wed, 08 May 2019 00:33:10 GMT
CMD ["bash"]
# Wed, 08 May 2019 01:40:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 01:40:12 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 08 May 2019 07:34:07 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Wed, 08 May 2019 07:35:01 GMT
ENV INFLUXDB_VERSION=1.6.6-c1.6.6
# Wed, 08 May 2019 07:35:06 GMT
RUN wget --no-verbose https://dl.influxdata.com/enterprise/releases/influxdb-data_${INFLUXDB_VERSION}_amd64.deb.asc &&     wget --no-verbose https://dl.influxdata.com/enterprise/releases/influxdb-data_${INFLUXDB_VERSION}_amd64.deb &&     gpg --batch --verify influxdb-data_${INFLUXDB_VERSION}_amd64.deb.asc influxdb-data_${INFLUXDB_VERSION}_amd64.deb &&     dpkg -i influxdb-data_${INFLUXDB_VERSION}_amd64.deb &&     rm -f influxdb-data_${INFLUXDB_VERSION}_amd64.deb*
# Wed, 08 May 2019 07:35:06 GMT
COPY file:bf2f42b62a32a7ee3ab93d9a5e451b7d59af1a97e40dc4a76b8aaf2f64383d7a in /etc/influxdb/influxdb.conf 
# Wed, 08 May 2019 07:35:06 GMT
EXPOSE 8086
# Wed, 08 May 2019 07:35:06 GMT
VOLUME [/var/lib/influxdb]
# Wed, 08 May 2019 07:35:07 GMT
COPY file:182a0176834db40043100d082d05e5aded9887c94b02416f6e3154c827c07360 in /entrypoint.sh 
# Wed, 08 May 2019 07:35:07 GMT
COPY file:892fcd3130baa17c0b88866ac37e7fe0b7b420a67105d9cd99803c685eaf9df4 in /init-influxdb.sh 
# Wed, 08 May 2019 07:35:07 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 08 May 2019 07:35:07 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:c5e155d5a1d130a7f8a3e24cee0d9e1349bff13f90ec6a941478e558fde53c14`  
		Last Modified: Wed, 08 May 2019 00:37:42 GMT  
		Size: 45.3 MB (45339314 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:221d80d00ae9675aad24913aacbadfac1ce8b7084f9765a6c0813486082c5c69`  
		Last Modified: Wed, 08 May 2019 01:45:42 GMT  
		Size: 10.8 MB (10784878 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4250b3117dca5e14edc32ebf1366cd54e4cda91f17610b76c504a86917ff8b95`  
		Last Modified: Wed, 08 May 2019 01:45:41 GMT  
		Size: 4.3 MB (4340094 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e51b6917b8bea39091733d42fc84ed055d24bab253f1180353c2f0fc24cddfa`  
		Last Modified: Wed, 08 May 2019 07:36:49 GMT  
		Size: 2.8 KB (2772 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9bb3f5cec7f386e2b4879cf54b1236531f04b565f10e7cc905925abe1af56871`  
		Last Modified: Wed, 08 May 2019 07:37:42 GMT  
		Size: 26.6 MB (26572079 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1a9134e02549b9c98186d96eaff981d67e6a22ef05838be3cfa3d82ec58806d`  
		Last Modified: Wed, 08 May 2019 07:37:33 GMT  
		Size: 243.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af3de2fad9ee942b83a91c6632af4446954123e5519ecc18ef0378703100e6c1`  
		Last Modified: Wed, 08 May 2019 07:37:33 GMT  
		Size: 252.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8ca8159f32476832ffbfa53710b96a5805b7e5ca619ebc83cc4a5bf70501887`  
		Last Modified: Wed, 08 May 2019 07:37:34 GMT  
		Size: 1.2 KB (1166 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `influxdb:1.6-data-alpine`

```console
$ docker pull influxdb@sha256:5b0188ad851b49dc900dcbc48c13576a5a8a0fba540e17b22a1d03f35dd31871
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `influxdb:1.6-data-alpine` - linux; amd64

```console
$ docker pull influxdb@sha256:c77be5b113b3b3d2555df8029d22491a68dfb00854ede22bb63a3ceccefffecf
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.5 MB (30531353 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5d66485e573ed6f4d423b4b43d01589ff70c2a0337e9e04bbab8584848d490b0`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Thu, 07 Mar 2019 22:19:46 GMT
ADD file:38bc6b51693b13d84a63e281403e2f6d0218c44b1d7ff12157c4523f9f0ebb1e in / 
# Thu, 07 Mar 2019 22:19:46 GMT
CMD ["/bin/sh"]
# Thu, 07 Mar 2019 23:09:58 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf
# Thu, 07 Mar 2019 23:13:21 GMT
RUN apk add --no-cache tzdata bash ca-certificates &&     update-ca-certificates
# Thu, 07 Mar 2019 23:14:11 GMT
ENV INFLUXDB_VERSION=1.6.6-c1.6.6
# Thu, 07 Mar 2019 23:14:18 GMT
RUN set -ex &&     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/enterprise/releases/influxdb-data-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/enterprise/releases/influxdb-data-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify influxdb-data-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc influxdb-data-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf influxdb-data-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/influxdb-*/influxdb.conf &&     chmod +x /usr/src/influxdb-*/* &&     cp -a /usr/src/influxdb-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Thu, 07 Mar 2019 23:14:18 GMT
COPY file:bf2f42b62a32a7ee3ab93d9a5e451b7d59af1a97e40dc4a76b8aaf2f64383d7a in /etc/influxdb/influxdb.conf 
# Thu, 07 Mar 2019 23:14:18 GMT
EXPOSE 8086
# Thu, 07 Mar 2019 23:14:18 GMT
VOLUME [/var/lib/influxdb]
# Thu, 07 Mar 2019 23:14:18 GMT
COPY file:182a0176834db40043100d082d05e5aded9887c94b02416f6e3154c827c07360 in /entrypoint.sh 
# Thu, 07 Mar 2019 23:14:19 GMT
COPY file:892fcd3130baa17c0b88866ac37e7fe0b7b420a67105d9cd99803c685eaf9df4 in /init-influxdb.sh 
# Thu, 07 Mar 2019 23:14:19 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 07 Mar 2019 23:14:19 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:c87736221ed0bcaa60b8e92a19bec2284899ef89226f2a07968677cf59e637a4`  
		Last Modified: Thu, 07 Mar 2019 22:20:20 GMT  
		Size: 2.2 MB (2207176 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a7c3edaa27ffab3a4de5b02e8f2ac780fca60d75bf7c7846352103c7f9fff6e`  
		Last Modified: Thu, 07 Mar 2019 23:10:40 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:611215ad6fd94aca0d418348501999c7c156cbec717f6a020ff0f94f2202ba45`  
		Last Modified: Thu, 07 Mar 2019 23:15:25 GMT  
		Size: 1.9 MB (1870457 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14d4967ef5ba0406b80937d665cb20893f25809a6eacc3be0299f0f91bd7d4ef`  
		Last Modified: Thu, 07 Mar 2019 23:16:15 GMT  
		Size: 26.5 MB (26451909 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40e92568dc251e46181982c7950e1052a3e188907f23f6c83a23ced5087f76b2`  
		Last Modified: Thu, 07 Mar 2019 23:16:08 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0cf32fdb54ae9e81349427f08bb66c9545e600978f730575e03036f4057274f`  
		Last Modified: Thu, 07 Mar 2019 23:16:08 GMT  
		Size: 251.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31574836758c62b8f3e0b0aa6a69a1f1e40d35f6e2807991cefe9f63ef40a87f`  
		Last Modified: Thu, 07 Mar 2019 23:16:08 GMT  
		Size: 1.2 KB (1166 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `influxdb:1.6-meta`

```console
$ docker pull influxdb@sha256:36efbe7165981bf3a8893652133e0b468564959f8aca652db0bc0d1eb204eced
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `influxdb:1.6-meta` - linux; amd64

```console
$ docker pull influxdb@sha256:9495155aee6885891bb90e81976638b15c5a47661b9ddeb786200a6a558bca0b
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **73.0 MB (73016647 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ce68e6f7b3232e9a3d0f5d01077e9a9971c3972ed6a8e1a2ef51d47a8bbe6eb2`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd-meta"]`

```dockerfile
# Wed, 08 May 2019 00:33:09 GMT
ADD file:caf91edab64f988bc24766c58ee66c00311c7c921296b8e5b51d7023422a1485 in / 
# Wed, 08 May 2019 00:33:10 GMT
CMD ["bash"]
# Wed, 08 May 2019 01:40:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 01:40:12 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 08 May 2019 07:34:07 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Wed, 08 May 2019 07:35:01 GMT
ENV INFLUXDB_VERSION=1.6.6-c1.6.6
# Wed, 08 May 2019 07:35:18 GMT
RUN wget --no-verbose https://dl.influxdata.com/enterprise/releases/influxdb-meta_${INFLUXDB_VERSION}_amd64.deb.asc &&     wget --no-verbose https://dl.influxdata.com/enterprise/releases/influxdb-meta_${INFLUXDB_VERSION}_amd64.deb &&     gpg --batch --verify influxdb-meta_${INFLUXDB_VERSION}_amd64.deb.asc influxdb-meta_${INFLUXDB_VERSION}_amd64.deb &&     dpkg -i influxdb-meta_${INFLUXDB_VERSION}_amd64.deb &&     rm -f influxdb-meta_${INFLUXDB_VERSION}_amd64.deb*
# Wed, 08 May 2019 07:35:19 GMT
COPY file:5d8d1b0acfd7ca05cf6698246b28d240206fa448f4aa5ac839c9ad323adbeac2 in /etc/influxdb/influxdb-meta.conf 
# Wed, 08 May 2019 07:35:19 GMT
EXPOSE 8091
# Wed, 08 May 2019 07:35:19 GMT
VOLUME [/var/lib/influxdb]
# Wed, 08 May 2019 07:35:19 GMT
COPY file:126b1f7e41b4975cf2ce23037cf6a46253fb817023062317380c48ff5df47228 in /entrypoint.sh 
# Wed, 08 May 2019 07:35:20 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 08 May 2019 07:35:20 GMT
CMD ["influxd-meta"]
```

-	Layers:
	-	`sha256:c5e155d5a1d130a7f8a3e24cee0d9e1349bff13f90ec6a941478e558fde53c14`  
		Last Modified: Wed, 08 May 2019 00:37:42 GMT  
		Size: 45.3 MB (45339314 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:221d80d00ae9675aad24913aacbadfac1ce8b7084f9765a6c0813486082c5c69`  
		Last Modified: Wed, 08 May 2019 01:45:42 GMT  
		Size: 10.8 MB (10784878 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4250b3117dca5e14edc32ebf1366cd54e4cda91f17610b76c504a86917ff8b95`  
		Last Modified: Wed, 08 May 2019 01:45:41 GMT  
		Size: 4.3 MB (4340094 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e51b6917b8bea39091733d42fc84ed055d24bab253f1180353c2f0fc24cddfa`  
		Last Modified: Wed, 08 May 2019 07:36:49 GMT  
		Size: 2.8 KB (2772 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37cb6b25bae11468605ef1c4001c4ed9738afb3255c5f0ae36aefb7fc629a003`  
		Last Modified: Wed, 08 May 2019 07:37:52 GMT  
		Size: 12.5 MB (12549019 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d46f9dca42dd119d9ecb71d28cc71d877737de6f64715bba7fdfdc985f5902e6`  
		Last Modified: Wed, 08 May 2019 07:37:49 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5850a2ddcda0e54db886d23800705a6f8c122e84b04fc5e666d6901d6b1c0d9`  
		Last Modified: Wed, 08 May 2019 07:37:48 GMT  
		Size: 375.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `influxdb:1.6-meta-alpine`

```console
$ docker pull influxdb@sha256:402e7b76f936441606d18a2b09ddf2454800fd037f90cf14cd14ca41793231ee
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `influxdb:1.6-meta-alpine` - linux; amd64

```console
$ docker pull influxdb@sha256:ea6226c8dedc645e6e97801f87a33c4ea3aa85aa384b652bdd22d05d8779f38e
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.6 MB (16583053 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2477e3d8a99018a6aad642a2c5324c5aee0a6f4a349da344fcf438fe558c9e90`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd-meta"]`

```dockerfile
# Thu, 07 Mar 2019 22:19:46 GMT
ADD file:38bc6b51693b13d84a63e281403e2f6d0218c44b1d7ff12157c4523f9f0ebb1e in / 
# Thu, 07 Mar 2019 22:19:46 GMT
CMD ["/bin/sh"]
# Thu, 07 Mar 2019 23:09:58 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf
# Thu, 07 Mar 2019 23:13:21 GMT
RUN apk add --no-cache tzdata bash ca-certificates &&     update-ca-certificates
# Thu, 07 Mar 2019 23:14:11 GMT
ENV INFLUXDB_VERSION=1.6.6-c1.6.6
# Thu, 07 Mar 2019 23:14:28 GMT
RUN set -ex &&     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/enterprise/releases/influxdb-meta-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/enterprise/releases/influxdb-meta-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify influxdb-meta-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc influxdb-meta-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf influxdb-meta-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/influxdb-*/influxdb-meta.conf &&     chmod +x /usr/src/influxdb-*/* &&     cp -a /usr/src/influxdb-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Thu, 07 Mar 2019 23:14:28 GMT
COPY file:5d8d1b0acfd7ca05cf6698246b28d240206fa448f4aa5ac839c9ad323adbeac2 in /etc/influxdb/influxdb-meta.conf 
# Thu, 07 Mar 2019 23:14:28 GMT
EXPOSE 8091
# Thu, 07 Mar 2019 23:14:29 GMT
VOLUME [/var/lib/influxdb]
# Thu, 07 Mar 2019 23:14:29 GMT
COPY file:126b1f7e41b4975cf2ce23037cf6a46253fb817023062317380c48ff5df47228 in /entrypoint.sh 
# Thu, 07 Mar 2019 23:14:29 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 07 Mar 2019 23:14:29 GMT
CMD ["influxd-meta"]
```

-	Layers:
	-	`sha256:c87736221ed0bcaa60b8e92a19bec2284899ef89226f2a07968677cf59e637a4`  
		Last Modified: Thu, 07 Mar 2019 22:20:20 GMT  
		Size: 2.2 MB (2207176 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a7c3edaa27ffab3a4de5b02e8f2ac780fca60d75bf7c7846352103c7f9fff6e`  
		Last Modified: Thu, 07 Mar 2019 23:10:40 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:611215ad6fd94aca0d418348501999c7c156cbec717f6a020ff0f94f2202ba45`  
		Last Modified: Thu, 07 Mar 2019 23:15:25 GMT  
		Size: 1.9 MB (1870457 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66c571c7d091900ac5eb842fdccc609e842d55ca3df790da89539b46dbdc0f90`  
		Last Modified: Thu, 07 Mar 2019 23:16:22 GMT  
		Size: 12.5 MB (12504700 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd41af65e5463d97133c67edc4318d049fe698dd3e6cc358c2b345a3f4e749de`  
		Last Modified: Thu, 07 Mar 2019 23:16:19 GMT  
		Size: 193.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04c6c43ed0e59232408540788e92b7ed02f288a7f91a8bc01195824325199c36`  
		Last Modified: Thu, 07 Mar 2019 23:16:19 GMT  
		Size: 373.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `influxdb:1.7`

```console
$ docker pull influxdb@sha256:c3b22f711cead0b429c0145732b5b7e2a8fe7334990068607d4b44b894d3b46b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `influxdb:1.7` - linux; amd64

```console
$ docker pull influxdb@sha256:7bc17caa5d47935b9b9b200f9895fc544e08365d20ee648fd4a3df14b36126dd
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **111.1 MB (111127219 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f0656e1473451f8a5fb503a6c541e0ec8de5b74aac0a8841d26da29b0e5c9c9d`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Wed, 08 May 2019 00:33:09 GMT
ADD file:caf91edab64f988bc24766c58ee66c00311c7c921296b8e5b51d7023422a1485 in / 
# Wed, 08 May 2019 00:33:10 GMT
CMD ["bash"]
# Wed, 08 May 2019 01:40:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 01:40:12 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 08 May 2019 07:34:07 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Wed, 08 May 2019 07:35:27 GMT
ENV INFLUXDB_VERSION=1.7.6
# Wed, 08 May 2019 07:35:34 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     gpg --batch --verify influxdb_${INFLUXDB_VERSION}_${ARCH}.deb.asc influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     dpkg -i influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     rm -f influxdb_${INFLUXDB_VERSION}_${ARCH}.deb*
# Wed, 08 May 2019 07:35:34 GMT
COPY file:3d8a606d61e1fc0042cf34d036eda4550a18d140c47376dacc02d96ee6f2dd8b in /etc/influxdb/influxdb.conf 
# Wed, 08 May 2019 07:35:34 GMT
EXPOSE 8086
# Wed, 08 May 2019 07:35:35 GMT
VOLUME [/var/lib/influxdb]
# Wed, 08 May 2019 07:35:35 GMT
COPY file:61c4af7a0e637328374ec46266ed6dde40adf7d14ac6c5081100924991beb7f3 in /entrypoint.sh 
# Wed, 08 May 2019 07:35:35 GMT
COPY file:892fcd3130baa17c0b88866ac37e7fe0b7b420a67105d9cd99803c685eaf9df4 in /init-influxdb.sh 
# Wed, 08 May 2019 07:35:35 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 08 May 2019 07:35:36 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:c5e155d5a1d130a7f8a3e24cee0d9e1349bff13f90ec6a941478e558fde53c14`  
		Last Modified: Wed, 08 May 2019 00:37:42 GMT  
		Size: 45.3 MB (45339314 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:221d80d00ae9675aad24913aacbadfac1ce8b7084f9765a6c0813486082c5c69`  
		Last Modified: Wed, 08 May 2019 01:45:42 GMT  
		Size: 10.8 MB (10784878 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4250b3117dca5e14edc32ebf1366cd54e4cda91f17610b76c504a86917ff8b95`  
		Last Modified: Wed, 08 May 2019 01:45:41 GMT  
		Size: 4.3 MB (4340094 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e51b6917b8bea39091733d42fc84ed055d24bab253f1180353c2f0fc24cddfa`  
		Last Modified: Wed, 08 May 2019 07:36:49 GMT  
		Size: 2.8 KB (2772 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8b0889ef887591a1251c41774cca5edcb72650a92713f51c3945b319c443235`  
		Last Modified: Wed, 08 May 2019 07:38:08 GMT  
		Size: 50.7 MB (50658561 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:749bae9006fd14c4b22f79a39d901253fb71fac3450c8a05e5b881133644b3af`  
		Last Modified: Wed, 08 May 2019 07:37:57 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35b31a5ecf8677501f09d9fd6db29b37e80191433d112049689494c52d09b8c5`  
		Last Modified: Wed, 08 May 2019 07:37:57 GMT  
		Size: 210.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc7c30009a3e8be1825a50feaeb70546357b8ba411d2a8e7f5c14fc8317eed26`  
		Last Modified: Wed, 08 May 2019 07:37:57 GMT  
		Size: 1.2 KB (1165 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `influxdb:1.7` - linux; arm variant v7

```console
$ docker pull influxdb@sha256:4d5e2b02d9a7eeb026745875d14c94e2a2071ef32c3025cb09cdf01e24785a1e
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **103.2 MB (103172493 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fd07c6cdfa46f8e8dfdd25ed5c1d9c8dc7097602cef48a08337cc96779b97f80`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Wed, 08 May 2019 12:03:26 GMT
ADD file:7e8dcc40e246d53b86266855a2de8080d26e6b4ed9f594c1acc565784405735b in / 
# Wed, 08 May 2019 12:03:27 GMT
CMD ["bash"]
# Wed, 08 May 2019 13:04:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 13:04:42 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 08 May 2019 16:17:27 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Wed, 08 May 2019 16:17:55 GMT
ENV INFLUXDB_VERSION=1.7.6
# Wed, 08 May 2019 16:18:02 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     gpg --batch --verify influxdb_${INFLUXDB_VERSION}_${ARCH}.deb.asc influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     dpkg -i influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     rm -f influxdb_${INFLUXDB_VERSION}_${ARCH}.deb*
# Wed, 08 May 2019 16:18:03 GMT
COPY file:3d8a606d61e1fc0042cf34d036eda4550a18d140c47376dacc02d96ee6f2dd8b in /etc/influxdb/influxdb.conf 
# Wed, 08 May 2019 16:18:04 GMT
EXPOSE 8086
# Wed, 08 May 2019 16:18:04 GMT
VOLUME [/var/lib/influxdb]
# Wed, 08 May 2019 16:18:05 GMT
COPY file:61c4af7a0e637328374ec46266ed6dde40adf7d14ac6c5081100924991beb7f3 in /entrypoint.sh 
# Wed, 08 May 2019 16:18:05 GMT
COPY file:892fcd3130baa17c0b88866ac37e7fe0b7b420a67105d9cd99803c685eaf9df4 in /init-influxdb.sh 
# Wed, 08 May 2019 16:18:06 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 08 May 2019 16:18:06 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:f2a2fd7c1ab35cd1b5ea6fcc2b801f3877852797e2698ecdb9556e0dee3accb5`  
		Last Modified: Wed, 08 May 2019 12:09:40 GMT  
		Size: 42.1 MB (42082604 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:047df9a92c9f7376283a8d6af526f5126d95995ba48dd7de49979ef57da3e15b`  
		Last Modified: Wed, 08 May 2019 13:12:20 GMT  
		Size: 9.5 MB (9485167 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ddeed4ac8d1e2c751afd6fd3517f1d154365467039353c377c8206fd5eb81d4b`  
		Last Modified: Wed, 08 May 2019 13:12:18 GMT  
		Size: 3.9 MB (3918605 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b668daec8214e7fe112e89f2ad6e22651d66c490c182af5be7b786ca304c7b5`  
		Last Modified: Wed, 08 May 2019 16:18:17 GMT  
		Size: 2.8 KB (2801 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6794328a362a7114bf2f2f96023842b98d86df60e5bb02aba0af7fcec12cd13e`  
		Last Modified: Wed, 08 May 2019 16:18:59 GMT  
		Size: 47.7 MB (47681714 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54da823c83645693773afccba93efe19d6889c52280d29435bdc9febfe1a8b53`  
		Last Modified: Wed, 08 May 2019 16:18:45 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb52689fe737968133eb99da9deed7373ee127012cf6af59916c428bd7e5f61b`  
		Last Modified: Wed, 08 May 2019 16:18:45 GMT  
		Size: 211.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a410570849d7a1d56e3cd5f8b0bd290771270b715e08e0aa6f7f6945adc0c0b`  
		Last Modified: Wed, 08 May 2019 16:18:45 GMT  
		Size: 1.2 KB (1165 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `influxdb:1.7` - linux; arm64 variant v8

```console
$ docker pull influxdb@sha256:c907be44bf16c5fd50b593a9aa1bb7a5fc2bce399e6782b46687aab760603a84
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **103.9 MB (103937144 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:157f2f98756ef69d3121ccf9aada0a1101303a1bf1190ae96850751d63ef6718`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Wed, 27 Mar 2019 08:47:20 GMT
ADD file:8f991b13b28ce1de362b9f00e69aac8edc28124a08adeeb3b7fb02153e0b4e92 in / 
# Wed, 27 Mar 2019 08:47:21 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 10:15:55 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 10:16:13 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 27 Mar 2019 23:45:16 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Thu, 18 Apr 2019 09:05:45 GMT
ENV INFLUXDB_VERSION=1.7.6
# Thu, 18 Apr 2019 09:06:01 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     gpg --batch --verify influxdb_${INFLUXDB_VERSION}_${ARCH}.deb.asc influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     dpkg -i influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     rm -f influxdb_${INFLUXDB_VERSION}_${ARCH}.deb*
# Thu, 18 Apr 2019 09:06:02 GMT
COPY file:3d8a606d61e1fc0042cf34d036eda4550a18d140c47376dacc02d96ee6f2dd8b in /etc/influxdb/influxdb.conf 
# Thu, 18 Apr 2019 09:06:03 GMT
EXPOSE 8086
# Thu, 18 Apr 2019 09:06:04 GMT
VOLUME [/var/lib/influxdb]
# Thu, 18 Apr 2019 09:06:05 GMT
COPY file:61c4af7a0e637328374ec46266ed6dde40adf7d14ac6c5081100924991beb7f3 in /entrypoint.sh 
# Thu, 18 Apr 2019 09:06:06 GMT
COPY file:892fcd3130baa17c0b88866ac37e7fe0b7b420a67105d9cd99803c685eaf9df4 in /init-influxdb.sh 
# Thu, 18 Apr 2019 09:06:07 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 18 Apr 2019 09:06:08 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:5385e634d2a1a330aea59f510b0676b269167a579dddb586b27917d80d0dfd01`  
		Last Modified: Wed, 27 Mar 2019 08:52:30 GMT  
		Size: 43.1 MB (43132000 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6696bae2f570e0c96dcb21308e525216796d3452d1a9b8dcaba168ba37f3f464`  
		Last Modified: Wed, 27 Mar 2019 10:36:08 GMT  
		Size: 9.7 MB (9730463 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6dca82770cb3702e9c92d2f155923c0fb55671c1c373b8b50640b7bf05ed8418`  
		Last Modified: Wed, 27 Mar 2019 10:36:05 GMT  
		Size: 4.1 MB (4094072 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56a1a37594e065b68838715135cc87c8000f3e4f977d81709d1dc0b1f54ca93d`  
		Last Modified: Wed, 27 Mar 2019 23:46:46 GMT  
		Size: 2.8 KB (2776 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:424f9c6ef41c2f767e8e094de7043d3f427232e65b1093e0d75a76d0a5345b1a`  
		Last Modified: Thu, 18 Apr 2019 09:06:48 GMT  
		Size: 47.0 MB (46976229 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7bfae90960f1cfdbe830dade564d9e94a77cf5384741970b2e143fec0d7bc65`  
		Last Modified: Thu, 18 Apr 2019 09:06:27 GMT  
		Size: 228.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:995bea31c416398ccf33c5c8136ab0d215bb84839373fb83739935160fd2f206`  
		Last Modified: Thu, 18 Apr 2019 09:06:27 GMT  
		Size: 211.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0630f660802f4d0bb8ec7db2b2be1ce629f9fd9bf28a3867f849e52acee08663`  
		Last Modified: Thu, 18 Apr 2019 09:06:27 GMT  
		Size: 1.2 KB (1165 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `influxdb:1.7.5-data`

```console
$ docker pull influxdb@sha256:bbc92fd309e3b3a856169f57d230bf073f8b9f4366a42c8c0236d7476e44d778
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `influxdb:1.7.5-data` - linux; amd64

```console
$ docker pull influxdb@sha256:10276b25b558a62cff9824f5af6542476a0a5e33d53239122d8d44ddd873ca21
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **106.6 MB (106578556 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4edfbc5bbf115548bcb27a4cc7153944ba637a3ab4e6baeebc8dde6214cbe342`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Wed, 08 May 2019 00:33:09 GMT
ADD file:caf91edab64f988bc24766c58ee66c00311c7c921296b8e5b51d7023422a1485 in / 
# Wed, 08 May 2019 00:33:10 GMT
CMD ["bash"]
# Wed, 08 May 2019 01:40:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 01:40:12 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 08 May 2019 07:34:07 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Wed, 08 May 2019 07:35:44 GMT
ENV INFLUXDB_VERSION=1.7.5-c1.7.5
# Wed, 08 May 2019 07:35:51 GMT
RUN wget --no-verbose https://dl.influxdata.com/enterprise/releases/influxdb-data_${INFLUXDB_VERSION}_amd64.deb.asc &&     wget --no-verbose https://dl.influxdata.com/enterprise/releases/influxdb-data_${INFLUXDB_VERSION}_amd64.deb &&     gpg --batch --verify influxdb-data_${INFLUXDB_VERSION}_amd64.deb.asc influxdb-data_${INFLUXDB_VERSION}_amd64.deb &&     dpkg -i influxdb-data_${INFLUXDB_VERSION}_amd64.deb &&     rm -f influxdb-data_${INFLUXDB_VERSION}_amd64.deb*
# Wed, 08 May 2019 07:35:51 GMT
COPY file:bf2f42b62a32a7ee3ab93d9a5e451b7d59af1a97e40dc4a76b8aaf2f64383d7a in /etc/influxdb/influxdb.conf 
# Wed, 08 May 2019 07:35:52 GMT
EXPOSE 8086
# Wed, 08 May 2019 07:35:52 GMT
VOLUME [/var/lib/influxdb]
# Wed, 08 May 2019 07:35:52 GMT
COPY file:182a0176834db40043100d082d05e5aded9887c94b02416f6e3154c827c07360 in /entrypoint.sh 
# Wed, 08 May 2019 07:35:52 GMT
COPY file:892fcd3130baa17c0b88866ac37e7fe0b7b420a67105d9cd99803c685eaf9df4 in /init-influxdb.sh 
# Wed, 08 May 2019 07:35:53 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 08 May 2019 07:35:53 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:c5e155d5a1d130a7f8a3e24cee0d9e1349bff13f90ec6a941478e558fde53c14`  
		Last Modified: Wed, 08 May 2019 00:37:42 GMT  
		Size: 45.3 MB (45339314 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:221d80d00ae9675aad24913aacbadfac1ce8b7084f9765a6c0813486082c5c69`  
		Last Modified: Wed, 08 May 2019 01:45:42 GMT  
		Size: 10.8 MB (10784878 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4250b3117dca5e14edc32ebf1366cd54e4cda91f17610b76c504a86917ff8b95`  
		Last Modified: Wed, 08 May 2019 01:45:41 GMT  
		Size: 4.3 MB (4340094 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e51b6917b8bea39091733d42fc84ed055d24bab253f1180353c2f0fc24cddfa`  
		Last Modified: Wed, 08 May 2019 07:36:49 GMT  
		Size: 2.8 KB (2772 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37bb7cac612509c50b5c6d64f5fde8a90f2b76b9cc37e385639b3bcc8e2763f2`  
		Last Modified: Wed, 08 May 2019 07:38:34 GMT  
		Size: 46.1 MB (46109837 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d098632d9c96065fee832c6454bb674456517b30ab91582005e821227ef0894b`  
		Last Modified: Wed, 08 May 2019 07:38:15 GMT  
		Size: 242.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed6330017588c0bbee797bc2180c1a46b588d839bfe589263c75e18a73b67610`  
		Last Modified: Wed, 08 May 2019 07:38:15 GMT  
		Size: 252.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bbcae22da9a1a5223df61d7efb333b03a1d62b687b162b82ef24635ded54383a`  
		Last Modified: Wed, 08 May 2019 07:38:15 GMT  
		Size: 1.2 KB (1167 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `influxdb:1.7.5-data-alpine`

```console
$ docker pull influxdb@sha256:3195105f427df5b657c2767e9cf77dc53abeb8b0879489d53e7760d3a755d490
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `influxdb:1.7.5-data-alpine` - linux; amd64

```console
$ docker pull influxdb@sha256:44bfbe49ef81790d23c492a84f036bd76847b0509ee11163528cf2b17648d8bb
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **50.0 MB (50010119 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:df985c857087539972d93d4dee48cb9bd7823e7be0b3acca5e477c20bce22825`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Thu, 07 Mar 2019 22:19:46 GMT
ADD file:38bc6b51693b13d84a63e281403e2f6d0218c44b1d7ff12157c4523f9f0ebb1e in / 
# Thu, 07 Mar 2019 22:19:46 GMT
CMD ["/bin/sh"]
# Thu, 07 Mar 2019 23:09:58 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf
# Thu, 07 Mar 2019 23:13:21 GMT
RUN apk add --no-cache tzdata bash ca-certificates &&     update-ca-certificates
# Wed, 27 Mar 2019 22:21:04 GMT
ENV INFLUXDB_VERSION=1.7.5-c1.7.5
# Wed, 27 Mar 2019 22:21:15 GMT
RUN set -ex &&     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/enterprise/releases/influxdb-data-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/enterprise/releases/influxdb-data-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify influxdb-data-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc influxdb-data-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf influxdb-data-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/influxdb-*/influxdb.conf &&     chmod +x /usr/src/influxdb-*/* &&     cp -a /usr/src/influxdb-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Wed, 27 Mar 2019 22:21:16 GMT
COPY file:bf2f42b62a32a7ee3ab93d9a5e451b7d59af1a97e40dc4a76b8aaf2f64383d7a in /etc/influxdb/influxdb.conf 
# Wed, 27 Mar 2019 22:21:16 GMT
EXPOSE 8086
# Wed, 27 Mar 2019 22:21:17 GMT
VOLUME [/var/lib/influxdb]
# Wed, 27 Mar 2019 22:21:17 GMT
COPY file:182a0176834db40043100d082d05e5aded9887c94b02416f6e3154c827c07360 in /entrypoint.sh 
# Wed, 27 Mar 2019 22:21:18 GMT
COPY file:892fcd3130baa17c0b88866ac37e7fe0b7b420a67105d9cd99803c685eaf9df4 in /init-influxdb.sh 
# Wed, 27 Mar 2019 22:21:18 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 27 Mar 2019 22:21:18 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:c87736221ed0bcaa60b8e92a19bec2284899ef89226f2a07968677cf59e637a4`  
		Last Modified: Thu, 07 Mar 2019 22:20:20 GMT  
		Size: 2.2 MB (2207176 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a7c3edaa27ffab3a4de5b02e8f2ac780fca60d75bf7c7846352103c7f9fff6e`  
		Last Modified: Thu, 07 Mar 2019 23:10:40 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:611215ad6fd94aca0d418348501999c7c156cbec717f6a020ff0f94f2202ba45`  
		Last Modified: Thu, 07 Mar 2019 23:15:25 GMT  
		Size: 1.9 MB (1870457 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53ccf86a1cab9a14e41f60dce7c41a245e360982e25fc3f2e8f0a816e13951da`  
		Last Modified: Wed, 27 Mar 2019 22:23:06 GMT  
		Size: 45.9 MB (45930673 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:584f0f00900c6b5e8baaaf34ef75415c03ba771e416314c9943821d1d503b7f6`  
		Last Modified: Wed, 27 Mar 2019 22:22:56 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de42237b750842bc2dd4c9d097444370a721511b7b01929decd278248f7c64d5`  
		Last Modified: Wed, 27 Mar 2019 22:22:56 GMT  
		Size: 252.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd73a8bdcb259b026cb1d88fe0413a07a9b5ee965a34b254aa7db85c060417ac`  
		Last Modified: Wed, 27 Mar 2019 22:22:56 GMT  
		Size: 1.2 KB (1167 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `influxdb:1.7.5-meta`

```console
$ docker pull influxdb@sha256:e5859752cae146ffbb59ffc594b2e34105981383ae4cbd0a19c10d34143e8123
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `influxdb:1.7.5-meta` - linux; amd64

```console
$ docker pull influxdb@sha256:fc7cb91c985715aabb5ffacb96795ee613c7060534cece7325d3895f68b068e3
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **75.4 MB (75366138 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b284ecab4526c7c78f027a4fa7b1848b83e2fa129e87097600238f979110a2ed`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd-meta"]`

```dockerfile
# Wed, 08 May 2019 00:33:09 GMT
ADD file:caf91edab64f988bc24766c58ee66c00311c7c921296b8e5b51d7023422a1485 in / 
# Wed, 08 May 2019 00:33:10 GMT
CMD ["bash"]
# Wed, 08 May 2019 01:40:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 01:40:12 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 08 May 2019 07:34:07 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Wed, 08 May 2019 07:35:44 GMT
ENV INFLUXDB_VERSION=1.7.5-c1.7.5
# Wed, 08 May 2019 07:36:04 GMT
RUN wget --no-verbose https://dl.influxdata.com/enterprise/releases/influxdb-meta_${INFLUXDB_VERSION}_amd64.deb.asc &&     wget --no-verbose https://dl.influxdata.com/enterprise/releases/influxdb-meta_${INFLUXDB_VERSION}_amd64.deb &&     gpg --batch --verify influxdb-meta_${INFLUXDB_VERSION}_amd64.deb.asc influxdb-meta_${INFLUXDB_VERSION}_amd64.deb &&     dpkg -i influxdb-meta_${INFLUXDB_VERSION}_amd64.deb &&     rm -f influxdb-meta_${INFLUXDB_VERSION}_amd64.deb*
# Wed, 08 May 2019 07:36:04 GMT
COPY file:5d8d1b0acfd7ca05cf6698246b28d240206fa448f4aa5ac839c9ad323adbeac2 in /etc/influxdb/influxdb-meta.conf 
# Wed, 08 May 2019 07:36:05 GMT
EXPOSE 8091
# Wed, 08 May 2019 07:36:05 GMT
VOLUME [/var/lib/influxdb]
# Wed, 08 May 2019 07:36:05 GMT
COPY file:126b1f7e41b4975cf2ce23037cf6a46253fb817023062317380c48ff5df47228 in /entrypoint.sh 
# Wed, 08 May 2019 07:36:06 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 08 May 2019 07:36:06 GMT
CMD ["influxd-meta"]
```

-	Layers:
	-	`sha256:c5e155d5a1d130a7f8a3e24cee0d9e1349bff13f90ec6a941478e558fde53c14`  
		Last Modified: Wed, 08 May 2019 00:37:42 GMT  
		Size: 45.3 MB (45339314 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:221d80d00ae9675aad24913aacbadfac1ce8b7084f9765a6c0813486082c5c69`  
		Last Modified: Wed, 08 May 2019 01:45:42 GMT  
		Size: 10.8 MB (10784878 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4250b3117dca5e14edc32ebf1366cd54e4cda91f17610b76c504a86917ff8b95`  
		Last Modified: Wed, 08 May 2019 01:45:41 GMT  
		Size: 4.3 MB (4340094 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e51b6917b8bea39091733d42fc84ed055d24bab253f1180353c2f0fc24cddfa`  
		Last Modified: Wed, 08 May 2019 07:36:49 GMT  
		Size: 2.8 KB (2772 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8edc27dbd6437fa22e7f9cbb9249ba0cd7b7fc9dc87722c61f859418ddac07e`  
		Last Modified: Wed, 08 May 2019 07:38:46 GMT  
		Size: 14.9 MB (14898511 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eff01b25cfdaf776efe3887f69fa23bfcb6b4fbc31f9e0d67ef8938cfeb15e19`  
		Last Modified: Wed, 08 May 2019 07:38:41 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b753935b2693f47a6ce574b9775ee82b0e89b3f036353151bd993879fe0a2f70`  
		Last Modified: Wed, 08 May 2019 07:38:41 GMT  
		Size: 375.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `influxdb:1.7.5-meta-alpine`

```console
$ docker pull influxdb@sha256:62711557a0845be478ea22ceecbc22c7d550be6548189f688b1b7287650f321a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `influxdb:1.7.5-meta-alpine` - linux; amd64

```console
$ docker pull influxdb@sha256:2795db45e0d15601dcc42bce47748c0041ec5498c14c6de15d1b690172ef68a6
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.9 MB (18931693 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:109d51c04ac85613d13e86509f3bd1bd92cb79b2ea1033a465cd8a99be7e0913`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd-meta"]`

```dockerfile
# Thu, 07 Mar 2019 22:19:46 GMT
ADD file:38bc6b51693b13d84a63e281403e2f6d0218c44b1d7ff12157c4523f9f0ebb1e in / 
# Thu, 07 Mar 2019 22:19:46 GMT
CMD ["/bin/sh"]
# Thu, 07 Mar 2019 23:09:58 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf
# Thu, 07 Mar 2019 23:13:21 GMT
RUN apk add --no-cache tzdata bash ca-certificates &&     update-ca-certificates
# Wed, 27 Mar 2019 22:21:04 GMT
ENV INFLUXDB_VERSION=1.7.5-c1.7.5
# Wed, 27 Mar 2019 22:21:41 GMT
RUN set -ex &&     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/enterprise/releases/influxdb-meta-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/enterprise/releases/influxdb-meta-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify influxdb-meta-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc influxdb-meta-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf influxdb-meta-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/influxdb-*/influxdb-meta.conf &&     chmod +x /usr/src/influxdb-*/* &&     cp -a /usr/src/influxdb-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Wed, 27 Mar 2019 22:21:41 GMT
COPY file:5d8d1b0acfd7ca05cf6698246b28d240206fa448f4aa5ac839c9ad323adbeac2 in /etc/influxdb/influxdb-meta.conf 
# Wed, 27 Mar 2019 22:21:42 GMT
EXPOSE 8091
# Wed, 27 Mar 2019 22:21:42 GMT
VOLUME [/var/lib/influxdb]
# Wed, 27 Mar 2019 22:21:43 GMT
COPY file:126b1f7e41b4975cf2ce23037cf6a46253fb817023062317380c48ff5df47228 in /entrypoint.sh 
# Wed, 27 Mar 2019 22:21:43 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 27 Mar 2019 22:21:44 GMT
CMD ["influxd-meta"]
```

-	Layers:
	-	`sha256:c87736221ed0bcaa60b8e92a19bec2284899ef89226f2a07968677cf59e637a4`  
		Last Modified: Thu, 07 Mar 2019 22:20:20 GMT  
		Size: 2.2 MB (2207176 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a7c3edaa27ffab3a4de5b02e8f2ac780fca60d75bf7c7846352103c7f9fff6e`  
		Last Modified: Thu, 07 Mar 2019 23:10:40 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:611215ad6fd94aca0d418348501999c7c156cbec717f6a020ff0f94f2202ba45`  
		Last Modified: Thu, 07 Mar 2019 23:15:25 GMT  
		Size: 1.9 MB (1870457 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84034cc550bbe940a6783a347b6ac63fd2878cabdc8697107e97da31921881d9`  
		Last Modified: Wed, 27 Mar 2019 22:23:23 GMT  
		Size: 14.9 MB (14853338 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee6bf2cdd650edbc51f36ba946c267e966cdcbe0329ae4b6c6b4c43c19ab8e0c`  
		Last Modified: Wed, 27 Mar 2019 22:23:19 GMT  
		Size: 193.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:235682659478db8ec6fa1cbd330611eb6514fb9a78465cb1a0a109bef13cdcba`  
		Last Modified: Wed, 27 Mar 2019 22:23:19 GMT  
		Size: 375.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `influxdb:1.7.6`

```console
$ docker pull influxdb@sha256:c3b22f711cead0b429c0145732b5b7e2a8fe7334990068607d4b44b894d3b46b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `influxdb:1.7.6` - linux; amd64

```console
$ docker pull influxdb@sha256:7bc17caa5d47935b9b9b200f9895fc544e08365d20ee648fd4a3df14b36126dd
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **111.1 MB (111127219 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f0656e1473451f8a5fb503a6c541e0ec8de5b74aac0a8841d26da29b0e5c9c9d`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Wed, 08 May 2019 00:33:09 GMT
ADD file:caf91edab64f988bc24766c58ee66c00311c7c921296b8e5b51d7023422a1485 in / 
# Wed, 08 May 2019 00:33:10 GMT
CMD ["bash"]
# Wed, 08 May 2019 01:40:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 01:40:12 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 08 May 2019 07:34:07 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Wed, 08 May 2019 07:35:27 GMT
ENV INFLUXDB_VERSION=1.7.6
# Wed, 08 May 2019 07:35:34 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     gpg --batch --verify influxdb_${INFLUXDB_VERSION}_${ARCH}.deb.asc influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     dpkg -i influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     rm -f influxdb_${INFLUXDB_VERSION}_${ARCH}.deb*
# Wed, 08 May 2019 07:35:34 GMT
COPY file:3d8a606d61e1fc0042cf34d036eda4550a18d140c47376dacc02d96ee6f2dd8b in /etc/influxdb/influxdb.conf 
# Wed, 08 May 2019 07:35:34 GMT
EXPOSE 8086
# Wed, 08 May 2019 07:35:35 GMT
VOLUME [/var/lib/influxdb]
# Wed, 08 May 2019 07:35:35 GMT
COPY file:61c4af7a0e637328374ec46266ed6dde40adf7d14ac6c5081100924991beb7f3 in /entrypoint.sh 
# Wed, 08 May 2019 07:35:35 GMT
COPY file:892fcd3130baa17c0b88866ac37e7fe0b7b420a67105d9cd99803c685eaf9df4 in /init-influxdb.sh 
# Wed, 08 May 2019 07:35:35 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 08 May 2019 07:35:36 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:c5e155d5a1d130a7f8a3e24cee0d9e1349bff13f90ec6a941478e558fde53c14`  
		Last Modified: Wed, 08 May 2019 00:37:42 GMT  
		Size: 45.3 MB (45339314 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:221d80d00ae9675aad24913aacbadfac1ce8b7084f9765a6c0813486082c5c69`  
		Last Modified: Wed, 08 May 2019 01:45:42 GMT  
		Size: 10.8 MB (10784878 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4250b3117dca5e14edc32ebf1366cd54e4cda91f17610b76c504a86917ff8b95`  
		Last Modified: Wed, 08 May 2019 01:45:41 GMT  
		Size: 4.3 MB (4340094 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e51b6917b8bea39091733d42fc84ed055d24bab253f1180353c2f0fc24cddfa`  
		Last Modified: Wed, 08 May 2019 07:36:49 GMT  
		Size: 2.8 KB (2772 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8b0889ef887591a1251c41774cca5edcb72650a92713f51c3945b319c443235`  
		Last Modified: Wed, 08 May 2019 07:38:08 GMT  
		Size: 50.7 MB (50658561 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:749bae9006fd14c4b22f79a39d901253fb71fac3450c8a05e5b881133644b3af`  
		Last Modified: Wed, 08 May 2019 07:37:57 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35b31a5ecf8677501f09d9fd6db29b37e80191433d112049689494c52d09b8c5`  
		Last Modified: Wed, 08 May 2019 07:37:57 GMT  
		Size: 210.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc7c30009a3e8be1825a50feaeb70546357b8ba411d2a8e7f5c14fc8317eed26`  
		Last Modified: Wed, 08 May 2019 07:37:57 GMT  
		Size: 1.2 KB (1165 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `influxdb:1.7.6` - linux; arm variant v7

```console
$ docker pull influxdb@sha256:4d5e2b02d9a7eeb026745875d14c94e2a2071ef32c3025cb09cdf01e24785a1e
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **103.2 MB (103172493 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fd07c6cdfa46f8e8dfdd25ed5c1d9c8dc7097602cef48a08337cc96779b97f80`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Wed, 08 May 2019 12:03:26 GMT
ADD file:7e8dcc40e246d53b86266855a2de8080d26e6b4ed9f594c1acc565784405735b in / 
# Wed, 08 May 2019 12:03:27 GMT
CMD ["bash"]
# Wed, 08 May 2019 13:04:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 13:04:42 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 08 May 2019 16:17:27 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Wed, 08 May 2019 16:17:55 GMT
ENV INFLUXDB_VERSION=1.7.6
# Wed, 08 May 2019 16:18:02 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     gpg --batch --verify influxdb_${INFLUXDB_VERSION}_${ARCH}.deb.asc influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     dpkg -i influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     rm -f influxdb_${INFLUXDB_VERSION}_${ARCH}.deb*
# Wed, 08 May 2019 16:18:03 GMT
COPY file:3d8a606d61e1fc0042cf34d036eda4550a18d140c47376dacc02d96ee6f2dd8b in /etc/influxdb/influxdb.conf 
# Wed, 08 May 2019 16:18:04 GMT
EXPOSE 8086
# Wed, 08 May 2019 16:18:04 GMT
VOLUME [/var/lib/influxdb]
# Wed, 08 May 2019 16:18:05 GMT
COPY file:61c4af7a0e637328374ec46266ed6dde40adf7d14ac6c5081100924991beb7f3 in /entrypoint.sh 
# Wed, 08 May 2019 16:18:05 GMT
COPY file:892fcd3130baa17c0b88866ac37e7fe0b7b420a67105d9cd99803c685eaf9df4 in /init-influxdb.sh 
# Wed, 08 May 2019 16:18:06 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 08 May 2019 16:18:06 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:f2a2fd7c1ab35cd1b5ea6fcc2b801f3877852797e2698ecdb9556e0dee3accb5`  
		Last Modified: Wed, 08 May 2019 12:09:40 GMT  
		Size: 42.1 MB (42082604 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:047df9a92c9f7376283a8d6af526f5126d95995ba48dd7de49979ef57da3e15b`  
		Last Modified: Wed, 08 May 2019 13:12:20 GMT  
		Size: 9.5 MB (9485167 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ddeed4ac8d1e2c751afd6fd3517f1d154365467039353c377c8206fd5eb81d4b`  
		Last Modified: Wed, 08 May 2019 13:12:18 GMT  
		Size: 3.9 MB (3918605 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b668daec8214e7fe112e89f2ad6e22651d66c490c182af5be7b786ca304c7b5`  
		Last Modified: Wed, 08 May 2019 16:18:17 GMT  
		Size: 2.8 KB (2801 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6794328a362a7114bf2f2f96023842b98d86df60e5bb02aba0af7fcec12cd13e`  
		Last Modified: Wed, 08 May 2019 16:18:59 GMT  
		Size: 47.7 MB (47681714 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54da823c83645693773afccba93efe19d6889c52280d29435bdc9febfe1a8b53`  
		Last Modified: Wed, 08 May 2019 16:18:45 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb52689fe737968133eb99da9deed7373ee127012cf6af59916c428bd7e5f61b`  
		Last Modified: Wed, 08 May 2019 16:18:45 GMT  
		Size: 211.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a410570849d7a1d56e3cd5f8b0bd290771270b715e08e0aa6f7f6945adc0c0b`  
		Last Modified: Wed, 08 May 2019 16:18:45 GMT  
		Size: 1.2 KB (1165 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `influxdb:1.7.6` - linux; arm64 variant v8

```console
$ docker pull influxdb@sha256:c907be44bf16c5fd50b593a9aa1bb7a5fc2bce399e6782b46687aab760603a84
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **103.9 MB (103937144 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:157f2f98756ef69d3121ccf9aada0a1101303a1bf1190ae96850751d63ef6718`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Wed, 27 Mar 2019 08:47:20 GMT
ADD file:8f991b13b28ce1de362b9f00e69aac8edc28124a08adeeb3b7fb02153e0b4e92 in / 
# Wed, 27 Mar 2019 08:47:21 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 10:15:55 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 10:16:13 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 27 Mar 2019 23:45:16 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Thu, 18 Apr 2019 09:05:45 GMT
ENV INFLUXDB_VERSION=1.7.6
# Thu, 18 Apr 2019 09:06:01 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     gpg --batch --verify influxdb_${INFLUXDB_VERSION}_${ARCH}.deb.asc influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     dpkg -i influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     rm -f influxdb_${INFLUXDB_VERSION}_${ARCH}.deb*
# Thu, 18 Apr 2019 09:06:02 GMT
COPY file:3d8a606d61e1fc0042cf34d036eda4550a18d140c47376dacc02d96ee6f2dd8b in /etc/influxdb/influxdb.conf 
# Thu, 18 Apr 2019 09:06:03 GMT
EXPOSE 8086
# Thu, 18 Apr 2019 09:06:04 GMT
VOLUME [/var/lib/influxdb]
# Thu, 18 Apr 2019 09:06:05 GMT
COPY file:61c4af7a0e637328374ec46266ed6dde40adf7d14ac6c5081100924991beb7f3 in /entrypoint.sh 
# Thu, 18 Apr 2019 09:06:06 GMT
COPY file:892fcd3130baa17c0b88866ac37e7fe0b7b420a67105d9cd99803c685eaf9df4 in /init-influxdb.sh 
# Thu, 18 Apr 2019 09:06:07 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 18 Apr 2019 09:06:08 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:5385e634d2a1a330aea59f510b0676b269167a579dddb586b27917d80d0dfd01`  
		Last Modified: Wed, 27 Mar 2019 08:52:30 GMT  
		Size: 43.1 MB (43132000 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6696bae2f570e0c96dcb21308e525216796d3452d1a9b8dcaba168ba37f3f464`  
		Last Modified: Wed, 27 Mar 2019 10:36:08 GMT  
		Size: 9.7 MB (9730463 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6dca82770cb3702e9c92d2f155923c0fb55671c1c373b8b50640b7bf05ed8418`  
		Last Modified: Wed, 27 Mar 2019 10:36:05 GMT  
		Size: 4.1 MB (4094072 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56a1a37594e065b68838715135cc87c8000f3e4f977d81709d1dc0b1f54ca93d`  
		Last Modified: Wed, 27 Mar 2019 23:46:46 GMT  
		Size: 2.8 KB (2776 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:424f9c6ef41c2f767e8e094de7043d3f427232e65b1093e0d75a76d0a5345b1a`  
		Last Modified: Thu, 18 Apr 2019 09:06:48 GMT  
		Size: 47.0 MB (46976229 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7bfae90960f1cfdbe830dade564d9e94a77cf5384741970b2e143fec0d7bc65`  
		Last Modified: Thu, 18 Apr 2019 09:06:27 GMT  
		Size: 228.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:995bea31c416398ccf33c5c8136ab0d215bb84839373fb83739935160fd2f206`  
		Last Modified: Thu, 18 Apr 2019 09:06:27 GMT  
		Size: 211.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0630f660802f4d0bb8ec7db2b2be1ce629f9fd9bf28a3867f849e52acee08663`  
		Last Modified: Thu, 18 Apr 2019 09:06:27 GMT  
		Size: 1.2 KB (1165 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `influxdb:1.7.6-alpine`

```console
$ docker pull influxdb@sha256:c4b1f09f8a31a21acf104752fec7706a1895c00a50b3a1ad9b2ce18d7d34944f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `influxdb:1.7.6-alpine` - linux; amd64

```console
$ docker pull influxdb@sha256:4d1d8382c7091c09796e8611033a85dbdcfa6c2e159500294cf1ae730a0041f9
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **54.5 MB (54508041 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7ed0da335e434f166dd289d43fd4b072fc54916216a27d06113d639f63ceee03`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Thu, 07 Mar 2019 22:19:46 GMT
ADD file:38bc6b51693b13d84a63e281403e2f6d0218c44b1d7ff12157c4523f9f0ebb1e in / 
# Thu, 07 Mar 2019 22:19:46 GMT
CMD ["/bin/sh"]
# Thu, 07 Mar 2019 23:09:58 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf
# Thu, 07 Mar 2019 23:13:21 GMT
RUN apk add --no-cache tzdata bash ca-certificates &&     update-ca-certificates
# Wed, 17 Apr 2019 23:23:36 GMT
ENV INFLUXDB_VERSION=1.7.6
# Wed, 17 Apr 2019 23:23:46 GMT
RUN set -ex &&     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/influxdb/releases/influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/influxdb/releases/influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/influxdb-*/influxdb.conf &&     chmod +x /usr/src/influxdb-*/* &&     cp -a /usr/src/influxdb-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Wed, 17 Apr 2019 23:23:46 GMT
COPY file:3d8a606d61e1fc0042cf34d036eda4550a18d140c47376dacc02d96ee6f2dd8b in /etc/influxdb/influxdb.conf 
# Wed, 17 Apr 2019 23:23:46 GMT
EXPOSE 8086
# Wed, 17 Apr 2019 23:23:46 GMT
VOLUME [/var/lib/influxdb]
# Wed, 17 Apr 2019 23:23:47 GMT
COPY file:61c4af7a0e637328374ec46266ed6dde40adf7d14ac6c5081100924991beb7f3 in /entrypoint.sh 
# Wed, 17 Apr 2019 23:23:47 GMT
COPY file:892fcd3130baa17c0b88866ac37e7fe0b7b420a67105d9cd99803c685eaf9df4 in /init-influxdb.sh 
# Wed, 17 Apr 2019 23:23:47 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 17 Apr 2019 23:23:47 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:c87736221ed0bcaa60b8e92a19bec2284899ef89226f2a07968677cf59e637a4`  
		Last Modified: Thu, 07 Mar 2019 22:20:20 GMT  
		Size: 2.2 MB (2207176 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a7c3edaa27ffab3a4de5b02e8f2ac780fca60d75bf7c7846352103c7f9fff6e`  
		Last Modified: Thu, 07 Mar 2019 23:10:40 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:611215ad6fd94aca0d418348501999c7c156cbec717f6a020ff0f94f2202ba45`  
		Last Modified: Thu, 07 Mar 2019 23:15:25 GMT  
		Size: 1.9 MB (1870457 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60c6617d7693b5ed05e0b674327cb27385cbdef2db86768e10b1cf117266f162`  
		Last Modified: Wed, 17 Apr 2019 23:24:50 GMT  
		Size: 50.4 MB (50428656 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b66139efdefa52fa2abbd31af4b709a694f5f40087d8ab215b457317aaa1eed`  
		Last Modified: Wed, 17 Apr 2019 23:24:40 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d63559b01caff22c9f0f26338e42d812b7fd764ab57bd0f82c580fcdbdf17f21`  
		Last Modified: Wed, 17 Apr 2019 23:24:40 GMT  
		Size: 208.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:880502a33a380de578910942e6f5bb42a71015851973685e4bb441fa46f44d97`  
		Last Modified: Wed, 17 Apr 2019 23:24:40 GMT  
		Size: 1.2 KB (1167 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `influxdb:1.7-alpine`

```console
$ docker pull influxdb@sha256:c4b1f09f8a31a21acf104752fec7706a1895c00a50b3a1ad9b2ce18d7d34944f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `influxdb:1.7-alpine` - linux; amd64

```console
$ docker pull influxdb@sha256:4d1d8382c7091c09796e8611033a85dbdcfa6c2e159500294cf1ae730a0041f9
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **54.5 MB (54508041 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7ed0da335e434f166dd289d43fd4b072fc54916216a27d06113d639f63ceee03`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Thu, 07 Mar 2019 22:19:46 GMT
ADD file:38bc6b51693b13d84a63e281403e2f6d0218c44b1d7ff12157c4523f9f0ebb1e in / 
# Thu, 07 Mar 2019 22:19:46 GMT
CMD ["/bin/sh"]
# Thu, 07 Mar 2019 23:09:58 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf
# Thu, 07 Mar 2019 23:13:21 GMT
RUN apk add --no-cache tzdata bash ca-certificates &&     update-ca-certificates
# Wed, 17 Apr 2019 23:23:36 GMT
ENV INFLUXDB_VERSION=1.7.6
# Wed, 17 Apr 2019 23:23:46 GMT
RUN set -ex &&     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/influxdb/releases/influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/influxdb/releases/influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/influxdb-*/influxdb.conf &&     chmod +x /usr/src/influxdb-*/* &&     cp -a /usr/src/influxdb-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Wed, 17 Apr 2019 23:23:46 GMT
COPY file:3d8a606d61e1fc0042cf34d036eda4550a18d140c47376dacc02d96ee6f2dd8b in /etc/influxdb/influxdb.conf 
# Wed, 17 Apr 2019 23:23:46 GMT
EXPOSE 8086
# Wed, 17 Apr 2019 23:23:46 GMT
VOLUME [/var/lib/influxdb]
# Wed, 17 Apr 2019 23:23:47 GMT
COPY file:61c4af7a0e637328374ec46266ed6dde40adf7d14ac6c5081100924991beb7f3 in /entrypoint.sh 
# Wed, 17 Apr 2019 23:23:47 GMT
COPY file:892fcd3130baa17c0b88866ac37e7fe0b7b420a67105d9cd99803c685eaf9df4 in /init-influxdb.sh 
# Wed, 17 Apr 2019 23:23:47 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 17 Apr 2019 23:23:47 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:c87736221ed0bcaa60b8e92a19bec2284899ef89226f2a07968677cf59e637a4`  
		Last Modified: Thu, 07 Mar 2019 22:20:20 GMT  
		Size: 2.2 MB (2207176 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a7c3edaa27ffab3a4de5b02e8f2ac780fca60d75bf7c7846352103c7f9fff6e`  
		Last Modified: Thu, 07 Mar 2019 23:10:40 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:611215ad6fd94aca0d418348501999c7c156cbec717f6a020ff0f94f2202ba45`  
		Last Modified: Thu, 07 Mar 2019 23:15:25 GMT  
		Size: 1.9 MB (1870457 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60c6617d7693b5ed05e0b674327cb27385cbdef2db86768e10b1cf117266f162`  
		Last Modified: Wed, 17 Apr 2019 23:24:50 GMT  
		Size: 50.4 MB (50428656 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b66139efdefa52fa2abbd31af4b709a694f5f40087d8ab215b457317aaa1eed`  
		Last Modified: Wed, 17 Apr 2019 23:24:40 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d63559b01caff22c9f0f26338e42d812b7fd764ab57bd0f82c580fcdbdf17f21`  
		Last Modified: Wed, 17 Apr 2019 23:24:40 GMT  
		Size: 208.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:880502a33a380de578910942e6f5bb42a71015851973685e4bb441fa46f44d97`  
		Last Modified: Wed, 17 Apr 2019 23:24:40 GMT  
		Size: 1.2 KB (1167 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `influxdb:1.7-data`

```console
$ docker pull influxdb@sha256:bbc92fd309e3b3a856169f57d230bf073f8b9f4366a42c8c0236d7476e44d778
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `influxdb:1.7-data` - linux; amd64

```console
$ docker pull influxdb@sha256:10276b25b558a62cff9824f5af6542476a0a5e33d53239122d8d44ddd873ca21
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **106.6 MB (106578556 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4edfbc5bbf115548bcb27a4cc7153944ba637a3ab4e6baeebc8dde6214cbe342`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Wed, 08 May 2019 00:33:09 GMT
ADD file:caf91edab64f988bc24766c58ee66c00311c7c921296b8e5b51d7023422a1485 in / 
# Wed, 08 May 2019 00:33:10 GMT
CMD ["bash"]
# Wed, 08 May 2019 01:40:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 01:40:12 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 08 May 2019 07:34:07 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Wed, 08 May 2019 07:35:44 GMT
ENV INFLUXDB_VERSION=1.7.5-c1.7.5
# Wed, 08 May 2019 07:35:51 GMT
RUN wget --no-verbose https://dl.influxdata.com/enterprise/releases/influxdb-data_${INFLUXDB_VERSION}_amd64.deb.asc &&     wget --no-verbose https://dl.influxdata.com/enterprise/releases/influxdb-data_${INFLUXDB_VERSION}_amd64.deb &&     gpg --batch --verify influxdb-data_${INFLUXDB_VERSION}_amd64.deb.asc influxdb-data_${INFLUXDB_VERSION}_amd64.deb &&     dpkg -i influxdb-data_${INFLUXDB_VERSION}_amd64.deb &&     rm -f influxdb-data_${INFLUXDB_VERSION}_amd64.deb*
# Wed, 08 May 2019 07:35:51 GMT
COPY file:bf2f42b62a32a7ee3ab93d9a5e451b7d59af1a97e40dc4a76b8aaf2f64383d7a in /etc/influxdb/influxdb.conf 
# Wed, 08 May 2019 07:35:52 GMT
EXPOSE 8086
# Wed, 08 May 2019 07:35:52 GMT
VOLUME [/var/lib/influxdb]
# Wed, 08 May 2019 07:35:52 GMT
COPY file:182a0176834db40043100d082d05e5aded9887c94b02416f6e3154c827c07360 in /entrypoint.sh 
# Wed, 08 May 2019 07:35:52 GMT
COPY file:892fcd3130baa17c0b88866ac37e7fe0b7b420a67105d9cd99803c685eaf9df4 in /init-influxdb.sh 
# Wed, 08 May 2019 07:35:53 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 08 May 2019 07:35:53 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:c5e155d5a1d130a7f8a3e24cee0d9e1349bff13f90ec6a941478e558fde53c14`  
		Last Modified: Wed, 08 May 2019 00:37:42 GMT  
		Size: 45.3 MB (45339314 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:221d80d00ae9675aad24913aacbadfac1ce8b7084f9765a6c0813486082c5c69`  
		Last Modified: Wed, 08 May 2019 01:45:42 GMT  
		Size: 10.8 MB (10784878 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4250b3117dca5e14edc32ebf1366cd54e4cda91f17610b76c504a86917ff8b95`  
		Last Modified: Wed, 08 May 2019 01:45:41 GMT  
		Size: 4.3 MB (4340094 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e51b6917b8bea39091733d42fc84ed055d24bab253f1180353c2f0fc24cddfa`  
		Last Modified: Wed, 08 May 2019 07:36:49 GMT  
		Size: 2.8 KB (2772 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37bb7cac612509c50b5c6d64f5fde8a90f2b76b9cc37e385639b3bcc8e2763f2`  
		Last Modified: Wed, 08 May 2019 07:38:34 GMT  
		Size: 46.1 MB (46109837 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d098632d9c96065fee832c6454bb674456517b30ab91582005e821227ef0894b`  
		Last Modified: Wed, 08 May 2019 07:38:15 GMT  
		Size: 242.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed6330017588c0bbee797bc2180c1a46b588d839bfe589263c75e18a73b67610`  
		Last Modified: Wed, 08 May 2019 07:38:15 GMT  
		Size: 252.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bbcae22da9a1a5223df61d7efb333b03a1d62b687b162b82ef24635ded54383a`  
		Last Modified: Wed, 08 May 2019 07:38:15 GMT  
		Size: 1.2 KB (1167 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `influxdb:1.7-data-alpine`

```console
$ docker pull influxdb@sha256:3195105f427df5b657c2767e9cf77dc53abeb8b0879489d53e7760d3a755d490
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `influxdb:1.7-data-alpine` - linux; amd64

```console
$ docker pull influxdb@sha256:44bfbe49ef81790d23c492a84f036bd76847b0509ee11163528cf2b17648d8bb
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **50.0 MB (50010119 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:df985c857087539972d93d4dee48cb9bd7823e7be0b3acca5e477c20bce22825`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Thu, 07 Mar 2019 22:19:46 GMT
ADD file:38bc6b51693b13d84a63e281403e2f6d0218c44b1d7ff12157c4523f9f0ebb1e in / 
# Thu, 07 Mar 2019 22:19:46 GMT
CMD ["/bin/sh"]
# Thu, 07 Mar 2019 23:09:58 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf
# Thu, 07 Mar 2019 23:13:21 GMT
RUN apk add --no-cache tzdata bash ca-certificates &&     update-ca-certificates
# Wed, 27 Mar 2019 22:21:04 GMT
ENV INFLUXDB_VERSION=1.7.5-c1.7.5
# Wed, 27 Mar 2019 22:21:15 GMT
RUN set -ex &&     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/enterprise/releases/influxdb-data-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/enterprise/releases/influxdb-data-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify influxdb-data-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc influxdb-data-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf influxdb-data-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/influxdb-*/influxdb.conf &&     chmod +x /usr/src/influxdb-*/* &&     cp -a /usr/src/influxdb-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Wed, 27 Mar 2019 22:21:16 GMT
COPY file:bf2f42b62a32a7ee3ab93d9a5e451b7d59af1a97e40dc4a76b8aaf2f64383d7a in /etc/influxdb/influxdb.conf 
# Wed, 27 Mar 2019 22:21:16 GMT
EXPOSE 8086
# Wed, 27 Mar 2019 22:21:17 GMT
VOLUME [/var/lib/influxdb]
# Wed, 27 Mar 2019 22:21:17 GMT
COPY file:182a0176834db40043100d082d05e5aded9887c94b02416f6e3154c827c07360 in /entrypoint.sh 
# Wed, 27 Mar 2019 22:21:18 GMT
COPY file:892fcd3130baa17c0b88866ac37e7fe0b7b420a67105d9cd99803c685eaf9df4 in /init-influxdb.sh 
# Wed, 27 Mar 2019 22:21:18 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 27 Mar 2019 22:21:18 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:c87736221ed0bcaa60b8e92a19bec2284899ef89226f2a07968677cf59e637a4`  
		Last Modified: Thu, 07 Mar 2019 22:20:20 GMT  
		Size: 2.2 MB (2207176 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a7c3edaa27ffab3a4de5b02e8f2ac780fca60d75bf7c7846352103c7f9fff6e`  
		Last Modified: Thu, 07 Mar 2019 23:10:40 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:611215ad6fd94aca0d418348501999c7c156cbec717f6a020ff0f94f2202ba45`  
		Last Modified: Thu, 07 Mar 2019 23:15:25 GMT  
		Size: 1.9 MB (1870457 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53ccf86a1cab9a14e41f60dce7c41a245e360982e25fc3f2e8f0a816e13951da`  
		Last Modified: Wed, 27 Mar 2019 22:23:06 GMT  
		Size: 45.9 MB (45930673 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:584f0f00900c6b5e8baaaf34ef75415c03ba771e416314c9943821d1d503b7f6`  
		Last Modified: Wed, 27 Mar 2019 22:22:56 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de42237b750842bc2dd4c9d097444370a721511b7b01929decd278248f7c64d5`  
		Last Modified: Wed, 27 Mar 2019 22:22:56 GMT  
		Size: 252.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd73a8bdcb259b026cb1d88fe0413a07a9b5ee965a34b254aa7db85c060417ac`  
		Last Modified: Wed, 27 Mar 2019 22:22:56 GMT  
		Size: 1.2 KB (1167 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `influxdb:1.7-meta`

```console
$ docker pull influxdb@sha256:e5859752cae146ffbb59ffc594b2e34105981383ae4cbd0a19c10d34143e8123
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `influxdb:1.7-meta` - linux; amd64

```console
$ docker pull influxdb@sha256:fc7cb91c985715aabb5ffacb96795ee613c7060534cece7325d3895f68b068e3
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **75.4 MB (75366138 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b284ecab4526c7c78f027a4fa7b1848b83e2fa129e87097600238f979110a2ed`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd-meta"]`

```dockerfile
# Wed, 08 May 2019 00:33:09 GMT
ADD file:caf91edab64f988bc24766c58ee66c00311c7c921296b8e5b51d7023422a1485 in / 
# Wed, 08 May 2019 00:33:10 GMT
CMD ["bash"]
# Wed, 08 May 2019 01:40:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 01:40:12 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 08 May 2019 07:34:07 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Wed, 08 May 2019 07:35:44 GMT
ENV INFLUXDB_VERSION=1.7.5-c1.7.5
# Wed, 08 May 2019 07:36:04 GMT
RUN wget --no-verbose https://dl.influxdata.com/enterprise/releases/influxdb-meta_${INFLUXDB_VERSION}_amd64.deb.asc &&     wget --no-verbose https://dl.influxdata.com/enterprise/releases/influxdb-meta_${INFLUXDB_VERSION}_amd64.deb &&     gpg --batch --verify influxdb-meta_${INFLUXDB_VERSION}_amd64.deb.asc influxdb-meta_${INFLUXDB_VERSION}_amd64.deb &&     dpkg -i influxdb-meta_${INFLUXDB_VERSION}_amd64.deb &&     rm -f influxdb-meta_${INFLUXDB_VERSION}_amd64.deb*
# Wed, 08 May 2019 07:36:04 GMT
COPY file:5d8d1b0acfd7ca05cf6698246b28d240206fa448f4aa5ac839c9ad323adbeac2 in /etc/influxdb/influxdb-meta.conf 
# Wed, 08 May 2019 07:36:05 GMT
EXPOSE 8091
# Wed, 08 May 2019 07:36:05 GMT
VOLUME [/var/lib/influxdb]
# Wed, 08 May 2019 07:36:05 GMT
COPY file:126b1f7e41b4975cf2ce23037cf6a46253fb817023062317380c48ff5df47228 in /entrypoint.sh 
# Wed, 08 May 2019 07:36:06 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 08 May 2019 07:36:06 GMT
CMD ["influxd-meta"]
```

-	Layers:
	-	`sha256:c5e155d5a1d130a7f8a3e24cee0d9e1349bff13f90ec6a941478e558fde53c14`  
		Last Modified: Wed, 08 May 2019 00:37:42 GMT  
		Size: 45.3 MB (45339314 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:221d80d00ae9675aad24913aacbadfac1ce8b7084f9765a6c0813486082c5c69`  
		Last Modified: Wed, 08 May 2019 01:45:42 GMT  
		Size: 10.8 MB (10784878 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4250b3117dca5e14edc32ebf1366cd54e4cda91f17610b76c504a86917ff8b95`  
		Last Modified: Wed, 08 May 2019 01:45:41 GMT  
		Size: 4.3 MB (4340094 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e51b6917b8bea39091733d42fc84ed055d24bab253f1180353c2f0fc24cddfa`  
		Last Modified: Wed, 08 May 2019 07:36:49 GMT  
		Size: 2.8 KB (2772 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8edc27dbd6437fa22e7f9cbb9249ba0cd7b7fc9dc87722c61f859418ddac07e`  
		Last Modified: Wed, 08 May 2019 07:38:46 GMT  
		Size: 14.9 MB (14898511 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eff01b25cfdaf776efe3887f69fa23bfcb6b4fbc31f9e0d67ef8938cfeb15e19`  
		Last Modified: Wed, 08 May 2019 07:38:41 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b753935b2693f47a6ce574b9775ee82b0e89b3f036353151bd993879fe0a2f70`  
		Last Modified: Wed, 08 May 2019 07:38:41 GMT  
		Size: 375.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `influxdb:1.7-meta-alpine`

```console
$ docker pull influxdb@sha256:62711557a0845be478ea22ceecbc22c7d550be6548189f688b1b7287650f321a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `influxdb:1.7-meta-alpine` - linux; amd64

```console
$ docker pull influxdb@sha256:2795db45e0d15601dcc42bce47748c0041ec5498c14c6de15d1b690172ef68a6
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.9 MB (18931693 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:109d51c04ac85613d13e86509f3bd1bd92cb79b2ea1033a465cd8a99be7e0913`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd-meta"]`

```dockerfile
# Thu, 07 Mar 2019 22:19:46 GMT
ADD file:38bc6b51693b13d84a63e281403e2f6d0218c44b1d7ff12157c4523f9f0ebb1e in / 
# Thu, 07 Mar 2019 22:19:46 GMT
CMD ["/bin/sh"]
# Thu, 07 Mar 2019 23:09:58 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf
# Thu, 07 Mar 2019 23:13:21 GMT
RUN apk add --no-cache tzdata bash ca-certificates &&     update-ca-certificates
# Wed, 27 Mar 2019 22:21:04 GMT
ENV INFLUXDB_VERSION=1.7.5-c1.7.5
# Wed, 27 Mar 2019 22:21:41 GMT
RUN set -ex &&     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/enterprise/releases/influxdb-meta-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/enterprise/releases/influxdb-meta-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify influxdb-meta-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc influxdb-meta-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf influxdb-meta-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/influxdb-*/influxdb-meta.conf &&     chmod +x /usr/src/influxdb-*/* &&     cp -a /usr/src/influxdb-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Wed, 27 Mar 2019 22:21:41 GMT
COPY file:5d8d1b0acfd7ca05cf6698246b28d240206fa448f4aa5ac839c9ad323adbeac2 in /etc/influxdb/influxdb-meta.conf 
# Wed, 27 Mar 2019 22:21:42 GMT
EXPOSE 8091
# Wed, 27 Mar 2019 22:21:42 GMT
VOLUME [/var/lib/influxdb]
# Wed, 27 Mar 2019 22:21:43 GMT
COPY file:126b1f7e41b4975cf2ce23037cf6a46253fb817023062317380c48ff5df47228 in /entrypoint.sh 
# Wed, 27 Mar 2019 22:21:43 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 27 Mar 2019 22:21:44 GMT
CMD ["influxd-meta"]
```

-	Layers:
	-	`sha256:c87736221ed0bcaa60b8e92a19bec2284899ef89226f2a07968677cf59e637a4`  
		Last Modified: Thu, 07 Mar 2019 22:20:20 GMT  
		Size: 2.2 MB (2207176 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a7c3edaa27ffab3a4de5b02e8f2ac780fca60d75bf7c7846352103c7f9fff6e`  
		Last Modified: Thu, 07 Mar 2019 23:10:40 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:611215ad6fd94aca0d418348501999c7c156cbec717f6a020ff0f94f2202ba45`  
		Last Modified: Thu, 07 Mar 2019 23:15:25 GMT  
		Size: 1.9 MB (1870457 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84034cc550bbe940a6783a347b6ac63fd2878cabdc8697107e97da31921881d9`  
		Last Modified: Wed, 27 Mar 2019 22:23:23 GMT  
		Size: 14.9 MB (14853338 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee6bf2cdd650edbc51f36ba946c267e966cdcbe0329ae4b6c6b4c43c19ab8e0c`  
		Last Modified: Wed, 27 Mar 2019 22:23:19 GMT  
		Size: 193.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:235682659478db8ec6fa1cbd330611eb6514fb9a78465cb1a0a109bef13cdcba`  
		Last Modified: Wed, 27 Mar 2019 22:23:19 GMT  
		Size: 375.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `influxdb:alpine`

```console
$ docker pull influxdb@sha256:c4b1f09f8a31a21acf104752fec7706a1895c00a50b3a1ad9b2ce18d7d34944f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `influxdb:alpine` - linux; amd64

```console
$ docker pull influxdb@sha256:4d1d8382c7091c09796e8611033a85dbdcfa6c2e159500294cf1ae730a0041f9
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **54.5 MB (54508041 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7ed0da335e434f166dd289d43fd4b072fc54916216a27d06113d639f63ceee03`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Thu, 07 Mar 2019 22:19:46 GMT
ADD file:38bc6b51693b13d84a63e281403e2f6d0218c44b1d7ff12157c4523f9f0ebb1e in / 
# Thu, 07 Mar 2019 22:19:46 GMT
CMD ["/bin/sh"]
# Thu, 07 Mar 2019 23:09:58 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf
# Thu, 07 Mar 2019 23:13:21 GMT
RUN apk add --no-cache tzdata bash ca-certificates &&     update-ca-certificates
# Wed, 17 Apr 2019 23:23:36 GMT
ENV INFLUXDB_VERSION=1.7.6
# Wed, 17 Apr 2019 23:23:46 GMT
RUN set -ex &&     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/influxdb/releases/influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/influxdb/releases/influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/influxdb-*/influxdb.conf &&     chmod +x /usr/src/influxdb-*/* &&     cp -a /usr/src/influxdb-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Wed, 17 Apr 2019 23:23:46 GMT
COPY file:3d8a606d61e1fc0042cf34d036eda4550a18d140c47376dacc02d96ee6f2dd8b in /etc/influxdb/influxdb.conf 
# Wed, 17 Apr 2019 23:23:46 GMT
EXPOSE 8086
# Wed, 17 Apr 2019 23:23:46 GMT
VOLUME [/var/lib/influxdb]
# Wed, 17 Apr 2019 23:23:47 GMT
COPY file:61c4af7a0e637328374ec46266ed6dde40adf7d14ac6c5081100924991beb7f3 in /entrypoint.sh 
# Wed, 17 Apr 2019 23:23:47 GMT
COPY file:892fcd3130baa17c0b88866ac37e7fe0b7b420a67105d9cd99803c685eaf9df4 in /init-influxdb.sh 
# Wed, 17 Apr 2019 23:23:47 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 17 Apr 2019 23:23:47 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:c87736221ed0bcaa60b8e92a19bec2284899ef89226f2a07968677cf59e637a4`  
		Last Modified: Thu, 07 Mar 2019 22:20:20 GMT  
		Size: 2.2 MB (2207176 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a7c3edaa27ffab3a4de5b02e8f2ac780fca60d75bf7c7846352103c7f9fff6e`  
		Last Modified: Thu, 07 Mar 2019 23:10:40 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:611215ad6fd94aca0d418348501999c7c156cbec717f6a020ff0f94f2202ba45`  
		Last Modified: Thu, 07 Mar 2019 23:15:25 GMT  
		Size: 1.9 MB (1870457 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60c6617d7693b5ed05e0b674327cb27385cbdef2db86768e10b1cf117266f162`  
		Last Modified: Wed, 17 Apr 2019 23:24:50 GMT  
		Size: 50.4 MB (50428656 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b66139efdefa52fa2abbd31af4b709a694f5f40087d8ab215b457317aaa1eed`  
		Last Modified: Wed, 17 Apr 2019 23:24:40 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d63559b01caff22c9f0f26338e42d812b7fd764ab57bd0f82c580fcdbdf17f21`  
		Last Modified: Wed, 17 Apr 2019 23:24:40 GMT  
		Size: 208.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:880502a33a380de578910942e6f5bb42a71015851973685e4bb441fa46f44d97`  
		Last Modified: Wed, 17 Apr 2019 23:24:40 GMT  
		Size: 1.2 KB (1167 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `influxdb:data`

```console
$ docker pull influxdb@sha256:bbc92fd309e3b3a856169f57d230bf073f8b9f4366a42c8c0236d7476e44d778
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `influxdb:data` - linux; amd64

```console
$ docker pull influxdb@sha256:10276b25b558a62cff9824f5af6542476a0a5e33d53239122d8d44ddd873ca21
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **106.6 MB (106578556 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4edfbc5bbf115548bcb27a4cc7153944ba637a3ab4e6baeebc8dde6214cbe342`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Wed, 08 May 2019 00:33:09 GMT
ADD file:caf91edab64f988bc24766c58ee66c00311c7c921296b8e5b51d7023422a1485 in / 
# Wed, 08 May 2019 00:33:10 GMT
CMD ["bash"]
# Wed, 08 May 2019 01:40:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 01:40:12 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 08 May 2019 07:34:07 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Wed, 08 May 2019 07:35:44 GMT
ENV INFLUXDB_VERSION=1.7.5-c1.7.5
# Wed, 08 May 2019 07:35:51 GMT
RUN wget --no-verbose https://dl.influxdata.com/enterprise/releases/influxdb-data_${INFLUXDB_VERSION}_amd64.deb.asc &&     wget --no-verbose https://dl.influxdata.com/enterprise/releases/influxdb-data_${INFLUXDB_VERSION}_amd64.deb &&     gpg --batch --verify influxdb-data_${INFLUXDB_VERSION}_amd64.deb.asc influxdb-data_${INFLUXDB_VERSION}_amd64.deb &&     dpkg -i influxdb-data_${INFLUXDB_VERSION}_amd64.deb &&     rm -f influxdb-data_${INFLUXDB_VERSION}_amd64.deb*
# Wed, 08 May 2019 07:35:51 GMT
COPY file:bf2f42b62a32a7ee3ab93d9a5e451b7d59af1a97e40dc4a76b8aaf2f64383d7a in /etc/influxdb/influxdb.conf 
# Wed, 08 May 2019 07:35:52 GMT
EXPOSE 8086
# Wed, 08 May 2019 07:35:52 GMT
VOLUME [/var/lib/influxdb]
# Wed, 08 May 2019 07:35:52 GMT
COPY file:182a0176834db40043100d082d05e5aded9887c94b02416f6e3154c827c07360 in /entrypoint.sh 
# Wed, 08 May 2019 07:35:52 GMT
COPY file:892fcd3130baa17c0b88866ac37e7fe0b7b420a67105d9cd99803c685eaf9df4 in /init-influxdb.sh 
# Wed, 08 May 2019 07:35:53 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 08 May 2019 07:35:53 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:c5e155d5a1d130a7f8a3e24cee0d9e1349bff13f90ec6a941478e558fde53c14`  
		Last Modified: Wed, 08 May 2019 00:37:42 GMT  
		Size: 45.3 MB (45339314 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:221d80d00ae9675aad24913aacbadfac1ce8b7084f9765a6c0813486082c5c69`  
		Last Modified: Wed, 08 May 2019 01:45:42 GMT  
		Size: 10.8 MB (10784878 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4250b3117dca5e14edc32ebf1366cd54e4cda91f17610b76c504a86917ff8b95`  
		Last Modified: Wed, 08 May 2019 01:45:41 GMT  
		Size: 4.3 MB (4340094 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e51b6917b8bea39091733d42fc84ed055d24bab253f1180353c2f0fc24cddfa`  
		Last Modified: Wed, 08 May 2019 07:36:49 GMT  
		Size: 2.8 KB (2772 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37bb7cac612509c50b5c6d64f5fde8a90f2b76b9cc37e385639b3bcc8e2763f2`  
		Last Modified: Wed, 08 May 2019 07:38:34 GMT  
		Size: 46.1 MB (46109837 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d098632d9c96065fee832c6454bb674456517b30ab91582005e821227ef0894b`  
		Last Modified: Wed, 08 May 2019 07:38:15 GMT  
		Size: 242.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed6330017588c0bbee797bc2180c1a46b588d839bfe589263c75e18a73b67610`  
		Last Modified: Wed, 08 May 2019 07:38:15 GMT  
		Size: 252.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bbcae22da9a1a5223df61d7efb333b03a1d62b687b162b82ef24635ded54383a`  
		Last Modified: Wed, 08 May 2019 07:38:15 GMT  
		Size: 1.2 KB (1167 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `influxdb:data-alpine`

```console
$ docker pull influxdb@sha256:3195105f427df5b657c2767e9cf77dc53abeb8b0879489d53e7760d3a755d490
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `influxdb:data-alpine` - linux; amd64

```console
$ docker pull influxdb@sha256:44bfbe49ef81790d23c492a84f036bd76847b0509ee11163528cf2b17648d8bb
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **50.0 MB (50010119 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:df985c857087539972d93d4dee48cb9bd7823e7be0b3acca5e477c20bce22825`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Thu, 07 Mar 2019 22:19:46 GMT
ADD file:38bc6b51693b13d84a63e281403e2f6d0218c44b1d7ff12157c4523f9f0ebb1e in / 
# Thu, 07 Mar 2019 22:19:46 GMT
CMD ["/bin/sh"]
# Thu, 07 Mar 2019 23:09:58 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf
# Thu, 07 Mar 2019 23:13:21 GMT
RUN apk add --no-cache tzdata bash ca-certificates &&     update-ca-certificates
# Wed, 27 Mar 2019 22:21:04 GMT
ENV INFLUXDB_VERSION=1.7.5-c1.7.5
# Wed, 27 Mar 2019 22:21:15 GMT
RUN set -ex &&     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/enterprise/releases/influxdb-data-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/enterprise/releases/influxdb-data-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify influxdb-data-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc influxdb-data-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf influxdb-data-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/influxdb-*/influxdb.conf &&     chmod +x /usr/src/influxdb-*/* &&     cp -a /usr/src/influxdb-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Wed, 27 Mar 2019 22:21:16 GMT
COPY file:bf2f42b62a32a7ee3ab93d9a5e451b7d59af1a97e40dc4a76b8aaf2f64383d7a in /etc/influxdb/influxdb.conf 
# Wed, 27 Mar 2019 22:21:16 GMT
EXPOSE 8086
# Wed, 27 Mar 2019 22:21:17 GMT
VOLUME [/var/lib/influxdb]
# Wed, 27 Mar 2019 22:21:17 GMT
COPY file:182a0176834db40043100d082d05e5aded9887c94b02416f6e3154c827c07360 in /entrypoint.sh 
# Wed, 27 Mar 2019 22:21:18 GMT
COPY file:892fcd3130baa17c0b88866ac37e7fe0b7b420a67105d9cd99803c685eaf9df4 in /init-influxdb.sh 
# Wed, 27 Mar 2019 22:21:18 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 27 Mar 2019 22:21:18 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:c87736221ed0bcaa60b8e92a19bec2284899ef89226f2a07968677cf59e637a4`  
		Last Modified: Thu, 07 Mar 2019 22:20:20 GMT  
		Size: 2.2 MB (2207176 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a7c3edaa27ffab3a4de5b02e8f2ac780fca60d75bf7c7846352103c7f9fff6e`  
		Last Modified: Thu, 07 Mar 2019 23:10:40 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:611215ad6fd94aca0d418348501999c7c156cbec717f6a020ff0f94f2202ba45`  
		Last Modified: Thu, 07 Mar 2019 23:15:25 GMT  
		Size: 1.9 MB (1870457 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53ccf86a1cab9a14e41f60dce7c41a245e360982e25fc3f2e8f0a816e13951da`  
		Last Modified: Wed, 27 Mar 2019 22:23:06 GMT  
		Size: 45.9 MB (45930673 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:584f0f00900c6b5e8baaaf34ef75415c03ba771e416314c9943821d1d503b7f6`  
		Last Modified: Wed, 27 Mar 2019 22:22:56 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de42237b750842bc2dd4c9d097444370a721511b7b01929decd278248f7c64d5`  
		Last Modified: Wed, 27 Mar 2019 22:22:56 GMT  
		Size: 252.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd73a8bdcb259b026cb1d88fe0413a07a9b5ee965a34b254aa7db85c060417ac`  
		Last Modified: Wed, 27 Mar 2019 22:22:56 GMT  
		Size: 1.2 KB (1167 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `influxdb:latest`

```console
$ docker pull influxdb@sha256:c3b22f711cead0b429c0145732b5b7e2a8fe7334990068607d4b44b894d3b46b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `influxdb:latest` - linux; amd64

```console
$ docker pull influxdb@sha256:7bc17caa5d47935b9b9b200f9895fc544e08365d20ee648fd4a3df14b36126dd
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **111.1 MB (111127219 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f0656e1473451f8a5fb503a6c541e0ec8de5b74aac0a8841d26da29b0e5c9c9d`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Wed, 08 May 2019 00:33:09 GMT
ADD file:caf91edab64f988bc24766c58ee66c00311c7c921296b8e5b51d7023422a1485 in / 
# Wed, 08 May 2019 00:33:10 GMT
CMD ["bash"]
# Wed, 08 May 2019 01:40:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 01:40:12 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 08 May 2019 07:34:07 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Wed, 08 May 2019 07:35:27 GMT
ENV INFLUXDB_VERSION=1.7.6
# Wed, 08 May 2019 07:35:34 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     gpg --batch --verify influxdb_${INFLUXDB_VERSION}_${ARCH}.deb.asc influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     dpkg -i influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     rm -f influxdb_${INFLUXDB_VERSION}_${ARCH}.deb*
# Wed, 08 May 2019 07:35:34 GMT
COPY file:3d8a606d61e1fc0042cf34d036eda4550a18d140c47376dacc02d96ee6f2dd8b in /etc/influxdb/influxdb.conf 
# Wed, 08 May 2019 07:35:34 GMT
EXPOSE 8086
# Wed, 08 May 2019 07:35:35 GMT
VOLUME [/var/lib/influxdb]
# Wed, 08 May 2019 07:35:35 GMT
COPY file:61c4af7a0e637328374ec46266ed6dde40adf7d14ac6c5081100924991beb7f3 in /entrypoint.sh 
# Wed, 08 May 2019 07:35:35 GMT
COPY file:892fcd3130baa17c0b88866ac37e7fe0b7b420a67105d9cd99803c685eaf9df4 in /init-influxdb.sh 
# Wed, 08 May 2019 07:35:35 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 08 May 2019 07:35:36 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:c5e155d5a1d130a7f8a3e24cee0d9e1349bff13f90ec6a941478e558fde53c14`  
		Last Modified: Wed, 08 May 2019 00:37:42 GMT  
		Size: 45.3 MB (45339314 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:221d80d00ae9675aad24913aacbadfac1ce8b7084f9765a6c0813486082c5c69`  
		Last Modified: Wed, 08 May 2019 01:45:42 GMT  
		Size: 10.8 MB (10784878 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4250b3117dca5e14edc32ebf1366cd54e4cda91f17610b76c504a86917ff8b95`  
		Last Modified: Wed, 08 May 2019 01:45:41 GMT  
		Size: 4.3 MB (4340094 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e51b6917b8bea39091733d42fc84ed055d24bab253f1180353c2f0fc24cddfa`  
		Last Modified: Wed, 08 May 2019 07:36:49 GMT  
		Size: 2.8 KB (2772 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8b0889ef887591a1251c41774cca5edcb72650a92713f51c3945b319c443235`  
		Last Modified: Wed, 08 May 2019 07:38:08 GMT  
		Size: 50.7 MB (50658561 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:749bae9006fd14c4b22f79a39d901253fb71fac3450c8a05e5b881133644b3af`  
		Last Modified: Wed, 08 May 2019 07:37:57 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35b31a5ecf8677501f09d9fd6db29b37e80191433d112049689494c52d09b8c5`  
		Last Modified: Wed, 08 May 2019 07:37:57 GMT  
		Size: 210.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc7c30009a3e8be1825a50feaeb70546357b8ba411d2a8e7f5c14fc8317eed26`  
		Last Modified: Wed, 08 May 2019 07:37:57 GMT  
		Size: 1.2 KB (1165 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `influxdb:latest` - linux; arm variant v7

```console
$ docker pull influxdb@sha256:4d5e2b02d9a7eeb026745875d14c94e2a2071ef32c3025cb09cdf01e24785a1e
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **103.2 MB (103172493 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fd07c6cdfa46f8e8dfdd25ed5c1d9c8dc7097602cef48a08337cc96779b97f80`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Wed, 08 May 2019 12:03:26 GMT
ADD file:7e8dcc40e246d53b86266855a2de8080d26e6b4ed9f594c1acc565784405735b in / 
# Wed, 08 May 2019 12:03:27 GMT
CMD ["bash"]
# Wed, 08 May 2019 13:04:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 13:04:42 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 08 May 2019 16:17:27 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Wed, 08 May 2019 16:17:55 GMT
ENV INFLUXDB_VERSION=1.7.6
# Wed, 08 May 2019 16:18:02 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     gpg --batch --verify influxdb_${INFLUXDB_VERSION}_${ARCH}.deb.asc influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     dpkg -i influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     rm -f influxdb_${INFLUXDB_VERSION}_${ARCH}.deb*
# Wed, 08 May 2019 16:18:03 GMT
COPY file:3d8a606d61e1fc0042cf34d036eda4550a18d140c47376dacc02d96ee6f2dd8b in /etc/influxdb/influxdb.conf 
# Wed, 08 May 2019 16:18:04 GMT
EXPOSE 8086
# Wed, 08 May 2019 16:18:04 GMT
VOLUME [/var/lib/influxdb]
# Wed, 08 May 2019 16:18:05 GMT
COPY file:61c4af7a0e637328374ec46266ed6dde40adf7d14ac6c5081100924991beb7f3 in /entrypoint.sh 
# Wed, 08 May 2019 16:18:05 GMT
COPY file:892fcd3130baa17c0b88866ac37e7fe0b7b420a67105d9cd99803c685eaf9df4 in /init-influxdb.sh 
# Wed, 08 May 2019 16:18:06 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 08 May 2019 16:18:06 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:f2a2fd7c1ab35cd1b5ea6fcc2b801f3877852797e2698ecdb9556e0dee3accb5`  
		Last Modified: Wed, 08 May 2019 12:09:40 GMT  
		Size: 42.1 MB (42082604 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:047df9a92c9f7376283a8d6af526f5126d95995ba48dd7de49979ef57da3e15b`  
		Last Modified: Wed, 08 May 2019 13:12:20 GMT  
		Size: 9.5 MB (9485167 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ddeed4ac8d1e2c751afd6fd3517f1d154365467039353c377c8206fd5eb81d4b`  
		Last Modified: Wed, 08 May 2019 13:12:18 GMT  
		Size: 3.9 MB (3918605 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b668daec8214e7fe112e89f2ad6e22651d66c490c182af5be7b786ca304c7b5`  
		Last Modified: Wed, 08 May 2019 16:18:17 GMT  
		Size: 2.8 KB (2801 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6794328a362a7114bf2f2f96023842b98d86df60e5bb02aba0af7fcec12cd13e`  
		Last Modified: Wed, 08 May 2019 16:18:59 GMT  
		Size: 47.7 MB (47681714 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54da823c83645693773afccba93efe19d6889c52280d29435bdc9febfe1a8b53`  
		Last Modified: Wed, 08 May 2019 16:18:45 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb52689fe737968133eb99da9deed7373ee127012cf6af59916c428bd7e5f61b`  
		Last Modified: Wed, 08 May 2019 16:18:45 GMT  
		Size: 211.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a410570849d7a1d56e3cd5f8b0bd290771270b715e08e0aa6f7f6945adc0c0b`  
		Last Modified: Wed, 08 May 2019 16:18:45 GMT  
		Size: 1.2 KB (1165 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `influxdb:latest` - linux; arm64 variant v8

```console
$ docker pull influxdb@sha256:c907be44bf16c5fd50b593a9aa1bb7a5fc2bce399e6782b46687aab760603a84
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **103.9 MB (103937144 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:157f2f98756ef69d3121ccf9aada0a1101303a1bf1190ae96850751d63ef6718`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Wed, 27 Mar 2019 08:47:20 GMT
ADD file:8f991b13b28ce1de362b9f00e69aac8edc28124a08adeeb3b7fb02153e0b4e92 in / 
# Wed, 27 Mar 2019 08:47:21 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 10:15:55 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 10:16:13 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 27 Mar 2019 23:45:16 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Thu, 18 Apr 2019 09:05:45 GMT
ENV INFLUXDB_VERSION=1.7.6
# Thu, 18 Apr 2019 09:06:01 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     gpg --batch --verify influxdb_${INFLUXDB_VERSION}_${ARCH}.deb.asc influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     dpkg -i influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     rm -f influxdb_${INFLUXDB_VERSION}_${ARCH}.deb*
# Thu, 18 Apr 2019 09:06:02 GMT
COPY file:3d8a606d61e1fc0042cf34d036eda4550a18d140c47376dacc02d96ee6f2dd8b in /etc/influxdb/influxdb.conf 
# Thu, 18 Apr 2019 09:06:03 GMT
EXPOSE 8086
# Thu, 18 Apr 2019 09:06:04 GMT
VOLUME [/var/lib/influxdb]
# Thu, 18 Apr 2019 09:06:05 GMT
COPY file:61c4af7a0e637328374ec46266ed6dde40adf7d14ac6c5081100924991beb7f3 in /entrypoint.sh 
# Thu, 18 Apr 2019 09:06:06 GMT
COPY file:892fcd3130baa17c0b88866ac37e7fe0b7b420a67105d9cd99803c685eaf9df4 in /init-influxdb.sh 
# Thu, 18 Apr 2019 09:06:07 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 18 Apr 2019 09:06:08 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:5385e634d2a1a330aea59f510b0676b269167a579dddb586b27917d80d0dfd01`  
		Last Modified: Wed, 27 Mar 2019 08:52:30 GMT  
		Size: 43.1 MB (43132000 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6696bae2f570e0c96dcb21308e525216796d3452d1a9b8dcaba168ba37f3f464`  
		Last Modified: Wed, 27 Mar 2019 10:36:08 GMT  
		Size: 9.7 MB (9730463 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6dca82770cb3702e9c92d2f155923c0fb55671c1c373b8b50640b7bf05ed8418`  
		Last Modified: Wed, 27 Mar 2019 10:36:05 GMT  
		Size: 4.1 MB (4094072 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56a1a37594e065b68838715135cc87c8000f3e4f977d81709d1dc0b1f54ca93d`  
		Last Modified: Wed, 27 Mar 2019 23:46:46 GMT  
		Size: 2.8 KB (2776 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:424f9c6ef41c2f767e8e094de7043d3f427232e65b1093e0d75a76d0a5345b1a`  
		Last Modified: Thu, 18 Apr 2019 09:06:48 GMT  
		Size: 47.0 MB (46976229 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7bfae90960f1cfdbe830dade564d9e94a77cf5384741970b2e143fec0d7bc65`  
		Last Modified: Thu, 18 Apr 2019 09:06:27 GMT  
		Size: 228.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:995bea31c416398ccf33c5c8136ab0d215bb84839373fb83739935160fd2f206`  
		Last Modified: Thu, 18 Apr 2019 09:06:27 GMT  
		Size: 211.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0630f660802f4d0bb8ec7db2b2be1ce629f9fd9bf28a3867f849e52acee08663`  
		Last Modified: Thu, 18 Apr 2019 09:06:27 GMT  
		Size: 1.2 KB (1165 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `influxdb:meta`

```console
$ docker pull influxdb@sha256:e5859752cae146ffbb59ffc594b2e34105981383ae4cbd0a19c10d34143e8123
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `influxdb:meta` - linux; amd64

```console
$ docker pull influxdb@sha256:fc7cb91c985715aabb5ffacb96795ee613c7060534cece7325d3895f68b068e3
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **75.4 MB (75366138 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b284ecab4526c7c78f027a4fa7b1848b83e2fa129e87097600238f979110a2ed`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd-meta"]`

```dockerfile
# Wed, 08 May 2019 00:33:09 GMT
ADD file:caf91edab64f988bc24766c58ee66c00311c7c921296b8e5b51d7023422a1485 in / 
# Wed, 08 May 2019 00:33:10 GMT
CMD ["bash"]
# Wed, 08 May 2019 01:40:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 01:40:12 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 08 May 2019 07:34:07 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Wed, 08 May 2019 07:35:44 GMT
ENV INFLUXDB_VERSION=1.7.5-c1.7.5
# Wed, 08 May 2019 07:36:04 GMT
RUN wget --no-verbose https://dl.influxdata.com/enterprise/releases/influxdb-meta_${INFLUXDB_VERSION}_amd64.deb.asc &&     wget --no-verbose https://dl.influxdata.com/enterprise/releases/influxdb-meta_${INFLUXDB_VERSION}_amd64.deb &&     gpg --batch --verify influxdb-meta_${INFLUXDB_VERSION}_amd64.deb.asc influxdb-meta_${INFLUXDB_VERSION}_amd64.deb &&     dpkg -i influxdb-meta_${INFLUXDB_VERSION}_amd64.deb &&     rm -f influxdb-meta_${INFLUXDB_VERSION}_amd64.deb*
# Wed, 08 May 2019 07:36:04 GMT
COPY file:5d8d1b0acfd7ca05cf6698246b28d240206fa448f4aa5ac839c9ad323adbeac2 in /etc/influxdb/influxdb-meta.conf 
# Wed, 08 May 2019 07:36:05 GMT
EXPOSE 8091
# Wed, 08 May 2019 07:36:05 GMT
VOLUME [/var/lib/influxdb]
# Wed, 08 May 2019 07:36:05 GMT
COPY file:126b1f7e41b4975cf2ce23037cf6a46253fb817023062317380c48ff5df47228 in /entrypoint.sh 
# Wed, 08 May 2019 07:36:06 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 08 May 2019 07:36:06 GMT
CMD ["influxd-meta"]
```

-	Layers:
	-	`sha256:c5e155d5a1d130a7f8a3e24cee0d9e1349bff13f90ec6a941478e558fde53c14`  
		Last Modified: Wed, 08 May 2019 00:37:42 GMT  
		Size: 45.3 MB (45339314 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:221d80d00ae9675aad24913aacbadfac1ce8b7084f9765a6c0813486082c5c69`  
		Last Modified: Wed, 08 May 2019 01:45:42 GMT  
		Size: 10.8 MB (10784878 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4250b3117dca5e14edc32ebf1366cd54e4cda91f17610b76c504a86917ff8b95`  
		Last Modified: Wed, 08 May 2019 01:45:41 GMT  
		Size: 4.3 MB (4340094 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e51b6917b8bea39091733d42fc84ed055d24bab253f1180353c2f0fc24cddfa`  
		Last Modified: Wed, 08 May 2019 07:36:49 GMT  
		Size: 2.8 KB (2772 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8edc27dbd6437fa22e7f9cbb9249ba0cd7b7fc9dc87722c61f859418ddac07e`  
		Last Modified: Wed, 08 May 2019 07:38:46 GMT  
		Size: 14.9 MB (14898511 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eff01b25cfdaf776efe3887f69fa23bfcb6b4fbc31f9e0d67ef8938cfeb15e19`  
		Last Modified: Wed, 08 May 2019 07:38:41 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b753935b2693f47a6ce574b9775ee82b0e89b3f036353151bd993879fe0a2f70`  
		Last Modified: Wed, 08 May 2019 07:38:41 GMT  
		Size: 375.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `influxdb:meta-alpine`

```console
$ docker pull influxdb@sha256:62711557a0845be478ea22ceecbc22c7d550be6548189f688b1b7287650f321a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `influxdb:meta-alpine` - linux; amd64

```console
$ docker pull influxdb@sha256:2795db45e0d15601dcc42bce47748c0041ec5498c14c6de15d1b690172ef68a6
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.9 MB (18931693 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:109d51c04ac85613d13e86509f3bd1bd92cb79b2ea1033a465cd8a99be7e0913`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd-meta"]`

```dockerfile
# Thu, 07 Mar 2019 22:19:46 GMT
ADD file:38bc6b51693b13d84a63e281403e2f6d0218c44b1d7ff12157c4523f9f0ebb1e in / 
# Thu, 07 Mar 2019 22:19:46 GMT
CMD ["/bin/sh"]
# Thu, 07 Mar 2019 23:09:58 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf
# Thu, 07 Mar 2019 23:13:21 GMT
RUN apk add --no-cache tzdata bash ca-certificates &&     update-ca-certificates
# Wed, 27 Mar 2019 22:21:04 GMT
ENV INFLUXDB_VERSION=1.7.5-c1.7.5
# Wed, 27 Mar 2019 22:21:41 GMT
RUN set -ex &&     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/enterprise/releases/influxdb-meta-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/enterprise/releases/influxdb-meta-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify influxdb-meta-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc influxdb-meta-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf influxdb-meta-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/influxdb-*/influxdb-meta.conf &&     chmod +x /usr/src/influxdb-*/* &&     cp -a /usr/src/influxdb-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Wed, 27 Mar 2019 22:21:41 GMT
COPY file:5d8d1b0acfd7ca05cf6698246b28d240206fa448f4aa5ac839c9ad323adbeac2 in /etc/influxdb/influxdb-meta.conf 
# Wed, 27 Mar 2019 22:21:42 GMT
EXPOSE 8091
# Wed, 27 Mar 2019 22:21:42 GMT
VOLUME [/var/lib/influxdb]
# Wed, 27 Mar 2019 22:21:43 GMT
COPY file:126b1f7e41b4975cf2ce23037cf6a46253fb817023062317380c48ff5df47228 in /entrypoint.sh 
# Wed, 27 Mar 2019 22:21:43 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 27 Mar 2019 22:21:44 GMT
CMD ["influxd-meta"]
```

-	Layers:
	-	`sha256:c87736221ed0bcaa60b8e92a19bec2284899ef89226f2a07968677cf59e637a4`  
		Last Modified: Thu, 07 Mar 2019 22:20:20 GMT  
		Size: 2.2 MB (2207176 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a7c3edaa27ffab3a4de5b02e8f2ac780fca60d75bf7c7846352103c7f9fff6e`  
		Last Modified: Thu, 07 Mar 2019 23:10:40 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:611215ad6fd94aca0d418348501999c7c156cbec717f6a020ff0f94f2202ba45`  
		Last Modified: Thu, 07 Mar 2019 23:15:25 GMT  
		Size: 1.9 MB (1870457 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84034cc550bbe940a6783a347b6ac63fd2878cabdc8697107e97da31921881d9`  
		Last Modified: Wed, 27 Mar 2019 22:23:23 GMT  
		Size: 14.9 MB (14853338 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee6bf2cdd650edbc51f36ba946c267e966cdcbe0329ae4b6c6b4c43c19ab8e0c`  
		Last Modified: Wed, 27 Mar 2019 22:23:19 GMT  
		Size: 193.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:235682659478db8ec6fa1cbd330611eb6514fb9a78465cb1a0a109bef13cdcba`  
		Last Modified: Wed, 27 Mar 2019 22:23:19 GMT  
		Size: 375.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
