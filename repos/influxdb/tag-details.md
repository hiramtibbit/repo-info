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
-	[`influxdb:1.6.4`](#influxdb164)
-	[`influxdb:1.6.4-alpine`](#influxdb164-alpine)
-	[`influxdb:1.6.4-data`](#influxdb164-data)
-	[`influxdb:1.6.4-data-alpine`](#influxdb164-data-alpine)
-	[`influxdb:1.6.4-meta`](#influxdb164-meta)
-	[`influxdb:1.6.4-meta-alpine`](#influxdb164-meta-alpine)
-	[`influxdb:1.6-alpine`](#influxdb16-alpine)
-	[`influxdb:1.6-data`](#influxdb16-data)
-	[`influxdb:1.6-data-alpine`](#influxdb16-data-alpine)
-	[`influxdb:1.6-meta`](#influxdb16-meta)
-	[`influxdb:1.6-meta-alpine`](#influxdb16-meta-alpine)
-	[`influxdb:alpine`](#influxdbalpine)
-	[`influxdb:data`](#influxdbdata)
-	[`influxdb:data-alpine`](#influxdbdata-alpine)
-	[`influxdb:latest`](#influxdblatest)
-	[`influxdb:meta`](#influxdbmeta)
-	[`influxdb:meta-alpine`](#influxdbmeta-alpine)

## `influxdb:1.5`

```console
$ docker pull influxdb@sha256:efa0b4738211208c4a90887498e6f3c4ac40e82726fc905fed0d22a41e5328f3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `influxdb:1.5` - linux; amd64

```console
$ docker pull influxdb@sha256:fa935f792dff04b765cc91cecd29f00b1277cb02238b8cb4916b7f0180cfc773
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **83.4 MB (83419416 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9bba3b27a245d9626fea33b034cf121e88d4cf589d5df6df1c883a9b6be0abdc`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Mon, 15 Oct 2018 23:24:20 GMT
ADD file:b3598c18dc395846ab2c5e4e8422c4a5dad7bc3b5b08c09ebceee80989904641 in / 
# Mon, 15 Oct 2018 23:24:21 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 01:00:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 01:00:57 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 16 Oct 2018 10:54:30 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Tue, 16 Oct 2018 10:54:30 GMT
ENV INFLUXDB_VERSION=1.5.4
# Tue, 16 Oct 2018 10:54:35 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     gpg --batch --verify influxdb_${INFLUXDB_VERSION}_${ARCH}.deb.asc influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     dpkg -i influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     rm -f influxdb_${INFLUXDB_VERSION}_${ARCH}.deb*
# Tue, 16 Oct 2018 10:54:36 GMT
COPY file:3ee2bc0321c2aa2451df7a508649c3a54f0eebc1ef9b8a24967c58105b4d3160 in /etc/influxdb/influxdb.conf 
# Tue, 16 Oct 2018 10:54:37 GMT
EXPOSE 8086/tcp
# Tue, 16 Oct 2018 10:54:37 GMT
VOLUME [/var/lib/influxdb]
# Tue, 16 Oct 2018 10:54:37 GMT
COPY file:098affa3d1b749dacb263ddacfd86a5de1f598d6ba1f7c789ce482c66ee9c80b in /entrypoint.sh 
# Tue, 16 Oct 2018 10:54:38 GMT
COPY file:44e0050f3b04248a6900eace944c581b13b4ad9af1e5cfb91d837cb5e24356e6 in /init-influxdb.sh 
# Tue, 16 Oct 2018 10:54:38 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 16 Oct 2018 10:54:39 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:bc9ab73e5b14b9fbd3687a4d8c1f1360533d6ee9ffc3f5ecc6630794b40257b7`  
		Last Modified: Mon, 15 Oct 2018 23:33:47 GMT  
		Size: 45.3 MB (45309934 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:193a6306c92af328dbd41bbbd3200a2c90802624cccfe5725223324428110d7f`  
		Last Modified: Tue, 16 Oct 2018 01:13:35 GMT  
		Size: 10.7 MB (10740016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5c3f8c317dc30af45021092a3d76f16ba7aa1ee5f18fec742c84d4960818580`  
		Last Modified: Tue, 16 Oct 2018 01:13:33 GMT  
		Size: 4.3 MB (4336053 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4997ec2fe070d4927eb940dbec9169bad86195ff650b88a58b1592f55bbc00d0`  
		Last Modified: Tue, 16 Oct 2018 10:57:16 GMT  
		Size: 2.9 KB (2887 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5387c86e2c17c2cd825d1d943f00d280fed263986acd9f6ae15e4dca4ca0c61`  
		Last Modified: Tue, 16 Oct 2018 10:57:24 GMT  
		Size: 23.0 MB (23028926 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ba29dbfa3a33e498c7c189a00e2d21a56a2afd6f6781821a53cf6ff7bad5b1d`  
		Last Modified: Tue, 16 Oct 2018 10:57:16 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4c4c01ccb48293975b86a3cb09547afab399fd50a492d0bff9211b43afa87c8`  
		Last Modified: Tue, 16 Oct 2018 10:57:16 GMT  
		Size: 211.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dec69a42fca7c4ef347d5f73d7ab063bc95fd2224a1f18af4da65833c1bf8d01`  
		Last Modified: Tue, 16 Oct 2018 10:57:16 GMT  
		Size: 1.2 KB (1167 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `influxdb:1.5` - linux; arm variant v7

```console
$ docker pull influxdb@sha256:9cedc2de939bed964af7b538ce8e0f32f1806bbd212c909dce6aea226ba63578
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **77.1 MB (77079772 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:01b1163d1da43ecd34a7324a81ea929fb0c2406f8c58c71827475aab494bd303`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Tue, 16 Oct 2018 12:05:35 GMT
ADD file:5a70dc8c5adc5e530a8fc10745a2fba15ee4379cd2e1adba6e1abfc8353c48d9 in / 
# Tue, 16 Oct 2018 12:05:38 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 12:58:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 12:58:52 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 16 Oct 2018 14:57:55 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Tue, 16 Oct 2018 14:57:56 GMT
ENV INFLUXDB_VERSION=1.5.4
# Tue, 16 Oct 2018 14:58:05 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     gpg --batch --verify influxdb_${INFLUXDB_VERSION}_${ARCH}.deb.asc influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     dpkg -i influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     rm -f influxdb_${INFLUXDB_VERSION}_${ARCH}.deb*
# Tue, 16 Oct 2018 14:58:07 GMT
COPY file:3ee2bc0321c2aa2451df7a508649c3a54f0eebc1ef9b8a24967c58105b4d3160 in /etc/influxdb/influxdb.conf 
# Tue, 16 Oct 2018 14:58:07 GMT
EXPOSE 8086/tcp
# Tue, 16 Oct 2018 14:58:08 GMT
VOLUME [/var/lib/influxdb]
# Tue, 16 Oct 2018 14:58:10 GMT
COPY file:098affa3d1b749dacb263ddacfd86a5de1f598d6ba1f7c789ce482c66ee9c80b in /entrypoint.sh 
# Tue, 16 Oct 2018 14:58:12 GMT
COPY file:44e0050f3b04248a6900eace944c581b13b4ad9af1e5cfb91d837cb5e24356e6 in /init-influxdb.sh 
# Tue, 16 Oct 2018 14:58:13 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 16 Oct 2018 14:58:14 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:773085009f9c7f7b4310a1b0a968c0940440707f9e534ed87f0652baf279811b`  
		Last Modified: Tue, 16 Oct 2018 12:16:00 GMT  
		Size: 42.1 MB (42063035 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15973945ecf58d4573926ba8da5c9aa815d1e14bbc2c8414b0e23d51552f6f3d`  
		Last Modified: Tue, 16 Oct 2018 13:09:51 GMT  
		Size: 9.4 MB (9440339 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e25b539801e1d4c35f7727ce95a197418bbe4cff37e1784aad0325cdfb1673a`  
		Last Modified: Tue, 16 Oct 2018 13:09:50 GMT  
		Size: 3.9 MB (3913013 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:223dbbf02340b8fe3982868e60bd7a5005ab465886417f11771c94b2d5fcedf0`  
		Last Modified: Tue, 16 Oct 2018 14:58:57 GMT  
		Size: 2.9 KB (2913 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afa4014a21946148e4ad7fd5c767d201437427d0eb6a95713f9efdde2cffb7b4`  
		Last Modified: Tue, 16 Oct 2018 14:59:09 GMT  
		Size: 21.7 MB (21658871 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf3be080800c135cf0e2f8ccb3cc2653f07a354e29745042b436f9a41c1422f0`  
		Last Modified: Tue, 16 Oct 2018 14:58:58 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbc817ddb37eee1330f547be7e9849abfe668ae532f496391fd4da952bf18fb6`  
		Last Modified: Tue, 16 Oct 2018 14:58:58 GMT  
		Size: 211.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60368c7fa1f3ebbfad61fc3428268c2ddc5c24b189f97d286582c36ef574487a`  
		Last Modified: Tue, 16 Oct 2018 14:58:58 GMT  
		Size: 1.2 KB (1167 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `influxdb:1.5` - linux; arm64 variant v8

```console
$ docker pull influxdb@sha256:68d80bd328266854b299bd10bb6cb35cb401c4ab70b3c854d0f90491e1e16462
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **77.9 MB (77917273 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:37fe3f02914eb0243141c0a859c78c8860a9f497cca9619156db7bff8a334f45`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Tue, 16 Oct 2018 08:43:08 GMT
ADD file:961d2f24a0cebfcdd333e000ed4488e5c4f4d2a3d11056c45934d647caed5845 in / 
# Tue, 16 Oct 2018 08:43:10 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 12:01:13 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 12:01:39 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 17 Oct 2018 02:40:46 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Wed, 17 Oct 2018 02:40:47 GMT
ENV INFLUXDB_VERSION=1.5.4
# Wed, 17 Oct 2018 02:42:58 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     gpg --batch --verify influxdb_${INFLUXDB_VERSION}_${ARCH}.deb.asc influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     dpkg -i influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     rm -f influxdb_${INFLUXDB_VERSION}_${ARCH}.deb*
# Wed, 17 Oct 2018 02:43:00 GMT
COPY file:3ee2bc0321c2aa2451df7a508649c3a54f0eebc1ef9b8a24967c58105b4d3160 in /etc/influxdb/influxdb.conf 
# Wed, 17 Oct 2018 02:43:01 GMT
EXPOSE 8086/tcp
# Wed, 17 Oct 2018 02:43:03 GMT
VOLUME [/var/lib/influxdb]
# Wed, 17 Oct 2018 02:43:04 GMT
COPY file:098affa3d1b749dacb263ddacfd86a5de1f598d6ba1f7c789ce482c66ee9c80b in /entrypoint.sh 
# Wed, 17 Oct 2018 02:43:05 GMT
COPY file:44e0050f3b04248a6900eace944c581b13b4ad9af1e5cfb91d837cb5e24356e6 in /init-influxdb.sh 
# Wed, 17 Oct 2018 02:43:06 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 17 Oct 2018 02:43:09 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:54fc83a09c68f915c1e318f4b118a467a545027084dd28edbdfded4ea6772e9d`  
		Last Modified: Tue, 16 Oct 2018 08:49:44 GMT  
		Size: 43.1 MB (43123597 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:742d3549b4ad9fe47f3e3bf2ee373b97068548f65584a6d259dfa601721e2f51`  
		Last Modified: Tue, 16 Oct 2018 12:26:08 GMT  
		Size: 9.7 MB (9690405 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6c71b9867c5efaf04365448a7b025ba50a926e7c1daae8ee9e73b149b322ae8`  
		Last Modified: Tue, 16 Oct 2018 12:26:05 GMT  
		Size: 4.1 MB (4088398 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2a88a6f61fbb6add9ba96198af6b9ec64cbf52eb0145c467fcfd64dad29da8d`  
		Last Modified: Wed, 17 Oct 2018 02:50:37 GMT  
		Size: 2.9 KB (2886 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f06c64785f18860f9292c1d1942e95b30b715632dfaf5798e5a50a7839d34d1`  
		Last Modified: Wed, 17 Oct 2018 02:51:01 GMT  
		Size: 21.0 MB (21010387 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67ea0bb6265395fb2cc855cee7608566d44c167537683a5ce38faaf211d0e949`  
		Last Modified: Wed, 17 Oct 2018 02:50:37 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b71fd587b500fc1b6b4c9240af6cfe6fddce37f8c72b7888f72578cba9e62898`  
		Last Modified: Wed, 17 Oct 2018 02:50:37 GMT  
		Size: 211.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d71a4746e2163ef22bb760ad3fc8ac089151e42bc36c8b612c6fda68b5a8013`  
		Last Modified: Wed, 17 Oct 2018 02:50:37 GMT  
		Size: 1.2 KB (1167 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `influxdb:1.5.4`

```console
$ docker pull influxdb@sha256:efa0b4738211208c4a90887498e6f3c4ac40e82726fc905fed0d22a41e5328f3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `influxdb:1.5.4` - linux; amd64

```console
$ docker pull influxdb@sha256:fa935f792dff04b765cc91cecd29f00b1277cb02238b8cb4916b7f0180cfc773
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **83.4 MB (83419416 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9bba3b27a245d9626fea33b034cf121e88d4cf589d5df6df1c883a9b6be0abdc`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Mon, 15 Oct 2018 23:24:20 GMT
ADD file:b3598c18dc395846ab2c5e4e8422c4a5dad7bc3b5b08c09ebceee80989904641 in / 
# Mon, 15 Oct 2018 23:24:21 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 01:00:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 01:00:57 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 16 Oct 2018 10:54:30 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Tue, 16 Oct 2018 10:54:30 GMT
ENV INFLUXDB_VERSION=1.5.4
# Tue, 16 Oct 2018 10:54:35 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     gpg --batch --verify influxdb_${INFLUXDB_VERSION}_${ARCH}.deb.asc influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     dpkg -i influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     rm -f influxdb_${INFLUXDB_VERSION}_${ARCH}.deb*
# Tue, 16 Oct 2018 10:54:36 GMT
COPY file:3ee2bc0321c2aa2451df7a508649c3a54f0eebc1ef9b8a24967c58105b4d3160 in /etc/influxdb/influxdb.conf 
# Tue, 16 Oct 2018 10:54:37 GMT
EXPOSE 8086/tcp
# Tue, 16 Oct 2018 10:54:37 GMT
VOLUME [/var/lib/influxdb]
# Tue, 16 Oct 2018 10:54:37 GMT
COPY file:098affa3d1b749dacb263ddacfd86a5de1f598d6ba1f7c789ce482c66ee9c80b in /entrypoint.sh 
# Tue, 16 Oct 2018 10:54:38 GMT
COPY file:44e0050f3b04248a6900eace944c581b13b4ad9af1e5cfb91d837cb5e24356e6 in /init-influxdb.sh 
# Tue, 16 Oct 2018 10:54:38 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 16 Oct 2018 10:54:39 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:bc9ab73e5b14b9fbd3687a4d8c1f1360533d6ee9ffc3f5ecc6630794b40257b7`  
		Last Modified: Mon, 15 Oct 2018 23:33:47 GMT  
		Size: 45.3 MB (45309934 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:193a6306c92af328dbd41bbbd3200a2c90802624cccfe5725223324428110d7f`  
		Last Modified: Tue, 16 Oct 2018 01:13:35 GMT  
		Size: 10.7 MB (10740016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5c3f8c317dc30af45021092a3d76f16ba7aa1ee5f18fec742c84d4960818580`  
		Last Modified: Tue, 16 Oct 2018 01:13:33 GMT  
		Size: 4.3 MB (4336053 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4997ec2fe070d4927eb940dbec9169bad86195ff650b88a58b1592f55bbc00d0`  
		Last Modified: Tue, 16 Oct 2018 10:57:16 GMT  
		Size: 2.9 KB (2887 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5387c86e2c17c2cd825d1d943f00d280fed263986acd9f6ae15e4dca4ca0c61`  
		Last Modified: Tue, 16 Oct 2018 10:57:24 GMT  
		Size: 23.0 MB (23028926 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ba29dbfa3a33e498c7c189a00e2d21a56a2afd6f6781821a53cf6ff7bad5b1d`  
		Last Modified: Tue, 16 Oct 2018 10:57:16 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4c4c01ccb48293975b86a3cb09547afab399fd50a492d0bff9211b43afa87c8`  
		Last Modified: Tue, 16 Oct 2018 10:57:16 GMT  
		Size: 211.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dec69a42fca7c4ef347d5f73d7ab063bc95fd2224a1f18af4da65833c1bf8d01`  
		Last Modified: Tue, 16 Oct 2018 10:57:16 GMT  
		Size: 1.2 KB (1167 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `influxdb:1.5.4` - linux; arm variant v7

```console
$ docker pull influxdb@sha256:9cedc2de939bed964af7b538ce8e0f32f1806bbd212c909dce6aea226ba63578
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **77.1 MB (77079772 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:01b1163d1da43ecd34a7324a81ea929fb0c2406f8c58c71827475aab494bd303`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Tue, 16 Oct 2018 12:05:35 GMT
ADD file:5a70dc8c5adc5e530a8fc10745a2fba15ee4379cd2e1adba6e1abfc8353c48d9 in / 
# Tue, 16 Oct 2018 12:05:38 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 12:58:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 12:58:52 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 16 Oct 2018 14:57:55 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Tue, 16 Oct 2018 14:57:56 GMT
ENV INFLUXDB_VERSION=1.5.4
# Tue, 16 Oct 2018 14:58:05 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     gpg --batch --verify influxdb_${INFLUXDB_VERSION}_${ARCH}.deb.asc influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     dpkg -i influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     rm -f influxdb_${INFLUXDB_VERSION}_${ARCH}.deb*
# Tue, 16 Oct 2018 14:58:07 GMT
COPY file:3ee2bc0321c2aa2451df7a508649c3a54f0eebc1ef9b8a24967c58105b4d3160 in /etc/influxdb/influxdb.conf 
# Tue, 16 Oct 2018 14:58:07 GMT
EXPOSE 8086/tcp
# Tue, 16 Oct 2018 14:58:08 GMT
VOLUME [/var/lib/influxdb]
# Tue, 16 Oct 2018 14:58:10 GMT
COPY file:098affa3d1b749dacb263ddacfd86a5de1f598d6ba1f7c789ce482c66ee9c80b in /entrypoint.sh 
# Tue, 16 Oct 2018 14:58:12 GMT
COPY file:44e0050f3b04248a6900eace944c581b13b4ad9af1e5cfb91d837cb5e24356e6 in /init-influxdb.sh 
# Tue, 16 Oct 2018 14:58:13 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 16 Oct 2018 14:58:14 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:773085009f9c7f7b4310a1b0a968c0940440707f9e534ed87f0652baf279811b`  
		Last Modified: Tue, 16 Oct 2018 12:16:00 GMT  
		Size: 42.1 MB (42063035 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15973945ecf58d4573926ba8da5c9aa815d1e14bbc2c8414b0e23d51552f6f3d`  
		Last Modified: Tue, 16 Oct 2018 13:09:51 GMT  
		Size: 9.4 MB (9440339 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e25b539801e1d4c35f7727ce95a197418bbe4cff37e1784aad0325cdfb1673a`  
		Last Modified: Tue, 16 Oct 2018 13:09:50 GMT  
		Size: 3.9 MB (3913013 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:223dbbf02340b8fe3982868e60bd7a5005ab465886417f11771c94b2d5fcedf0`  
		Last Modified: Tue, 16 Oct 2018 14:58:57 GMT  
		Size: 2.9 KB (2913 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afa4014a21946148e4ad7fd5c767d201437427d0eb6a95713f9efdde2cffb7b4`  
		Last Modified: Tue, 16 Oct 2018 14:59:09 GMT  
		Size: 21.7 MB (21658871 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf3be080800c135cf0e2f8ccb3cc2653f07a354e29745042b436f9a41c1422f0`  
		Last Modified: Tue, 16 Oct 2018 14:58:58 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbc817ddb37eee1330f547be7e9849abfe668ae532f496391fd4da952bf18fb6`  
		Last Modified: Tue, 16 Oct 2018 14:58:58 GMT  
		Size: 211.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60368c7fa1f3ebbfad61fc3428268c2ddc5c24b189f97d286582c36ef574487a`  
		Last Modified: Tue, 16 Oct 2018 14:58:58 GMT  
		Size: 1.2 KB (1167 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `influxdb:1.5.4` - linux; arm64 variant v8

```console
$ docker pull influxdb@sha256:68d80bd328266854b299bd10bb6cb35cb401c4ab70b3c854d0f90491e1e16462
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **77.9 MB (77917273 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:37fe3f02914eb0243141c0a859c78c8860a9f497cca9619156db7bff8a334f45`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Tue, 16 Oct 2018 08:43:08 GMT
ADD file:961d2f24a0cebfcdd333e000ed4488e5c4f4d2a3d11056c45934d647caed5845 in / 
# Tue, 16 Oct 2018 08:43:10 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 12:01:13 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 12:01:39 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 17 Oct 2018 02:40:46 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Wed, 17 Oct 2018 02:40:47 GMT
ENV INFLUXDB_VERSION=1.5.4
# Wed, 17 Oct 2018 02:42:58 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     gpg --batch --verify influxdb_${INFLUXDB_VERSION}_${ARCH}.deb.asc influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     dpkg -i influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     rm -f influxdb_${INFLUXDB_VERSION}_${ARCH}.deb*
# Wed, 17 Oct 2018 02:43:00 GMT
COPY file:3ee2bc0321c2aa2451df7a508649c3a54f0eebc1ef9b8a24967c58105b4d3160 in /etc/influxdb/influxdb.conf 
# Wed, 17 Oct 2018 02:43:01 GMT
EXPOSE 8086/tcp
# Wed, 17 Oct 2018 02:43:03 GMT
VOLUME [/var/lib/influxdb]
# Wed, 17 Oct 2018 02:43:04 GMT
COPY file:098affa3d1b749dacb263ddacfd86a5de1f598d6ba1f7c789ce482c66ee9c80b in /entrypoint.sh 
# Wed, 17 Oct 2018 02:43:05 GMT
COPY file:44e0050f3b04248a6900eace944c581b13b4ad9af1e5cfb91d837cb5e24356e6 in /init-influxdb.sh 
# Wed, 17 Oct 2018 02:43:06 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 17 Oct 2018 02:43:09 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:54fc83a09c68f915c1e318f4b118a467a545027084dd28edbdfded4ea6772e9d`  
		Last Modified: Tue, 16 Oct 2018 08:49:44 GMT  
		Size: 43.1 MB (43123597 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:742d3549b4ad9fe47f3e3bf2ee373b97068548f65584a6d259dfa601721e2f51`  
		Last Modified: Tue, 16 Oct 2018 12:26:08 GMT  
		Size: 9.7 MB (9690405 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6c71b9867c5efaf04365448a7b025ba50a926e7c1daae8ee9e73b149b322ae8`  
		Last Modified: Tue, 16 Oct 2018 12:26:05 GMT  
		Size: 4.1 MB (4088398 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2a88a6f61fbb6add9ba96198af6b9ec64cbf52eb0145c467fcfd64dad29da8d`  
		Last Modified: Wed, 17 Oct 2018 02:50:37 GMT  
		Size: 2.9 KB (2886 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f06c64785f18860f9292c1d1942e95b30b715632dfaf5798e5a50a7839d34d1`  
		Last Modified: Wed, 17 Oct 2018 02:51:01 GMT  
		Size: 21.0 MB (21010387 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67ea0bb6265395fb2cc855cee7608566d44c167537683a5ce38faaf211d0e949`  
		Last Modified: Wed, 17 Oct 2018 02:50:37 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b71fd587b500fc1b6b4c9240af6cfe6fddce37f8c72b7888f72578cba9e62898`  
		Last Modified: Wed, 17 Oct 2018 02:50:37 GMT  
		Size: 211.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d71a4746e2163ef22bb760ad3fc8ac089151e42bc36c8b612c6fda68b5a8013`  
		Last Modified: Wed, 17 Oct 2018 02:50:37 GMT  
		Size: 1.2 KB (1167 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `influxdb:1.5.4-alpine`

```console
$ docker pull influxdb@sha256:67d78b6643fee48d1f6ca7b206fff787ecc5d7ca4857f403ee925a77ec96214d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `influxdb:1.5.4-alpine` - linux; amd64

```console
$ docker pull influxdb@sha256:8cba4d9385f2ec0cdf8c57d9e6d3910ab675b2a7b46548202de2af4f2dc21d41
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.4 MB (26444744 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2e6a1b1bb571697520da9420c6d0fe8b75a1eb221798ae21b09349633e170ed1`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Tue, 11 Sep 2018 22:19:27 GMT
ADD file:ad486f580145bd2de2441f0846f0bfa62cd1f6d5cb374c28d29ef1ca785a0bbc in / 
# Tue, 11 Sep 2018 22:19:28 GMT
CMD ["/bin/sh"]
# Tue, 11 Sep 2018 22:45:27 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf
# Tue, 11 Sep 2018 23:34:40 GMT
RUN apk add --no-cache tzdata bash
# Tue, 11 Sep 2018 23:34:41 GMT
ENV INFLUXDB_VERSION=1.5.4
# Tue, 11 Sep 2018 23:34:47 GMT
RUN set -ex &&     apk add --no-cache --virtual .build-deps wget gnupg tar ca-certificates &&     update-ca-certificates &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/influxdb/releases/influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/influxdb/releases/influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/influxdb-*/influxdb.conf &&     chmod +x /usr/src/influxdb-*/* &&     cp -a /usr/src/influxdb-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Tue, 11 Sep 2018 23:34:48 GMT
COPY file:3ee2bc0321c2aa2451df7a508649c3a54f0eebc1ef9b8a24967c58105b4d3160 in /etc/influxdb/influxdb.conf 
# Tue, 11 Sep 2018 23:34:48 GMT
EXPOSE 8086/tcp
# Tue, 11 Sep 2018 23:34:48 GMT
VOLUME [/var/lib/influxdb]
# Tue, 11 Sep 2018 23:34:48 GMT
COPY file:098affa3d1b749dacb263ddacfd86a5de1f598d6ba1f7c789ce482c66ee9c80b in /entrypoint.sh 
# Tue, 11 Sep 2018 23:34:49 GMT
COPY file:44e0050f3b04248a6900eace944c581b13b4ad9af1e5cfb91d837cb5e24356e6 in /init-influxdb.sh 
# Tue, 11 Sep 2018 23:34:49 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 11 Sep 2018 23:34:49 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:3489d1c4660eacaadef3acfc3512c785acde2333b5e6e9387f43490a766382bf`  
		Last Modified: Tue, 11 Sep 2018 22:21:09 GMT  
		Size: 2.0 MB (2016693 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad45804dc73d879f10b8bee29ee78a7554f30eda7a7a23fa9b5a98c6b7431397`  
		Last Modified: Tue, 11 Sep 2018 22:46:05 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54ead0e4c75aae70ed9b7c002be7dd587da637e1a462bd7a5b7aff856884d2f6`  
		Last Modified: Tue, 11 Sep 2018 23:36:37 GMT  
		Size: 1.5 MB (1513052 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3842ffe4e91ef4dccee32f774be1a21f51755dd8404fc1ff8867ad10423d1860`  
		Last Modified: Tue, 11 Sep 2018 23:36:44 GMT  
		Size: 22.9 MB (22913246 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:506cf50518bb90ef635bb799b4cd68b7f67a33b8b51dd113f53ed74887aa22a6`  
		Last Modified: Tue, 11 Sep 2018 23:36:37 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85bf65b9aee8ef984669ca21c87d0074b3787033a3ac1cf6f9f923c274553af1`  
		Last Modified: Tue, 11 Sep 2018 23:36:37 GMT  
		Size: 211.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f96e94c7cf4f8e3f3d8606b9d57c4966627aa583d16bc4d017d263b366756131`  
		Last Modified: Tue, 11 Sep 2018 23:36:37 GMT  
		Size: 1.2 KB (1163 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `influxdb:1.5.4-data`

```console
$ docker pull influxdb@sha256:3a36b1b69e95d27c9a6b48bfbbcfc1151658410897cd19cbcb908981a1d4e336
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `influxdb:1.5.4-data` - linux; amd64

```console
$ docker pull influxdb@sha256:1381b048b2547bf7ed744319b0e73c2e8f4f897af6af8ac9cebabfcb06c34896
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **84.2 MB (84173171 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b75c76491777cfdc2d7212a49195f8aa6eecb8e5bf77910f6dbaa9c09c4f5d35`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Mon, 15 Oct 2018 23:24:20 GMT
ADD file:b3598c18dc395846ab2c5e4e8422c4a5dad7bc3b5b08c09ebceee80989904641 in / 
# Mon, 15 Oct 2018 23:24:21 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 01:00:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 01:00:57 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 16 Oct 2018 10:54:30 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Tue, 16 Oct 2018 10:54:58 GMT
ENV INFLUXDB_VERSION=1.5.4-c1.5.4
# Tue, 16 Oct 2018 10:55:03 GMT
RUN wget --no-verbose https://dl.influxdata.com/enterprise/releases/influxdb-data_${INFLUXDB_VERSION}_amd64.deb.asc &&     wget --no-verbose https://dl.influxdata.com/enterprise/releases/influxdb-data_${INFLUXDB_VERSION}_amd64.deb &&     gpg --batch --verify influxdb-data_${INFLUXDB_VERSION}_amd64.deb.asc influxdb-data_${INFLUXDB_VERSION}_amd64.deb &&     dpkg -i influxdb-data_${INFLUXDB_VERSION}_amd64.deb &&     rm -f influxdb-data_${INFLUXDB_VERSION}_amd64.deb*
# Tue, 16 Oct 2018 10:55:04 GMT
COPY file:a7fc957fd6465cc132b5d41618061e4ac55bd347b790cd87cc496ab4f67a274b in /etc/influxdb/influxdb.conf 
# Tue, 16 Oct 2018 10:55:04 GMT
EXPOSE 8086/tcp
# Tue, 16 Oct 2018 10:55:04 GMT
VOLUME [/var/lib/influxdb]
# Tue, 16 Oct 2018 10:55:05 GMT
COPY file:efb819384a9e7a972c15df74e1d18c7d6296e633a7c533def9a6d400b69468fc in /entrypoint.sh 
# Tue, 16 Oct 2018 10:55:05 GMT
COPY file:44e0050f3b04248a6900eace944c581b13b4ad9af1e5cfb91d837cb5e24356e6 in /init-influxdb.sh 
# Tue, 16 Oct 2018 10:55:06 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 16 Oct 2018 10:55:06 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:bc9ab73e5b14b9fbd3687a4d8c1f1360533d6ee9ffc3f5ecc6630794b40257b7`  
		Last Modified: Mon, 15 Oct 2018 23:33:47 GMT  
		Size: 45.3 MB (45309934 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:193a6306c92af328dbd41bbbd3200a2c90802624cccfe5725223324428110d7f`  
		Last Modified: Tue, 16 Oct 2018 01:13:35 GMT  
		Size: 10.7 MB (10740016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5c3f8c317dc30af45021092a3d76f16ba7aa1ee5f18fec742c84d4960818580`  
		Last Modified: Tue, 16 Oct 2018 01:13:33 GMT  
		Size: 4.3 MB (4336053 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4997ec2fe070d4927eb940dbec9169bad86195ff650b88a58b1592f55bbc00d0`  
		Last Modified: Tue, 16 Oct 2018 10:57:16 GMT  
		Size: 2.9 KB (2887 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b6eb05d240602ded9e5d5d35d5904534fe5be58884ddb5d4aa425e535645cfe`  
		Last Modified: Tue, 16 Oct 2018 10:58:06 GMT  
		Size: 23.8 MB (23782625 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74209e3bbd1b893e6a359c30c94fb282275790c98f780471f376c4a0b5927b54`  
		Last Modified: Tue, 16 Oct 2018 10:57:58 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:937141f7f294bcfe4d6febf687270c496b1eacc1b248b7aaeee0ff67bdcaf3e1`  
		Last Modified: Tue, 16 Oct 2018 10:57:58 GMT  
		Size: 251.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7424d6cac51b939714b837b3f5fdb86d66ab6da58a1ea8b3f896272e70308586`  
		Last Modified: Tue, 16 Oct 2018 10:57:57 GMT  
		Size: 1.2 KB (1165 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `influxdb:1.5.4-data-alpine`

```console
$ docker pull influxdb@sha256:e357d9a15026fb9c3e01425c9cd0b415b08342bcaa2fcd8f48c34d7ca38afb52
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `influxdb:1.5.4-data-alpine` - linux; amd64

```console
$ docker pull influxdb@sha256:c599bda9558fa036f9ca8c72e501bb72779a432444ac131d263c34f5a05f2081
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.5 MB (27546695 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f4295ded900125cab60ea7639bcafb10174be9444a6ab2d1c1cc51d65745667f`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Tue, 11 Sep 2018 22:19:27 GMT
ADD file:ad486f580145bd2de2441f0846f0bfa62cd1f6d5cb374c28d29ef1ca785a0bbc in / 
# Tue, 11 Sep 2018 22:19:28 GMT
CMD ["/bin/sh"]
# Tue, 11 Sep 2018 22:45:27 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf
# Tue, 11 Sep 2018 23:35:01 GMT
RUN apk add --no-cache tzdata bash ca-certificates &&     update-ca-certificates
# Tue, 11 Sep 2018 23:35:01 GMT
ENV INFLUXDB_VERSION=1.5.4-c1.5.4
# Tue, 11 Sep 2018 23:35:07 GMT
RUN set -ex &&     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/enterprise/releases/influxdb-data-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/enterprise/releases/influxdb-data-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify influxdb-data-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc influxdb-data-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf influxdb-data-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/influxdb-*/influxdb.conf &&     chmod +x /usr/src/influxdb-*/* &&     cp -a /usr/src/influxdb-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Tue, 11 Sep 2018 23:35:07 GMT
COPY file:a7fc957fd6465cc132b5d41618061e4ac55bd347b790cd87cc496ab4f67a274b in /etc/influxdb/influxdb.conf 
# Tue, 11 Sep 2018 23:35:08 GMT
EXPOSE 8086/tcp
# Tue, 11 Sep 2018 23:35:08 GMT
VOLUME [/var/lib/influxdb]
# Tue, 11 Sep 2018 23:35:08 GMT
COPY file:efb819384a9e7a972c15df74e1d18c7d6296e633a7c533def9a6d400b69468fc in /entrypoint.sh 
# Tue, 11 Sep 2018 23:35:08 GMT
COPY file:44e0050f3b04248a6900eace944c581b13b4ad9af1e5cfb91d837cb5e24356e6 in /init-influxdb.sh 
# Tue, 11 Sep 2018 23:35:09 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 11 Sep 2018 23:35:09 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:3489d1c4660eacaadef3acfc3512c785acde2333b5e6e9387f43490a766382bf`  
		Last Modified: Tue, 11 Sep 2018 22:21:09 GMT  
		Size: 2.0 MB (2016693 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad45804dc73d879f10b8bee29ee78a7554f30eda7a7a23fa9b5a98c6b7431397`  
		Last Modified: Tue, 11 Sep 2018 22:46:05 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f272f056a6051f883f4c637e529398b6d9e66d72f5ddf6ad9cb3ec3b6aee709b`  
		Last Modified: Tue, 11 Sep 2018 23:36:59 GMT  
		Size: 1.9 MB (1859180 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:face44ff6751cd50e00c0600693d35d8de08b6792e887419476caa36b572b17c`  
		Last Modified: Tue, 11 Sep 2018 23:37:04 GMT  
		Size: 23.7 MB (23669011 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26e8aece8b6d322eefe90f4b81b76f3355a5e461b32c2126204f195dce6c424f`  
		Last Modified: Tue, 11 Sep 2018 23:36:58 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6fabe40cef15f22003203ea7aac447441782752806a96c36a5d1f71b517e6d4`  
		Last Modified: Tue, 11 Sep 2018 23:36:58 GMT  
		Size: 252.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b741a92b29377c4b16b7ff6f1a3af1aa2a2be11dc72ac119c0ea021180a1a34`  
		Last Modified: Tue, 11 Sep 2018 23:36:58 GMT  
		Size: 1.2 KB (1166 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `influxdb:1.5.4-meta`

```console
$ docker pull influxdb@sha256:bb0cf59f8aa0c723eeb9965f8bec9cd8d9d0620ffa5f041394ffa9c7073450cc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `influxdb:1.5.4-meta` - linux; amd64

```console
$ docker pull influxdb@sha256:57470f858115897e06ba1e4b571eff999ff3bcfd98ab5889ad96044ead3528ec
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **71.6 MB (71583486 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3b438dbe679df17078931bdf19c5ec2456469a4388f74fb12f7616e21dcab614`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd-meta"]`

```dockerfile
# Mon, 15 Oct 2018 23:24:20 GMT
ADD file:b3598c18dc395846ab2c5e4e8422c4a5dad7bc3b5b08c09ebceee80989904641 in / 
# Mon, 15 Oct 2018 23:24:21 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 01:00:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 01:00:57 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 16 Oct 2018 10:54:30 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Tue, 16 Oct 2018 10:54:58 GMT
ENV INFLUXDB_VERSION=1.5.4-c1.5.4
# Tue, 16 Oct 2018 10:55:27 GMT
RUN wget --no-verbose https://dl.influxdata.com/enterprise/releases/influxdb-meta_${INFLUXDB_VERSION}_amd64.deb.asc &&     wget --no-verbose https://dl.influxdata.com/enterprise/releases/influxdb-meta_${INFLUXDB_VERSION}_amd64.deb &&     gpg --batch --verify influxdb-meta_${INFLUXDB_VERSION}_amd64.deb.asc influxdb-meta_${INFLUXDB_VERSION}_amd64.deb &&     dpkg -i influxdb-meta_${INFLUXDB_VERSION}_amd64.deb &&     rm -f influxdb-meta_${INFLUXDB_VERSION}_amd64.deb*
# Tue, 16 Oct 2018 10:55:28 GMT
COPY file:95a6fe33e203909c093135fff9ff2b4cdc02ca4f1fe1dec109b5a9cf6b7a0946 in /etc/influxdb/influxdb-meta.conf 
# Tue, 16 Oct 2018 10:55:28 GMT
EXPOSE 8091/tcp
# Tue, 16 Oct 2018 10:55:29 GMT
VOLUME [/var/lib/influxdb]
# Tue, 16 Oct 2018 10:55:29 GMT
COPY file:b4fa000cf2aff5bf4e5093021ca6255fffa17c43ae18eb4c55ae28a3cc2dc281 in /entrypoint.sh 
# Tue, 16 Oct 2018 10:55:30 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 16 Oct 2018 10:55:30 GMT
CMD ["influxd-meta"]
```

-	Layers:
	-	`sha256:bc9ab73e5b14b9fbd3687a4d8c1f1360533d6ee9ffc3f5ecc6630794b40257b7`  
		Last Modified: Mon, 15 Oct 2018 23:33:47 GMT  
		Size: 45.3 MB (45309934 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:193a6306c92af328dbd41bbbd3200a2c90802624cccfe5725223324428110d7f`  
		Last Modified: Tue, 16 Oct 2018 01:13:35 GMT  
		Size: 10.7 MB (10740016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5c3f8c317dc30af45021092a3d76f16ba7aa1ee5f18fec742c84d4960818580`  
		Last Modified: Tue, 16 Oct 2018 01:13:33 GMT  
		Size: 4.3 MB (4336053 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4997ec2fe070d4927eb940dbec9169bad86195ff650b88a58b1592f55bbc00d0`  
		Last Modified: Tue, 16 Oct 2018 10:57:16 GMT  
		Size: 2.9 KB (2887 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d29b68351ef36b638a4db69ad7c91d73a91664b992fa1d510754d8c5ea24a598`  
		Last Modified: Tue, 16 Oct 2018 10:58:39 GMT  
		Size: 11.2 MB (11194027 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3e021579c03ce2846e4715db6f281895dbb38dd5df4740ea3654dc7e0eab370`  
		Last Modified: Tue, 16 Oct 2018 10:58:35 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf374e87a0d4392ef938a6e4033dd207eb26c75adaf4ad9156ceb861dbbd7dd4`  
		Last Modified: Tue, 16 Oct 2018 10:58:35 GMT  
		Size: 375.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `influxdb:1.5.4-meta-alpine`

```console
$ docker pull influxdb@sha256:4dbea01e855279f8aae34b1981b0bedc70ff3e47ec1c0a3d3de4f5071fbf1604
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `influxdb:1.5.4-meta-alpine` - linux; amd64

```console
$ docker pull influxdb@sha256:dd0b2005ce30bb0e109ce6cb72733b09a721fc702dd0b8b2ff312551605d4c81
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.0 MB (15027200 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5db6e7e2693317e11d9a4599fa460bc7ab7eac0633cbdce817457268f543b2e8`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd-meta"]`

```dockerfile
# Tue, 11 Sep 2018 22:19:27 GMT
ADD file:ad486f580145bd2de2441f0846f0bfa62cd1f6d5cb374c28d29ef1ca785a0bbc in / 
# Tue, 11 Sep 2018 22:19:28 GMT
CMD ["/bin/sh"]
# Tue, 11 Sep 2018 22:45:27 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf
# Tue, 11 Sep 2018 23:35:01 GMT
RUN apk add --no-cache tzdata bash ca-certificates &&     update-ca-certificates
# Tue, 11 Sep 2018 23:35:01 GMT
ENV INFLUXDB_VERSION=1.5.4-c1.5.4
# Tue, 11 Sep 2018 23:35:24 GMT
RUN set -ex &&     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/enterprise/releases/influxdb-meta-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/enterprise/releases/influxdb-meta-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify influxdb-meta-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc influxdb-meta-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf influxdb-meta-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/influxdb-*/influxdb-meta.conf &&     chmod +x /usr/src/influxdb-*/* &&     cp -a /usr/src/influxdb-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Tue, 11 Sep 2018 23:35:24 GMT
COPY file:95a6fe33e203909c093135fff9ff2b4cdc02ca4f1fe1dec109b5a9cf6b7a0946 in /etc/influxdb/influxdb-meta.conf 
# Tue, 11 Sep 2018 23:35:24 GMT
EXPOSE 8091/tcp
# Tue, 11 Sep 2018 23:35:24 GMT
VOLUME [/var/lib/influxdb]
# Tue, 11 Sep 2018 23:35:25 GMT
COPY file:b4fa000cf2aff5bf4e5093021ca6255fffa17c43ae18eb4c55ae28a3cc2dc281 in /entrypoint.sh 
# Tue, 11 Sep 2018 23:35:25 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 11 Sep 2018 23:35:25 GMT
CMD ["influxd-meta"]
```

-	Layers:
	-	`sha256:3489d1c4660eacaadef3acfc3512c785acde2333b5e6e9387f43490a766382bf`  
		Last Modified: Tue, 11 Sep 2018 22:21:09 GMT  
		Size: 2.0 MB (2016693 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad45804dc73d879f10b8bee29ee78a7554f30eda7a7a23fa9b5a98c6b7431397`  
		Last Modified: Tue, 11 Sep 2018 22:46:05 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f272f056a6051f883f4c637e529398b6d9e66d72f5ddf6ad9cb3ec3b6aee709b`  
		Last Modified: Tue, 11 Sep 2018 23:36:59 GMT  
		Size: 1.9 MB (1859180 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6a3bf805d06a06655166f0eb123d8a00e59fc2202830e657bb45ad32a787537`  
		Last Modified: Tue, 11 Sep 2018 23:37:20 GMT  
		Size: 11.2 MB (11150605 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d750df4119657c5a7ec3dcf33bbdacc77fbbf9d321985b1a4c0484f6ccb24ec5`  
		Last Modified: Tue, 11 Sep 2018 23:37:17 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb179f7e4ce765de67b9b5515fd92afef4a1bc086bd0097110630ade755c54a0`  
		Last Modified: Tue, 11 Sep 2018 23:37:17 GMT  
		Size: 374.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `influxdb:1.5-alpine`

```console
$ docker pull influxdb@sha256:67d78b6643fee48d1f6ca7b206fff787ecc5d7ca4857f403ee925a77ec96214d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `influxdb:1.5-alpine` - linux; amd64

```console
$ docker pull influxdb@sha256:8cba4d9385f2ec0cdf8c57d9e6d3910ab675b2a7b46548202de2af4f2dc21d41
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.4 MB (26444744 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2e6a1b1bb571697520da9420c6d0fe8b75a1eb221798ae21b09349633e170ed1`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Tue, 11 Sep 2018 22:19:27 GMT
ADD file:ad486f580145bd2de2441f0846f0bfa62cd1f6d5cb374c28d29ef1ca785a0bbc in / 
# Tue, 11 Sep 2018 22:19:28 GMT
CMD ["/bin/sh"]
# Tue, 11 Sep 2018 22:45:27 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf
# Tue, 11 Sep 2018 23:34:40 GMT
RUN apk add --no-cache tzdata bash
# Tue, 11 Sep 2018 23:34:41 GMT
ENV INFLUXDB_VERSION=1.5.4
# Tue, 11 Sep 2018 23:34:47 GMT
RUN set -ex &&     apk add --no-cache --virtual .build-deps wget gnupg tar ca-certificates &&     update-ca-certificates &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/influxdb/releases/influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/influxdb/releases/influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/influxdb-*/influxdb.conf &&     chmod +x /usr/src/influxdb-*/* &&     cp -a /usr/src/influxdb-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Tue, 11 Sep 2018 23:34:48 GMT
COPY file:3ee2bc0321c2aa2451df7a508649c3a54f0eebc1ef9b8a24967c58105b4d3160 in /etc/influxdb/influxdb.conf 
# Tue, 11 Sep 2018 23:34:48 GMT
EXPOSE 8086/tcp
# Tue, 11 Sep 2018 23:34:48 GMT
VOLUME [/var/lib/influxdb]
# Tue, 11 Sep 2018 23:34:48 GMT
COPY file:098affa3d1b749dacb263ddacfd86a5de1f598d6ba1f7c789ce482c66ee9c80b in /entrypoint.sh 
# Tue, 11 Sep 2018 23:34:49 GMT
COPY file:44e0050f3b04248a6900eace944c581b13b4ad9af1e5cfb91d837cb5e24356e6 in /init-influxdb.sh 
# Tue, 11 Sep 2018 23:34:49 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 11 Sep 2018 23:34:49 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:3489d1c4660eacaadef3acfc3512c785acde2333b5e6e9387f43490a766382bf`  
		Last Modified: Tue, 11 Sep 2018 22:21:09 GMT  
		Size: 2.0 MB (2016693 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad45804dc73d879f10b8bee29ee78a7554f30eda7a7a23fa9b5a98c6b7431397`  
		Last Modified: Tue, 11 Sep 2018 22:46:05 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54ead0e4c75aae70ed9b7c002be7dd587da637e1a462bd7a5b7aff856884d2f6`  
		Last Modified: Tue, 11 Sep 2018 23:36:37 GMT  
		Size: 1.5 MB (1513052 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3842ffe4e91ef4dccee32f774be1a21f51755dd8404fc1ff8867ad10423d1860`  
		Last Modified: Tue, 11 Sep 2018 23:36:44 GMT  
		Size: 22.9 MB (22913246 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:506cf50518bb90ef635bb799b4cd68b7f67a33b8b51dd113f53ed74887aa22a6`  
		Last Modified: Tue, 11 Sep 2018 23:36:37 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85bf65b9aee8ef984669ca21c87d0074b3787033a3ac1cf6f9f923c274553af1`  
		Last Modified: Tue, 11 Sep 2018 23:36:37 GMT  
		Size: 211.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f96e94c7cf4f8e3f3d8606b9d57c4966627aa583d16bc4d017d263b366756131`  
		Last Modified: Tue, 11 Sep 2018 23:36:37 GMT  
		Size: 1.2 KB (1163 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `influxdb:1.5-data`

```console
$ docker pull influxdb@sha256:3a36b1b69e95d27c9a6b48bfbbcfc1151658410897cd19cbcb908981a1d4e336
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `influxdb:1.5-data` - linux; amd64

```console
$ docker pull influxdb@sha256:1381b048b2547bf7ed744319b0e73c2e8f4f897af6af8ac9cebabfcb06c34896
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **84.2 MB (84173171 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b75c76491777cfdc2d7212a49195f8aa6eecb8e5bf77910f6dbaa9c09c4f5d35`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Mon, 15 Oct 2018 23:24:20 GMT
ADD file:b3598c18dc395846ab2c5e4e8422c4a5dad7bc3b5b08c09ebceee80989904641 in / 
# Mon, 15 Oct 2018 23:24:21 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 01:00:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 01:00:57 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 16 Oct 2018 10:54:30 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Tue, 16 Oct 2018 10:54:58 GMT
ENV INFLUXDB_VERSION=1.5.4-c1.5.4
# Tue, 16 Oct 2018 10:55:03 GMT
RUN wget --no-verbose https://dl.influxdata.com/enterprise/releases/influxdb-data_${INFLUXDB_VERSION}_amd64.deb.asc &&     wget --no-verbose https://dl.influxdata.com/enterprise/releases/influxdb-data_${INFLUXDB_VERSION}_amd64.deb &&     gpg --batch --verify influxdb-data_${INFLUXDB_VERSION}_amd64.deb.asc influxdb-data_${INFLUXDB_VERSION}_amd64.deb &&     dpkg -i influxdb-data_${INFLUXDB_VERSION}_amd64.deb &&     rm -f influxdb-data_${INFLUXDB_VERSION}_amd64.deb*
# Tue, 16 Oct 2018 10:55:04 GMT
COPY file:a7fc957fd6465cc132b5d41618061e4ac55bd347b790cd87cc496ab4f67a274b in /etc/influxdb/influxdb.conf 
# Tue, 16 Oct 2018 10:55:04 GMT
EXPOSE 8086/tcp
# Tue, 16 Oct 2018 10:55:04 GMT
VOLUME [/var/lib/influxdb]
# Tue, 16 Oct 2018 10:55:05 GMT
COPY file:efb819384a9e7a972c15df74e1d18c7d6296e633a7c533def9a6d400b69468fc in /entrypoint.sh 
# Tue, 16 Oct 2018 10:55:05 GMT
COPY file:44e0050f3b04248a6900eace944c581b13b4ad9af1e5cfb91d837cb5e24356e6 in /init-influxdb.sh 
# Tue, 16 Oct 2018 10:55:06 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 16 Oct 2018 10:55:06 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:bc9ab73e5b14b9fbd3687a4d8c1f1360533d6ee9ffc3f5ecc6630794b40257b7`  
		Last Modified: Mon, 15 Oct 2018 23:33:47 GMT  
		Size: 45.3 MB (45309934 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:193a6306c92af328dbd41bbbd3200a2c90802624cccfe5725223324428110d7f`  
		Last Modified: Tue, 16 Oct 2018 01:13:35 GMT  
		Size: 10.7 MB (10740016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5c3f8c317dc30af45021092a3d76f16ba7aa1ee5f18fec742c84d4960818580`  
		Last Modified: Tue, 16 Oct 2018 01:13:33 GMT  
		Size: 4.3 MB (4336053 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4997ec2fe070d4927eb940dbec9169bad86195ff650b88a58b1592f55bbc00d0`  
		Last Modified: Tue, 16 Oct 2018 10:57:16 GMT  
		Size: 2.9 KB (2887 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b6eb05d240602ded9e5d5d35d5904534fe5be58884ddb5d4aa425e535645cfe`  
		Last Modified: Tue, 16 Oct 2018 10:58:06 GMT  
		Size: 23.8 MB (23782625 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74209e3bbd1b893e6a359c30c94fb282275790c98f780471f376c4a0b5927b54`  
		Last Modified: Tue, 16 Oct 2018 10:57:58 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:937141f7f294bcfe4d6febf687270c496b1eacc1b248b7aaeee0ff67bdcaf3e1`  
		Last Modified: Tue, 16 Oct 2018 10:57:58 GMT  
		Size: 251.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7424d6cac51b939714b837b3f5fdb86d66ab6da58a1ea8b3f896272e70308586`  
		Last Modified: Tue, 16 Oct 2018 10:57:57 GMT  
		Size: 1.2 KB (1165 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `influxdb:1.5-data-alpine`

```console
$ docker pull influxdb@sha256:e357d9a15026fb9c3e01425c9cd0b415b08342bcaa2fcd8f48c34d7ca38afb52
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `influxdb:1.5-data-alpine` - linux; amd64

```console
$ docker pull influxdb@sha256:c599bda9558fa036f9ca8c72e501bb72779a432444ac131d263c34f5a05f2081
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.5 MB (27546695 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f4295ded900125cab60ea7639bcafb10174be9444a6ab2d1c1cc51d65745667f`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Tue, 11 Sep 2018 22:19:27 GMT
ADD file:ad486f580145bd2de2441f0846f0bfa62cd1f6d5cb374c28d29ef1ca785a0bbc in / 
# Tue, 11 Sep 2018 22:19:28 GMT
CMD ["/bin/sh"]
# Tue, 11 Sep 2018 22:45:27 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf
# Tue, 11 Sep 2018 23:35:01 GMT
RUN apk add --no-cache tzdata bash ca-certificates &&     update-ca-certificates
# Tue, 11 Sep 2018 23:35:01 GMT
ENV INFLUXDB_VERSION=1.5.4-c1.5.4
# Tue, 11 Sep 2018 23:35:07 GMT
RUN set -ex &&     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/enterprise/releases/influxdb-data-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/enterprise/releases/influxdb-data-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify influxdb-data-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc influxdb-data-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf influxdb-data-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/influxdb-*/influxdb.conf &&     chmod +x /usr/src/influxdb-*/* &&     cp -a /usr/src/influxdb-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Tue, 11 Sep 2018 23:35:07 GMT
COPY file:a7fc957fd6465cc132b5d41618061e4ac55bd347b790cd87cc496ab4f67a274b in /etc/influxdb/influxdb.conf 
# Tue, 11 Sep 2018 23:35:08 GMT
EXPOSE 8086/tcp
# Tue, 11 Sep 2018 23:35:08 GMT
VOLUME [/var/lib/influxdb]
# Tue, 11 Sep 2018 23:35:08 GMT
COPY file:efb819384a9e7a972c15df74e1d18c7d6296e633a7c533def9a6d400b69468fc in /entrypoint.sh 
# Tue, 11 Sep 2018 23:35:08 GMT
COPY file:44e0050f3b04248a6900eace944c581b13b4ad9af1e5cfb91d837cb5e24356e6 in /init-influxdb.sh 
# Tue, 11 Sep 2018 23:35:09 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 11 Sep 2018 23:35:09 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:3489d1c4660eacaadef3acfc3512c785acde2333b5e6e9387f43490a766382bf`  
		Last Modified: Tue, 11 Sep 2018 22:21:09 GMT  
		Size: 2.0 MB (2016693 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad45804dc73d879f10b8bee29ee78a7554f30eda7a7a23fa9b5a98c6b7431397`  
		Last Modified: Tue, 11 Sep 2018 22:46:05 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f272f056a6051f883f4c637e529398b6d9e66d72f5ddf6ad9cb3ec3b6aee709b`  
		Last Modified: Tue, 11 Sep 2018 23:36:59 GMT  
		Size: 1.9 MB (1859180 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:face44ff6751cd50e00c0600693d35d8de08b6792e887419476caa36b572b17c`  
		Last Modified: Tue, 11 Sep 2018 23:37:04 GMT  
		Size: 23.7 MB (23669011 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26e8aece8b6d322eefe90f4b81b76f3355a5e461b32c2126204f195dce6c424f`  
		Last Modified: Tue, 11 Sep 2018 23:36:58 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6fabe40cef15f22003203ea7aac447441782752806a96c36a5d1f71b517e6d4`  
		Last Modified: Tue, 11 Sep 2018 23:36:58 GMT  
		Size: 252.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b741a92b29377c4b16b7ff6f1a3af1aa2a2be11dc72ac119c0ea021180a1a34`  
		Last Modified: Tue, 11 Sep 2018 23:36:58 GMT  
		Size: 1.2 KB (1166 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `influxdb:1.5-meta`

```console
$ docker pull influxdb@sha256:bb0cf59f8aa0c723eeb9965f8bec9cd8d9d0620ffa5f041394ffa9c7073450cc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `influxdb:1.5-meta` - linux; amd64

```console
$ docker pull influxdb@sha256:57470f858115897e06ba1e4b571eff999ff3bcfd98ab5889ad96044ead3528ec
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **71.6 MB (71583486 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3b438dbe679df17078931bdf19c5ec2456469a4388f74fb12f7616e21dcab614`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd-meta"]`

```dockerfile
# Mon, 15 Oct 2018 23:24:20 GMT
ADD file:b3598c18dc395846ab2c5e4e8422c4a5dad7bc3b5b08c09ebceee80989904641 in / 
# Mon, 15 Oct 2018 23:24:21 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 01:00:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 01:00:57 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 16 Oct 2018 10:54:30 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Tue, 16 Oct 2018 10:54:58 GMT
ENV INFLUXDB_VERSION=1.5.4-c1.5.4
# Tue, 16 Oct 2018 10:55:27 GMT
RUN wget --no-verbose https://dl.influxdata.com/enterprise/releases/influxdb-meta_${INFLUXDB_VERSION}_amd64.deb.asc &&     wget --no-verbose https://dl.influxdata.com/enterprise/releases/influxdb-meta_${INFLUXDB_VERSION}_amd64.deb &&     gpg --batch --verify influxdb-meta_${INFLUXDB_VERSION}_amd64.deb.asc influxdb-meta_${INFLUXDB_VERSION}_amd64.deb &&     dpkg -i influxdb-meta_${INFLUXDB_VERSION}_amd64.deb &&     rm -f influxdb-meta_${INFLUXDB_VERSION}_amd64.deb*
# Tue, 16 Oct 2018 10:55:28 GMT
COPY file:95a6fe33e203909c093135fff9ff2b4cdc02ca4f1fe1dec109b5a9cf6b7a0946 in /etc/influxdb/influxdb-meta.conf 
# Tue, 16 Oct 2018 10:55:28 GMT
EXPOSE 8091/tcp
# Tue, 16 Oct 2018 10:55:29 GMT
VOLUME [/var/lib/influxdb]
# Tue, 16 Oct 2018 10:55:29 GMT
COPY file:b4fa000cf2aff5bf4e5093021ca6255fffa17c43ae18eb4c55ae28a3cc2dc281 in /entrypoint.sh 
# Tue, 16 Oct 2018 10:55:30 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 16 Oct 2018 10:55:30 GMT
CMD ["influxd-meta"]
```

-	Layers:
	-	`sha256:bc9ab73e5b14b9fbd3687a4d8c1f1360533d6ee9ffc3f5ecc6630794b40257b7`  
		Last Modified: Mon, 15 Oct 2018 23:33:47 GMT  
		Size: 45.3 MB (45309934 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:193a6306c92af328dbd41bbbd3200a2c90802624cccfe5725223324428110d7f`  
		Last Modified: Tue, 16 Oct 2018 01:13:35 GMT  
		Size: 10.7 MB (10740016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5c3f8c317dc30af45021092a3d76f16ba7aa1ee5f18fec742c84d4960818580`  
		Last Modified: Tue, 16 Oct 2018 01:13:33 GMT  
		Size: 4.3 MB (4336053 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4997ec2fe070d4927eb940dbec9169bad86195ff650b88a58b1592f55bbc00d0`  
		Last Modified: Tue, 16 Oct 2018 10:57:16 GMT  
		Size: 2.9 KB (2887 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d29b68351ef36b638a4db69ad7c91d73a91664b992fa1d510754d8c5ea24a598`  
		Last Modified: Tue, 16 Oct 2018 10:58:39 GMT  
		Size: 11.2 MB (11194027 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3e021579c03ce2846e4715db6f281895dbb38dd5df4740ea3654dc7e0eab370`  
		Last Modified: Tue, 16 Oct 2018 10:58:35 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf374e87a0d4392ef938a6e4033dd207eb26c75adaf4ad9156ceb861dbbd7dd4`  
		Last Modified: Tue, 16 Oct 2018 10:58:35 GMT  
		Size: 375.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `influxdb:1.5-meta-alpine`

```console
$ docker pull influxdb@sha256:4dbea01e855279f8aae34b1981b0bedc70ff3e47ec1c0a3d3de4f5071fbf1604
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `influxdb:1.5-meta-alpine` - linux; amd64

```console
$ docker pull influxdb@sha256:dd0b2005ce30bb0e109ce6cb72733b09a721fc702dd0b8b2ff312551605d4c81
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.0 MB (15027200 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5db6e7e2693317e11d9a4599fa460bc7ab7eac0633cbdce817457268f543b2e8`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd-meta"]`

```dockerfile
# Tue, 11 Sep 2018 22:19:27 GMT
ADD file:ad486f580145bd2de2441f0846f0bfa62cd1f6d5cb374c28d29ef1ca785a0bbc in / 
# Tue, 11 Sep 2018 22:19:28 GMT
CMD ["/bin/sh"]
# Tue, 11 Sep 2018 22:45:27 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf
# Tue, 11 Sep 2018 23:35:01 GMT
RUN apk add --no-cache tzdata bash ca-certificates &&     update-ca-certificates
# Tue, 11 Sep 2018 23:35:01 GMT
ENV INFLUXDB_VERSION=1.5.4-c1.5.4
# Tue, 11 Sep 2018 23:35:24 GMT
RUN set -ex &&     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/enterprise/releases/influxdb-meta-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/enterprise/releases/influxdb-meta-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify influxdb-meta-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc influxdb-meta-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf influxdb-meta-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/influxdb-*/influxdb-meta.conf &&     chmod +x /usr/src/influxdb-*/* &&     cp -a /usr/src/influxdb-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Tue, 11 Sep 2018 23:35:24 GMT
COPY file:95a6fe33e203909c093135fff9ff2b4cdc02ca4f1fe1dec109b5a9cf6b7a0946 in /etc/influxdb/influxdb-meta.conf 
# Tue, 11 Sep 2018 23:35:24 GMT
EXPOSE 8091/tcp
# Tue, 11 Sep 2018 23:35:24 GMT
VOLUME [/var/lib/influxdb]
# Tue, 11 Sep 2018 23:35:25 GMT
COPY file:b4fa000cf2aff5bf4e5093021ca6255fffa17c43ae18eb4c55ae28a3cc2dc281 in /entrypoint.sh 
# Tue, 11 Sep 2018 23:35:25 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 11 Sep 2018 23:35:25 GMT
CMD ["influxd-meta"]
```

-	Layers:
	-	`sha256:3489d1c4660eacaadef3acfc3512c785acde2333b5e6e9387f43490a766382bf`  
		Last Modified: Tue, 11 Sep 2018 22:21:09 GMT  
		Size: 2.0 MB (2016693 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad45804dc73d879f10b8bee29ee78a7554f30eda7a7a23fa9b5a98c6b7431397`  
		Last Modified: Tue, 11 Sep 2018 22:46:05 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f272f056a6051f883f4c637e529398b6d9e66d72f5ddf6ad9cb3ec3b6aee709b`  
		Last Modified: Tue, 11 Sep 2018 23:36:59 GMT  
		Size: 1.9 MB (1859180 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6a3bf805d06a06655166f0eb123d8a00e59fc2202830e657bb45ad32a787537`  
		Last Modified: Tue, 11 Sep 2018 23:37:20 GMT  
		Size: 11.2 MB (11150605 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d750df4119657c5a7ec3dcf33bbdacc77fbbf9d321985b1a4c0484f6ccb24ec5`  
		Last Modified: Tue, 11 Sep 2018 23:37:17 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb179f7e4ce765de67b9b5515fd92afef4a1bc086bd0097110630ade755c54a0`  
		Last Modified: Tue, 11 Sep 2018 23:37:17 GMT  
		Size: 374.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `influxdb:1.6`

```console
$ docker pull influxdb@sha256:403dc103a5887ca649e4fe9ac7685f9c7dfe170898a5af1722afa640e8d0f3bd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `influxdb:1.6` - linux; amd64

```console
$ docker pull influxdb@sha256:7436b0939bd08a95013fb30cb0ebf64c74f16c37a2b34952d2e0c428a3960bf6
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **85.7 MB (85692566 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:396b2bd13e144d1575d2a5a03cbe23dc700a63bd183b4e7084a2229d61482e5a`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Mon, 15 Oct 2018 23:24:20 GMT
ADD file:b3598c18dc395846ab2c5e4e8422c4a5dad7bc3b5b08c09ebceee80989904641 in / 
# Mon, 15 Oct 2018 23:24:21 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 01:00:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 01:00:57 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 16 Oct 2018 10:54:30 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Wed, 17 Oct 2018 21:33:11 GMT
ENV INFLUXDB_VERSION=1.6.4
# Wed, 17 Oct 2018 21:33:15 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     gpg --batch --verify influxdb_${INFLUXDB_VERSION}_${ARCH}.deb.asc influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     dpkg -i influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     rm -f influxdb_${INFLUXDB_VERSION}_${ARCH}.deb*
# Wed, 17 Oct 2018 21:33:22 GMT
COPY file:3ee2bc0321c2aa2451df7a508649c3a54f0eebc1ef9b8a24967c58105b4d3160 in /etc/influxdb/influxdb.conf 
# Wed, 17 Oct 2018 21:33:22 GMT
EXPOSE 8086/tcp
# Wed, 17 Oct 2018 21:33:22 GMT
VOLUME [/var/lib/influxdb]
# Wed, 17 Oct 2018 21:33:31 GMT
COPY file:098affa3d1b749dacb263ddacfd86a5de1f598d6ba1f7c789ce482c66ee9c80b in /entrypoint.sh 
# Wed, 17 Oct 2018 21:33:31 GMT
COPY file:44e0050f3b04248a6900eace944c581b13b4ad9af1e5cfb91d837cb5e24356e6 in /init-influxdb.sh 
# Wed, 17 Oct 2018 21:33:32 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 17 Oct 2018 21:33:32 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:bc9ab73e5b14b9fbd3687a4d8c1f1360533d6ee9ffc3f5ecc6630794b40257b7`  
		Last Modified: Mon, 15 Oct 2018 23:33:47 GMT  
		Size: 45.3 MB (45309934 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:193a6306c92af328dbd41bbbd3200a2c90802624cccfe5725223324428110d7f`  
		Last Modified: Tue, 16 Oct 2018 01:13:35 GMT  
		Size: 10.7 MB (10740016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5c3f8c317dc30af45021092a3d76f16ba7aa1ee5f18fec742c84d4960818580`  
		Last Modified: Tue, 16 Oct 2018 01:13:33 GMT  
		Size: 4.3 MB (4336053 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4997ec2fe070d4927eb940dbec9169bad86195ff650b88a58b1592f55bbc00d0`  
		Last Modified: Tue, 16 Oct 2018 10:57:16 GMT  
		Size: 2.9 KB (2887 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31b6ef01189292e5c8b7c17b2249ebc28633b0d89d4a351558463cc464d1eee1`  
		Last Modified: Wed, 17 Oct 2018 21:37:41 GMT  
		Size: 25.3 MB (25302074 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10ef92760bb386cc9f294a29b1274daf549f96c43e540960873e5dc7c6b4e2d5`  
		Last Modified: Wed, 17 Oct 2018 21:37:35 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4cd638ec38ff92bf9fea3641a0c90636c898b386f933d3066fd616528234436d`  
		Last Modified: Wed, 17 Oct 2018 21:37:35 GMT  
		Size: 210.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2dc53cc9d0d9f4d7d24b1e521efeb7fcdbfa99c0239e0f815e803fa77a21a209`  
		Last Modified: Wed, 17 Oct 2018 21:37:35 GMT  
		Size: 1.2 KB (1166 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `influxdb:1.6` - linux; arm variant v7

```console
$ docker pull influxdb@sha256:4fba02bde30a43ff0f9d7b31bfd530bc591e6c03df3353e10c594ee887679144
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **79.8 MB (79754277 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e4af05ca6f203625e0e69148b22863851ba2c4bf7ca087e122b61e1e8e346584`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Tue, 16 Oct 2018 12:05:35 GMT
ADD file:5a70dc8c5adc5e530a8fc10745a2fba15ee4379cd2e1adba6e1abfc8353c48d9 in / 
# Tue, 16 Oct 2018 12:05:38 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 12:58:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 12:58:52 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 16 Oct 2018 14:57:55 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Thu, 18 Oct 2018 11:59:04 GMT
ENV INFLUXDB_VERSION=1.6.4
# Thu, 18 Oct 2018 11:59:10 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     gpg --batch --verify influxdb_${INFLUXDB_VERSION}_${ARCH}.deb.asc influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     dpkg -i influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     rm -f influxdb_${INFLUXDB_VERSION}_${ARCH}.deb*
# Thu, 18 Oct 2018 11:59:11 GMT
COPY file:3ee2bc0321c2aa2451df7a508649c3a54f0eebc1ef9b8a24967c58105b4d3160 in /etc/influxdb/influxdb.conf 
# Thu, 18 Oct 2018 11:59:11 GMT
EXPOSE 8086/tcp
# Thu, 18 Oct 2018 11:59:11 GMT
VOLUME [/var/lib/influxdb]
# Thu, 18 Oct 2018 11:59:12 GMT
COPY file:098affa3d1b749dacb263ddacfd86a5de1f598d6ba1f7c789ce482c66ee9c80b in /entrypoint.sh 
# Thu, 18 Oct 2018 11:59:17 GMT
COPY file:44e0050f3b04248a6900eace944c581b13b4ad9af1e5cfb91d837cb5e24356e6 in /init-influxdb.sh 
# Thu, 18 Oct 2018 11:59:21 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 18 Oct 2018 11:59:22 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:773085009f9c7f7b4310a1b0a968c0940440707f9e534ed87f0652baf279811b`  
		Last Modified: Tue, 16 Oct 2018 12:16:00 GMT  
		Size: 42.1 MB (42063035 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15973945ecf58d4573926ba8da5c9aa815d1e14bbc2c8414b0e23d51552f6f3d`  
		Last Modified: Tue, 16 Oct 2018 13:09:51 GMT  
		Size: 9.4 MB (9440339 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e25b539801e1d4c35f7727ce95a197418bbe4cff37e1784aad0325cdfb1673a`  
		Last Modified: Tue, 16 Oct 2018 13:09:50 GMT  
		Size: 3.9 MB (3913013 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:223dbbf02340b8fe3982868e60bd7a5005ab465886417f11771c94b2d5fcedf0`  
		Last Modified: Tue, 16 Oct 2018 14:58:57 GMT  
		Size: 2.9 KB (2913 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea66c5087ac1688c08155d6722cb922e01d9ac715087aa3f013a1426db337f88`  
		Last Modified: Thu, 18 Oct 2018 11:59:43 GMT  
		Size: 24.3 MB (24333378 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9eef4ad3ff49563fa15840bb4b4006491f88e5a82d69543af4d139ba862384a4`  
		Last Modified: Thu, 18 Oct 2018 11:59:35 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9582a8c420d5810183ec692649dca4aa26604de050d6cd91954ce42c403d1bc0`  
		Last Modified: Thu, 18 Oct 2018 11:59:35 GMT  
		Size: 211.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bcee4234bbe48b964cd71f8c131a39eb60f1bcdd2e6436bbabcba1cf09fb36f8`  
		Last Modified: Thu, 18 Oct 2018 11:59:36 GMT  
		Size: 1.2 KB (1165 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `influxdb:1.6` - linux; arm64 variant v8

```console
$ docker pull influxdb@sha256:54b1324d6681c6583ddc92c71704bf65fc8c8c7510383057569b386df1a68e4c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **80.6 MB (80565185 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b9135101a84f65f9f7a00d1a3eee1bdbcbce8b94890833a320acb07c8cab1473`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Tue, 16 Oct 2018 08:43:08 GMT
ADD file:961d2f24a0cebfcdd333e000ed4488e5c4f4d2a3d11056c45934d647caed5845 in / 
# Tue, 16 Oct 2018 08:43:10 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 12:01:13 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 12:01:39 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 17 Oct 2018 02:40:46 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Thu, 18 Oct 2018 08:56:23 GMT
ENV INFLUXDB_VERSION=1.6.4
# Thu, 18 Oct 2018 08:56:40 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     gpg --batch --verify influxdb_${INFLUXDB_VERSION}_${ARCH}.deb.asc influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     dpkg -i influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     rm -f influxdb_${INFLUXDB_VERSION}_${ARCH}.deb*
# Thu, 18 Oct 2018 08:56:47 GMT
COPY file:3ee2bc0321c2aa2451df7a508649c3a54f0eebc1ef9b8a24967c58105b4d3160 in /etc/influxdb/influxdb.conf 
# Thu, 18 Oct 2018 08:56:48 GMT
EXPOSE 8086/tcp
# Thu, 18 Oct 2018 08:56:49 GMT
VOLUME [/var/lib/influxdb]
# Thu, 18 Oct 2018 08:56:50 GMT
COPY file:098affa3d1b749dacb263ddacfd86a5de1f598d6ba1f7c789ce482c66ee9c80b in /entrypoint.sh 
# Thu, 18 Oct 2018 08:56:59 GMT
COPY file:44e0050f3b04248a6900eace944c581b13b4ad9af1e5cfb91d837cb5e24356e6 in /init-influxdb.sh 
# Thu, 18 Oct 2018 08:56:59 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 18 Oct 2018 08:57:00 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:54fc83a09c68f915c1e318f4b118a467a545027084dd28edbdfded4ea6772e9d`  
		Last Modified: Tue, 16 Oct 2018 08:49:44 GMT  
		Size: 43.1 MB (43123597 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:742d3549b4ad9fe47f3e3bf2ee373b97068548f65584a6d259dfa601721e2f51`  
		Last Modified: Tue, 16 Oct 2018 12:26:08 GMT  
		Size: 9.7 MB (9690405 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6c71b9867c5efaf04365448a7b025ba50a926e7c1daae8ee9e73b149b322ae8`  
		Last Modified: Tue, 16 Oct 2018 12:26:05 GMT  
		Size: 4.1 MB (4088398 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2a88a6f61fbb6add9ba96198af6b9ec64cbf52eb0145c467fcfd64dad29da8d`  
		Last Modified: Wed, 17 Oct 2018 02:50:37 GMT  
		Size: 2.9 KB (2886 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01e76cb918fa885108be32aa3a21200a5c63c8469279eb1bf7f4356605f44f6b`  
		Last Modified: Thu, 18 Oct 2018 08:57:30 GMT  
		Size: 23.7 MB (23658298 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1282700bd5abab0eb38fc20f345ccae4fb49cd66ab889556abb668530d9ddb8a`  
		Last Modified: Thu, 18 Oct 2018 08:57:20 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21ea2f7a3f8eaede933ae173132befae9e1048e1cf2af172efea879241bf3c87`  
		Last Modified: Thu, 18 Oct 2018 08:57:20 GMT  
		Size: 211.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa38bd292cf25e322a73981f77a5470764be3217dd1571f9367f620f5cf433ec`  
		Last Modified: Thu, 18 Oct 2018 08:57:20 GMT  
		Size: 1.2 KB (1167 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `influxdb:1.6.4`

```console
$ docker pull influxdb@sha256:403dc103a5887ca649e4fe9ac7685f9c7dfe170898a5af1722afa640e8d0f3bd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `influxdb:1.6.4` - linux; amd64

```console
$ docker pull influxdb@sha256:7436b0939bd08a95013fb30cb0ebf64c74f16c37a2b34952d2e0c428a3960bf6
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **85.7 MB (85692566 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:396b2bd13e144d1575d2a5a03cbe23dc700a63bd183b4e7084a2229d61482e5a`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Mon, 15 Oct 2018 23:24:20 GMT
ADD file:b3598c18dc395846ab2c5e4e8422c4a5dad7bc3b5b08c09ebceee80989904641 in / 
# Mon, 15 Oct 2018 23:24:21 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 01:00:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 01:00:57 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 16 Oct 2018 10:54:30 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Wed, 17 Oct 2018 21:33:11 GMT
ENV INFLUXDB_VERSION=1.6.4
# Wed, 17 Oct 2018 21:33:15 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     gpg --batch --verify influxdb_${INFLUXDB_VERSION}_${ARCH}.deb.asc influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     dpkg -i influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     rm -f influxdb_${INFLUXDB_VERSION}_${ARCH}.deb*
# Wed, 17 Oct 2018 21:33:22 GMT
COPY file:3ee2bc0321c2aa2451df7a508649c3a54f0eebc1ef9b8a24967c58105b4d3160 in /etc/influxdb/influxdb.conf 
# Wed, 17 Oct 2018 21:33:22 GMT
EXPOSE 8086/tcp
# Wed, 17 Oct 2018 21:33:22 GMT
VOLUME [/var/lib/influxdb]
# Wed, 17 Oct 2018 21:33:31 GMT
COPY file:098affa3d1b749dacb263ddacfd86a5de1f598d6ba1f7c789ce482c66ee9c80b in /entrypoint.sh 
# Wed, 17 Oct 2018 21:33:31 GMT
COPY file:44e0050f3b04248a6900eace944c581b13b4ad9af1e5cfb91d837cb5e24356e6 in /init-influxdb.sh 
# Wed, 17 Oct 2018 21:33:32 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 17 Oct 2018 21:33:32 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:bc9ab73e5b14b9fbd3687a4d8c1f1360533d6ee9ffc3f5ecc6630794b40257b7`  
		Last Modified: Mon, 15 Oct 2018 23:33:47 GMT  
		Size: 45.3 MB (45309934 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:193a6306c92af328dbd41bbbd3200a2c90802624cccfe5725223324428110d7f`  
		Last Modified: Tue, 16 Oct 2018 01:13:35 GMT  
		Size: 10.7 MB (10740016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5c3f8c317dc30af45021092a3d76f16ba7aa1ee5f18fec742c84d4960818580`  
		Last Modified: Tue, 16 Oct 2018 01:13:33 GMT  
		Size: 4.3 MB (4336053 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4997ec2fe070d4927eb940dbec9169bad86195ff650b88a58b1592f55bbc00d0`  
		Last Modified: Tue, 16 Oct 2018 10:57:16 GMT  
		Size: 2.9 KB (2887 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31b6ef01189292e5c8b7c17b2249ebc28633b0d89d4a351558463cc464d1eee1`  
		Last Modified: Wed, 17 Oct 2018 21:37:41 GMT  
		Size: 25.3 MB (25302074 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10ef92760bb386cc9f294a29b1274daf549f96c43e540960873e5dc7c6b4e2d5`  
		Last Modified: Wed, 17 Oct 2018 21:37:35 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4cd638ec38ff92bf9fea3641a0c90636c898b386f933d3066fd616528234436d`  
		Last Modified: Wed, 17 Oct 2018 21:37:35 GMT  
		Size: 210.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2dc53cc9d0d9f4d7d24b1e521efeb7fcdbfa99c0239e0f815e803fa77a21a209`  
		Last Modified: Wed, 17 Oct 2018 21:37:35 GMT  
		Size: 1.2 KB (1166 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `influxdb:1.6.4` - linux; arm variant v7

```console
$ docker pull influxdb@sha256:4fba02bde30a43ff0f9d7b31bfd530bc591e6c03df3353e10c594ee887679144
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **79.8 MB (79754277 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e4af05ca6f203625e0e69148b22863851ba2c4bf7ca087e122b61e1e8e346584`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Tue, 16 Oct 2018 12:05:35 GMT
ADD file:5a70dc8c5adc5e530a8fc10745a2fba15ee4379cd2e1adba6e1abfc8353c48d9 in / 
# Tue, 16 Oct 2018 12:05:38 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 12:58:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 12:58:52 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 16 Oct 2018 14:57:55 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Thu, 18 Oct 2018 11:59:04 GMT
ENV INFLUXDB_VERSION=1.6.4
# Thu, 18 Oct 2018 11:59:10 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     gpg --batch --verify influxdb_${INFLUXDB_VERSION}_${ARCH}.deb.asc influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     dpkg -i influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     rm -f influxdb_${INFLUXDB_VERSION}_${ARCH}.deb*
# Thu, 18 Oct 2018 11:59:11 GMT
COPY file:3ee2bc0321c2aa2451df7a508649c3a54f0eebc1ef9b8a24967c58105b4d3160 in /etc/influxdb/influxdb.conf 
# Thu, 18 Oct 2018 11:59:11 GMT
EXPOSE 8086/tcp
# Thu, 18 Oct 2018 11:59:11 GMT
VOLUME [/var/lib/influxdb]
# Thu, 18 Oct 2018 11:59:12 GMT
COPY file:098affa3d1b749dacb263ddacfd86a5de1f598d6ba1f7c789ce482c66ee9c80b in /entrypoint.sh 
# Thu, 18 Oct 2018 11:59:17 GMT
COPY file:44e0050f3b04248a6900eace944c581b13b4ad9af1e5cfb91d837cb5e24356e6 in /init-influxdb.sh 
# Thu, 18 Oct 2018 11:59:21 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 18 Oct 2018 11:59:22 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:773085009f9c7f7b4310a1b0a968c0940440707f9e534ed87f0652baf279811b`  
		Last Modified: Tue, 16 Oct 2018 12:16:00 GMT  
		Size: 42.1 MB (42063035 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15973945ecf58d4573926ba8da5c9aa815d1e14bbc2c8414b0e23d51552f6f3d`  
		Last Modified: Tue, 16 Oct 2018 13:09:51 GMT  
		Size: 9.4 MB (9440339 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e25b539801e1d4c35f7727ce95a197418bbe4cff37e1784aad0325cdfb1673a`  
		Last Modified: Tue, 16 Oct 2018 13:09:50 GMT  
		Size: 3.9 MB (3913013 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:223dbbf02340b8fe3982868e60bd7a5005ab465886417f11771c94b2d5fcedf0`  
		Last Modified: Tue, 16 Oct 2018 14:58:57 GMT  
		Size: 2.9 KB (2913 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea66c5087ac1688c08155d6722cb922e01d9ac715087aa3f013a1426db337f88`  
		Last Modified: Thu, 18 Oct 2018 11:59:43 GMT  
		Size: 24.3 MB (24333378 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9eef4ad3ff49563fa15840bb4b4006491f88e5a82d69543af4d139ba862384a4`  
		Last Modified: Thu, 18 Oct 2018 11:59:35 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9582a8c420d5810183ec692649dca4aa26604de050d6cd91954ce42c403d1bc0`  
		Last Modified: Thu, 18 Oct 2018 11:59:35 GMT  
		Size: 211.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bcee4234bbe48b964cd71f8c131a39eb60f1bcdd2e6436bbabcba1cf09fb36f8`  
		Last Modified: Thu, 18 Oct 2018 11:59:36 GMT  
		Size: 1.2 KB (1165 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `influxdb:1.6.4` - linux; arm64 variant v8

```console
$ docker pull influxdb@sha256:54b1324d6681c6583ddc92c71704bf65fc8c8c7510383057569b386df1a68e4c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **80.6 MB (80565185 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b9135101a84f65f9f7a00d1a3eee1bdbcbce8b94890833a320acb07c8cab1473`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Tue, 16 Oct 2018 08:43:08 GMT
ADD file:961d2f24a0cebfcdd333e000ed4488e5c4f4d2a3d11056c45934d647caed5845 in / 
# Tue, 16 Oct 2018 08:43:10 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 12:01:13 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 12:01:39 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 17 Oct 2018 02:40:46 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Thu, 18 Oct 2018 08:56:23 GMT
ENV INFLUXDB_VERSION=1.6.4
# Thu, 18 Oct 2018 08:56:40 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     gpg --batch --verify influxdb_${INFLUXDB_VERSION}_${ARCH}.deb.asc influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     dpkg -i influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     rm -f influxdb_${INFLUXDB_VERSION}_${ARCH}.deb*
# Thu, 18 Oct 2018 08:56:47 GMT
COPY file:3ee2bc0321c2aa2451df7a508649c3a54f0eebc1ef9b8a24967c58105b4d3160 in /etc/influxdb/influxdb.conf 
# Thu, 18 Oct 2018 08:56:48 GMT
EXPOSE 8086/tcp
# Thu, 18 Oct 2018 08:56:49 GMT
VOLUME [/var/lib/influxdb]
# Thu, 18 Oct 2018 08:56:50 GMT
COPY file:098affa3d1b749dacb263ddacfd86a5de1f598d6ba1f7c789ce482c66ee9c80b in /entrypoint.sh 
# Thu, 18 Oct 2018 08:56:59 GMT
COPY file:44e0050f3b04248a6900eace944c581b13b4ad9af1e5cfb91d837cb5e24356e6 in /init-influxdb.sh 
# Thu, 18 Oct 2018 08:56:59 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 18 Oct 2018 08:57:00 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:54fc83a09c68f915c1e318f4b118a467a545027084dd28edbdfded4ea6772e9d`  
		Last Modified: Tue, 16 Oct 2018 08:49:44 GMT  
		Size: 43.1 MB (43123597 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:742d3549b4ad9fe47f3e3bf2ee373b97068548f65584a6d259dfa601721e2f51`  
		Last Modified: Tue, 16 Oct 2018 12:26:08 GMT  
		Size: 9.7 MB (9690405 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6c71b9867c5efaf04365448a7b025ba50a926e7c1daae8ee9e73b149b322ae8`  
		Last Modified: Tue, 16 Oct 2018 12:26:05 GMT  
		Size: 4.1 MB (4088398 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2a88a6f61fbb6add9ba96198af6b9ec64cbf52eb0145c467fcfd64dad29da8d`  
		Last Modified: Wed, 17 Oct 2018 02:50:37 GMT  
		Size: 2.9 KB (2886 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01e76cb918fa885108be32aa3a21200a5c63c8469279eb1bf7f4356605f44f6b`  
		Last Modified: Thu, 18 Oct 2018 08:57:30 GMT  
		Size: 23.7 MB (23658298 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1282700bd5abab0eb38fc20f345ccae4fb49cd66ab889556abb668530d9ddb8a`  
		Last Modified: Thu, 18 Oct 2018 08:57:20 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21ea2f7a3f8eaede933ae173132befae9e1048e1cf2af172efea879241bf3c87`  
		Last Modified: Thu, 18 Oct 2018 08:57:20 GMT  
		Size: 211.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa38bd292cf25e322a73981f77a5470764be3217dd1571f9367f620f5cf433ec`  
		Last Modified: Thu, 18 Oct 2018 08:57:20 GMT  
		Size: 1.2 KB (1167 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `influxdb:1.6.4-alpine`

```console
$ docker pull influxdb@sha256:64101af66a625c611d2be7ef241075306cc22f18c79837d693b4a29e42854779
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `influxdb:1.6.4-alpine` - linux; amd64

```console
$ docker pull influxdb@sha256:9b8cdb0b088601ff6346acd90d2ba95a7032c43554c1f7658f2d8b14b8d496ed
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **28.9 MB (28946005 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c1a513052162ec1e6fa8bfac2f4934a0c2a194a0b788120fa08a727660c0d1ab`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Tue, 11 Sep 2018 22:19:38 GMT
ADD file:49f9e47e678d868d5b023482aa8dded71276a241a665c4f8b55ca77269321b34 in / 
# Tue, 11 Sep 2018 22:19:39 GMT
CMD ["/bin/sh"]
# Wed, 17 Oct 2018 21:33:51 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf
# Wed, 17 Oct 2018 21:34:01 GMT
RUN apk add --no-cache tzdata bash
# Wed, 17 Oct 2018 21:34:02 GMT
ENV INFLUXDB_VERSION=1.6.4
# Wed, 17 Oct 2018 21:34:10 GMT
RUN set -ex &&     apk add --no-cache --virtual .build-deps wget gnupg tar ca-certificates &&     update-ca-certificates &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/influxdb/releases/influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/influxdb/releases/influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/influxdb-*/influxdb.conf &&     chmod +x /usr/src/influxdb-*/* &&     cp -a /usr/src/influxdb-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Wed, 17 Oct 2018 21:34:12 GMT
COPY file:3ee2bc0321c2aa2451df7a508649c3a54f0eebc1ef9b8a24967c58105b4d3160 in /etc/influxdb/influxdb.conf 
# Wed, 17 Oct 2018 21:34:12 GMT
EXPOSE 8086/tcp
# Wed, 17 Oct 2018 21:34:13 GMT
VOLUME [/var/lib/influxdb]
# Wed, 17 Oct 2018 21:34:13 GMT
COPY file:098affa3d1b749dacb263ddacfd86a5de1f598d6ba1f7c789ce482c66ee9c80b in /entrypoint.sh 
# Wed, 17 Oct 2018 21:34:13 GMT
COPY file:44e0050f3b04248a6900eace944c581b13b4ad9af1e5cfb91d837cb5e24356e6 in /init-influxdb.sh 
# Wed, 17 Oct 2018 21:34:13 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 17 Oct 2018 21:34:14 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:c67f3896b22c1378881cbbb9c9d1edfe881fd07f713371835ef46d93c649684d`  
		Last Modified: Tue, 11 Sep 2018 22:21:16 GMT  
		Size: 2.1 MB (2107175 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a953c286a2ebfe50a094c2300171addc58cd3b3eb94fea15eee7dded61987f85`  
		Last Modified: Wed, 17 Oct 2018 21:38:34 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8d1125333738e6e07ed3c0c60fdc975c65717802204219255d630da1823ab97`  
		Last Modified: Wed, 17 Oct 2018 21:38:34 GMT  
		Size: 1.7 MB (1663553 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0cabf0934ff9e1bbf1ece2362afbfb8ce0ccc95ec1eb1e759ac2e3e3fe885a48`  
		Last Modified: Wed, 17 Oct 2018 21:38:38 GMT  
		Size: 25.2 MB (25173523 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8f1be1922c8c66ef53c9f998045bc3e527d916780fad32b9c8cc8b60aa98161`  
		Last Modified: Wed, 17 Oct 2018 21:38:33 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15d45875c9de4f9a7a084660ed3acb1089e87ec55d771100d9975f9413eea461`  
		Last Modified: Wed, 17 Oct 2018 21:38:33 GMT  
		Size: 211.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a44883c2b65011274a27021a2969b9b0588e63c9b74cd54399e186d7ea4bf3e`  
		Last Modified: Wed, 17 Oct 2018 21:38:33 GMT  
		Size: 1.2 KB (1167 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `influxdb:1.6.4-data`

```console
$ docker pull influxdb@sha256:50ebd9dc16bb48982ba8262191c9dce2e860c7631aea62bc3648b88187a8efee
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `influxdb:1.6.4-data` - linux; amd64

```console
$ docker pull influxdb@sha256:da8f9d6fb0d49774d487492b894d6f1e733c4366799a45c4da7058992f941bd3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **87.0 MB (86962191 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:56abc1ccccf816ca7447cd58b95f1d09f76f15c44d6a306912187c9b2c55e66e`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Mon, 15 Oct 2018 23:24:20 GMT
ADD file:b3598c18dc395846ab2c5e4e8422c4a5dad7bc3b5b08c09ebceee80989904641 in / 
# Mon, 15 Oct 2018 23:24:21 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 01:00:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 01:00:57 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 16 Oct 2018 10:54:30 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Wed, 17 Oct 2018 21:34:33 GMT
ENV INFLUXDB_VERSION=1.6.4-c1.6.4
# Wed, 17 Oct 2018 21:34:38 GMT
RUN wget --no-verbose https://dl.influxdata.com/enterprise/releases/influxdb-data_${INFLUXDB_VERSION}_amd64.deb.asc &&     wget --no-verbose https://dl.influxdata.com/enterprise/releases/influxdb-data_${INFLUXDB_VERSION}_amd64.deb &&     gpg --batch --verify influxdb-data_${INFLUXDB_VERSION}_amd64.deb.asc influxdb-data_${INFLUXDB_VERSION}_amd64.deb &&     dpkg -i influxdb-data_${INFLUXDB_VERSION}_amd64.deb &&     rm -f influxdb-data_${INFLUXDB_VERSION}_amd64.deb*
# Wed, 17 Oct 2018 21:34:43 GMT
COPY file:a7fc957fd6465cc132b5d41618061e4ac55bd347b790cd87cc496ab4f67a274b in /etc/influxdb/influxdb.conf 
# Wed, 17 Oct 2018 21:34:43 GMT
EXPOSE 8086/tcp
# Wed, 17 Oct 2018 21:34:43 GMT
VOLUME [/var/lib/influxdb]
# Wed, 17 Oct 2018 21:34:53 GMT
COPY file:efb819384a9e7a972c15df74e1d18c7d6296e633a7c533def9a6d400b69468fc in /entrypoint.sh 
# Wed, 17 Oct 2018 21:34:53 GMT
COPY file:44e0050f3b04248a6900eace944c581b13b4ad9af1e5cfb91d837cb5e24356e6 in /init-influxdb.sh 
# Wed, 17 Oct 2018 21:35:02 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 17 Oct 2018 21:35:02 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:bc9ab73e5b14b9fbd3687a4d8c1f1360533d6ee9ffc3f5ecc6630794b40257b7`  
		Last Modified: Mon, 15 Oct 2018 23:33:47 GMT  
		Size: 45.3 MB (45309934 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:193a6306c92af328dbd41bbbd3200a2c90802624cccfe5725223324428110d7f`  
		Last Modified: Tue, 16 Oct 2018 01:13:35 GMT  
		Size: 10.7 MB (10740016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5c3f8c317dc30af45021092a3d76f16ba7aa1ee5f18fec742c84d4960818580`  
		Last Modified: Tue, 16 Oct 2018 01:13:33 GMT  
		Size: 4.3 MB (4336053 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4997ec2fe070d4927eb940dbec9169bad86195ff650b88a58b1592f55bbc00d0`  
		Last Modified: Tue, 16 Oct 2018 10:57:16 GMT  
		Size: 2.9 KB (2887 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17eff529c1e78ef9fecfc1165176e5848560ee4e756434e7d5ea7be2df8fef4f`  
		Last Modified: Wed, 17 Oct 2018 21:39:38 GMT  
		Size: 26.6 MB (26571644 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74d6a1b6e98ec408cc517c27fa277cecbe25753f19707fcc24feb2ac33b47038`  
		Last Modified: Wed, 17 Oct 2018 21:39:32 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3d84f3cc19caae09368add9911df1fce396cd836556189cf4dc016be2b1aa77`  
		Last Modified: Wed, 17 Oct 2018 21:39:32 GMT  
		Size: 251.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f33b14228ab1dd38b52918cb70778a37543a0e3f67086af1706b755d4cdfbe1`  
		Last Modified: Wed, 17 Oct 2018 21:39:38 GMT  
		Size: 1.2 KB (1166 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `influxdb:1.6.4-data-alpine`

```console
$ docker pull influxdb@sha256:3bc70200b10adb3df1461ed4d82e935105b08e28bd7436096f479c890f02a5fe
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `influxdb:1.6.4-data-alpine` - linux; amd64

```console
$ docker pull influxdb@sha256:194f44637b467582238ec82c7c345824578792fc853cba790268b1d96d66dfcb
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.5 MB (30524224 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d2e7e52b6eed83dba0edc7b24b28b53983145c7b2cd27038432041b63aa7a6b6`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Tue, 11 Sep 2018 22:19:38 GMT
ADD file:49f9e47e678d868d5b023482aa8dded71276a241a665c4f8b55ca77269321b34 in / 
# Tue, 11 Sep 2018 22:19:39 GMT
CMD ["/bin/sh"]
# Wed, 17 Oct 2018 21:33:51 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf
# Wed, 17 Oct 2018 21:35:22 GMT
RUN apk add --no-cache tzdata bash ca-certificates &&     update-ca-certificates
# Wed, 17 Oct 2018 21:35:31 GMT
ENV INFLUXDB_VERSION=1.6.4-c1.6.4
# Wed, 17 Oct 2018 21:35:38 GMT
RUN set -ex &&     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/enterprise/releases/influxdb-data-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/enterprise/releases/influxdb-data-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify influxdb-data-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc influxdb-data-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf influxdb-data-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/influxdb-*/influxdb.conf &&     chmod +x /usr/src/influxdb-*/* &&     cp -a /usr/src/influxdb-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Wed, 17 Oct 2018 21:35:41 GMT
COPY file:a7fc957fd6465cc132b5d41618061e4ac55bd347b790cd87cc496ab4f67a274b in /etc/influxdb/influxdb.conf 
# Wed, 17 Oct 2018 21:35:41 GMT
EXPOSE 8086/tcp
# Wed, 17 Oct 2018 21:35:41 GMT
VOLUME [/var/lib/influxdb]
# Wed, 17 Oct 2018 21:35:42 GMT
COPY file:efb819384a9e7a972c15df74e1d18c7d6296e633a7c533def9a6d400b69468fc in /entrypoint.sh 
# Wed, 17 Oct 2018 21:35:42 GMT
COPY file:44e0050f3b04248a6900eace944c581b13b4ad9af1e5cfb91d837cb5e24356e6 in /init-influxdb.sh 
# Wed, 17 Oct 2018 21:35:42 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 17 Oct 2018 21:35:42 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:c67f3896b22c1378881cbbb9c9d1edfe881fd07f713371835ef46d93c649684d`  
		Last Modified: Tue, 11 Sep 2018 22:21:16 GMT  
		Size: 2.1 MB (2107175 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a953c286a2ebfe50a094c2300171addc58cd3b3eb94fea15eee7dded61987f85`  
		Last Modified: Wed, 17 Oct 2018 21:38:34 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a15c27853294e1b03bfac1013a903fc9fb399340c552ee9ba3d4bef68c211fd`  
		Last Modified: Wed, 17 Oct 2018 21:40:27 GMT  
		Size: 2.0 MB (1966599 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2b0574055182abd0475617f9d0e8684e751799544d9e6dfb142c95382b54466`  
		Last Modified: Wed, 17 Oct 2018 21:40:32 GMT  
		Size: 26.4 MB (26448639 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db722fa505caec69c98b6fe3716863272d309e33eb377e4ca462942838ad66f8`  
		Last Modified: Wed, 17 Oct 2018 21:40:25 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:152f7c95419bff298bb75de36de1a3111717a7b25d0920945a227b2a612cbbf1`  
		Last Modified: Wed, 17 Oct 2018 21:40:25 GMT  
		Size: 251.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:251dda989f49ecd16585e3da265a23ec0c1c1c30df146d828742c05b83ec8672`  
		Last Modified: Wed, 17 Oct 2018 21:40:25 GMT  
		Size: 1.2 KB (1167 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `influxdb:1.6.4-meta`

```console
$ docker pull influxdb@sha256:ef8beeb1130b05335e8e47427404d6755e22d4c8983d3f6598faeba014ee42a3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `influxdb:1.6.4-meta` - linux; amd64

```console
$ docker pull influxdb@sha256:108be830bb46c8c7c37dff6e913a5a87081ee5a29b696f6df906ed0941fc297e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **72.9 MB (72936171 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:833b879845d0d6c8fce7e4e87d98f0baee5fa4a16f33c8f1213401839a8b3c0a`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd-meta"]`

```dockerfile
# Mon, 15 Oct 2018 23:24:20 GMT
ADD file:b3598c18dc395846ab2c5e4e8422c4a5dad7bc3b5b08c09ebceee80989904641 in / 
# Mon, 15 Oct 2018 23:24:21 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 01:00:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 01:00:57 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 16 Oct 2018 10:54:30 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Wed, 17 Oct 2018 21:34:33 GMT
ENV INFLUXDB_VERSION=1.6.4-c1.6.4
# Wed, 17 Oct 2018 21:36:11 GMT
RUN wget --no-verbose https://dl.influxdata.com/enterprise/releases/influxdb-meta_${INFLUXDB_VERSION}_amd64.deb.asc &&     wget --no-verbose https://dl.influxdata.com/enterprise/releases/influxdb-meta_${INFLUXDB_VERSION}_amd64.deb &&     gpg --batch --verify influxdb-meta_${INFLUXDB_VERSION}_amd64.deb.asc influxdb-meta_${INFLUXDB_VERSION}_amd64.deb &&     dpkg -i influxdb-meta_${INFLUXDB_VERSION}_amd64.deb &&     rm -f influxdb-meta_${INFLUXDB_VERSION}_amd64.deb*
# Wed, 17 Oct 2018 21:36:19 GMT
COPY file:95a6fe33e203909c093135fff9ff2b4cdc02ca4f1fe1dec109b5a9cf6b7a0946 in /etc/influxdb/influxdb-meta.conf 
# Wed, 17 Oct 2018 21:36:19 GMT
EXPOSE 8091/tcp
# Wed, 17 Oct 2018 21:36:19 GMT
VOLUME [/var/lib/influxdb]
# Wed, 17 Oct 2018 21:36:19 GMT
COPY file:b4fa000cf2aff5bf4e5093021ca6255fffa17c43ae18eb4c55ae28a3cc2dc281 in /entrypoint.sh 
# Wed, 17 Oct 2018 21:36:28 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 17 Oct 2018 21:36:28 GMT
CMD ["influxd-meta"]
```

-	Layers:
	-	`sha256:bc9ab73e5b14b9fbd3687a4d8c1f1360533d6ee9ffc3f5ecc6630794b40257b7`  
		Last Modified: Mon, 15 Oct 2018 23:33:47 GMT  
		Size: 45.3 MB (45309934 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:193a6306c92af328dbd41bbbd3200a2c90802624cccfe5725223324428110d7f`  
		Last Modified: Tue, 16 Oct 2018 01:13:35 GMT  
		Size: 10.7 MB (10740016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5c3f8c317dc30af45021092a3d76f16ba7aa1ee5f18fec742c84d4960818580`  
		Last Modified: Tue, 16 Oct 2018 01:13:33 GMT  
		Size: 4.3 MB (4336053 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4997ec2fe070d4927eb940dbec9169bad86195ff650b88a58b1592f55bbc00d0`  
		Last Modified: Tue, 16 Oct 2018 10:57:16 GMT  
		Size: 2.9 KB (2887 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c94a1a06ab1971eb1e859414595283a0da76e8ee9b4220081b8ae8e68ec27e6a`  
		Last Modified: Wed, 17 Oct 2018 21:41:42 GMT  
		Size: 12.5 MB (12546714 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44c64af65a57b4699099479c9f344d8c26080afb8d518ca3c9316e1b0c789eec`  
		Last Modified: Wed, 17 Oct 2018 21:41:40 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c47f82010b112431b07deffeab87db1061fd9df3267bd06f9391048d6b10b1f`  
		Last Modified: Wed, 17 Oct 2018 21:41:40 GMT  
		Size: 372.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `influxdb:1.6.4-meta-alpine`

```console
$ docker pull influxdb@sha256:a4d4bd3f6400a50b2e10c9c3c66bea90d02e870062378ae58b0d14dbd7f65e12
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `influxdb:1.6.4-meta-alpine` - linux; amd64

```console
$ docker pull influxdb@sha256:218e614a543cb75e32402227389c96bbe26ad598cfa0e8cbd73b1fc49a4ae3db
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.6 MB (16578347 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0b2723170f285323ba7f08182c4f8b215282a6f9a176163291618d134b4f33fe`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd-meta"]`

```dockerfile
# Tue, 11 Sep 2018 22:19:38 GMT
ADD file:49f9e47e678d868d5b023482aa8dded71276a241a665c4f8b55ca77269321b34 in / 
# Tue, 11 Sep 2018 22:19:39 GMT
CMD ["/bin/sh"]
# Wed, 17 Oct 2018 21:33:51 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf
# Wed, 17 Oct 2018 21:35:22 GMT
RUN apk add --no-cache tzdata bash ca-certificates &&     update-ca-certificates
# Wed, 17 Oct 2018 21:35:31 GMT
ENV INFLUXDB_VERSION=1.6.4-c1.6.4
# Wed, 17 Oct 2018 21:36:59 GMT
RUN set -ex &&     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/enterprise/releases/influxdb-meta-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/enterprise/releases/influxdb-meta-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify influxdb-meta-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc influxdb-meta-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf influxdb-meta-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/influxdb-*/influxdb-meta.conf &&     chmod +x /usr/src/influxdb-*/* &&     cp -a /usr/src/influxdb-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Wed, 17 Oct 2018 21:37:05 GMT
COPY file:95a6fe33e203909c093135fff9ff2b4cdc02ca4f1fe1dec109b5a9cf6b7a0946 in /etc/influxdb/influxdb-meta.conf 
# Wed, 17 Oct 2018 21:37:05 GMT
EXPOSE 8091/tcp
# Wed, 17 Oct 2018 21:37:05 GMT
VOLUME [/var/lib/influxdb]
# Wed, 17 Oct 2018 21:37:06 GMT
COPY file:b4fa000cf2aff5bf4e5093021ca6255fffa17c43ae18eb4c55ae28a3cc2dc281 in /entrypoint.sh 
# Wed, 17 Oct 2018 21:37:14 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 17 Oct 2018 21:37:14 GMT
CMD ["influxd-meta"]
```

-	Layers:
	-	`sha256:c67f3896b22c1378881cbbb9c9d1edfe881fd07f713371835ef46d93c649684d`  
		Last Modified: Tue, 11 Sep 2018 22:21:16 GMT  
		Size: 2.1 MB (2107175 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a953c286a2ebfe50a094c2300171addc58cd3b3eb94fea15eee7dded61987f85`  
		Last Modified: Wed, 17 Oct 2018 21:38:34 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a15c27853294e1b03bfac1013a903fc9fb399340c552ee9ba3d4bef68c211fd`  
		Last Modified: Wed, 17 Oct 2018 21:40:27 GMT  
		Size: 2.0 MB (1966599 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e70b545858dd5101ed14a5a05fa22b97ef9c03963fb11a055e4cc0eee903ffc4`  
		Last Modified: Wed, 17 Oct 2018 21:42:35 GMT  
		Size: 12.5 MB (12503850 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0af2305248fc83683eab8390b6ad49294d89b3b624dd3ebae2de5ce2a596b75`  
		Last Modified: Wed, 17 Oct 2018 21:42:32 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b077596b60cdd74a1f675b3cf6c41aeacdfcfc2ecd8c154e315b97595154c36`  
		Last Modified: Wed, 17 Oct 2018 21:42:32 GMT  
		Size: 375.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `influxdb:1.6-alpine`

```console
$ docker pull influxdb@sha256:64101af66a625c611d2be7ef241075306cc22f18c79837d693b4a29e42854779
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `influxdb:1.6-alpine` - linux; amd64

```console
$ docker pull influxdb@sha256:9b8cdb0b088601ff6346acd90d2ba95a7032c43554c1f7658f2d8b14b8d496ed
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **28.9 MB (28946005 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c1a513052162ec1e6fa8bfac2f4934a0c2a194a0b788120fa08a727660c0d1ab`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Tue, 11 Sep 2018 22:19:38 GMT
ADD file:49f9e47e678d868d5b023482aa8dded71276a241a665c4f8b55ca77269321b34 in / 
# Tue, 11 Sep 2018 22:19:39 GMT
CMD ["/bin/sh"]
# Wed, 17 Oct 2018 21:33:51 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf
# Wed, 17 Oct 2018 21:34:01 GMT
RUN apk add --no-cache tzdata bash
# Wed, 17 Oct 2018 21:34:02 GMT
ENV INFLUXDB_VERSION=1.6.4
# Wed, 17 Oct 2018 21:34:10 GMT
RUN set -ex &&     apk add --no-cache --virtual .build-deps wget gnupg tar ca-certificates &&     update-ca-certificates &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/influxdb/releases/influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/influxdb/releases/influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/influxdb-*/influxdb.conf &&     chmod +x /usr/src/influxdb-*/* &&     cp -a /usr/src/influxdb-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Wed, 17 Oct 2018 21:34:12 GMT
COPY file:3ee2bc0321c2aa2451df7a508649c3a54f0eebc1ef9b8a24967c58105b4d3160 in /etc/influxdb/influxdb.conf 
# Wed, 17 Oct 2018 21:34:12 GMT
EXPOSE 8086/tcp
# Wed, 17 Oct 2018 21:34:13 GMT
VOLUME [/var/lib/influxdb]
# Wed, 17 Oct 2018 21:34:13 GMT
COPY file:098affa3d1b749dacb263ddacfd86a5de1f598d6ba1f7c789ce482c66ee9c80b in /entrypoint.sh 
# Wed, 17 Oct 2018 21:34:13 GMT
COPY file:44e0050f3b04248a6900eace944c581b13b4ad9af1e5cfb91d837cb5e24356e6 in /init-influxdb.sh 
# Wed, 17 Oct 2018 21:34:13 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 17 Oct 2018 21:34:14 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:c67f3896b22c1378881cbbb9c9d1edfe881fd07f713371835ef46d93c649684d`  
		Last Modified: Tue, 11 Sep 2018 22:21:16 GMT  
		Size: 2.1 MB (2107175 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a953c286a2ebfe50a094c2300171addc58cd3b3eb94fea15eee7dded61987f85`  
		Last Modified: Wed, 17 Oct 2018 21:38:34 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8d1125333738e6e07ed3c0c60fdc975c65717802204219255d630da1823ab97`  
		Last Modified: Wed, 17 Oct 2018 21:38:34 GMT  
		Size: 1.7 MB (1663553 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0cabf0934ff9e1bbf1ece2362afbfb8ce0ccc95ec1eb1e759ac2e3e3fe885a48`  
		Last Modified: Wed, 17 Oct 2018 21:38:38 GMT  
		Size: 25.2 MB (25173523 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8f1be1922c8c66ef53c9f998045bc3e527d916780fad32b9c8cc8b60aa98161`  
		Last Modified: Wed, 17 Oct 2018 21:38:33 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15d45875c9de4f9a7a084660ed3acb1089e87ec55d771100d9975f9413eea461`  
		Last Modified: Wed, 17 Oct 2018 21:38:33 GMT  
		Size: 211.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a44883c2b65011274a27021a2969b9b0588e63c9b74cd54399e186d7ea4bf3e`  
		Last Modified: Wed, 17 Oct 2018 21:38:33 GMT  
		Size: 1.2 KB (1167 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `influxdb:1.6-data`

```console
$ docker pull influxdb@sha256:50ebd9dc16bb48982ba8262191c9dce2e860c7631aea62bc3648b88187a8efee
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `influxdb:1.6-data` - linux; amd64

```console
$ docker pull influxdb@sha256:da8f9d6fb0d49774d487492b894d6f1e733c4366799a45c4da7058992f941bd3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **87.0 MB (86962191 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:56abc1ccccf816ca7447cd58b95f1d09f76f15c44d6a306912187c9b2c55e66e`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Mon, 15 Oct 2018 23:24:20 GMT
ADD file:b3598c18dc395846ab2c5e4e8422c4a5dad7bc3b5b08c09ebceee80989904641 in / 
# Mon, 15 Oct 2018 23:24:21 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 01:00:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 01:00:57 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 16 Oct 2018 10:54:30 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Wed, 17 Oct 2018 21:34:33 GMT
ENV INFLUXDB_VERSION=1.6.4-c1.6.4
# Wed, 17 Oct 2018 21:34:38 GMT
RUN wget --no-verbose https://dl.influxdata.com/enterprise/releases/influxdb-data_${INFLUXDB_VERSION}_amd64.deb.asc &&     wget --no-verbose https://dl.influxdata.com/enterprise/releases/influxdb-data_${INFLUXDB_VERSION}_amd64.deb &&     gpg --batch --verify influxdb-data_${INFLUXDB_VERSION}_amd64.deb.asc influxdb-data_${INFLUXDB_VERSION}_amd64.deb &&     dpkg -i influxdb-data_${INFLUXDB_VERSION}_amd64.deb &&     rm -f influxdb-data_${INFLUXDB_VERSION}_amd64.deb*
# Wed, 17 Oct 2018 21:34:43 GMT
COPY file:a7fc957fd6465cc132b5d41618061e4ac55bd347b790cd87cc496ab4f67a274b in /etc/influxdb/influxdb.conf 
# Wed, 17 Oct 2018 21:34:43 GMT
EXPOSE 8086/tcp
# Wed, 17 Oct 2018 21:34:43 GMT
VOLUME [/var/lib/influxdb]
# Wed, 17 Oct 2018 21:34:53 GMT
COPY file:efb819384a9e7a972c15df74e1d18c7d6296e633a7c533def9a6d400b69468fc in /entrypoint.sh 
# Wed, 17 Oct 2018 21:34:53 GMT
COPY file:44e0050f3b04248a6900eace944c581b13b4ad9af1e5cfb91d837cb5e24356e6 in /init-influxdb.sh 
# Wed, 17 Oct 2018 21:35:02 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 17 Oct 2018 21:35:02 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:bc9ab73e5b14b9fbd3687a4d8c1f1360533d6ee9ffc3f5ecc6630794b40257b7`  
		Last Modified: Mon, 15 Oct 2018 23:33:47 GMT  
		Size: 45.3 MB (45309934 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:193a6306c92af328dbd41bbbd3200a2c90802624cccfe5725223324428110d7f`  
		Last Modified: Tue, 16 Oct 2018 01:13:35 GMT  
		Size: 10.7 MB (10740016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5c3f8c317dc30af45021092a3d76f16ba7aa1ee5f18fec742c84d4960818580`  
		Last Modified: Tue, 16 Oct 2018 01:13:33 GMT  
		Size: 4.3 MB (4336053 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4997ec2fe070d4927eb940dbec9169bad86195ff650b88a58b1592f55bbc00d0`  
		Last Modified: Tue, 16 Oct 2018 10:57:16 GMT  
		Size: 2.9 KB (2887 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17eff529c1e78ef9fecfc1165176e5848560ee4e756434e7d5ea7be2df8fef4f`  
		Last Modified: Wed, 17 Oct 2018 21:39:38 GMT  
		Size: 26.6 MB (26571644 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74d6a1b6e98ec408cc517c27fa277cecbe25753f19707fcc24feb2ac33b47038`  
		Last Modified: Wed, 17 Oct 2018 21:39:32 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3d84f3cc19caae09368add9911df1fce396cd836556189cf4dc016be2b1aa77`  
		Last Modified: Wed, 17 Oct 2018 21:39:32 GMT  
		Size: 251.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f33b14228ab1dd38b52918cb70778a37543a0e3f67086af1706b755d4cdfbe1`  
		Last Modified: Wed, 17 Oct 2018 21:39:38 GMT  
		Size: 1.2 KB (1166 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `influxdb:1.6-data-alpine`

```console
$ docker pull influxdb@sha256:3bc70200b10adb3df1461ed4d82e935105b08e28bd7436096f479c890f02a5fe
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `influxdb:1.6-data-alpine` - linux; amd64

```console
$ docker pull influxdb@sha256:194f44637b467582238ec82c7c345824578792fc853cba790268b1d96d66dfcb
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.5 MB (30524224 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d2e7e52b6eed83dba0edc7b24b28b53983145c7b2cd27038432041b63aa7a6b6`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Tue, 11 Sep 2018 22:19:38 GMT
ADD file:49f9e47e678d868d5b023482aa8dded71276a241a665c4f8b55ca77269321b34 in / 
# Tue, 11 Sep 2018 22:19:39 GMT
CMD ["/bin/sh"]
# Wed, 17 Oct 2018 21:33:51 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf
# Wed, 17 Oct 2018 21:35:22 GMT
RUN apk add --no-cache tzdata bash ca-certificates &&     update-ca-certificates
# Wed, 17 Oct 2018 21:35:31 GMT
ENV INFLUXDB_VERSION=1.6.4-c1.6.4
# Wed, 17 Oct 2018 21:35:38 GMT
RUN set -ex &&     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/enterprise/releases/influxdb-data-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/enterprise/releases/influxdb-data-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify influxdb-data-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc influxdb-data-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf influxdb-data-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/influxdb-*/influxdb.conf &&     chmod +x /usr/src/influxdb-*/* &&     cp -a /usr/src/influxdb-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Wed, 17 Oct 2018 21:35:41 GMT
COPY file:a7fc957fd6465cc132b5d41618061e4ac55bd347b790cd87cc496ab4f67a274b in /etc/influxdb/influxdb.conf 
# Wed, 17 Oct 2018 21:35:41 GMT
EXPOSE 8086/tcp
# Wed, 17 Oct 2018 21:35:41 GMT
VOLUME [/var/lib/influxdb]
# Wed, 17 Oct 2018 21:35:42 GMT
COPY file:efb819384a9e7a972c15df74e1d18c7d6296e633a7c533def9a6d400b69468fc in /entrypoint.sh 
# Wed, 17 Oct 2018 21:35:42 GMT
COPY file:44e0050f3b04248a6900eace944c581b13b4ad9af1e5cfb91d837cb5e24356e6 in /init-influxdb.sh 
# Wed, 17 Oct 2018 21:35:42 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 17 Oct 2018 21:35:42 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:c67f3896b22c1378881cbbb9c9d1edfe881fd07f713371835ef46d93c649684d`  
		Last Modified: Tue, 11 Sep 2018 22:21:16 GMT  
		Size: 2.1 MB (2107175 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a953c286a2ebfe50a094c2300171addc58cd3b3eb94fea15eee7dded61987f85`  
		Last Modified: Wed, 17 Oct 2018 21:38:34 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a15c27853294e1b03bfac1013a903fc9fb399340c552ee9ba3d4bef68c211fd`  
		Last Modified: Wed, 17 Oct 2018 21:40:27 GMT  
		Size: 2.0 MB (1966599 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2b0574055182abd0475617f9d0e8684e751799544d9e6dfb142c95382b54466`  
		Last Modified: Wed, 17 Oct 2018 21:40:32 GMT  
		Size: 26.4 MB (26448639 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db722fa505caec69c98b6fe3716863272d309e33eb377e4ca462942838ad66f8`  
		Last Modified: Wed, 17 Oct 2018 21:40:25 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:152f7c95419bff298bb75de36de1a3111717a7b25d0920945a227b2a612cbbf1`  
		Last Modified: Wed, 17 Oct 2018 21:40:25 GMT  
		Size: 251.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:251dda989f49ecd16585e3da265a23ec0c1c1c30df146d828742c05b83ec8672`  
		Last Modified: Wed, 17 Oct 2018 21:40:25 GMT  
		Size: 1.2 KB (1167 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `influxdb:1.6-meta`

```console
$ docker pull influxdb@sha256:ef8beeb1130b05335e8e47427404d6755e22d4c8983d3f6598faeba014ee42a3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `influxdb:1.6-meta` - linux; amd64

```console
$ docker pull influxdb@sha256:108be830bb46c8c7c37dff6e913a5a87081ee5a29b696f6df906ed0941fc297e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **72.9 MB (72936171 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:833b879845d0d6c8fce7e4e87d98f0baee5fa4a16f33c8f1213401839a8b3c0a`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd-meta"]`

```dockerfile
# Mon, 15 Oct 2018 23:24:20 GMT
ADD file:b3598c18dc395846ab2c5e4e8422c4a5dad7bc3b5b08c09ebceee80989904641 in / 
# Mon, 15 Oct 2018 23:24:21 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 01:00:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 01:00:57 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 16 Oct 2018 10:54:30 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Wed, 17 Oct 2018 21:34:33 GMT
ENV INFLUXDB_VERSION=1.6.4-c1.6.4
# Wed, 17 Oct 2018 21:36:11 GMT
RUN wget --no-verbose https://dl.influxdata.com/enterprise/releases/influxdb-meta_${INFLUXDB_VERSION}_amd64.deb.asc &&     wget --no-verbose https://dl.influxdata.com/enterprise/releases/influxdb-meta_${INFLUXDB_VERSION}_amd64.deb &&     gpg --batch --verify influxdb-meta_${INFLUXDB_VERSION}_amd64.deb.asc influxdb-meta_${INFLUXDB_VERSION}_amd64.deb &&     dpkg -i influxdb-meta_${INFLUXDB_VERSION}_amd64.deb &&     rm -f influxdb-meta_${INFLUXDB_VERSION}_amd64.deb*
# Wed, 17 Oct 2018 21:36:19 GMT
COPY file:95a6fe33e203909c093135fff9ff2b4cdc02ca4f1fe1dec109b5a9cf6b7a0946 in /etc/influxdb/influxdb-meta.conf 
# Wed, 17 Oct 2018 21:36:19 GMT
EXPOSE 8091/tcp
# Wed, 17 Oct 2018 21:36:19 GMT
VOLUME [/var/lib/influxdb]
# Wed, 17 Oct 2018 21:36:19 GMT
COPY file:b4fa000cf2aff5bf4e5093021ca6255fffa17c43ae18eb4c55ae28a3cc2dc281 in /entrypoint.sh 
# Wed, 17 Oct 2018 21:36:28 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 17 Oct 2018 21:36:28 GMT
CMD ["influxd-meta"]
```

-	Layers:
	-	`sha256:bc9ab73e5b14b9fbd3687a4d8c1f1360533d6ee9ffc3f5ecc6630794b40257b7`  
		Last Modified: Mon, 15 Oct 2018 23:33:47 GMT  
		Size: 45.3 MB (45309934 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:193a6306c92af328dbd41bbbd3200a2c90802624cccfe5725223324428110d7f`  
		Last Modified: Tue, 16 Oct 2018 01:13:35 GMT  
		Size: 10.7 MB (10740016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5c3f8c317dc30af45021092a3d76f16ba7aa1ee5f18fec742c84d4960818580`  
		Last Modified: Tue, 16 Oct 2018 01:13:33 GMT  
		Size: 4.3 MB (4336053 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4997ec2fe070d4927eb940dbec9169bad86195ff650b88a58b1592f55bbc00d0`  
		Last Modified: Tue, 16 Oct 2018 10:57:16 GMT  
		Size: 2.9 KB (2887 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c94a1a06ab1971eb1e859414595283a0da76e8ee9b4220081b8ae8e68ec27e6a`  
		Last Modified: Wed, 17 Oct 2018 21:41:42 GMT  
		Size: 12.5 MB (12546714 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44c64af65a57b4699099479c9f344d8c26080afb8d518ca3c9316e1b0c789eec`  
		Last Modified: Wed, 17 Oct 2018 21:41:40 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c47f82010b112431b07deffeab87db1061fd9df3267bd06f9391048d6b10b1f`  
		Last Modified: Wed, 17 Oct 2018 21:41:40 GMT  
		Size: 372.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `influxdb:1.6-meta-alpine`

```console
$ docker pull influxdb@sha256:a4d4bd3f6400a50b2e10c9c3c66bea90d02e870062378ae58b0d14dbd7f65e12
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `influxdb:1.6-meta-alpine` - linux; amd64

```console
$ docker pull influxdb@sha256:218e614a543cb75e32402227389c96bbe26ad598cfa0e8cbd73b1fc49a4ae3db
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.6 MB (16578347 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0b2723170f285323ba7f08182c4f8b215282a6f9a176163291618d134b4f33fe`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd-meta"]`

```dockerfile
# Tue, 11 Sep 2018 22:19:38 GMT
ADD file:49f9e47e678d868d5b023482aa8dded71276a241a665c4f8b55ca77269321b34 in / 
# Tue, 11 Sep 2018 22:19:39 GMT
CMD ["/bin/sh"]
# Wed, 17 Oct 2018 21:33:51 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf
# Wed, 17 Oct 2018 21:35:22 GMT
RUN apk add --no-cache tzdata bash ca-certificates &&     update-ca-certificates
# Wed, 17 Oct 2018 21:35:31 GMT
ENV INFLUXDB_VERSION=1.6.4-c1.6.4
# Wed, 17 Oct 2018 21:36:59 GMT
RUN set -ex &&     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/enterprise/releases/influxdb-meta-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/enterprise/releases/influxdb-meta-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify influxdb-meta-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc influxdb-meta-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf influxdb-meta-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/influxdb-*/influxdb-meta.conf &&     chmod +x /usr/src/influxdb-*/* &&     cp -a /usr/src/influxdb-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Wed, 17 Oct 2018 21:37:05 GMT
COPY file:95a6fe33e203909c093135fff9ff2b4cdc02ca4f1fe1dec109b5a9cf6b7a0946 in /etc/influxdb/influxdb-meta.conf 
# Wed, 17 Oct 2018 21:37:05 GMT
EXPOSE 8091/tcp
# Wed, 17 Oct 2018 21:37:05 GMT
VOLUME [/var/lib/influxdb]
# Wed, 17 Oct 2018 21:37:06 GMT
COPY file:b4fa000cf2aff5bf4e5093021ca6255fffa17c43ae18eb4c55ae28a3cc2dc281 in /entrypoint.sh 
# Wed, 17 Oct 2018 21:37:14 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 17 Oct 2018 21:37:14 GMT
CMD ["influxd-meta"]
```

-	Layers:
	-	`sha256:c67f3896b22c1378881cbbb9c9d1edfe881fd07f713371835ef46d93c649684d`  
		Last Modified: Tue, 11 Sep 2018 22:21:16 GMT  
		Size: 2.1 MB (2107175 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a953c286a2ebfe50a094c2300171addc58cd3b3eb94fea15eee7dded61987f85`  
		Last Modified: Wed, 17 Oct 2018 21:38:34 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a15c27853294e1b03bfac1013a903fc9fb399340c552ee9ba3d4bef68c211fd`  
		Last Modified: Wed, 17 Oct 2018 21:40:27 GMT  
		Size: 2.0 MB (1966599 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e70b545858dd5101ed14a5a05fa22b97ef9c03963fb11a055e4cc0eee903ffc4`  
		Last Modified: Wed, 17 Oct 2018 21:42:35 GMT  
		Size: 12.5 MB (12503850 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0af2305248fc83683eab8390b6ad49294d89b3b624dd3ebae2de5ce2a596b75`  
		Last Modified: Wed, 17 Oct 2018 21:42:32 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b077596b60cdd74a1f675b3cf6c41aeacdfcfc2ecd8c154e315b97595154c36`  
		Last Modified: Wed, 17 Oct 2018 21:42:32 GMT  
		Size: 375.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `influxdb:alpine`

```console
$ docker pull influxdb@sha256:64101af66a625c611d2be7ef241075306cc22f18c79837d693b4a29e42854779
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `influxdb:alpine` - linux; amd64

```console
$ docker pull influxdb@sha256:9b8cdb0b088601ff6346acd90d2ba95a7032c43554c1f7658f2d8b14b8d496ed
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **28.9 MB (28946005 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c1a513052162ec1e6fa8bfac2f4934a0c2a194a0b788120fa08a727660c0d1ab`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Tue, 11 Sep 2018 22:19:38 GMT
ADD file:49f9e47e678d868d5b023482aa8dded71276a241a665c4f8b55ca77269321b34 in / 
# Tue, 11 Sep 2018 22:19:39 GMT
CMD ["/bin/sh"]
# Wed, 17 Oct 2018 21:33:51 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf
# Wed, 17 Oct 2018 21:34:01 GMT
RUN apk add --no-cache tzdata bash
# Wed, 17 Oct 2018 21:34:02 GMT
ENV INFLUXDB_VERSION=1.6.4
# Wed, 17 Oct 2018 21:34:10 GMT
RUN set -ex &&     apk add --no-cache --virtual .build-deps wget gnupg tar ca-certificates &&     update-ca-certificates &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/influxdb/releases/influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/influxdb/releases/influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/influxdb-*/influxdb.conf &&     chmod +x /usr/src/influxdb-*/* &&     cp -a /usr/src/influxdb-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Wed, 17 Oct 2018 21:34:12 GMT
COPY file:3ee2bc0321c2aa2451df7a508649c3a54f0eebc1ef9b8a24967c58105b4d3160 in /etc/influxdb/influxdb.conf 
# Wed, 17 Oct 2018 21:34:12 GMT
EXPOSE 8086/tcp
# Wed, 17 Oct 2018 21:34:13 GMT
VOLUME [/var/lib/influxdb]
# Wed, 17 Oct 2018 21:34:13 GMT
COPY file:098affa3d1b749dacb263ddacfd86a5de1f598d6ba1f7c789ce482c66ee9c80b in /entrypoint.sh 
# Wed, 17 Oct 2018 21:34:13 GMT
COPY file:44e0050f3b04248a6900eace944c581b13b4ad9af1e5cfb91d837cb5e24356e6 in /init-influxdb.sh 
# Wed, 17 Oct 2018 21:34:13 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 17 Oct 2018 21:34:14 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:c67f3896b22c1378881cbbb9c9d1edfe881fd07f713371835ef46d93c649684d`  
		Last Modified: Tue, 11 Sep 2018 22:21:16 GMT  
		Size: 2.1 MB (2107175 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a953c286a2ebfe50a094c2300171addc58cd3b3eb94fea15eee7dded61987f85`  
		Last Modified: Wed, 17 Oct 2018 21:38:34 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8d1125333738e6e07ed3c0c60fdc975c65717802204219255d630da1823ab97`  
		Last Modified: Wed, 17 Oct 2018 21:38:34 GMT  
		Size: 1.7 MB (1663553 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0cabf0934ff9e1bbf1ece2362afbfb8ce0ccc95ec1eb1e759ac2e3e3fe885a48`  
		Last Modified: Wed, 17 Oct 2018 21:38:38 GMT  
		Size: 25.2 MB (25173523 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8f1be1922c8c66ef53c9f998045bc3e527d916780fad32b9c8cc8b60aa98161`  
		Last Modified: Wed, 17 Oct 2018 21:38:33 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15d45875c9de4f9a7a084660ed3acb1089e87ec55d771100d9975f9413eea461`  
		Last Modified: Wed, 17 Oct 2018 21:38:33 GMT  
		Size: 211.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a44883c2b65011274a27021a2969b9b0588e63c9b74cd54399e186d7ea4bf3e`  
		Last Modified: Wed, 17 Oct 2018 21:38:33 GMT  
		Size: 1.2 KB (1167 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `influxdb:data`

```console
$ docker pull influxdb@sha256:50ebd9dc16bb48982ba8262191c9dce2e860c7631aea62bc3648b88187a8efee
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `influxdb:data` - linux; amd64

```console
$ docker pull influxdb@sha256:da8f9d6fb0d49774d487492b894d6f1e733c4366799a45c4da7058992f941bd3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **87.0 MB (86962191 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:56abc1ccccf816ca7447cd58b95f1d09f76f15c44d6a306912187c9b2c55e66e`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Mon, 15 Oct 2018 23:24:20 GMT
ADD file:b3598c18dc395846ab2c5e4e8422c4a5dad7bc3b5b08c09ebceee80989904641 in / 
# Mon, 15 Oct 2018 23:24:21 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 01:00:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 01:00:57 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 16 Oct 2018 10:54:30 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Wed, 17 Oct 2018 21:34:33 GMT
ENV INFLUXDB_VERSION=1.6.4-c1.6.4
# Wed, 17 Oct 2018 21:34:38 GMT
RUN wget --no-verbose https://dl.influxdata.com/enterprise/releases/influxdb-data_${INFLUXDB_VERSION}_amd64.deb.asc &&     wget --no-verbose https://dl.influxdata.com/enterprise/releases/influxdb-data_${INFLUXDB_VERSION}_amd64.deb &&     gpg --batch --verify influxdb-data_${INFLUXDB_VERSION}_amd64.deb.asc influxdb-data_${INFLUXDB_VERSION}_amd64.deb &&     dpkg -i influxdb-data_${INFLUXDB_VERSION}_amd64.deb &&     rm -f influxdb-data_${INFLUXDB_VERSION}_amd64.deb*
# Wed, 17 Oct 2018 21:34:43 GMT
COPY file:a7fc957fd6465cc132b5d41618061e4ac55bd347b790cd87cc496ab4f67a274b in /etc/influxdb/influxdb.conf 
# Wed, 17 Oct 2018 21:34:43 GMT
EXPOSE 8086/tcp
# Wed, 17 Oct 2018 21:34:43 GMT
VOLUME [/var/lib/influxdb]
# Wed, 17 Oct 2018 21:34:53 GMT
COPY file:efb819384a9e7a972c15df74e1d18c7d6296e633a7c533def9a6d400b69468fc in /entrypoint.sh 
# Wed, 17 Oct 2018 21:34:53 GMT
COPY file:44e0050f3b04248a6900eace944c581b13b4ad9af1e5cfb91d837cb5e24356e6 in /init-influxdb.sh 
# Wed, 17 Oct 2018 21:35:02 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 17 Oct 2018 21:35:02 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:bc9ab73e5b14b9fbd3687a4d8c1f1360533d6ee9ffc3f5ecc6630794b40257b7`  
		Last Modified: Mon, 15 Oct 2018 23:33:47 GMT  
		Size: 45.3 MB (45309934 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:193a6306c92af328dbd41bbbd3200a2c90802624cccfe5725223324428110d7f`  
		Last Modified: Tue, 16 Oct 2018 01:13:35 GMT  
		Size: 10.7 MB (10740016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5c3f8c317dc30af45021092a3d76f16ba7aa1ee5f18fec742c84d4960818580`  
		Last Modified: Tue, 16 Oct 2018 01:13:33 GMT  
		Size: 4.3 MB (4336053 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4997ec2fe070d4927eb940dbec9169bad86195ff650b88a58b1592f55bbc00d0`  
		Last Modified: Tue, 16 Oct 2018 10:57:16 GMT  
		Size: 2.9 KB (2887 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17eff529c1e78ef9fecfc1165176e5848560ee4e756434e7d5ea7be2df8fef4f`  
		Last Modified: Wed, 17 Oct 2018 21:39:38 GMT  
		Size: 26.6 MB (26571644 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74d6a1b6e98ec408cc517c27fa277cecbe25753f19707fcc24feb2ac33b47038`  
		Last Modified: Wed, 17 Oct 2018 21:39:32 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3d84f3cc19caae09368add9911df1fce396cd836556189cf4dc016be2b1aa77`  
		Last Modified: Wed, 17 Oct 2018 21:39:32 GMT  
		Size: 251.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f33b14228ab1dd38b52918cb70778a37543a0e3f67086af1706b755d4cdfbe1`  
		Last Modified: Wed, 17 Oct 2018 21:39:38 GMT  
		Size: 1.2 KB (1166 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `influxdb:data-alpine`

```console
$ docker pull influxdb@sha256:3bc70200b10adb3df1461ed4d82e935105b08e28bd7436096f479c890f02a5fe
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `influxdb:data-alpine` - linux; amd64

```console
$ docker pull influxdb@sha256:194f44637b467582238ec82c7c345824578792fc853cba790268b1d96d66dfcb
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.5 MB (30524224 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d2e7e52b6eed83dba0edc7b24b28b53983145c7b2cd27038432041b63aa7a6b6`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Tue, 11 Sep 2018 22:19:38 GMT
ADD file:49f9e47e678d868d5b023482aa8dded71276a241a665c4f8b55ca77269321b34 in / 
# Tue, 11 Sep 2018 22:19:39 GMT
CMD ["/bin/sh"]
# Wed, 17 Oct 2018 21:33:51 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf
# Wed, 17 Oct 2018 21:35:22 GMT
RUN apk add --no-cache tzdata bash ca-certificates &&     update-ca-certificates
# Wed, 17 Oct 2018 21:35:31 GMT
ENV INFLUXDB_VERSION=1.6.4-c1.6.4
# Wed, 17 Oct 2018 21:35:38 GMT
RUN set -ex &&     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/enterprise/releases/influxdb-data-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/enterprise/releases/influxdb-data-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify influxdb-data-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc influxdb-data-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf influxdb-data-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/influxdb-*/influxdb.conf &&     chmod +x /usr/src/influxdb-*/* &&     cp -a /usr/src/influxdb-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Wed, 17 Oct 2018 21:35:41 GMT
COPY file:a7fc957fd6465cc132b5d41618061e4ac55bd347b790cd87cc496ab4f67a274b in /etc/influxdb/influxdb.conf 
# Wed, 17 Oct 2018 21:35:41 GMT
EXPOSE 8086/tcp
# Wed, 17 Oct 2018 21:35:41 GMT
VOLUME [/var/lib/influxdb]
# Wed, 17 Oct 2018 21:35:42 GMT
COPY file:efb819384a9e7a972c15df74e1d18c7d6296e633a7c533def9a6d400b69468fc in /entrypoint.sh 
# Wed, 17 Oct 2018 21:35:42 GMT
COPY file:44e0050f3b04248a6900eace944c581b13b4ad9af1e5cfb91d837cb5e24356e6 in /init-influxdb.sh 
# Wed, 17 Oct 2018 21:35:42 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 17 Oct 2018 21:35:42 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:c67f3896b22c1378881cbbb9c9d1edfe881fd07f713371835ef46d93c649684d`  
		Last Modified: Tue, 11 Sep 2018 22:21:16 GMT  
		Size: 2.1 MB (2107175 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a953c286a2ebfe50a094c2300171addc58cd3b3eb94fea15eee7dded61987f85`  
		Last Modified: Wed, 17 Oct 2018 21:38:34 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a15c27853294e1b03bfac1013a903fc9fb399340c552ee9ba3d4bef68c211fd`  
		Last Modified: Wed, 17 Oct 2018 21:40:27 GMT  
		Size: 2.0 MB (1966599 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2b0574055182abd0475617f9d0e8684e751799544d9e6dfb142c95382b54466`  
		Last Modified: Wed, 17 Oct 2018 21:40:32 GMT  
		Size: 26.4 MB (26448639 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db722fa505caec69c98b6fe3716863272d309e33eb377e4ca462942838ad66f8`  
		Last Modified: Wed, 17 Oct 2018 21:40:25 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:152f7c95419bff298bb75de36de1a3111717a7b25d0920945a227b2a612cbbf1`  
		Last Modified: Wed, 17 Oct 2018 21:40:25 GMT  
		Size: 251.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:251dda989f49ecd16585e3da265a23ec0c1c1c30df146d828742c05b83ec8672`  
		Last Modified: Wed, 17 Oct 2018 21:40:25 GMT  
		Size: 1.2 KB (1167 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `influxdb:latest`

```console
$ docker pull influxdb@sha256:403dc103a5887ca649e4fe9ac7685f9c7dfe170898a5af1722afa640e8d0f3bd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `influxdb:latest` - linux; amd64

```console
$ docker pull influxdb@sha256:7436b0939bd08a95013fb30cb0ebf64c74f16c37a2b34952d2e0c428a3960bf6
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **85.7 MB (85692566 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:396b2bd13e144d1575d2a5a03cbe23dc700a63bd183b4e7084a2229d61482e5a`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Mon, 15 Oct 2018 23:24:20 GMT
ADD file:b3598c18dc395846ab2c5e4e8422c4a5dad7bc3b5b08c09ebceee80989904641 in / 
# Mon, 15 Oct 2018 23:24:21 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 01:00:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 01:00:57 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 16 Oct 2018 10:54:30 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Wed, 17 Oct 2018 21:33:11 GMT
ENV INFLUXDB_VERSION=1.6.4
# Wed, 17 Oct 2018 21:33:15 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     gpg --batch --verify influxdb_${INFLUXDB_VERSION}_${ARCH}.deb.asc influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     dpkg -i influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     rm -f influxdb_${INFLUXDB_VERSION}_${ARCH}.deb*
# Wed, 17 Oct 2018 21:33:22 GMT
COPY file:3ee2bc0321c2aa2451df7a508649c3a54f0eebc1ef9b8a24967c58105b4d3160 in /etc/influxdb/influxdb.conf 
# Wed, 17 Oct 2018 21:33:22 GMT
EXPOSE 8086/tcp
# Wed, 17 Oct 2018 21:33:22 GMT
VOLUME [/var/lib/influxdb]
# Wed, 17 Oct 2018 21:33:31 GMT
COPY file:098affa3d1b749dacb263ddacfd86a5de1f598d6ba1f7c789ce482c66ee9c80b in /entrypoint.sh 
# Wed, 17 Oct 2018 21:33:31 GMT
COPY file:44e0050f3b04248a6900eace944c581b13b4ad9af1e5cfb91d837cb5e24356e6 in /init-influxdb.sh 
# Wed, 17 Oct 2018 21:33:32 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 17 Oct 2018 21:33:32 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:bc9ab73e5b14b9fbd3687a4d8c1f1360533d6ee9ffc3f5ecc6630794b40257b7`  
		Last Modified: Mon, 15 Oct 2018 23:33:47 GMT  
		Size: 45.3 MB (45309934 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:193a6306c92af328dbd41bbbd3200a2c90802624cccfe5725223324428110d7f`  
		Last Modified: Tue, 16 Oct 2018 01:13:35 GMT  
		Size: 10.7 MB (10740016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5c3f8c317dc30af45021092a3d76f16ba7aa1ee5f18fec742c84d4960818580`  
		Last Modified: Tue, 16 Oct 2018 01:13:33 GMT  
		Size: 4.3 MB (4336053 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4997ec2fe070d4927eb940dbec9169bad86195ff650b88a58b1592f55bbc00d0`  
		Last Modified: Tue, 16 Oct 2018 10:57:16 GMT  
		Size: 2.9 KB (2887 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31b6ef01189292e5c8b7c17b2249ebc28633b0d89d4a351558463cc464d1eee1`  
		Last Modified: Wed, 17 Oct 2018 21:37:41 GMT  
		Size: 25.3 MB (25302074 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10ef92760bb386cc9f294a29b1274daf549f96c43e540960873e5dc7c6b4e2d5`  
		Last Modified: Wed, 17 Oct 2018 21:37:35 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4cd638ec38ff92bf9fea3641a0c90636c898b386f933d3066fd616528234436d`  
		Last Modified: Wed, 17 Oct 2018 21:37:35 GMT  
		Size: 210.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2dc53cc9d0d9f4d7d24b1e521efeb7fcdbfa99c0239e0f815e803fa77a21a209`  
		Last Modified: Wed, 17 Oct 2018 21:37:35 GMT  
		Size: 1.2 KB (1166 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `influxdb:latest` - linux; arm variant v7

```console
$ docker pull influxdb@sha256:4fba02bde30a43ff0f9d7b31bfd530bc591e6c03df3353e10c594ee887679144
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **79.8 MB (79754277 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e4af05ca6f203625e0e69148b22863851ba2c4bf7ca087e122b61e1e8e346584`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Tue, 16 Oct 2018 12:05:35 GMT
ADD file:5a70dc8c5adc5e530a8fc10745a2fba15ee4379cd2e1adba6e1abfc8353c48d9 in / 
# Tue, 16 Oct 2018 12:05:38 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 12:58:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 12:58:52 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 16 Oct 2018 14:57:55 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Thu, 18 Oct 2018 11:59:04 GMT
ENV INFLUXDB_VERSION=1.6.4
# Thu, 18 Oct 2018 11:59:10 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     gpg --batch --verify influxdb_${INFLUXDB_VERSION}_${ARCH}.deb.asc influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     dpkg -i influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     rm -f influxdb_${INFLUXDB_VERSION}_${ARCH}.deb*
# Thu, 18 Oct 2018 11:59:11 GMT
COPY file:3ee2bc0321c2aa2451df7a508649c3a54f0eebc1ef9b8a24967c58105b4d3160 in /etc/influxdb/influxdb.conf 
# Thu, 18 Oct 2018 11:59:11 GMT
EXPOSE 8086/tcp
# Thu, 18 Oct 2018 11:59:11 GMT
VOLUME [/var/lib/influxdb]
# Thu, 18 Oct 2018 11:59:12 GMT
COPY file:098affa3d1b749dacb263ddacfd86a5de1f598d6ba1f7c789ce482c66ee9c80b in /entrypoint.sh 
# Thu, 18 Oct 2018 11:59:17 GMT
COPY file:44e0050f3b04248a6900eace944c581b13b4ad9af1e5cfb91d837cb5e24356e6 in /init-influxdb.sh 
# Thu, 18 Oct 2018 11:59:21 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 18 Oct 2018 11:59:22 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:773085009f9c7f7b4310a1b0a968c0940440707f9e534ed87f0652baf279811b`  
		Last Modified: Tue, 16 Oct 2018 12:16:00 GMT  
		Size: 42.1 MB (42063035 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15973945ecf58d4573926ba8da5c9aa815d1e14bbc2c8414b0e23d51552f6f3d`  
		Last Modified: Tue, 16 Oct 2018 13:09:51 GMT  
		Size: 9.4 MB (9440339 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e25b539801e1d4c35f7727ce95a197418bbe4cff37e1784aad0325cdfb1673a`  
		Last Modified: Tue, 16 Oct 2018 13:09:50 GMT  
		Size: 3.9 MB (3913013 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:223dbbf02340b8fe3982868e60bd7a5005ab465886417f11771c94b2d5fcedf0`  
		Last Modified: Tue, 16 Oct 2018 14:58:57 GMT  
		Size: 2.9 KB (2913 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea66c5087ac1688c08155d6722cb922e01d9ac715087aa3f013a1426db337f88`  
		Last Modified: Thu, 18 Oct 2018 11:59:43 GMT  
		Size: 24.3 MB (24333378 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9eef4ad3ff49563fa15840bb4b4006491f88e5a82d69543af4d139ba862384a4`  
		Last Modified: Thu, 18 Oct 2018 11:59:35 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9582a8c420d5810183ec692649dca4aa26604de050d6cd91954ce42c403d1bc0`  
		Last Modified: Thu, 18 Oct 2018 11:59:35 GMT  
		Size: 211.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bcee4234bbe48b964cd71f8c131a39eb60f1bcdd2e6436bbabcba1cf09fb36f8`  
		Last Modified: Thu, 18 Oct 2018 11:59:36 GMT  
		Size: 1.2 KB (1165 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `influxdb:latest` - linux; arm64 variant v8

```console
$ docker pull influxdb@sha256:54b1324d6681c6583ddc92c71704bf65fc8c8c7510383057569b386df1a68e4c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **80.6 MB (80565185 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b9135101a84f65f9f7a00d1a3eee1bdbcbce8b94890833a320acb07c8cab1473`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Tue, 16 Oct 2018 08:43:08 GMT
ADD file:961d2f24a0cebfcdd333e000ed4488e5c4f4d2a3d11056c45934d647caed5845 in / 
# Tue, 16 Oct 2018 08:43:10 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 12:01:13 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 12:01:39 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 17 Oct 2018 02:40:46 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Thu, 18 Oct 2018 08:56:23 GMT
ENV INFLUXDB_VERSION=1.6.4
# Thu, 18 Oct 2018 08:56:40 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     gpg --batch --verify influxdb_${INFLUXDB_VERSION}_${ARCH}.deb.asc influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     dpkg -i influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     rm -f influxdb_${INFLUXDB_VERSION}_${ARCH}.deb*
# Thu, 18 Oct 2018 08:56:47 GMT
COPY file:3ee2bc0321c2aa2451df7a508649c3a54f0eebc1ef9b8a24967c58105b4d3160 in /etc/influxdb/influxdb.conf 
# Thu, 18 Oct 2018 08:56:48 GMT
EXPOSE 8086/tcp
# Thu, 18 Oct 2018 08:56:49 GMT
VOLUME [/var/lib/influxdb]
# Thu, 18 Oct 2018 08:56:50 GMT
COPY file:098affa3d1b749dacb263ddacfd86a5de1f598d6ba1f7c789ce482c66ee9c80b in /entrypoint.sh 
# Thu, 18 Oct 2018 08:56:59 GMT
COPY file:44e0050f3b04248a6900eace944c581b13b4ad9af1e5cfb91d837cb5e24356e6 in /init-influxdb.sh 
# Thu, 18 Oct 2018 08:56:59 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 18 Oct 2018 08:57:00 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:54fc83a09c68f915c1e318f4b118a467a545027084dd28edbdfded4ea6772e9d`  
		Last Modified: Tue, 16 Oct 2018 08:49:44 GMT  
		Size: 43.1 MB (43123597 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:742d3549b4ad9fe47f3e3bf2ee373b97068548f65584a6d259dfa601721e2f51`  
		Last Modified: Tue, 16 Oct 2018 12:26:08 GMT  
		Size: 9.7 MB (9690405 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6c71b9867c5efaf04365448a7b025ba50a926e7c1daae8ee9e73b149b322ae8`  
		Last Modified: Tue, 16 Oct 2018 12:26:05 GMT  
		Size: 4.1 MB (4088398 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2a88a6f61fbb6add9ba96198af6b9ec64cbf52eb0145c467fcfd64dad29da8d`  
		Last Modified: Wed, 17 Oct 2018 02:50:37 GMT  
		Size: 2.9 KB (2886 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01e76cb918fa885108be32aa3a21200a5c63c8469279eb1bf7f4356605f44f6b`  
		Last Modified: Thu, 18 Oct 2018 08:57:30 GMT  
		Size: 23.7 MB (23658298 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1282700bd5abab0eb38fc20f345ccae4fb49cd66ab889556abb668530d9ddb8a`  
		Last Modified: Thu, 18 Oct 2018 08:57:20 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21ea2f7a3f8eaede933ae173132befae9e1048e1cf2af172efea879241bf3c87`  
		Last Modified: Thu, 18 Oct 2018 08:57:20 GMT  
		Size: 211.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa38bd292cf25e322a73981f77a5470764be3217dd1571f9367f620f5cf433ec`  
		Last Modified: Thu, 18 Oct 2018 08:57:20 GMT  
		Size: 1.2 KB (1167 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `influxdb:meta`

```console
$ docker pull influxdb@sha256:ef8beeb1130b05335e8e47427404d6755e22d4c8983d3f6598faeba014ee42a3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `influxdb:meta` - linux; amd64

```console
$ docker pull influxdb@sha256:108be830bb46c8c7c37dff6e913a5a87081ee5a29b696f6df906ed0941fc297e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **72.9 MB (72936171 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:833b879845d0d6c8fce7e4e87d98f0baee5fa4a16f33c8f1213401839a8b3c0a`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd-meta"]`

```dockerfile
# Mon, 15 Oct 2018 23:24:20 GMT
ADD file:b3598c18dc395846ab2c5e4e8422c4a5dad7bc3b5b08c09ebceee80989904641 in / 
# Mon, 15 Oct 2018 23:24:21 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 01:00:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 01:00:57 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 16 Oct 2018 10:54:30 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Wed, 17 Oct 2018 21:34:33 GMT
ENV INFLUXDB_VERSION=1.6.4-c1.6.4
# Wed, 17 Oct 2018 21:36:11 GMT
RUN wget --no-verbose https://dl.influxdata.com/enterprise/releases/influxdb-meta_${INFLUXDB_VERSION}_amd64.deb.asc &&     wget --no-verbose https://dl.influxdata.com/enterprise/releases/influxdb-meta_${INFLUXDB_VERSION}_amd64.deb &&     gpg --batch --verify influxdb-meta_${INFLUXDB_VERSION}_amd64.deb.asc influxdb-meta_${INFLUXDB_VERSION}_amd64.deb &&     dpkg -i influxdb-meta_${INFLUXDB_VERSION}_amd64.deb &&     rm -f influxdb-meta_${INFLUXDB_VERSION}_amd64.deb*
# Wed, 17 Oct 2018 21:36:19 GMT
COPY file:95a6fe33e203909c093135fff9ff2b4cdc02ca4f1fe1dec109b5a9cf6b7a0946 in /etc/influxdb/influxdb-meta.conf 
# Wed, 17 Oct 2018 21:36:19 GMT
EXPOSE 8091/tcp
# Wed, 17 Oct 2018 21:36:19 GMT
VOLUME [/var/lib/influxdb]
# Wed, 17 Oct 2018 21:36:19 GMT
COPY file:b4fa000cf2aff5bf4e5093021ca6255fffa17c43ae18eb4c55ae28a3cc2dc281 in /entrypoint.sh 
# Wed, 17 Oct 2018 21:36:28 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 17 Oct 2018 21:36:28 GMT
CMD ["influxd-meta"]
```

-	Layers:
	-	`sha256:bc9ab73e5b14b9fbd3687a4d8c1f1360533d6ee9ffc3f5ecc6630794b40257b7`  
		Last Modified: Mon, 15 Oct 2018 23:33:47 GMT  
		Size: 45.3 MB (45309934 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:193a6306c92af328dbd41bbbd3200a2c90802624cccfe5725223324428110d7f`  
		Last Modified: Tue, 16 Oct 2018 01:13:35 GMT  
		Size: 10.7 MB (10740016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5c3f8c317dc30af45021092a3d76f16ba7aa1ee5f18fec742c84d4960818580`  
		Last Modified: Tue, 16 Oct 2018 01:13:33 GMT  
		Size: 4.3 MB (4336053 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4997ec2fe070d4927eb940dbec9169bad86195ff650b88a58b1592f55bbc00d0`  
		Last Modified: Tue, 16 Oct 2018 10:57:16 GMT  
		Size: 2.9 KB (2887 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c94a1a06ab1971eb1e859414595283a0da76e8ee9b4220081b8ae8e68ec27e6a`  
		Last Modified: Wed, 17 Oct 2018 21:41:42 GMT  
		Size: 12.5 MB (12546714 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44c64af65a57b4699099479c9f344d8c26080afb8d518ca3c9316e1b0c789eec`  
		Last Modified: Wed, 17 Oct 2018 21:41:40 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c47f82010b112431b07deffeab87db1061fd9df3267bd06f9391048d6b10b1f`  
		Last Modified: Wed, 17 Oct 2018 21:41:40 GMT  
		Size: 372.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `influxdb:meta-alpine`

```console
$ docker pull influxdb@sha256:a4d4bd3f6400a50b2e10c9c3c66bea90d02e870062378ae58b0d14dbd7f65e12
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `influxdb:meta-alpine` - linux; amd64

```console
$ docker pull influxdb@sha256:218e614a543cb75e32402227389c96bbe26ad598cfa0e8cbd73b1fc49a4ae3db
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.6 MB (16578347 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0b2723170f285323ba7f08182c4f8b215282a6f9a176163291618d134b4f33fe`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd-meta"]`

```dockerfile
# Tue, 11 Sep 2018 22:19:38 GMT
ADD file:49f9e47e678d868d5b023482aa8dded71276a241a665c4f8b55ca77269321b34 in / 
# Tue, 11 Sep 2018 22:19:39 GMT
CMD ["/bin/sh"]
# Wed, 17 Oct 2018 21:33:51 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf
# Wed, 17 Oct 2018 21:35:22 GMT
RUN apk add --no-cache tzdata bash ca-certificates &&     update-ca-certificates
# Wed, 17 Oct 2018 21:35:31 GMT
ENV INFLUXDB_VERSION=1.6.4-c1.6.4
# Wed, 17 Oct 2018 21:36:59 GMT
RUN set -ex &&     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/enterprise/releases/influxdb-meta-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/enterprise/releases/influxdb-meta-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify influxdb-meta-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc influxdb-meta-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf influxdb-meta-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/influxdb-*/influxdb-meta.conf &&     chmod +x /usr/src/influxdb-*/* &&     cp -a /usr/src/influxdb-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Wed, 17 Oct 2018 21:37:05 GMT
COPY file:95a6fe33e203909c093135fff9ff2b4cdc02ca4f1fe1dec109b5a9cf6b7a0946 in /etc/influxdb/influxdb-meta.conf 
# Wed, 17 Oct 2018 21:37:05 GMT
EXPOSE 8091/tcp
# Wed, 17 Oct 2018 21:37:05 GMT
VOLUME [/var/lib/influxdb]
# Wed, 17 Oct 2018 21:37:06 GMT
COPY file:b4fa000cf2aff5bf4e5093021ca6255fffa17c43ae18eb4c55ae28a3cc2dc281 in /entrypoint.sh 
# Wed, 17 Oct 2018 21:37:14 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 17 Oct 2018 21:37:14 GMT
CMD ["influxd-meta"]
```

-	Layers:
	-	`sha256:c67f3896b22c1378881cbbb9c9d1edfe881fd07f713371835ef46d93c649684d`  
		Last Modified: Tue, 11 Sep 2018 22:21:16 GMT  
		Size: 2.1 MB (2107175 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a953c286a2ebfe50a094c2300171addc58cd3b3eb94fea15eee7dded61987f85`  
		Last Modified: Wed, 17 Oct 2018 21:38:34 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a15c27853294e1b03bfac1013a903fc9fb399340c552ee9ba3d4bef68c211fd`  
		Last Modified: Wed, 17 Oct 2018 21:40:27 GMT  
		Size: 2.0 MB (1966599 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e70b545858dd5101ed14a5a05fa22b97ef9c03963fb11a055e4cc0eee903ffc4`  
		Last Modified: Wed, 17 Oct 2018 21:42:35 GMT  
		Size: 12.5 MB (12503850 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0af2305248fc83683eab8390b6ad49294d89b3b624dd3ebae2de5ce2a596b75`  
		Last Modified: Wed, 17 Oct 2018 21:42:32 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b077596b60cdd74a1f675b3cf6c41aeacdfcfc2ecd8c154e315b97595154c36`  
		Last Modified: Wed, 17 Oct 2018 21:42:32 GMT  
		Size: 375.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
