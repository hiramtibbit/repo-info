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
-	[`influxdb:1.7`](#influxdb17)
-	[`influxdb:1.7.2`](#influxdb172)
-	[`influxdb:1.7.2-alpine`](#influxdb172-alpine)
-	[`influxdb:1.7-alpine`](#influxdb17-alpine)
-	[`influxdb:alpine`](#influxdbalpine)
-	[`influxdb:data`](#influxdbdata)
-	[`influxdb:data-alpine`](#influxdbdata-alpine)
-	[`influxdb:latest`](#influxdblatest)
-	[`influxdb:meta`](#influxdbmeta)
-	[`influxdb:meta-alpine`](#influxdbmeta-alpine)

## `influxdb:1.5`

```console
$ docker pull influxdb@sha256:a7526de585d0f608036c37d93361170f3d18be166890034ed0d175dd79638283
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `influxdb:1.5` - linux; amd64

```console
$ docker pull influxdb@sha256:024f1642b08fe21a2fb6605da3e9a390e7b5dbac3de57c874c50b33aea3a3061
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **83.4 MB (83434040 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:639b8967efb446728940a5554bc1e1a0816413604cbaef1cce219b39579f2e1d`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Thu, 15 Nov 2018 22:44:00 GMT
ADD file:a61c14b18252183a4719980da97ac483044bcaa9df8a569a6d7bf0f719384b5e in / 
# Thu, 15 Nov 2018 22:44:09 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 11:15:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 11:16:02 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 16 Nov 2018 19:42:13 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Fri, 16 Nov 2018 19:42:13 GMT
ENV INFLUXDB_VERSION=1.5.4
# Fri, 16 Nov 2018 19:42:18 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     gpg --batch --verify influxdb_${INFLUXDB_VERSION}_${ARCH}.deb.asc influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     dpkg -i influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     rm -f influxdb_${INFLUXDB_VERSION}_${ARCH}.deb*
# Fri, 16 Nov 2018 19:42:18 GMT
COPY file:3ee2bc0321c2aa2451df7a508649c3a54f0eebc1ef9b8a24967c58105b4d3160 in /etc/influxdb/influxdb.conf 
# Fri, 16 Nov 2018 19:42:19 GMT
EXPOSE 8086/tcp
# Fri, 16 Nov 2018 19:42:19 GMT
VOLUME [/var/lib/influxdb]
# Fri, 16 Nov 2018 19:42:20 GMT
COPY file:098affa3d1b749dacb263ddacfd86a5de1f598d6ba1f7c789ce482c66ee9c80b in /entrypoint.sh 
# Fri, 16 Nov 2018 19:42:20 GMT
COPY file:44e0050f3b04248a6900eace944c581b13b4ad9af1e5cfb91d837cb5e24356e6 in /init-influxdb.sh 
# Fri, 16 Nov 2018 19:42:20 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 16 Nov 2018 19:42:21 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:54f7e8ac135a5f502a6ee9537ef3d64b1cd2fa570dc0a40b4d3b6f7ac81e7486`  
		Last Modified: Thu, 15 Nov 2018 23:08:31 GMT  
		Size: 45.3 MB (45320257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6341e30912f12f56e18564a3b582853f65376766f5f9d641a68a724ed6db88f`  
		Last Modified: Fri, 16 Nov 2018 11:33:18 GMT  
		Size: 10.7 MB (10740278 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:087a57faf9491b1b82a83e26bc8cc90c90c30e4a4d858b57ddd5b4c2c90095f6`  
		Last Modified: Fri, 16 Nov 2018 11:33:17 GMT  
		Size: 4.3 MB (4340083 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d648defeaeff4cbd969b5bd8ef56e245e831516f3fa53c25440cf45299945300`  
		Last Modified: Fri, 16 Nov 2018 19:50:21 GMT  
		Size: 2.9 KB (2884 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9610aafb52ae8f1bddc387d1251e1bd164619709eeee6b78f86c3f5e2c9156eb`  
		Last Modified: Fri, 16 Nov 2018 19:50:29 GMT  
		Size: 23.0 MB (23028941 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34836bb493ef8a6f770a856ff3323cd232c647f6265ec216a2885ca2ee3c2c27`  
		Last Modified: Fri, 16 Nov 2018 19:50:21 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9be9e6b1d370f2ce17f3bcaa7c5b904c6a404cc9ce302f671dc598e6e777006`  
		Last Modified: Fri, 16 Nov 2018 19:50:21 GMT  
		Size: 209.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d94cd29c7a354cd542868c7966f42f385fc05988192ec9472a14d429e14da09`  
		Last Modified: Fri, 16 Nov 2018 19:50:21 GMT  
		Size: 1.2 KB (1165 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `influxdb:1.5` - linux; arm variant v7

```console
$ docker pull influxdb@sha256:ccc03e820389b74bfb963fca756949a0f1f488bc9cee359d9f44d1e3e08dabe7
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **77.1 MB (77098418 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:12c1181f1074fddf66771d2a87373c661aff300624b23fc41879051cd45e7d7a`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Fri, 16 Nov 2018 13:08:47 GMT
ADD file:085a6a2a32a05acfff8d2b179dad7789d649aca5cf2565a5b5490403e3d3cea0 in / 
# Fri, 16 Nov 2018 13:08:48 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 18:17:27 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 18:17:38 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 16 Nov 2018 22:44:53 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Fri, 16 Nov 2018 22:45:07 GMT
ENV INFLUXDB_VERSION=1.5.4
# Fri, 16 Nov 2018 22:45:12 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     gpg --batch --verify influxdb_${INFLUXDB_VERSION}_${ARCH}.deb.asc influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     dpkg -i influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     rm -f influxdb_${INFLUXDB_VERSION}_${ARCH}.deb*
# Fri, 16 Nov 2018 22:45:13 GMT
COPY file:3ee2bc0321c2aa2451df7a508649c3a54f0eebc1ef9b8a24967c58105b4d3160 in /etc/influxdb/influxdb.conf 
# Fri, 16 Nov 2018 22:45:14 GMT
EXPOSE 8086/tcp
# Fri, 16 Nov 2018 22:45:14 GMT
VOLUME [/var/lib/influxdb]
# Fri, 16 Nov 2018 22:45:15 GMT
COPY file:098affa3d1b749dacb263ddacfd86a5de1f598d6ba1f7c789ce482c66ee9c80b in /entrypoint.sh 
# Fri, 16 Nov 2018 22:45:16 GMT
COPY file:44e0050f3b04248a6900eace944c581b13b4ad9af1e5cfb91d837cb5e24356e6 in /init-influxdb.sh 
# Fri, 16 Nov 2018 22:45:16 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 16 Nov 2018 22:45:16 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:33dd5ae6335a66a99c6beb10708f7ff8d992b1075b6477cce3accbbe3b3a765e`  
		Last Modified: Fri, 16 Nov 2018 13:21:03 GMT  
		Size: 42.1 MB (42076140 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7353b73b294b9e3d692697431695f92c48a581f30b3295a5fad1b80854f13e5b`  
		Last Modified: Fri, 16 Nov 2018 18:31:31 GMT  
		Size: 9.4 MB (9440401 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e92165ab0bf59142c3f101750c7a81a51d559eed557c0674a209979d86fd4a9`  
		Last Modified: Fri, 16 Nov 2018 18:31:30 GMT  
		Size: 3.9 MB (3918472 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4aac8f53f358cf4c4deb8638fcfd8bb0f9e83d57cb993c17fb9ed9671c024ac4`  
		Last Modified: Fri, 16 Nov 2018 22:47:26 GMT  
		Size: 2.9 KB (2915 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc0a9e16f57fc6d03393647301c67d51a65121ff375063b08bf6c2fe0702c7a3`  
		Last Modified: Fri, 16 Nov 2018 22:47:33 GMT  
		Size: 21.7 MB (21658887 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9b65a40ff3f0d270c235816ff92e19d83c3f26eebcaf9616608d7b0e929dec6`  
		Last Modified: Fri, 16 Nov 2018 22:47:26 GMT  
		Size: 227.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2231b4e8670d1612a8eb94d9fda833de12709afa759c71fcc747af3252b41045`  
		Last Modified: Fri, 16 Nov 2018 22:47:26 GMT  
		Size: 211.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9f656c4449381bc8b72a1dc2e7d9bd6a55f5a6c797ac33d4468dc6f6ed14ef8`  
		Last Modified: Fri, 16 Nov 2018 22:47:26 GMT  
		Size: 1.2 KB (1165 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `influxdb:1.5` - linux; arm64 variant v8

```console
$ docker pull influxdb@sha256:38d5e8facd912c499486a57db29229f3a8b77d544c31ec28df55f4e0e53ff658
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **77.9 MB (77914935 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6082fb9362704168ace96f439019a4c421cf2db7af983f16a5156c7a8afa5dfe`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Fri, 16 Nov 2018 10:13:25 GMT
ADD file:bf8c0ee6d5a7d54f0c1259b5f65569cf7e5e828cfbe98302312933537cd9087e in / 
# Fri, 16 Nov 2018 10:13:26 GMT
CMD ["bash"]
# Sat, 17 Nov 2018 02:30:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 17 Nov 2018 02:30:54 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 17 Nov 2018 16:58:50 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Sat, 17 Nov 2018 16:58:51 GMT
ENV INFLUXDB_VERSION=1.5.4
# Sat, 17 Nov 2018 16:59:02 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     gpg --batch --verify influxdb_${INFLUXDB_VERSION}_${ARCH}.deb.asc influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     dpkg -i influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     rm -f influxdb_${INFLUXDB_VERSION}_${ARCH}.deb*
# Sat, 17 Nov 2018 16:59:03 GMT
COPY file:3ee2bc0321c2aa2451df7a508649c3a54f0eebc1ef9b8a24967c58105b4d3160 in /etc/influxdb/influxdb.conf 
# Sat, 17 Nov 2018 16:59:03 GMT
EXPOSE 8086/tcp
# Sat, 17 Nov 2018 16:59:04 GMT
VOLUME [/var/lib/influxdb]
# Sat, 17 Nov 2018 16:59:05 GMT
COPY file:098affa3d1b749dacb263ddacfd86a5de1f598d6ba1f7c789ce482c66ee9c80b in /entrypoint.sh 
# Sat, 17 Nov 2018 16:59:06 GMT
COPY file:44e0050f3b04248a6900eace944c581b13b4ad9af1e5cfb91d837cb5e24356e6 in /init-influxdb.sh 
# Sat, 17 Nov 2018 16:59:06 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Sat, 17 Nov 2018 16:59:07 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:4f3698b9865b00fa6eb7e0d3d11692c31eb0dc455aa6ab111d965bae67726698`  
		Last Modified: Thu, 15 Nov 2018 01:52:55 GMT  
		Size: 43.1 MB (43116700 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d136331294ced7de67c8e4bea8c807c347632c0aa25c4ec2ae6a7a3e346d6c1`  
		Last Modified: Sat, 17 Nov 2018 02:50:40 GMT  
		Size: 9.7 MB (9690286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44c15aa4d980e5d3689a8a8099f7d79fb667611239aab1dfa5447b52f0a24934`  
		Last Modified: Sat, 17 Nov 2018 02:50:38 GMT  
		Size: 4.1 MB (4093102 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a58696b91002d344db2504db959bd55413ce3d671d4bb1680ff14794d8653394`  
		Last Modified: Sat, 17 Nov 2018 17:00:47 GMT  
		Size: 2.9 KB (2887 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2bab9e816c7a34505e84bb488e8156b0f2fff24246482a859992c9ce551877a`  
		Last Modified: Sat, 17 Nov 2018 17:00:56 GMT  
		Size: 21.0 MB (21010362 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0d6b7e794b2323e68821f29ee9b2ad1ec92a267a649add2bf910c7e7ec466e0`  
		Last Modified: Sat, 17 Nov 2018 17:00:47 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e526eed46b636ab0672fb7a9483241d1a7c8f7d22702234d0b86175982f7adde`  
		Last Modified: Sat, 17 Nov 2018 17:00:47 GMT  
		Size: 210.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c727d3b548d33cbced15687732f1141f8995b5e6212e350b92379d3d5c6b692`  
		Last Modified: Sat, 17 Nov 2018 17:00:47 GMT  
		Size: 1.2 KB (1165 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `influxdb:1.5.4`

```console
$ docker pull influxdb@sha256:a7526de585d0f608036c37d93361170f3d18be166890034ed0d175dd79638283
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `influxdb:1.5.4` - linux; amd64

```console
$ docker pull influxdb@sha256:024f1642b08fe21a2fb6605da3e9a390e7b5dbac3de57c874c50b33aea3a3061
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **83.4 MB (83434040 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:639b8967efb446728940a5554bc1e1a0816413604cbaef1cce219b39579f2e1d`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Thu, 15 Nov 2018 22:44:00 GMT
ADD file:a61c14b18252183a4719980da97ac483044bcaa9df8a569a6d7bf0f719384b5e in / 
# Thu, 15 Nov 2018 22:44:09 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 11:15:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 11:16:02 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 16 Nov 2018 19:42:13 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Fri, 16 Nov 2018 19:42:13 GMT
ENV INFLUXDB_VERSION=1.5.4
# Fri, 16 Nov 2018 19:42:18 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     gpg --batch --verify influxdb_${INFLUXDB_VERSION}_${ARCH}.deb.asc influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     dpkg -i influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     rm -f influxdb_${INFLUXDB_VERSION}_${ARCH}.deb*
# Fri, 16 Nov 2018 19:42:18 GMT
COPY file:3ee2bc0321c2aa2451df7a508649c3a54f0eebc1ef9b8a24967c58105b4d3160 in /etc/influxdb/influxdb.conf 
# Fri, 16 Nov 2018 19:42:19 GMT
EXPOSE 8086/tcp
# Fri, 16 Nov 2018 19:42:19 GMT
VOLUME [/var/lib/influxdb]
# Fri, 16 Nov 2018 19:42:20 GMT
COPY file:098affa3d1b749dacb263ddacfd86a5de1f598d6ba1f7c789ce482c66ee9c80b in /entrypoint.sh 
# Fri, 16 Nov 2018 19:42:20 GMT
COPY file:44e0050f3b04248a6900eace944c581b13b4ad9af1e5cfb91d837cb5e24356e6 in /init-influxdb.sh 
# Fri, 16 Nov 2018 19:42:20 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 16 Nov 2018 19:42:21 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:54f7e8ac135a5f502a6ee9537ef3d64b1cd2fa570dc0a40b4d3b6f7ac81e7486`  
		Last Modified: Thu, 15 Nov 2018 23:08:31 GMT  
		Size: 45.3 MB (45320257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6341e30912f12f56e18564a3b582853f65376766f5f9d641a68a724ed6db88f`  
		Last Modified: Fri, 16 Nov 2018 11:33:18 GMT  
		Size: 10.7 MB (10740278 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:087a57faf9491b1b82a83e26bc8cc90c90c30e4a4d858b57ddd5b4c2c90095f6`  
		Last Modified: Fri, 16 Nov 2018 11:33:17 GMT  
		Size: 4.3 MB (4340083 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d648defeaeff4cbd969b5bd8ef56e245e831516f3fa53c25440cf45299945300`  
		Last Modified: Fri, 16 Nov 2018 19:50:21 GMT  
		Size: 2.9 KB (2884 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9610aafb52ae8f1bddc387d1251e1bd164619709eeee6b78f86c3f5e2c9156eb`  
		Last Modified: Fri, 16 Nov 2018 19:50:29 GMT  
		Size: 23.0 MB (23028941 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34836bb493ef8a6f770a856ff3323cd232c647f6265ec216a2885ca2ee3c2c27`  
		Last Modified: Fri, 16 Nov 2018 19:50:21 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9be9e6b1d370f2ce17f3bcaa7c5b904c6a404cc9ce302f671dc598e6e777006`  
		Last Modified: Fri, 16 Nov 2018 19:50:21 GMT  
		Size: 209.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d94cd29c7a354cd542868c7966f42f385fc05988192ec9472a14d429e14da09`  
		Last Modified: Fri, 16 Nov 2018 19:50:21 GMT  
		Size: 1.2 KB (1165 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `influxdb:1.5.4` - linux; arm variant v7

```console
$ docker pull influxdb@sha256:ccc03e820389b74bfb963fca756949a0f1f488bc9cee359d9f44d1e3e08dabe7
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **77.1 MB (77098418 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:12c1181f1074fddf66771d2a87373c661aff300624b23fc41879051cd45e7d7a`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Fri, 16 Nov 2018 13:08:47 GMT
ADD file:085a6a2a32a05acfff8d2b179dad7789d649aca5cf2565a5b5490403e3d3cea0 in / 
# Fri, 16 Nov 2018 13:08:48 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 18:17:27 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 18:17:38 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 16 Nov 2018 22:44:53 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Fri, 16 Nov 2018 22:45:07 GMT
ENV INFLUXDB_VERSION=1.5.4
# Fri, 16 Nov 2018 22:45:12 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     gpg --batch --verify influxdb_${INFLUXDB_VERSION}_${ARCH}.deb.asc influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     dpkg -i influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     rm -f influxdb_${INFLUXDB_VERSION}_${ARCH}.deb*
# Fri, 16 Nov 2018 22:45:13 GMT
COPY file:3ee2bc0321c2aa2451df7a508649c3a54f0eebc1ef9b8a24967c58105b4d3160 in /etc/influxdb/influxdb.conf 
# Fri, 16 Nov 2018 22:45:14 GMT
EXPOSE 8086/tcp
# Fri, 16 Nov 2018 22:45:14 GMT
VOLUME [/var/lib/influxdb]
# Fri, 16 Nov 2018 22:45:15 GMT
COPY file:098affa3d1b749dacb263ddacfd86a5de1f598d6ba1f7c789ce482c66ee9c80b in /entrypoint.sh 
# Fri, 16 Nov 2018 22:45:16 GMT
COPY file:44e0050f3b04248a6900eace944c581b13b4ad9af1e5cfb91d837cb5e24356e6 in /init-influxdb.sh 
# Fri, 16 Nov 2018 22:45:16 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 16 Nov 2018 22:45:16 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:33dd5ae6335a66a99c6beb10708f7ff8d992b1075b6477cce3accbbe3b3a765e`  
		Last Modified: Fri, 16 Nov 2018 13:21:03 GMT  
		Size: 42.1 MB (42076140 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7353b73b294b9e3d692697431695f92c48a581f30b3295a5fad1b80854f13e5b`  
		Last Modified: Fri, 16 Nov 2018 18:31:31 GMT  
		Size: 9.4 MB (9440401 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e92165ab0bf59142c3f101750c7a81a51d559eed557c0674a209979d86fd4a9`  
		Last Modified: Fri, 16 Nov 2018 18:31:30 GMT  
		Size: 3.9 MB (3918472 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4aac8f53f358cf4c4deb8638fcfd8bb0f9e83d57cb993c17fb9ed9671c024ac4`  
		Last Modified: Fri, 16 Nov 2018 22:47:26 GMT  
		Size: 2.9 KB (2915 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc0a9e16f57fc6d03393647301c67d51a65121ff375063b08bf6c2fe0702c7a3`  
		Last Modified: Fri, 16 Nov 2018 22:47:33 GMT  
		Size: 21.7 MB (21658887 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9b65a40ff3f0d270c235816ff92e19d83c3f26eebcaf9616608d7b0e929dec6`  
		Last Modified: Fri, 16 Nov 2018 22:47:26 GMT  
		Size: 227.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2231b4e8670d1612a8eb94d9fda833de12709afa759c71fcc747af3252b41045`  
		Last Modified: Fri, 16 Nov 2018 22:47:26 GMT  
		Size: 211.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9f656c4449381bc8b72a1dc2e7d9bd6a55f5a6c797ac33d4468dc6f6ed14ef8`  
		Last Modified: Fri, 16 Nov 2018 22:47:26 GMT  
		Size: 1.2 KB (1165 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `influxdb:1.5.4` - linux; arm64 variant v8

```console
$ docker pull influxdb@sha256:38d5e8facd912c499486a57db29229f3a8b77d544c31ec28df55f4e0e53ff658
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **77.9 MB (77914935 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6082fb9362704168ace96f439019a4c421cf2db7af983f16a5156c7a8afa5dfe`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Fri, 16 Nov 2018 10:13:25 GMT
ADD file:bf8c0ee6d5a7d54f0c1259b5f65569cf7e5e828cfbe98302312933537cd9087e in / 
# Fri, 16 Nov 2018 10:13:26 GMT
CMD ["bash"]
# Sat, 17 Nov 2018 02:30:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 17 Nov 2018 02:30:54 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 17 Nov 2018 16:58:50 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Sat, 17 Nov 2018 16:58:51 GMT
ENV INFLUXDB_VERSION=1.5.4
# Sat, 17 Nov 2018 16:59:02 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     gpg --batch --verify influxdb_${INFLUXDB_VERSION}_${ARCH}.deb.asc influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     dpkg -i influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     rm -f influxdb_${INFLUXDB_VERSION}_${ARCH}.deb*
# Sat, 17 Nov 2018 16:59:03 GMT
COPY file:3ee2bc0321c2aa2451df7a508649c3a54f0eebc1ef9b8a24967c58105b4d3160 in /etc/influxdb/influxdb.conf 
# Sat, 17 Nov 2018 16:59:03 GMT
EXPOSE 8086/tcp
# Sat, 17 Nov 2018 16:59:04 GMT
VOLUME [/var/lib/influxdb]
# Sat, 17 Nov 2018 16:59:05 GMT
COPY file:098affa3d1b749dacb263ddacfd86a5de1f598d6ba1f7c789ce482c66ee9c80b in /entrypoint.sh 
# Sat, 17 Nov 2018 16:59:06 GMT
COPY file:44e0050f3b04248a6900eace944c581b13b4ad9af1e5cfb91d837cb5e24356e6 in /init-influxdb.sh 
# Sat, 17 Nov 2018 16:59:06 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Sat, 17 Nov 2018 16:59:07 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:4f3698b9865b00fa6eb7e0d3d11692c31eb0dc455aa6ab111d965bae67726698`  
		Last Modified: Thu, 15 Nov 2018 01:52:55 GMT  
		Size: 43.1 MB (43116700 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d136331294ced7de67c8e4bea8c807c347632c0aa25c4ec2ae6a7a3e346d6c1`  
		Last Modified: Sat, 17 Nov 2018 02:50:40 GMT  
		Size: 9.7 MB (9690286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44c15aa4d980e5d3689a8a8099f7d79fb667611239aab1dfa5447b52f0a24934`  
		Last Modified: Sat, 17 Nov 2018 02:50:38 GMT  
		Size: 4.1 MB (4093102 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a58696b91002d344db2504db959bd55413ce3d671d4bb1680ff14794d8653394`  
		Last Modified: Sat, 17 Nov 2018 17:00:47 GMT  
		Size: 2.9 KB (2887 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2bab9e816c7a34505e84bb488e8156b0f2fff24246482a859992c9ce551877a`  
		Last Modified: Sat, 17 Nov 2018 17:00:56 GMT  
		Size: 21.0 MB (21010362 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0d6b7e794b2323e68821f29ee9b2ad1ec92a267a649add2bf910c7e7ec466e0`  
		Last Modified: Sat, 17 Nov 2018 17:00:47 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e526eed46b636ab0672fb7a9483241d1a7c8f7d22702234d0b86175982f7adde`  
		Last Modified: Sat, 17 Nov 2018 17:00:47 GMT  
		Size: 210.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c727d3b548d33cbced15687732f1141f8995b5e6212e350b92379d3d5c6b692`  
		Last Modified: Sat, 17 Nov 2018 17:00:47 GMT  
		Size: 1.2 KB (1165 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `influxdb:1.5.4-alpine`

```console
$ docker pull influxdb@sha256:9f3140c5447e67644b8d4f593da137671fb6554a0f17bacff0a5de9147607dc7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `influxdb:1.5.4-alpine` - linux; amd64

```console
$ docker pull influxdb@sha256:f503ae8950269d0ed442c27403de36a332ba5ba08e4fc6fa4eb9bae39b19ba2f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.8 MB (26793715 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:966c754522156e1dcac82b425c049afe83f1acb394b7ec946c3c209fbe1a7c84`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Fri, 21 Dec 2018 00:20:45 GMT
ADD file:34555dc4e7cea1950fb55d748361debb278a7c96d0a02d2ef75c50cf6c59bfe7 in / 
# Fri, 21 Dec 2018 00:20:45 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 00:52:19 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf
# Fri, 21 Dec 2018 04:20:14 GMT
RUN apk add --no-cache tzdata bash ca-certificates &&     update-ca-certificates
# Fri, 21 Dec 2018 04:20:14 GMT
ENV INFLUXDB_VERSION=1.5.4
# Fri, 21 Dec 2018 04:20:21 GMT
RUN set -ex &&     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/influxdb/releases/influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/influxdb/releases/influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/influxdb-*/influxdb.conf &&     chmod +x /usr/src/influxdb-*/* &&     cp -a /usr/src/influxdb-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Fri, 21 Dec 2018 04:20:21 GMT
COPY file:3d8a606d61e1fc0042cf34d036eda4550a18d140c47376dacc02d96ee6f2dd8b in /etc/influxdb/influxdb.conf 
# Fri, 21 Dec 2018 04:20:22 GMT
EXPOSE 8086
# Fri, 21 Dec 2018 04:20:22 GMT
VOLUME [/var/lib/influxdb]
# Fri, 21 Dec 2018 04:20:22 GMT
COPY file:61c4af7a0e637328374ec46266ed6dde40adf7d14ac6c5081100924991beb7f3 in /entrypoint.sh 
# Fri, 21 Dec 2018 04:20:22 GMT
COPY file:892fcd3130baa17c0b88866ac37e7fe0b7b420a67105d9cd99803c685eaf9df4 in /init-influxdb.sh 
# Fri, 21 Dec 2018 04:20:23 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 21 Dec 2018 04:20:23 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:ab3d5dc0b96d2bf3b1046fcc333619417a73b4f5fade00f1bbe32ffc6ffa6635`  
		Last Modified: Fri, 21 Dec 2018 00:23:38 GMT  
		Size: 2.0 MB (2016692 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83c4a5c6312c5d86f737c0a4cfcee90a60b986e34ea8e9f0127a776b63a6eeff`  
		Last Modified: Fri, 21 Dec 2018 00:53:01 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a62dc82f1de20168b701b7f73f41661d8fdc56eb35d2af12a8c5cb110e908d12`  
		Last Modified: Fri, 21 Dec 2018 04:22:06 GMT  
		Size: 1.9 MB (1859596 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65dce851de8aa07b64dc2a7b6e804bc8fed2030ee723e07dce002aa233fa0a3f`  
		Last Modified: Fri, 21 Dec 2018 04:22:10 GMT  
		Size: 22.9 MB (22915676 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b923d6ce08e8c170781f5f5a01626afa93abe7f1cf2c20d5c1979089ca3a6a1`  
		Last Modified: Fri, 21 Dec 2018 04:22:04 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e2d8272828acd80f2331af39c45e0389b898ee5f6044046a8007fa0a64f391f`  
		Last Modified: Fri, 21 Dec 2018 04:22:05 GMT  
		Size: 210.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:690dd74a989fbc83b1d056831988172e1651624d4424c181f8351d18aa5d9e4f`  
		Last Modified: Fri, 21 Dec 2018 04:22:05 GMT  
		Size: 1.2 KB (1165 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `influxdb:1.5.4-data`

```console
$ docker pull influxdb@sha256:10a8c47cd20131251863fe861563c59c4c888c66f76576033021ef8edcd7f214
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `influxdb:1.5.4-data` - linux; amd64

```console
$ docker pull influxdb@sha256:52d9bd7db15d85cd45f55cec30cd0d4f38e0fd1d50cb5560021d61d567a17d60
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **84.2 MB (84187798 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e71715582a1827e895c1108974ce48f14801c27d356f8afe9b25181e99da3518`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Thu, 15 Nov 2018 22:44:00 GMT
ADD file:a61c14b18252183a4719980da97ac483044bcaa9df8a569a6d7bf0f719384b5e in / 
# Thu, 15 Nov 2018 22:44:09 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 11:15:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 11:16:02 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 16 Nov 2018 19:42:13 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Fri, 16 Nov 2018 19:43:09 GMT
ENV INFLUXDB_VERSION=1.5.4-c1.5.4
# Fri, 16 Nov 2018 19:43:13 GMT
RUN wget --no-verbose https://dl.influxdata.com/enterprise/releases/influxdb-data_${INFLUXDB_VERSION}_amd64.deb.asc &&     wget --no-verbose https://dl.influxdata.com/enterprise/releases/influxdb-data_${INFLUXDB_VERSION}_amd64.deb &&     gpg --batch --verify influxdb-data_${INFLUXDB_VERSION}_amd64.deb.asc influxdb-data_${INFLUXDB_VERSION}_amd64.deb &&     dpkg -i influxdb-data_${INFLUXDB_VERSION}_amd64.deb &&     rm -f influxdb-data_${INFLUXDB_VERSION}_amd64.deb*
# Fri, 16 Nov 2018 19:43:14 GMT
COPY file:a7fc957fd6465cc132b5d41618061e4ac55bd347b790cd87cc496ab4f67a274b in /etc/influxdb/influxdb.conf 
# Fri, 16 Nov 2018 19:43:14 GMT
EXPOSE 8086/tcp
# Fri, 16 Nov 2018 19:43:14 GMT
VOLUME [/var/lib/influxdb]
# Fri, 16 Nov 2018 19:43:15 GMT
COPY file:efb819384a9e7a972c15df74e1d18c7d6296e633a7c533def9a6d400b69468fc in /entrypoint.sh 
# Fri, 16 Nov 2018 19:43:15 GMT
COPY file:44e0050f3b04248a6900eace944c581b13b4ad9af1e5cfb91d837cb5e24356e6 in /init-influxdb.sh 
# Fri, 16 Nov 2018 19:43:16 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 16 Nov 2018 19:43:16 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:54f7e8ac135a5f502a6ee9537ef3d64b1cd2fa570dc0a40b4d3b6f7ac81e7486`  
		Last Modified: Thu, 15 Nov 2018 23:08:31 GMT  
		Size: 45.3 MB (45320257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6341e30912f12f56e18564a3b582853f65376766f5f9d641a68a724ed6db88f`  
		Last Modified: Fri, 16 Nov 2018 11:33:18 GMT  
		Size: 10.7 MB (10740278 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:087a57faf9491b1b82a83e26bc8cc90c90c30e4a4d858b57ddd5b4c2c90095f6`  
		Last Modified: Fri, 16 Nov 2018 11:33:17 GMT  
		Size: 4.3 MB (4340083 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d648defeaeff4cbd969b5bd8ef56e245e831516f3fa53c25440cf45299945300`  
		Last Modified: Fri, 16 Nov 2018 19:50:21 GMT  
		Size: 2.9 KB (2884 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba551323b4cc577b987911ca1dc7df1f3d0526b851fc2496f7fcc01c87d19d16`  
		Last Modified: Fri, 16 Nov 2018 19:51:11 GMT  
		Size: 23.8 MB (23782639 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1612e533ebe251918ed5ff7d35c04a882467f4e1a2d4a56e89b4640b607be4c`  
		Last Modified: Fri, 16 Nov 2018 19:51:03 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5d65b07e4e5b2c3773d7e370fb13adf17c385b9ac1f7298e2c2c72a05f654a0`  
		Last Modified: Fri, 16 Nov 2018 19:51:03 GMT  
		Size: 252.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c007d0dbdd9bbb1d726ae18a7de7cefe050ec7405f29309e9935a8e9ed7b0f8`  
		Last Modified: Fri, 16 Nov 2018 19:51:03 GMT  
		Size: 1.2 KB (1165 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `influxdb:1.5.4-data-alpine`

```console
$ docker pull influxdb@sha256:943c07d690cc76e2f0b85a821d30aa004b4f69ab254a9a2e0ae5b1b1e6b5d578
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `influxdb:1.5.4-data-alpine` - linux; amd64

```console
$ docker pull influxdb@sha256:0a454bba47a2773a89fea1b19860d1d0a3c4167ae954797be0aa31f2a7028463
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.5 MB (27547121 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:04dc2ad33b93b8f73c0f81cdc5ef84fca7ad00a7b655ffac9791a78286a53f3c`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Fri, 21 Dec 2018 00:20:45 GMT
ADD file:34555dc4e7cea1950fb55d748361debb278a7c96d0a02d2ef75c50cf6c59bfe7 in / 
# Fri, 21 Dec 2018 00:20:45 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 00:52:19 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf
# Fri, 21 Dec 2018 04:20:14 GMT
RUN apk add --no-cache tzdata bash ca-certificates &&     update-ca-certificates
# Fri, 21 Dec 2018 04:20:29 GMT
ENV INFLUXDB_VERSION=1.5.4-c1.5.4
# Fri, 21 Dec 2018 04:20:36 GMT
RUN set -ex &&     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/enterprise/releases/influxdb-data-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/enterprise/releases/influxdb-data-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify influxdb-data-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc influxdb-data-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf influxdb-data-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/influxdb-*/influxdb.conf &&     chmod +x /usr/src/influxdb-*/* &&     cp -a /usr/src/influxdb-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Fri, 21 Dec 2018 04:20:36 GMT
COPY file:bf2f42b62a32a7ee3ab93d9a5e451b7d59af1a97e40dc4a76b8aaf2f64383d7a in /etc/influxdb/influxdb.conf 
# Fri, 21 Dec 2018 04:20:37 GMT
EXPOSE 8086
# Fri, 21 Dec 2018 04:20:37 GMT
VOLUME [/var/lib/influxdb]
# Fri, 21 Dec 2018 04:20:37 GMT
COPY file:182a0176834db40043100d082d05e5aded9887c94b02416f6e3154c827c07360 in /entrypoint.sh 
# Fri, 21 Dec 2018 04:20:37 GMT
COPY file:892fcd3130baa17c0b88866ac37e7fe0b7b420a67105d9cd99803c685eaf9df4 in /init-influxdb.sh 
# Fri, 21 Dec 2018 04:20:38 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 21 Dec 2018 04:20:38 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:ab3d5dc0b96d2bf3b1046fcc333619417a73b4f5fade00f1bbe32ffc6ffa6635`  
		Last Modified: Fri, 21 Dec 2018 00:23:38 GMT  
		Size: 2.0 MB (2016692 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83c4a5c6312c5d86f737c0a4cfcee90a60b986e34ea8e9f0127a776b63a6eeff`  
		Last Modified: Fri, 21 Dec 2018 00:53:01 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a62dc82f1de20168b701b7f73f41661d8fdc56eb35d2af12a8c5cb110e908d12`  
		Last Modified: Fri, 21 Dec 2018 04:22:06 GMT  
		Size: 1.9 MB (1859596 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e815d16e6711640c3af18a9de64152d7806552f07526cb8cfb95302306919da`  
		Last Modified: Fri, 21 Dec 2018 04:22:20 GMT  
		Size: 23.7 MB (23669025 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c548be0d5fbddcae04f81206b34b12b7497e95f93a9abab3c9aa4e7cd1fbc5f0`  
		Last Modified: Fri, 21 Dec 2018 04:22:14 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02c5372e1a860e0e579ef1c80081cfbf75e2009c71dd8318e06fc52b428c6416`  
		Last Modified: Fri, 21 Dec 2018 04:22:14 GMT  
		Size: 250.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea2ba5ac316524597db668187dc2fd21e6376aeaf4d6588458817bb49d78dc35`  
		Last Modified: Fri, 21 Dec 2018 04:22:14 GMT  
		Size: 1.2 KB (1166 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `influxdb:1.5.4-meta`

```console
$ docker pull influxdb@sha256:75f50abf4569344175bc048ac5589a560f4acfe373508bf2aed1fbdff6ef1491
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `influxdb:1.5.4-meta` - linux; amd64

```console
$ docker pull influxdb@sha256:a60518ee07a93a73a5c4790ae2ddb9cf264e38526137981b4cddb6401c70ba01
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **71.6 MB (71598119 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e73b582cfae2a12b928282de2c7ce024c67d5c7a0d8bb790a11a66610407f871`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd-meta"]`

```dockerfile
# Thu, 15 Nov 2018 22:44:00 GMT
ADD file:a61c14b18252183a4719980da97ac483044bcaa9df8a569a6d7bf0f719384b5e in / 
# Thu, 15 Nov 2018 22:44:09 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 11:15:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 11:16:02 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 16 Nov 2018 19:42:13 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Fri, 16 Nov 2018 19:43:09 GMT
ENV INFLUXDB_VERSION=1.5.4-c1.5.4
# Fri, 16 Nov 2018 19:44:13 GMT
RUN wget --no-verbose https://dl.influxdata.com/enterprise/releases/influxdb-meta_${INFLUXDB_VERSION}_amd64.deb.asc &&     wget --no-verbose https://dl.influxdata.com/enterprise/releases/influxdb-meta_${INFLUXDB_VERSION}_amd64.deb &&     gpg --batch --verify influxdb-meta_${INFLUXDB_VERSION}_amd64.deb.asc influxdb-meta_${INFLUXDB_VERSION}_amd64.deb &&     dpkg -i influxdb-meta_${INFLUXDB_VERSION}_amd64.deb &&     rm -f influxdb-meta_${INFLUXDB_VERSION}_amd64.deb*
# Fri, 16 Nov 2018 19:44:14 GMT
COPY file:95a6fe33e203909c093135fff9ff2b4cdc02ca4f1fe1dec109b5a9cf6b7a0946 in /etc/influxdb/influxdb-meta.conf 
# Fri, 16 Nov 2018 19:44:14 GMT
EXPOSE 8091/tcp
# Fri, 16 Nov 2018 19:44:15 GMT
VOLUME [/var/lib/influxdb]
# Fri, 16 Nov 2018 19:44:16 GMT
COPY file:b4fa000cf2aff5bf4e5093021ca6255fffa17c43ae18eb4c55ae28a3cc2dc281 in /entrypoint.sh 
# Fri, 16 Nov 2018 19:44:16 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 16 Nov 2018 19:44:17 GMT
CMD ["influxd-meta"]
```

-	Layers:
	-	`sha256:54f7e8ac135a5f502a6ee9537ef3d64b1cd2fa570dc0a40b4d3b6f7ac81e7486`  
		Last Modified: Thu, 15 Nov 2018 23:08:31 GMT  
		Size: 45.3 MB (45320257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6341e30912f12f56e18564a3b582853f65376766f5f9d641a68a724ed6db88f`  
		Last Modified: Fri, 16 Nov 2018 11:33:18 GMT  
		Size: 10.7 MB (10740278 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:087a57faf9491b1b82a83e26bc8cc90c90c30e4a4d858b57ddd5b4c2c90095f6`  
		Last Modified: Fri, 16 Nov 2018 11:33:17 GMT  
		Size: 4.3 MB (4340083 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d648defeaeff4cbd969b5bd8ef56e245e831516f3fa53c25440cf45299945300`  
		Last Modified: Fri, 16 Nov 2018 19:50:21 GMT  
		Size: 2.9 KB (2884 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2bc99f936e679a5d21ef3726f7b326e00f1958d33b9eea9eafbc6fa4fa7b02fd`  
		Last Modified: Fri, 16 Nov 2018 19:52:08 GMT  
		Size: 11.2 MB (11194048 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83fb3b651809e085a83c14a2279073c51bd6fa9fd684da4e8e7a41837c50b6ba`  
		Last Modified: Fri, 16 Nov 2018 19:52:05 GMT  
		Size: 196.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fcc49eeabd8416e15830df02779910f2c7564df4a5de7acf5cf55585aa5991be`  
		Last Modified: Fri, 16 Nov 2018 19:52:05 GMT  
		Size: 373.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `influxdb:1.5.4-meta-alpine`

```console
$ docker pull influxdb@sha256:c4c6dbbbc2020cba3e31221afd03cf3aa123c0157f34696f15565d0d42b81a2a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `influxdb:1.5.4-meta-alpine` - linux; amd64

```console
$ docker pull influxdb@sha256:91347027e5af25c09247652bf4bdd025b4ee39542dc5170a7badeeef0391dc9b
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.0 MB (15027634 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:91fe8bc7a368f6d8a96ffe3144b255476a77abbd992222b5f014ce6aa65ac258`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd-meta"]`

```dockerfile
# Fri, 21 Dec 2018 00:20:45 GMT
ADD file:34555dc4e7cea1950fb55d748361debb278a7c96d0a02d2ef75c50cf6c59bfe7 in / 
# Fri, 21 Dec 2018 00:20:45 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 00:52:19 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf
# Fri, 21 Dec 2018 04:20:14 GMT
RUN apk add --no-cache tzdata bash ca-certificates &&     update-ca-certificates
# Fri, 21 Dec 2018 04:20:29 GMT
ENV INFLUXDB_VERSION=1.5.4-c1.5.4
# Fri, 21 Dec 2018 04:20:50 GMT
RUN set -ex &&     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/enterprise/releases/influxdb-meta-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/enterprise/releases/influxdb-meta-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify influxdb-meta-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc influxdb-meta-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf influxdb-meta-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/influxdb-*/influxdb-meta.conf &&     chmod +x /usr/src/influxdb-*/* &&     cp -a /usr/src/influxdb-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Fri, 21 Dec 2018 04:20:50 GMT
COPY file:5d8d1b0acfd7ca05cf6698246b28d240206fa448f4aa5ac839c9ad323adbeac2 in /etc/influxdb/influxdb-meta.conf 
# Fri, 21 Dec 2018 04:20:50 GMT
EXPOSE 8091
# Fri, 21 Dec 2018 04:20:50 GMT
VOLUME [/var/lib/influxdb]
# Fri, 21 Dec 2018 04:20:50 GMT
COPY file:126b1f7e41b4975cf2ce23037cf6a46253fb817023062317380c48ff5df47228 in /entrypoint.sh 
# Fri, 21 Dec 2018 04:20:51 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 21 Dec 2018 04:20:51 GMT
CMD ["influxd-meta"]
```

-	Layers:
	-	`sha256:ab3d5dc0b96d2bf3b1046fcc333619417a73b4f5fade00f1bbe32ffc6ffa6635`  
		Last Modified: Fri, 21 Dec 2018 00:23:38 GMT  
		Size: 2.0 MB (2016692 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83c4a5c6312c5d86f737c0a4cfcee90a60b986e34ea8e9f0127a776b63a6eeff`  
		Last Modified: Fri, 21 Dec 2018 00:53:01 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a62dc82f1de20168b701b7f73f41661d8fdc56eb35d2af12a8c5cb110e908d12`  
		Last Modified: Fri, 21 Dec 2018 04:22:06 GMT  
		Size: 1.9 MB (1859596 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1204996d86372c024b228d4a9817d0f206aa8fac9ce0491ee957dcb54a4477ae`  
		Last Modified: Fri, 21 Dec 2018 04:22:27 GMT  
		Size: 11.2 MB (11150626 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb6203b7aeba1ae7db14bc4331f2b917514f8099247251e62e32c4217c31a0ef`  
		Last Modified: Fri, 21 Dec 2018 04:22:24 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8693014f0046d015c06eabbc38aef69efe3a5811c8466458e93200498980f9f`  
		Last Modified: Fri, 21 Dec 2018 04:22:24 GMT  
		Size: 373.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `influxdb:1.5-alpine`

```console
$ docker pull influxdb@sha256:9f3140c5447e67644b8d4f593da137671fb6554a0f17bacff0a5de9147607dc7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `influxdb:1.5-alpine` - linux; amd64

```console
$ docker pull influxdb@sha256:f503ae8950269d0ed442c27403de36a332ba5ba08e4fc6fa4eb9bae39b19ba2f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.8 MB (26793715 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:966c754522156e1dcac82b425c049afe83f1acb394b7ec946c3c209fbe1a7c84`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Fri, 21 Dec 2018 00:20:45 GMT
ADD file:34555dc4e7cea1950fb55d748361debb278a7c96d0a02d2ef75c50cf6c59bfe7 in / 
# Fri, 21 Dec 2018 00:20:45 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 00:52:19 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf
# Fri, 21 Dec 2018 04:20:14 GMT
RUN apk add --no-cache tzdata bash ca-certificates &&     update-ca-certificates
# Fri, 21 Dec 2018 04:20:14 GMT
ENV INFLUXDB_VERSION=1.5.4
# Fri, 21 Dec 2018 04:20:21 GMT
RUN set -ex &&     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/influxdb/releases/influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/influxdb/releases/influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/influxdb-*/influxdb.conf &&     chmod +x /usr/src/influxdb-*/* &&     cp -a /usr/src/influxdb-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Fri, 21 Dec 2018 04:20:21 GMT
COPY file:3d8a606d61e1fc0042cf34d036eda4550a18d140c47376dacc02d96ee6f2dd8b in /etc/influxdb/influxdb.conf 
# Fri, 21 Dec 2018 04:20:22 GMT
EXPOSE 8086
# Fri, 21 Dec 2018 04:20:22 GMT
VOLUME [/var/lib/influxdb]
# Fri, 21 Dec 2018 04:20:22 GMT
COPY file:61c4af7a0e637328374ec46266ed6dde40adf7d14ac6c5081100924991beb7f3 in /entrypoint.sh 
# Fri, 21 Dec 2018 04:20:22 GMT
COPY file:892fcd3130baa17c0b88866ac37e7fe0b7b420a67105d9cd99803c685eaf9df4 in /init-influxdb.sh 
# Fri, 21 Dec 2018 04:20:23 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 21 Dec 2018 04:20:23 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:ab3d5dc0b96d2bf3b1046fcc333619417a73b4f5fade00f1bbe32ffc6ffa6635`  
		Last Modified: Fri, 21 Dec 2018 00:23:38 GMT  
		Size: 2.0 MB (2016692 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83c4a5c6312c5d86f737c0a4cfcee90a60b986e34ea8e9f0127a776b63a6eeff`  
		Last Modified: Fri, 21 Dec 2018 00:53:01 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a62dc82f1de20168b701b7f73f41661d8fdc56eb35d2af12a8c5cb110e908d12`  
		Last Modified: Fri, 21 Dec 2018 04:22:06 GMT  
		Size: 1.9 MB (1859596 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65dce851de8aa07b64dc2a7b6e804bc8fed2030ee723e07dce002aa233fa0a3f`  
		Last Modified: Fri, 21 Dec 2018 04:22:10 GMT  
		Size: 22.9 MB (22915676 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b923d6ce08e8c170781f5f5a01626afa93abe7f1cf2c20d5c1979089ca3a6a1`  
		Last Modified: Fri, 21 Dec 2018 04:22:04 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e2d8272828acd80f2331af39c45e0389b898ee5f6044046a8007fa0a64f391f`  
		Last Modified: Fri, 21 Dec 2018 04:22:05 GMT  
		Size: 210.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:690dd74a989fbc83b1d056831988172e1651624d4424c181f8351d18aa5d9e4f`  
		Last Modified: Fri, 21 Dec 2018 04:22:05 GMT  
		Size: 1.2 KB (1165 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `influxdb:1.5-data`

```console
$ docker pull influxdb@sha256:10a8c47cd20131251863fe861563c59c4c888c66f76576033021ef8edcd7f214
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `influxdb:1.5-data` - linux; amd64

```console
$ docker pull influxdb@sha256:52d9bd7db15d85cd45f55cec30cd0d4f38e0fd1d50cb5560021d61d567a17d60
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **84.2 MB (84187798 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e71715582a1827e895c1108974ce48f14801c27d356f8afe9b25181e99da3518`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Thu, 15 Nov 2018 22:44:00 GMT
ADD file:a61c14b18252183a4719980da97ac483044bcaa9df8a569a6d7bf0f719384b5e in / 
# Thu, 15 Nov 2018 22:44:09 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 11:15:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 11:16:02 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 16 Nov 2018 19:42:13 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Fri, 16 Nov 2018 19:43:09 GMT
ENV INFLUXDB_VERSION=1.5.4-c1.5.4
# Fri, 16 Nov 2018 19:43:13 GMT
RUN wget --no-verbose https://dl.influxdata.com/enterprise/releases/influxdb-data_${INFLUXDB_VERSION}_amd64.deb.asc &&     wget --no-verbose https://dl.influxdata.com/enterprise/releases/influxdb-data_${INFLUXDB_VERSION}_amd64.deb &&     gpg --batch --verify influxdb-data_${INFLUXDB_VERSION}_amd64.deb.asc influxdb-data_${INFLUXDB_VERSION}_amd64.deb &&     dpkg -i influxdb-data_${INFLUXDB_VERSION}_amd64.deb &&     rm -f influxdb-data_${INFLUXDB_VERSION}_amd64.deb*
# Fri, 16 Nov 2018 19:43:14 GMT
COPY file:a7fc957fd6465cc132b5d41618061e4ac55bd347b790cd87cc496ab4f67a274b in /etc/influxdb/influxdb.conf 
# Fri, 16 Nov 2018 19:43:14 GMT
EXPOSE 8086/tcp
# Fri, 16 Nov 2018 19:43:14 GMT
VOLUME [/var/lib/influxdb]
# Fri, 16 Nov 2018 19:43:15 GMT
COPY file:efb819384a9e7a972c15df74e1d18c7d6296e633a7c533def9a6d400b69468fc in /entrypoint.sh 
# Fri, 16 Nov 2018 19:43:15 GMT
COPY file:44e0050f3b04248a6900eace944c581b13b4ad9af1e5cfb91d837cb5e24356e6 in /init-influxdb.sh 
# Fri, 16 Nov 2018 19:43:16 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 16 Nov 2018 19:43:16 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:54f7e8ac135a5f502a6ee9537ef3d64b1cd2fa570dc0a40b4d3b6f7ac81e7486`  
		Last Modified: Thu, 15 Nov 2018 23:08:31 GMT  
		Size: 45.3 MB (45320257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6341e30912f12f56e18564a3b582853f65376766f5f9d641a68a724ed6db88f`  
		Last Modified: Fri, 16 Nov 2018 11:33:18 GMT  
		Size: 10.7 MB (10740278 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:087a57faf9491b1b82a83e26bc8cc90c90c30e4a4d858b57ddd5b4c2c90095f6`  
		Last Modified: Fri, 16 Nov 2018 11:33:17 GMT  
		Size: 4.3 MB (4340083 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d648defeaeff4cbd969b5bd8ef56e245e831516f3fa53c25440cf45299945300`  
		Last Modified: Fri, 16 Nov 2018 19:50:21 GMT  
		Size: 2.9 KB (2884 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba551323b4cc577b987911ca1dc7df1f3d0526b851fc2496f7fcc01c87d19d16`  
		Last Modified: Fri, 16 Nov 2018 19:51:11 GMT  
		Size: 23.8 MB (23782639 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1612e533ebe251918ed5ff7d35c04a882467f4e1a2d4a56e89b4640b607be4c`  
		Last Modified: Fri, 16 Nov 2018 19:51:03 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5d65b07e4e5b2c3773d7e370fb13adf17c385b9ac1f7298e2c2c72a05f654a0`  
		Last Modified: Fri, 16 Nov 2018 19:51:03 GMT  
		Size: 252.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c007d0dbdd9bbb1d726ae18a7de7cefe050ec7405f29309e9935a8e9ed7b0f8`  
		Last Modified: Fri, 16 Nov 2018 19:51:03 GMT  
		Size: 1.2 KB (1165 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `influxdb:1.5-data-alpine`

```console
$ docker pull influxdb@sha256:943c07d690cc76e2f0b85a821d30aa004b4f69ab254a9a2e0ae5b1b1e6b5d578
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `influxdb:1.5-data-alpine` - linux; amd64

```console
$ docker pull influxdb@sha256:0a454bba47a2773a89fea1b19860d1d0a3c4167ae954797be0aa31f2a7028463
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.5 MB (27547121 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:04dc2ad33b93b8f73c0f81cdc5ef84fca7ad00a7b655ffac9791a78286a53f3c`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Fri, 21 Dec 2018 00:20:45 GMT
ADD file:34555dc4e7cea1950fb55d748361debb278a7c96d0a02d2ef75c50cf6c59bfe7 in / 
# Fri, 21 Dec 2018 00:20:45 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 00:52:19 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf
# Fri, 21 Dec 2018 04:20:14 GMT
RUN apk add --no-cache tzdata bash ca-certificates &&     update-ca-certificates
# Fri, 21 Dec 2018 04:20:29 GMT
ENV INFLUXDB_VERSION=1.5.4-c1.5.4
# Fri, 21 Dec 2018 04:20:36 GMT
RUN set -ex &&     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/enterprise/releases/influxdb-data-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/enterprise/releases/influxdb-data-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify influxdb-data-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc influxdb-data-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf influxdb-data-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/influxdb-*/influxdb.conf &&     chmod +x /usr/src/influxdb-*/* &&     cp -a /usr/src/influxdb-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Fri, 21 Dec 2018 04:20:36 GMT
COPY file:bf2f42b62a32a7ee3ab93d9a5e451b7d59af1a97e40dc4a76b8aaf2f64383d7a in /etc/influxdb/influxdb.conf 
# Fri, 21 Dec 2018 04:20:37 GMT
EXPOSE 8086
# Fri, 21 Dec 2018 04:20:37 GMT
VOLUME [/var/lib/influxdb]
# Fri, 21 Dec 2018 04:20:37 GMT
COPY file:182a0176834db40043100d082d05e5aded9887c94b02416f6e3154c827c07360 in /entrypoint.sh 
# Fri, 21 Dec 2018 04:20:37 GMT
COPY file:892fcd3130baa17c0b88866ac37e7fe0b7b420a67105d9cd99803c685eaf9df4 in /init-influxdb.sh 
# Fri, 21 Dec 2018 04:20:38 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 21 Dec 2018 04:20:38 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:ab3d5dc0b96d2bf3b1046fcc333619417a73b4f5fade00f1bbe32ffc6ffa6635`  
		Last Modified: Fri, 21 Dec 2018 00:23:38 GMT  
		Size: 2.0 MB (2016692 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83c4a5c6312c5d86f737c0a4cfcee90a60b986e34ea8e9f0127a776b63a6eeff`  
		Last Modified: Fri, 21 Dec 2018 00:53:01 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a62dc82f1de20168b701b7f73f41661d8fdc56eb35d2af12a8c5cb110e908d12`  
		Last Modified: Fri, 21 Dec 2018 04:22:06 GMT  
		Size: 1.9 MB (1859596 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e815d16e6711640c3af18a9de64152d7806552f07526cb8cfb95302306919da`  
		Last Modified: Fri, 21 Dec 2018 04:22:20 GMT  
		Size: 23.7 MB (23669025 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c548be0d5fbddcae04f81206b34b12b7497e95f93a9abab3c9aa4e7cd1fbc5f0`  
		Last Modified: Fri, 21 Dec 2018 04:22:14 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02c5372e1a860e0e579ef1c80081cfbf75e2009c71dd8318e06fc52b428c6416`  
		Last Modified: Fri, 21 Dec 2018 04:22:14 GMT  
		Size: 250.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea2ba5ac316524597db668187dc2fd21e6376aeaf4d6588458817bb49d78dc35`  
		Last Modified: Fri, 21 Dec 2018 04:22:14 GMT  
		Size: 1.2 KB (1166 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `influxdb:1.5-meta`

```console
$ docker pull influxdb@sha256:75f50abf4569344175bc048ac5589a560f4acfe373508bf2aed1fbdff6ef1491
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `influxdb:1.5-meta` - linux; amd64

```console
$ docker pull influxdb@sha256:a60518ee07a93a73a5c4790ae2ddb9cf264e38526137981b4cddb6401c70ba01
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **71.6 MB (71598119 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e73b582cfae2a12b928282de2c7ce024c67d5c7a0d8bb790a11a66610407f871`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd-meta"]`

```dockerfile
# Thu, 15 Nov 2018 22:44:00 GMT
ADD file:a61c14b18252183a4719980da97ac483044bcaa9df8a569a6d7bf0f719384b5e in / 
# Thu, 15 Nov 2018 22:44:09 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 11:15:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 11:16:02 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 16 Nov 2018 19:42:13 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Fri, 16 Nov 2018 19:43:09 GMT
ENV INFLUXDB_VERSION=1.5.4-c1.5.4
# Fri, 16 Nov 2018 19:44:13 GMT
RUN wget --no-verbose https://dl.influxdata.com/enterprise/releases/influxdb-meta_${INFLUXDB_VERSION}_amd64.deb.asc &&     wget --no-verbose https://dl.influxdata.com/enterprise/releases/influxdb-meta_${INFLUXDB_VERSION}_amd64.deb &&     gpg --batch --verify influxdb-meta_${INFLUXDB_VERSION}_amd64.deb.asc influxdb-meta_${INFLUXDB_VERSION}_amd64.deb &&     dpkg -i influxdb-meta_${INFLUXDB_VERSION}_amd64.deb &&     rm -f influxdb-meta_${INFLUXDB_VERSION}_amd64.deb*
# Fri, 16 Nov 2018 19:44:14 GMT
COPY file:95a6fe33e203909c093135fff9ff2b4cdc02ca4f1fe1dec109b5a9cf6b7a0946 in /etc/influxdb/influxdb-meta.conf 
# Fri, 16 Nov 2018 19:44:14 GMT
EXPOSE 8091/tcp
# Fri, 16 Nov 2018 19:44:15 GMT
VOLUME [/var/lib/influxdb]
# Fri, 16 Nov 2018 19:44:16 GMT
COPY file:b4fa000cf2aff5bf4e5093021ca6255fffa17c43ae18eb4c55ae28a3cc2dc281 in /entrypoint.sh 
# Fri, 16 Nov 2018 19:44:16 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 16 Nov 2018 19:44:17 GMT
CMD ["influxd-meta"]
```

-	Layers:
	-	`sha256:54f7e8ac135a5f502a6ee9537ef3d64b1cd2fa570dc0a40b4d3b6f7ac81e7486`  
		Last Modified: Thu, 15 Nov 2018 23:08:31 GMT  
		Size: 45.3 MB (45320257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6341e30912f12f56e18564a3b582853f65376766f5f9d641a68a724ed6db88f`  
		Last Modified: Fri, 16 Nov 2018 11:33:18 GMT  
		Size: 10.7 MB (10740278 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:087a57faf9491b1b82a83e26bc8cc90c90c30e4a4d858b57ddd5b4c2c90095f6`  
		Last Modified: Fri, 16 Nov 2018 11:33:17 GMT  
		Size: 4.3 MB (4340083 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d648defeaeff4cbd969b5bd8ef56e245e831516f3fa53c25440cf45299945300`  
		Last Modified: Fri, 16 Nov 2018 19:50:21 GMT  
		Size: 2.9 KB (2884 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2bc99f936e679a5d21ef3726f7b326e00f1958d33b9eea9eafbc6fa4fa7b02fd`  
		Last Modified: Fri, 16 Nov 2018 19:52:08 GMT  
		Size: 11.2 MB (11194048 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83fb3b651809e085a83c14a2279073c51bd6fa9fd684da4e8e7a41837c50b6ba`  
		Last Modified: Fri, 16 Nov 2018 19:52:05 GMT  
		Size: 196.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fcc49eeabd8416e15830df02779910f2c7564df4a5de7acf5cf55585aa5991be`  
		Last Modified: Fri, 16 Nov 2018 19:52:05 GMT  
		Size: 373.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `influxdb:1.5-meta-alpine`

```console
$ docker pull influxdb@sha256:c4c6dbbbc2020cba3e31221afd03cf3aa123c0157f34696f15565d0d42b81a2a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `influxdb:1.5-meta-alpine` - linux; amd64

```console
$ docker pull influxdb@sha256:91347027e5af25c09247652bf4bdd025b4ee39542dc5170a7badeeef0391dc9b
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.0 MB (15027634 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:91fe8bc7a368f6d8a96ffe3144b255476a77abbd992222b5f014ce6aa65ac258`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd-meta"]`

```dockerfile
# Fri, 21 Dec 2018 00:20:45 GMT
ADD file:34555dc4e7cea1950fb55d748361debb278a7c96d0a02d2ef75c50cf6c59bfe7 in / 
# Fri, 21 Dec 2018 00:20:45 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 00:52:19 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf
# Fri, 21 Dec 2018 04:20:14 GMT
RUN apk add --no-cache tzdata bash ca-certificates &&     update-ca-certificates
# Fri, 21 Dec 2018 04:20:29 GMT
ENV INFLUXDB_VERSION=1.5.4-c1.5.4
# Fri, 21 Dec 2018 04:20:50 GMT
RUN set -ex &&     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/enterprise/releases/influxdb-meta-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/enterprise/releases/influxdb-meta-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify influxdb-meta-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc influxdb-meta-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf influxdb-meta-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/influxdb-*/influxdb-meta.conf &&     chmod +x /usr/src/influxdb-*/* &&     cp -a /usr/src/influxdb-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Fri, 21 Dec 2018 04:20:50 GMT
COPY file:5d8d1b0acfd7ca05cf6698246b28d240206fa448f4aa5ac839c9ad323adbeac2 in /etc/influxdb/influxdb-meta.conf 
# Fri, 21 Dec 2018 04:20:50 GMT
EXPOSE 8091
# Fri, 21 Dec 2018 04:20:50 GMT
VOLUME [/var/lib/influxdb]
# Fri, 21 Dec 2018 04:20:50 GMT
COPY file:126b1f7e41b4975cf2ce23037cf6a46253fb817023062317380c48ff5df47228 in /entrypoint.sh 
# Fri, 21 Dec 2018 04:20:51 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 21 Dec 2018 04:20:51 GMT
CMD ["influxd-meta"]
```

-	Layers:
	-	`sha256:ab3d5dc0b96d2bf3b1046fcc333619417a73b4f5fade00f1bbe32ffc6ffa6635`  
		Last Modified: Fri, 21 Dec 2018 00:23:38 GMT  
		Size: 2.0 MB (2016692 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83c4a5c6312c5d86f737c0a4cfcee90a60b986e34ea8e9f0127a776b63a6eeff`  
		Last Modified: Fri, 21 Dec 2018 00:53:01 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a62dc82f1de20168b701b7f73f41661d8fdc56eb35d2af12a8c5cb110e908d12`  
		Last Modified: Fri, 21 Dec 2018 04:22:06 GMT  
		Size: 1.9 MB (1859596 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1204996d86372c024b228d4a9817d0f206aa8fac9ce0491ee957dcb54a4477ae`  
		Last Modified: Fri, 21 Dec 2018 04:22:27 GMT  
		Size: 11.2 MB (11150626 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb6203b7aeba1ae7db14bc4331f2b917514f8099247251e62e32c4217c31a0ef`  
		Last Modified: Fri, 21 Dec 2018 04:22:24 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8693014f0046d015c06eabbc38aef69efe3a5811c8466458e93200498980f9f`  
		Last Modified: Fri, 21 Dec 2018 04:22:24 GMT  
		Size: 373.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `influxdb:1.6`

```console
$ docker pull influxdb@sha256:300ae8e7e23708877c390be60d3088425eaf572f87dc7f4cfeec7caf0cd43ed2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `influxdb:1.6` - linux; amd64

```console
$ docker pull influxdb@sha256:4ac7e133ab4b6271297e7d56268135c020ee67d319641cd0f6723ee05adb91ea
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **85.7 MB (85710001 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1d7c2be9905d778d4aef48b39fa303279df46e3e7d512db92a4e4a0e86e978ab`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Thu, 15 Nov 2018 22:44:00 GMT
ADD file:a61c14b18252183a4719980da97ac483044bcaa9df8a569a6d7bf0f719384b5e in / 
# Thu, 15 Nov 2018 22:44:09 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 11:15:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 11:16:02 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 16 Nov 2018 19:42:13 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Fri, 16 Nov 2018 19:45:19 GMT
ENV INFLUXDB_VERSION=1.6.4
# Fri, 16 Nov 2018 19:45:26 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     gpg --batch --verify influxdb_${INFLUXDB_VERSION}_${ARCH}.deb.asc influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     dpkg -i influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     rm -f influxdb_${INFLUXDB_VERSION}_${ARCH}.deb*
# Fri, 16 Nov 2018 19:45:27 GMT
COPY file:3ee2bc0321c2aa2451df7a508649c3a54f0eebc1ef9b8a24967c58105b4d3160 in /etc/influxdb/influxdb.conf 
# Fri, 16 Nov 2018 19:45:28 GMT
EXPOSE 8086/tcp
# Fri, 16 Nov 2018 19:45:28 GMT
VOLUME [/var/lib/influxdb]
# Fri, 16 Nov 2018 19:45:29 GMT
COPY file:098affa3d1b749dacb263ddacfd86a5de1f598d6ba1f7c789ce482c66ee9c80b in /entrypoint.sh 
# Fri, 16 Nov 2018 19:45:30 GMT
COPY file:44e0050f3b04248a6900eace944c581b13b4ad9af1e5cfb91d837cb5e24356e6 in /init-influxdb.sh 
# Fri, 16 Nov 2018 19:45:30 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 16 Nov 2018 19:45:31 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:54f7e8ac135a5f502a6ee9537ef3d64b1cd2fa570dc0a40b4d3b6f7ac81e7486`  
		Last Modified: Thu, 15 Nov 2018 23:08:31 GMT  
		Size: 45.3 MB (45320257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6341e30912f12f56e18564a3b582853f65376766f5f9d641a68a724ed6db88f`  
		Last Modified: Fri, 16 Nov 2018 11:33:18 GMT  
		Size: 10.7 MB (10740278 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:087a57faf9491b1b82a83e26bc8cc90c90c30e4a4d858b57ddd5b4c2c90095f6`  
		Last Modified: Fri, 16 Nov 2018 11:33:17 GMT  
		Size: 4.3 MB (4340083 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d648defeaeff4cbd969b5bd8ef56e245e831516f3fa53c25440cf45299945300`  
		Last Modified: Fri, 16 Nov 2018 19:50:21 GMT  
		Size: 2.9 KB (2884 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4cd5b7908761cd89bffa5d9d6f7d2d78fbd5a5725da052d6bee105116ae97bf4`  
		Last Modified: Fri, 16 Nov 2018 19:53:14 GMT  
		Size: 25.3 MB (25304902 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d068a1046bfce94c55b73112beb0c4ccb4e4d6d114b0c60080d3507d2c6988b`  
		Last Modified: Fri, 16 Nov 2018 19:53:05 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:657d25150549ebb01832bc4ee21ceecd9e5425b91ec6f4b7d201a050ba34af0f`  
		Last Modified: Fri, 16 Nov 2018 19:53:04 GMT  
		Size: 209.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5cc5ac7a64c995a3b50f6839273de113e19f1a519a430597cc56d977081a2afd`  
		Last Modified: Fri, 16 Nov 2018 19:53:04 GMT  
		Size: 1.2 KB (1165 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `influxdb:1.6` - linux; arm variant v7

```console
$ docker pull influxdb@sha256:0301d5575e15530392b221fdd1befb11596b1c115ee2febcd9aa2724f705bd3f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **79.8 MB (79777678 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:77b82292865394735048c401873f8235e628d425593476217225c13eb3f85330`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Fri, 16 Nov 2018 13:08:47 GMT
ADD file:085a6a2a32a05acfff8d2b179dad7789d649aca5cf2565a5b5490403e3d3cea0 in / 
# Fri, 16 Nov 2018 13:08:48 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 18:17:27 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 18:17:38 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 16 Nov 2018 22:44:53 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Fri, 16 Nov 2018 22:46:02 GMT
ENV INFLUXDB_VERSION=1.6.4
# Fri, 16 Nov 2018 22:46:08 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     gpg --batch --verify influxdb_${INFLUXDB_VERSION}_${ARCH}.deb.asc influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     dpkg -i influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     rm -f influxdb_${INFLUXDB_VERSION}_${ARCH}.deb*
# Fri, 16 Nov 2018 22:46:13 GMT
COPY file:3ee2bc0321c2aa2451df7a508649c3a54f0eebc1ef9b8a24967c58105b4d3160 in /etc/influxdb/influxdb.conf 
# Fri, 16 Nov 2018 22:46:14 GMT
EXPOSE 8086/tcp
# Fri, 16 Nov 2018 22:46:15 GMT
VOLUME [/var/lib/influxdb]
# Fri, 16 Nov 2018 22:46:24 GMT
COPY file:098affa3d1b749dacb263ddacfd86a5de1f598d6ba1f7c789ce482c66ee9c80b in /entrypoint.sh 
# Fri, 16 Nov 2018 22:46:32 GMT
COPY file:44e0050f3b04248a6900eace944c581b13b4ad9af1e5cfb91d837cb5e24356e6 in /init-influxdb.sh 
# Fri, 16 Nov 2018 22:46:33 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 16 Nov 2018 22:46:33 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:33dd5ae6335a66a99c6beb10708f7ff8d992b1075b6477cce3accbbe3b3a765e`  
		Last Modified: Fri, 16 Nov 2018 13:21:03 GMT  
		Size: 42.1 MB (42076140 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7353b73b294b9e3d692697431695f92c48a581f30b3295a5fad1b80854f13e5b`  
		Last Modified: Fri, 16 Nov 2018 18:31:31 GMT  
		Size: 9.4 MB (9440401 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e92165ab0bf59142c3f101750c7a81a51d559eed557c0674a209979d86fd4a9`  
		Last Modified: Fri, 16 Nov 2018 18:31:30 GMT  
		Size: 3.9 MB (3918472 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4aac8f53f358cf4c4deb8638fcfd8bb0f9e83d57cb993c17fb9ed9671c024ac4`  
		Last Modified: Fri, 16 Nov 2018 22:47:26 GMT  
		Size: 2.9 KB (2915 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:274e6bbcb65b8c69ac9c767d45f572f02098bc935bae846448f26a02b169e3a9`  
		Last Modified: Fri, 16 Nov 2018 22:48:18 GMT  
		Size: 24.3 MB (24338154 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d0d50c6ab3a52ff65ed29500f2b4838cfc14526a175efafcf04b1b4c1d00141`  
		Last Modified: Fri, 16 Nov 2018 22:48:11 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a96edbc359bbabfbdf1d9b78438b7ea0ada52bc233a688c87e6ce762a45f8e07`  
		Last Modified: Fri, 16 Nov 2018 22:48:11 GMT  
		Size: 208.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e50120d2577855d1559ed6abb2fcd20a26a4e45fd049e5bfb35091d39806dda4`  
		Last Modified: Fri, 16 Nov 2018 22:48:10 GMT  
		Size: 1.2 KB (1165 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `influxdb:1.6` - linux; arm64 variant v8

```console
$ docker pull influxdb@sha256:97ebbcb500bf281da81ccad1201afbc889dde75a93ee4ec1b7ae7cdfedfd83ff
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **80.6 MB (80564318 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d84cccb9addf3c036c19bd479339e79a8cc2de692a17483eb3aedd3f617cde10`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Fri, 16 Nov 2018 10:13:25 GMT
ADD file:bf8c0ee6d5a7d54f0c1259b5f65569cf7e5e828cfbe98302312933537cd9087e in / 
# Fri, 16 Nov 2018 10:13:26 GMT
CMD ["bash"]
# Sat, 17 Nov 2018 02:30:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 17 Nov 2018 02:30:54 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 17 Nov 2018 16:58:50 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Sat, 17 Nov 2018 16:59:29 GMT
ENV INFLUXDB_VERSION=1.6.4
# Sat, 17 Nov 2018 16:59:38 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     gpg --batch --verify influxdb_${INFLUXDB_VERSION}_${ARCH}.deb.asc influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     dpkg -i influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     rm -f influxdb_${INFLUXDB_VERSION}_${ARCH}.deb*
# Sat, 17 Nov 2018 16:59:39 GMT
COPY file:3ee2bc0321c2aa2451df7a508649c3a54f0eebc1ef9b8a24967c58105b4d3160 in /etc/influxdb/influxdb.conf 
# Sat, 17 Nov 2018 16:59:40 GMT
EXPOSE 8086/tcp
# Sat, 17 Nov 2018 16:59:40 GMT
VOLUME [/var/lib/influxdb]
# Sat, 17 Nov 2018 16:59:41 GMT
COPY file:098affa3d1b749dacb263ddacfd86a5de1f598d6ba1f7c789ce482c66ee9c80b in /entrypoint.sh 
# Sat, 17 Nov 2018 16:59:42 GMT
COPY file:44e0050f3b04248a6900eace944c581b13b4ad9af1e5cfb91d837cb5e24356e6 in /init-influxdb.sh 
# Sat, 17 Nov 2018 16:59:43 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Sat, 17 Nov 2018 16:59:44 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:4f3698b9865b00fa6eb7e0d3d11692c31eb0dc455aa6ab111d965bae67726698`  
		Last Modified: Thu, 15 Nov 2018 01:52:55 GMT  
		Size: 43.1 MB (43116700 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d136331294ced7de67c8e4bea8c807c347632c0aa25c4ec2ae6a7a3e346d6c1`  
		Last Modified: Sat, 17 Nov 2018 02:50:40 GMT  
		Size: 9.7 MB (9690286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44c15aa4d980e5d3689a8a8099f7d79fb667611239aab1dfa5447b52f0a24934`  
		Last Modified: Sat, 17 Nov 2018 02:50:38 GMT  
		Size: 4.1 MB (4093102 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a58696b91002d344db2504db959bd55413ce3d671d4bb1680ff14794d8653394`  
		Last Modified: Sat, 17 Nov 2018 17:00:47 GMT  
		Size: 2.9 KB (2887 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87e0dc05f4254d44256fbcabefc3e8e8a03e3b9a55aeafc40ee68941263822f8`  
		Last Modified: Sat, 17 Nov 2018 17:01:47 GMT  
		Size: 23.7 MB (23659741 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a40bdb521d78eac1e5bf025c702f0699bcc8907ab1b211c4c597e630719af8a`  
		Last Modified: Sat, 17 Nov 2018 17:01:38 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46d3fef4cbde53183820d217e1bd92278c94b99f93d7ef45e35fa695917347d9`  
		Last Modified: Sat, 17 Nov 2018 17:01:37 GMT  
		Size: 211.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e636a6ffef1eb00621243baf1f6f551b5c3846ab6bbf7214ced7855bba891120`  
		Last Modified: Sat, 17 Nov 2018 17:01:37 GMT  
		Size: 1.2 KB (1165 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `influxdb:1.6.4`

```console
$ docker pull influxdb@sha256:300ae8e7e23708877c390be60d3088425eaf572f87dc7f4cfeec7caf0cd43ed2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `influxdb:1.6.4` - linux; amd64

```console
$ docker pull influxdb@sha256:4ac7e133ab4b6271297e7d56268135c020ee67d319641cd0f6723ee05adb91ea
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **85.7 MB (85710001 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1d7c2be9905d778d4aef48b39fa303279df46e3e7d512db92a4e4a0e86e978ab`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Thu, 15 Nov 2018 22:44:00 GMT
ADD file:a61c14b18252183a4719980da97ac483044bcaa9df8a569a6d7bf0f719384b5e in / 
# Thu, 15 Nov 2018 22:44:09 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 11:15:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 11:16:02 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 16 Nov 2018 19:42:13 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Fri, 16 Nov 2018 19:45:19 GMT
ENV INFLUXDB_VERSION=1.6.4
# Fri, 16 Nov 2018 19:45:26 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     gpg --batch --verify influxdb_${INFLUXDB_VERSION}_${ARCH}.deb.asc influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     dpkg -i influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     rm -f influxdb_${INFLUXDB_VERSION}_${ARCH}.deb*
# Fri, 16 Nov 2018 19:45:27 GMT
COPY file:3ee2bc0321c2aa2451df7a508649c3a54f0eebc1ef9b8a24967c58105b4d3160 in /etc/influxdb/influxdb.conf 
# Fri, 16 Nov 2018 19:45:28 GMT
EXPOSE 8086/tcp
# Fri, 16 Nov 2018 19:45:28 GMT
VOLUME [/var/lib/influxdb]
# Fri, 16 Nov 2018 19:45:29 GMT
COPY file:098affa3d1b749dacb263ddacfd86a5de1f598d6ba1f7c789ce482c66ee9c80b in /entrypoint.sh 
# Fri, 16 Nov 2018 19:45:30 GMT
COPY file:44e0050f3b04248a6900eace944c581b13b4ad9af1e5cfb91d837cb5e24356e6 in /init-influxdb.sh 
# Fri, 16 Nov 2018 19:45:30 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 16 Nov 2018 19:45:31 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:54f7e8ac135a5f502a6ee9537ef3d64b1cd2fa570dc0a40b4d3b6f7ac81e7486`  
		Last Modified: Thu, 15 Nov 2018 23:08:31 GMT  
		Size: 45.3 MB (45320257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6341e30912f12f56e18564a3b582853f65376766f5f9d641a68a724ed6db88f`  
		Last Modified: Fri, 16 Nov 2018 11:33:18 GMT  
		Size: 10.7 MB (10740278 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:087a57faf9491b1b82a83e26bc8cc90c90c30e4a4d858b57ddd5b4c2c90095f6`  
		Last Modified: Fri, 16 Nov 2018 11:33:17 GMT  
		Size: 4.3 MB (4340083 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d648defeaeff4cbd969b5bd8ef56e245e831516f3fa53c25440cf45299945300`  
		Last Modified: Fri, 16 Nov 2018 19:50:21 GMT  
		Size: 2.9 KB (2884 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4cd5b7908761cd89bffa5d9d6f7d2d78fbd5a5725da052d6bee105116ae97bf4`  
		Last Modified: Fri, 16 Nov 2018 19:53:14 GMT  
		Size: 25.3 MB (25304902 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d068a1046bfce94c55b73112beb0c4ccb4e4d6d114b0c60080d3507d2c6988b`  
		Last Modified: Fri, 16 Nov 2018 19:53:05 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:657d25150549ebb01832bc4ee21ceecd9e5425b91ec6f4b7d201a050ba34af0f`  
		Last Modified: Fri, 16 Nov 2018 19:53:04 GMT  
		Size: 209.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5cc5ac7a64c995a3b50f6839273de113e19f1a519a430597cc56d977081a2afd`  
		Last Modified: Fri, 16 Nov 2018 19:53:04 GMT  
		Size: 1.2 KB (1165 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `influxdb:1.6.4` - linux; arm variant v7

```console
$ docker pull influxdb@sha256:0301d5575e15530392b221fdd1befb11596b1c115ee2febcd9aa2724f705bd3f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **79.8 MB (79777678 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:77b82292865394735048c401873f8235e628d425593476217225c13eb3f85330`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Fri, 16 Nov 2018 13:08:47 GMT
ADD file:085a6a2a32a05acfff8d2b179dad7789d649aca5cf2565a5b5490403e3d3cea0 in / 
# Fri, 16 Nov 2018 13:08:48 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 18:17:27 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 18:17:38 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 16 Nov 2018 22:44:53 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Fri, 16 Nov 2018 22:46:02 GMT
ENV INFLUXDB_VERSION=1.6.4
# Fri, 16 Nov 2018 22:46:08 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     gpg --batch --verify influxdb_${INFLUXDB_VERSION}_${ARCH}.deb.asc influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     dpkg -i influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     rm -f influxdb_${INFLUXDB_VERSION}_${ARCH}.deb*
# Fri, 16 Nov 2018 22:46:13 GMT
COPY file:3ee2bc0321c2aa2451df7a508649c3a54f0eebc1ef9b8a24967c58105b4d3160 in /etc/influxdb/influxdb.conf 
# Fri, 16 Nov 2018 22:46:14 GMT
EXPOSE 8086/tcp
# Fri, 16 Nov 2018 22:46:15 GMT
VOLUME [/var/lib/influxdb]
# Fri, 16 Nov 2018 22:46:24 GMT
COPY file:098affa3d1b749dacb263ddacfd86a5de1f598d6ba1f7c789ce482c66ee9c80b in /entrypoint.sh 
# Fri, 16 Nov 2018 22:46:32 GMT
COPY file:44e0050f3b04248a6900eace944c581b13b4ad9af1e5cfb91d837cb5e24356e6 in /init-influxdb.sh 
# Fri, 16 Nov 2018 22:46:33 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 16 Nov 2018 22:46:33 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:33dd5ae6335a66a99c6beb10708f7ff8d992b1075b6477cce3accbbe3b3a765e`  
		Last Modified: Fri, 16 Nov 2018 13:21:03 GMT  
		Size: 42.1 MB (42076140 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7353b73b294b9e3d692697431695f92c48a581f30b3295a5fad1b80854f13e5b`  
		Last Modified: Fri, 16 Nov 2018 18:31:31 GMT  
		Size: 9.4 MB (9440401 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e92165ab0bf59142c3f101750c7a81a51d559eed557c0674a209979d86fd4a9`  
		Last Modified: Fri, 16 Nov 2018 18:31:30 GMT  
		Size: 3.9 MB (3918472 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4aac8f53f358cf4c4deb8638fcfd8bb0f9e83d57cb993c17fb9ed9671c024ac4`  
		Last Modified: Fri, 16 Nov 2018 22:47:26 GMT  
		Size: 2.9 KB (2915 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:274e6bbcb65b8c69ac9c767d45f572f02098bc935bae846448f26a02b169e3a9`  
		Last Modified: Fri, 16 Nov 2018 22:48:18 GMT  
		Size: 24.3 MB (24338154 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d0d50c6ab3a52ff65ed29500f2b4838cfc14526a175efafcf04b1b4c1d00141`  
		Last Modified: Fri, 16 Nov 2018 22:48:11 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a96edbc359bbabfbdf1d9b78438b7ea0ada52bc233a688c87e6ce762a45f8e07`  
		Last Modified: Fri, 16 Nov 2018 22:48:11 GMT  
		Size: 208.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e50120d2577855d1559ed6abb2fcd20a26a4e45fd049e5bfb35091d39806dda4`  
		Last Modified: Fri, 16 Nov 2018 22:48:10 GMT  
		Size: 1.2 KB (1165 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `influxdb:1.6.4` - linux; arm64 variant v8

```console
$ docker pull influxdb@sha256:97ebbcb500bf281da81ccad1201afbc889dde75a93ee4ec1b7ae7cdfedfd83ff
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **80.6 MB (80564318 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d84cccb9addf3c036c19bd479339e79a8cc2de692a17483eb3aedd3f617cde10`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Fri, 16 Nov 2018 10:13:25 GMT
ADD file:bf8c0ee6d5a7d54f0c1259b5f65569cf7e5e828cfbe98302312933537cd9087e in / 
# Fri, 16 Nov 2018 10:13:26 GMT
CMD ["bash"]
# Sat, 17 Nov 2018 02:30:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 17 Nov 2018 02:30:54 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 17 Nov 2018 16:58:50 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Sat, 17 Nov 2018 16:59:29 GMT
ENV INFLUXDB_VERSION=1.6.4
# Sat, 17 Nov 2018 16:59:38 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     gpg --batch --verify influxdb_${INFLUXDB_VERSION}_${ARCH}.deb.asc influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     dpkg -i influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     rm -f influxdb_${INFLUXDB_VERSION}_${ARCH}.deb*
# Sat, 17 Nov 2018 16:59:39 GMT
COPY file:3ee2bc0321c2aa2451df7a508649c3a54f0eebc1ef9b8a24967c58105b4d3160 in /etc/influxdb/influxdb.conf 
# Sat, 17 Nov 2018 16:59:40 GMT
EXPOSE 8086/tcp
# Sat, 17 Nov 2018 16:59:40 GMT
VOLUME [/var/lib/influxdb]
# Sat, 17 Nov 2018 16:59:41 GMT
COPY file:098affa3d1b749dacb263ddacfd86a5de1f598d6ba1f7c789ce482c66ee9c80b in /entrypoint.sh 
# Sat, 17 Nov 2018 16:59:42 GMT
COPY file:44e0050f3b04248a6900eace944c581b13b4ad9af1e5cfb91d837cb5e24356e6 in /init-influxdb.sh 
# Sat, 17 Nov 2018 16:59:43 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Sat, 17 Nov 2018 16:59:44 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:4f3698b9865b00fa6eb7e0d3d11692c31eb0dc455aa6ab111d965bae67726698`  
		Last Modified: Thu, 15 Nov 2018 01:52:55 GMT  
		Size: 43.1 MB (43116700 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d136331294ced7de67c8e4bea8c807c347632c0aa25c4ec2ae6a7a3e346d6c1`  
		Last Modified: Sat, 17 Nov 2018 02:50:40 GMT  
		Size: 9.7 MB (9690286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44c15aa4d980e5d3689a8a8099f7d79fb667611239aab1dfa5447b52f0a24934`  
		Last Modified: Sat, 17 Nov 2018 02:50:38 GMT  
		Size: 4.1 MB (4093102 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a58696b91002d344db2504db959bd55413ce3d671d4bb1680ff14794d8653394`  
		Last Modified: Sat, 17 Nov 2018 17:00:47 GMT  
		Size: 2.9 KB (2887 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87e0dc05f4254d44256fbcabefc3e8e8a03e3b9a55aeafc40ee68941263822f8`  
		Last Modified: Sat, 17 Nov 2018 17:01:47 GMT  
		Size: 23.7 MB (23659741 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a40bdb521d78eac1e5bf025c702f0699bcc8907ab1b211c4c597e630719af8a`  
		Last Modified: Sat, 17 Nov 2018 17:01:38 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46d3fef4cbde53183820d217e1bd92278c94b99f93d7ef45e35fa695917347d9`  
		Last Modified: Sat, 17 Nov 2018 17:01:37 GMT  
		Size: 211.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e636a6ffef1eb00621243baf1f6f551b5c3846ab6bbf7214ced7855bba891120`  
		Last Modified: Sat, 17 Nov 2018 17:01:37 GMT  
		Size: 1.2 KB (1165 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `influxdb:1.6.4-alpine`

```console
$ docker pull influxdb@sha256:d052ea7594883ef6fd968100fa8eedaf8f555f1d7c1b37a94b5e2cf5e1be38f3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `influxdb:1.6.4-alpine` - linux; amd64

```console
$ docker pull influxdb@sha256:80bc9451fead7d577ceb5a4d888600bdbfacb6b5fa38623d9ef1db0298f12de3
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **29.3 MB (29258462 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:778bed28793d6ef677203106aee71d76733634f396fb78ed868a0cfbab2c3def`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Fri, 21 Dec 2018 00:21:10 GMT
ADD file:1c654f8c89128c1ac8363b251cb5e1e7d9326e430ae2740963f77cf6726aee0b in / 
# Fri, 21 Dec 2018 00:21:11 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 04:20:57 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf
# Fri, 21 Dec 2018 04:20:59 GMT
RUN apk add --no-cache tzdata bash ca-certificates &&     update-ca-certificates
# Fri, 21 Dec 2018 04:21:00 GMT
ENV INFLUXDB_VERSION=1.6.4
# Fri, 21 Dec 2018 04:21:05 GMT
RUN set -ex &&     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/influxdb/releases/influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/influxdb/releases/influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/influxdb-*/influxdb.conf &&     chmod +x /usr/src/influxdb-*/* &&     cp -a /usr/src/influxdb-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Fri, 21 Dec 2018 04:21:06 GMT
COPY file:3d8a606d61e1fc0042cf34d036eda4550a18d140c47376dacc02d96ee6f2dd8b in /etc/influxdb/influxdb.conf 
# Fri, 21 Dec 2018 04:21:06 GMT
EXPOSE 8086
# Fri, 21 Dec 2018 04:21:06 GMT
VOLUME [/var/lib/influxdb]
# Fri, 21 Dec 2018 04:21:06 GMT
COPY file:61c4af7a0e637328374ec46266ed6dde40adf7d14ac6c5081100924991beb7f3 in /entrypoint.sh 
# Fri, 21 Dec 2018 04:21:06 GMT
COPY file:892fcd3130baa17c0b88866ac37e7fe0b7b420a67105d9cd99803c685eaf9df4 in /init-influxdb.sh 
# Fri, 21 Dec 2018 04:21:06 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 21 Dec 2018 04:21:07 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:407ea412d82cbc18a270f0ae17d5e528e620bcf4661229e757446f6e6443768b`  
		Last Modified: Fri, 21 Dec 2018 00:23:41 GMT  
		Size: 2.1 MB (2107153 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d00f09ce7312b69220662bba01a4ad6c075fe2107adea6644e4b4bf1f7d1d575`  
		Last Modified: Fri, 21 Dec 2018 04:22:33 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a99365142bbe7691f2aea9e22980a485d0509ebba01cd61a1ffaf3c93c4a3cf7`  
		Last Modified: Fri, 21 Dec 2018 04:22:32 GMT  
		Size: 2.0 MB (1966661 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:284ac3e63a2c1db1f37945331eef0ea4bf929cbc4ad18d641ab17228983b2404`  
		Last Modified: Fri, 21 Dec 2018 04:22:37 GMT  
		Size: 25.2 MB (25182896 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3553525328ee812cff542b90f40734d9de30b0f88fb816306be2ab955410dfd6`  
		Last Modified: Fri, 21 Dec 2018 04:22:31 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e07aefe5c618b84569ce515d7cde08f3d397c30e82a521a2f9be5778bebf3b21`  
		Last Modified: Fri, 21 Dec 2018 04:22:32 GMT  
		Size: 211.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:278da487fecc389e06e4ab394d887431552e38042966cd85211a542abec5267b`  
		Last Modified: Fri, 21 Dec 2018 04:22:32 GMT  
		Size: 1.2 KB (1166 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `influxdb:1.6.4-data`

```console
$ docker pull influxdb@sha256:11e215f1430dc26424d8564b5b1fd69edba17398375b9fc0f509a5041a2a9668
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `influxdb:1.6.4-data` - linux; amd64

```console
$ docker pull influxdb@sha256:390d8dc2727e8bf692b22ab80863941afa677811faae37ad4729c287d1628f12
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **87.0 MB (86977283 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:31d8cea8bfe34ecd973c72be576c664456746baf726f0ccf0f8fde4a161319ea`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Thu, 15 Nov 2018 22:44:00 GMT
ADD file:a61c14b18252183a4719980da97ac483044bcaa9df8a569a6d7bf0f719384b5e in / 
# Thu, 15 Nov 2018 22:44:09 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 11:15:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 11:16:02 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 16 Nov 2018 19:42:13 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Fri, 16 Nov 2018 19:46:27 GMT
ENV INFLUXDB_VERSION=1.6.4-c1.6.4
# Fri, 16 Nov 2018 19:46:33 GMT
RUN wget --no-verbose https://dl.influxdata.com/enterprise/releases/influxdb-data_${INFLUXDB_VERSION}_amd64.deb.asc &&     wget --no-verbose https://dl.influxdata.com/enterprise/releases/influxdb-data_${INFLUXDB_VERSION}_amd64.deb &&     gpg --batch --verify influxdb-data_${INFLUXDB_VERSION}_amd64.deb.asc influxdb-data_${INFLUXDB_VERSION}_amd64.deb &&     dpkg -i influxdb-data_${INFLUXDB_VERSION}_amd64.deb &&     rm -f influxdb-data_${INFLUXDB_VERSION}_amd64.deb*
# Fri, 16 Nov 2018 19:46:34 GMT
COPY file:a7fc957fd6465cc132b5d41618061e4ac55bd347b790cd87cc496ab4f67a274b in /etc/influxdb/influxdb.conf 
# Fri, 16 Nov 2018 19:46:34 GMT
EXPOSE 8086/tcp
# Fri, 16 Nov 2018 19:46:35 GMT
VOLUME [/var/lib/influxdb]
# Fri, 16 Nov 2018 19:46:36 GMT
COPY file:efb819384a9e7a972c15df74e1d18c7d6296e633a7c533def9a6d400b69468fc in /entrypoint.sh 
# Fri, 16 Nov 2018 19:46:36 GMT
COPY file:44e0050f3b04248a6900eace944c581b13b4ad9af1e5cfb91d837cb5e24356e6 in /init-influxdb.sh 
# Fri, 16 Nov 2018 19:46:37 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 16 Nov 2018 19:46:37 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:54f7e8ac135a5f502a6ee9537ef3d64b1cd2fa570dc0a40b4d3b6f7ac81e7486`  
		Last Modified: Thu, 15 Nov 2018 23:08:31 GMT  
		Size: 45.3 MB (45320257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6341e30912f12f56e18564a3b582853f65376766f5f9d641a68a724ed6db88f`  
		Last Modified: Fri, 16 Nov 2018 11:33:18 GMT  
		Size: 10.7 MB (10740278 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:087a57faf9491b1b82a83e26bc8cc90c90c30e4a4d858b57ddd5b4c2c90095f6`  
		Last Modified: Fri, 16 Nov 2018 11:33:17 GMT  
		Size: 4.3 MB (4340083 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d648defeaeff4cbd969b5bd8ef56e245e831516f3fa53c25440cf45299945300`  
		Last Modified: Fri, 16 Nov 2018 19:50:21 GMT  
		Size: 2.9 KB (2884 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f8409714819343b32fbc2e3ebe13e97b7a9b99169ffd46a34ceb80814ef1e82`  
		Last Modified: Fri, 16 Nov 2018 19:54:52 GMT  
		Size: 26.6 MB (26572122 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea05f45b68256f832f005922872ca44b919f88ed40cbf77b2a24115f14cf2977`  
		Last Modified: Fri, 16 Nov 2018 19:54:41 GMT  
		Size: 243.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8ccab27fbbc52c786a49e1c16585060aa6cd2c6f389599e5eec2d0287ee8f0a`  
		Last Modified: Fri, 16 Nov 2018 19:54:41 GMT  
		Size: 251.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd7f7d4bd263972b7dc6d2acf1247be3421a5f505020d946579a0ada604168ea`  
		Last Modified: Fri, 16 Nov 2018 19:54:41 GMT  
		Size: 1.2 KB (1165 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `influxdb:1.6.4-data-alpine`

```console
$ docker pull influxdb@sha256:e654e199720112c127967e391aabe84c3e67567591a27f77b1807daa1c624553
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `influxdb:1.6.4-data-alpine` - linux; amd64

```console
$ docker pull influxdb@sha256:3ec2f1ea506e9dfa7aaf96cdac1f374eef02a8502c48152bd4a4a92f5bfa4c36
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.5 MB (30524499 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e14dab04b431a073d26504f0208b59fee1f50bab333f30c1f5657054f2222cba`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Fri, 21 Dec 2018 00:21:10 GMT
ADD file:1c654f8c89128c1ac8363b251cb5e1e7d9326e430ae2740963f77cf6726aee0b in / 
# Fri, 21 Dec 2018 00:21:11 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 04:20:57 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf
# Fri, 21 Dec 2018 04:20:59 GMT
RUN apk add --no-cache tzdata bash ca-certificates &&     update-ca-certificates
# Fri, 21 Dec 2018 04:21:13 GMT
ENV INFLUXDB_VERSION=1.6.4-c1.6.4
# Fri, 21 Dec 2018 04:21:18 GMT
RUN set -ex &&     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/enterprise/releases/influxdb-data-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/enterprise/releases/influxdb-data-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify influxdb-data-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc influxdb-data-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf influxdb-data-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/influxdb-*/influxdb.conf &&     chmod +x /usr/src/influxdb-*/* &&     cp -a /usr/src/influxdb-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Fri, 21 Dec 2018 04:21:19 GMT
COPY file:bf2f42b62a32a7ee3ab93d9a5e451b7d59af1a97e40dc4a76b8aaf2f64383d7a in /etc/influxdb/influxdb.conf 
# Fri, 21 Dec 2018 04:21:19 GMT
EXPOSE 8086
# Fri, 21 Dec 2018 04:21:19 GMT
VOLUME [/var/lib/influxdb]
# Fri, 21 Dec 2018 04:21:19 GMT
COPY file:182a0176834db40043100d082d05e5aded9887c94b02416f6e3154c827c07360 in /entrypoint.sh 
# Fri, 21 Dec 2018 04:21:19 GMT
COPY file:892fcd3130baa17c0b88866ac37e7fe0b7b420a67105d9cd99803c685eaf9df4 in /init-influxdb.sh 
# Fri, 21 Dec 2018 04:21:20 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 21 Dec 2018 04:21:20 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:407ea412d82cbc18a270f0ae17d5e528e620bcf4661229e757446f6e6443768b`  
		Last Modified: Fri, 21 Dec 2018 00:23:41 GMT  
		Size: 2.1 MB (2107153 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d00f09ce7312b69220662bba01a4ad6c075fe2107adea6644e4b4bf1f7d1d575`  
		Last Modified: Fri, 21 Dec 2018 04:22:33 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a99365142bbe7691f2aea9e22980a485d0509ebba01cd61a1ffaf3c93c4a3cf7`  
		Last Modified: Fri, 21 Dec 2018 04:22:32 GMT  
		Size: 2.0 MB (1966661 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5975dba6eb0a86cb5c8a46a4be84395bf0ba380e3c1cab045475db8e965d10f`  
		Last Modified: Fri, 21 Dec 2018 04:22:47 GMT  
		Size: 26.4 MB (26448877 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18e4a27a04e256ff608f28199e5961cafdbac1ddb54c327a74863b794283f62a`  
		Last Modified: Fri, 21 Dec 2018 04:22:41 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8ffd62b7dc6edabc41ab098bafdff11d47f9df5c4c91cb53e2d29bf493e2ddf`  
		Last Modified: Fri, 21 Dec 2018 04:22:41 GMT  
		Size: 251.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7f046dc83c87d866c233447cb0a0b9b8a83d7cecc6cc0245f2ec8b37f5a1f39`  
		Last Modified: Fri, 21 Dec 2018 04:22:41 GMT  
		Size: 1.2 KB (1166 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `influxdb:1.6.4-meta`

```console
$ docker pull influxdb@sha256:5dce66c5967e7bd2a265b62c7e98bec020a3bc699ed361dbe3a47a16663ce1d5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `influxdb:1.6.4-meta` - linux; amd64

```console
$ docker pull influxdb@sha256:d089bf1edf682ce04705a7c5d99bb7928d8f29566778688542b47103da389296
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **73.0 MB (72950787 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b5841a6a971b4f45da1d2b496a7183b9555ea2d9a82806ccef93d58bf917b170`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd-meta"]`

```dockerfile
# Thu, 15 Nov 2018 22:44:00 GMT
ADD file:a61c14b18252183a4719980da97ac483044bcaa9df8a569a6d7bf0f719384b5e in / 
# Thu, 15 Nov 2018 22:44:09 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 11:15:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 11:16:02 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 16 Nov 2018 19:42:13 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Fri, 16 Nov 2018 19:46:27 GMT
ENV INFLUXDB_VERSION=1.6.4-c1.6.4
# Fri, 16 Nov 2018 19:47:37 GMT
RUN wget --no-verbose https://dl.influxdata.com/enterprise/releases/influxdb-meta_${INFLUXDB_VERSION}_amd64.deb.asc &&     wget --no-verbose https://dl.influxdata.com/enterprise/releases/influxdb-meta_${INFLUXDB_VERSION}_amd64.deb &&     gpg --batch --verify influxdb-meta_${INFLUXDB_VERSION}_amd64.deb.asc influxdb-meta_${INFLUXDB_VERSION}_amd64.deb &&     dpkg -i influxdb-meta_${INFLUXDB_VERSION}_amd64.deb &&     rm -f influxdb-meta_${INFLUXDB_VERSION}_amd64.deb*
# Fri, 16 Nov 2018 19:47:38 GMT
COPY file:95a6fe33e203909c093135fff9ff2b4cdc02ca4f1fe1dec109b5a9cf6b7a0946 in /etc/influxdb/influxdb-meta.conf 
# Fri, 16 Nov 2018 19:47:38 GMT
EXPOSE 8091/tcp
# Fri, 16 Nov 2018 19:47:39 GMT
VOLUME [/var/lib/influxdb]
# Fri, 16 Nov 2018 19:47:39 GMT
COPY file:b4fa000cf2aff5bf4e5093021ca6255fffa17c43ae18eb4c55ae28a3cc2dc281 in /entrypoint.sh 
# Fri, 16 Nov 2018 19:47:40 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 16 Nov 2018 19:47:40 GMT
CMD ["influxd-meta"]
```

-	Layers:
	-	`sha256:54f7e8ac135a5f502a6ee9537ef3d64b1cd2fa570dc0a40b4d3b6f7ac81e7486`  
		Last Modified: Thu, 15 Nov 2018 23:08:31 GMT  
		Size: 45.3 MB (45320257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6341e30912f12f56e18564a3b582853f65376766f5f9d641a68a724ed6db88f`  
		Last Modified: Fri, 16 Nov 2018 11:33:18 GMT  
		Size: 10.7 MB (10740278 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:087a57faf9491b1b82a83e26bc8cc90c90c30e4a4d858b57ddd5b4c2c90095f6`  
		Last Modified: Fri, 16 Nov 2018 11:33:17 GMT  
		Size: 4.3 MB (4340083 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d648defeaeff4cbd969b5bd8ef56e245e831516f3fa53c25440cf45299945300`  
		Last Modified: Fri, 16 Nov 2018 19:50:21 GMT  
		Size: 2.9 KB (2884 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9284326b8ca9c3b28061277321b23ec731b85ce51e03a8afef6343e298af2fb6`  
		Last Modified: Fri, 16 Nov 2018 19:57:12 GMT  
		Size: 12.5 MB (12546716 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:169d8ea42a11fd2b290d0b182fac09fa070cfcd15e3581ac9cce9b2c6d068cf8`  
		Last Modified: Fri, 16 Nov 2018 19:57:11 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6bb3d04233833f7e1ee5ff615ffd566895bd830aaf88276f66628bcf89ec2b4`  
		Last Modified: Fri, 16 Nov 2018 19:57:10 GMT  
		Size: 375.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `influxdb:1.6.4-meta-alpine`

```console
$ docker pull influxdb@sha256:98934e905c0bb622114802266c86f05019d4d404a39f5711d3ea7e390f447913
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `influxdb:1.6.4-meta-alpine` - linux; amd64

```console
$ docker pull influxdb@sha256:ab7b29163fd9d9c6f6f8163aa65a624fc92053ce9b93327a8a5aa9bbff907276
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.6 MB (16578378 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:568d131c8fa88c8d3b8af81747f0d14a8e13ee4bca5ba9205a2af9942002b28e`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd-meta"]`

```dockerfile
# Fri, 21 Dec 2018 00:21:10 GMT
ADD file:1c654f8c89128c1ac8363b251cb5e1e7d9326e430ae2740963f77cf6726aee0b in / 
# Fri, 21 Dec 2018 00:21:11 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 04:20:57 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf
# Fri, 21 Dec 2018 04:20:59 GMT
RUN apk add --no-cache tzdata bash ca-certificates &&     update-ca-certificates
# Fri, 21 Dec 2018 04:21:13 GMT
ENV INFLUXDB_VERSION=1.6.4-c1.6.4
# Fri, 21 Dec 2018 04:21:30 GMT
RUN set -ex &&     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/enterprise/releases/influxdb-meta-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/enterprise/releases/influxdb-meta-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify influxdb-meta-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc influxdb-meta-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf influxdb-meta-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/influxdb-*/influxdb-meta.conf &&     chmod +x /usr/src/influxdb-*/* &&     cp -a /usr/src/influxdb-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Fri, 21 Dec 2018 04:21:31 GMT
COPY file:5d8d1b0acfd7ca05cf6698246b28d240206fa448f4aa5ac839c9ad323adbeac2 in /etc/influxdb/influxdb-meta.conf 
# Fri, 21 Dec 2018 04:21:31 GMT
EXPOSE 8091
# Fri, 21 Dec 2018 04:21:31 GMT
VOLUME [/var/lib/influxdb]
# Fri, 21 Dec 2018 04:21:31 GMT
COPY file:126b1f7e41b4975cf2ce23037cf6a46253fb817023062317380c48ff5df47228 in /entrypoint.sh 
# Fri, 21 Dec 2018 04:21:31 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 21 Dec 2018 04:21:31 GMT
CMD ["influxd-meta"]
```

-	Layers:
	-	`sha256:407ea412d82cbc18a270f0ae17d5e528e620bcf4661229e757446f6e6443768b`  
		Last Modified: Fri, 21 Dec 2018 00:23:41 GMT  
		Size: 2.1 MB (2107153 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d00f09ce7312b69220662bba01a4ad6c075fe2107adea6644e4b4bf1f7d1d575`  
		Last Modified: Fri, 21 Dec 2018 04:22:33 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a99365142bbe7691f2aea9e22980a485d0509ebba01cd61a1ffaf3c93c4a3cf7`  
		Last Modified: Fri, 21 Dec 2018 04:22:32 GMT  
		Size: 2.0 MB (1966661 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:294225a5d3cb369f5dd02e57c69cf61549d1c46cb05f6db29979d6ee1b32c033`  
		Last Modified: Fri, 21 Dec 2018 04:22:55 GMT  
		Size: 12.5 MB (12503841 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae01ca2f88c83a64713486d43ad39e8677e86ca24a8543b954009d7bcf37ed2d`  
		Last Modified: Fri, 21 Dec 2018 04:22:52 GMT  
		Size: 196.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:426831117cf98f6359813be487d16034225e2adccea787007026d5853180a6c1`  
		Last Modified: Fri, 21 Dec 2018 04:22:52 GMT  
		Size: 374.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `influxdb:1.6-alpine`

```console
$ docker pull influxdb@sha256:d052ea7594883ef6fd968100fa8eedaf8f555f1d7c1b37a94b5e2cf5e1be38f3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `influxdb:1.6-alpine` - linux; amd64

```console
$ docker pull influxdb@sha256:80bc9451fead7d577ceb5a4d888600bdbfacb6b5fa38623d9ef1db0298f12de3
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **29.3 MB (29258462 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:778bed28793d6ef677203106aee71d76733634f396fb78ed868a0cfbab2c3def`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Fri, 21 Dec 2018 00:21:10 GMT
ADD file:1c654f8c89128c1ac8363b251cb5e1e7d9326e430ae2740963f77cf6726aee0b in / 
# Fri, 21 Dec 2018 00:21:11 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 04:20:57 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf
# Fri, 21 Dec 2018 04:20:59 GMT
RUN apk add --no-cache tzdata bash ca-certificates &&     update-ca-certificates
# Fri, 21 Dec 2018 04:21:00 GMT
ENV INFLUXDB_VERSION=1.6.4
# Fri, 21 Dec 2018 04:21:05 GMT
RUN set -ex &&     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/influxdb/releases/influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/influxdb/releases/influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/influxdb-*/influxdb.conf &&     chmod +x /usr/src/influxdb-*/* &&     cp -a /usr/src/influxdb-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Fri, 21 Dec 2018 04:21:06 GMT
COPY file:3d8a606d61e1fc0042cf34d036eda4550a18d140c47376dacc02d96ee6f2dd8b in /etc/influxdb/influxdb.conf 
# Fri, 21 Dec 2018 04:21:06 GMT
EXPOSE 8086
# Fri, 21 Dec 2018 04:21:06 GMT
VOLUME [/var/lib/influxdb]
# Fri, 21 Dec 2018 04:21:06 GMT
COPY file:61c4af7a0e637328374ec46266ed6dde40adf7d14ac6c5081100924991beb7f3 in /entrypoint.sh 
# Fri, 21 Dec 2018 04:21:06 GMT
COPY file:892fcd3130baa17c0b88866ac37e7fe0b7b420a67105d9cd99803c685eaf9df4 in /init-influxdb.sh 
# Fri, 21 Dec 2018 04:21:06 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 21 Dec 2018 04:21:07 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:407ea412d82cbc18a270f0ae17d5e528e620bcf4661229e757446f6e6443768b`  
		Last Modified: Fri, 21 Dec 2018 00:23:41 GMT  
		Size: 2.1 MB (2107153 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d00f09ce7312b69220662bba01a4ad6c075fe2107adea6644e4b4bf1f7d1d575`  
		Last Modified: Fri, 21 Dec 2018 04:22:33 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a99365142bbe7691f2aea9e22980a485d0509ebba01cd61a1ffaf3c93c4a3cf7`  
		Last Modified: Fri, 21 Dec 2018 04:22:32 GMT  
		Size: 2.0 MB (1966661 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:284ac3e63a2c1db1f37945331eef0ea4bf929cbc4ad18d641ab17228983b2404`  
		Last Modified: Fri, 21 Dec 2018 04:22:37 GMT  
		Size: 25.2 MB (25182896 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3553525328ee812cff542b90f40734d9de30b0f88fb816306be2ab955410dfd6`  
		Last Modified: Fri, 21 Dec 2018 04:22:31 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e07aefe5c618b84569ce515d7cde08f3d397c30e82a521a2f9be5778bebf3b21`  
		Last Modified: Fri, 21 Dec 2018 04:22:32 GMT  
		Size: 211.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:278da487fecc389e06e4ab394d887431552e38042966cd85211a542abec5267b`  
		Last Modified: Fri, 21 Dec 2018 04:22:32 GMT  
		Size: 1.2 KB (1166 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `influxdb:1.6-data`

```console
$ docker pull influxdb@sha256:11e215f1430dc26424d8564b5b1fd69edba17398375b9fc0f509a5041a2a9668
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `influxdb:1.6-data` - linux; amd64

```console
$ docker pull influxdb@sha256:390d8dc2727e8bf692b22ab80863941afa677811faae37ad4729c287d1628f12
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **87.0 MB (86977283 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:31d8cea8bfe34ecd973c72be576c664456746baf726f0ccf0f8fde4a161319ea`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Thu, 15 Nov 2018 22:44:00 GMT
ADD file:a61c14b18252183a4719980da97ac483044bcaa9df8a569a6d7bf0f719384b5e in / 
# Thu, 15 Nov 2018 22:44:09 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 11:15:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 11:16:02 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 16 Nov 2018 19:42:13 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Fri, 16 Nov 2018 19:46:27 GMT
ENV INFLUXDB_VERSION=1.6.4-c1.6.4
# Fri, 16 Nov 2018 19:46:33 GMT
RUN wget --no-verbose https://dl.influxdata.com/enterprise/releases/influxdb-data_${INFLUXDB_VERSION}_amd64.deb.asc &&     wget --no-verbose https://dl.influxdata.com/enterprise/releases/influxdb-data_${INFLUXDB_VERSION}_amd64.deb &&     gpg --batch --verify influxdb-data_${INFLUXDB_VERSION}_amd64.deb.asc influxdb-data_${INFLUXDB_VERSION}_amd64.deb &&     dpkg -i influxdb-data_${INFLUXDB_VERSION}_amd64.deb &&     rm -f influxdb-data_${INFLUXDB_VERSION}_amd64.deb*
# Fri, 16 Nov 2018 19:46:34 GMT
COPY file:a7fc957fd6465cc132b5d41618061e4ac55bd347b790cd87cc496ab4f67a274b in /etc/influxdb/influxdb.conf 
# Fri, 16 Nov 2018 19:46:34 GMT
EXPOSE 8086/tcp
# Fri, 16 Nov 2018 19:46:35 GMT
VOLUME [/var/lib/influxdb]
# Fri, 16 Nov 2018 19:46:36 GMT
COPY file:efb819384a9e7a972c15df74e1d18c7d6296e633a7c533def9a6d400b69468fc in /entrypoint.sh 
# Fri, 16 Nov 2018 19:46:36 GMT
COPY file:44e0050f3b04248a6900eace944c581b13b4ad9af1e5cfb91d837cb5e24356e6 in /init-influxdb.sh 
# Fri, 16 Nov 2018 19:46:37 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 16 Nov 2018 19:46:37 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:54f7e8ac135a5f502a6ee9537ef3d64b1cd2fa570dc0a40b4d3b6f7ac81e7486`  
		Last Modified: Thu, 15 Nov 2018 23:08:31 GMT  
		Size: 45.3 MB (45320257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6341e30912f12f56e18564a3b582853f65376766f5f9d641a68a724ed6db88f`  
		Last Modified: Fri, 16 Nov 2018 11:33:18 GMT  
		Size: 10.7 MB (10740278 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:087a57faf9491b1b82a83e26bc8cc90c90c30e4a4d858b57ddd5b4c2c90095f6`  
		Last Modified: Fri, 16 Nov 2018 11:33:17 GMT  
		Size: 4.3 MB (4340083 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d648defeaeff4cbd969b5bd8ef56e245e831516f3fa53c25440cf45299945300`  
		Last Modified: Fri, 16 Nov 2018 19:50:21 GMT  
		Size: 2.9 KB (2884 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f8409714819343b32fbc2e3ebe13e97b7a9b99169ffd46a34ceb80814ef1e82`  
		Last Modified: Fri, 16 Nov 2018 19:54:52 GMT  
		Size: 26.6 MB (26572122 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea05f45b68256f832f005922872ca44b919f88ed40cbf77b2a24115f14cf2977`  
		Last Modified: Fri, 16 Nov 2018 19:54:41 GMT  
		Size: 243.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8ccab27fbbc52c786a49e1c16585060aa6cd2c6f389599e5eec2d0287ee8f0a`  
		Last Modified: Fri, 16 Nov 2018 19:54:41 GMT  
		Size: 251.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd7f7d4bd263972b7dc6d2acf1247be3421a5f505020d946579a0ada604168ea`  
		Last Modified: Fri, 16 Nov 2018 19:54:41 GMT  
		Size: 1.2 KB (1165 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `influxdb:1.6-data-alpine`

```console
$ docker pull influxdb@sha256:e654e199720112c127967e391aabe84c3e67567591a27f77b1807daa1c624553
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `influxdb:1.6-data-alpine` - linux; amd64

```console
$ docker pull influxdb@sha256:3ec2f1ea506e9dfa7aaf96cdac1f374eef02a8502c48152bd4a4a92f5bfa4c36
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.5 MB (30524499 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e14dab04b431a073d26504f0208b59fee1f50bab333f30c1f5657054f2222cba`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Fri, 21 Dec 2018 00:21:10 GMT
ADD file:1c654f8c89128c1ac8363b251cb5e1e7d9326e430ae2740963f77cf6726aee0b in / 
# Fri, 21 Dec 2018 00:21:11 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 04:20:57 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf
# Fri, 21 Dec 2018 04:20:59 GMT
RUN apk add --no-cache tzdata bash ca-certificates &&     update-ca-certificates
# Fri, 21 Dec 2018 04:21:13 GMT
ENV INFLUXDB_VERSION=1.6.4-c1.6.4
# Fri, 21 Dec 2018 04:21:18 GMT
RUN set -ex &&     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/enterprise/releases/influxdb-data-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/enterprise/releases/influxdb-data-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify influxdb-data-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc influxdb-data-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf influxdb-data-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/influxdb-*/influxdb.conf &&     chmod +x /usr/src/influxdb-*/* &&     cp -a /usr/src/influxdb-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Fri, 21 Dec 2018 04:21:19 GMT
COPY file:bf2f42b62a32a7ee3ab93d9a5e451b7d59af1a97e40dc4a76b8aaf2f64383d7a in /etc/influxdb/influxdb.conf 
# Fri, 21 Dec 2018 04:21:19 GMT
EXPOSE 8086
# Fri, 21 Dec 2018 04:21:19 GMT
VOLUME [/var/lib/influxdb]
# Fri, 21 Dec 2018 04:21:19 GMT
COPY file:182a0176834db40043100d082d05e5aded9887c94b02416f6e3154c827c07360 in /entrypoint.sh 
# Fri, 21 Dec 2018 04:21:19 GMT
COPY file:892fcd3130baa17c0b88866ac37e7fe0b7b420a67105d9cd99803c685eaf9df4 in /init-influxdb.sh 
# Fri, 21 Dec 2018 04:21:20 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 21 Dec 2018 04:21:20 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:407ea412d82cbc18a270f0ae17d5e528e620bcf4661229e757446f6e6443768b`  
		Last Modified: Fri, 21 Dec 2018 00:23:41 GMT  
		Size: 2.1 MB (2107153 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d00f09ce7312b69220662bba01a4ad6c075fe2107adea6644e4b4bf1f7d1d575`  
		Last Modified: Fri, 21 Dec 2018 04:22:33 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a99365142bbe7691f2aea9e22980a485d0509ebba01cd61a1ffaf3c93c4a3cf7`  
		Last Modified: Fri, 21 Dec 2018 04:22:32 GMT  
		Size: 2.0 MB (1966661 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5975dba6eb0a86cb5c8a46a4be84395bf0ba380e3c1cab045475db8e965d10f`  
		Last Modified: Fri, 21 Dec 2018 04:22:47 GMT  
		Size: 26.4 MB (26448877 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18e4a27a04e256ff608f28199e5961cafdbac1ddb54c327a74863b794283f62a`  
		Last Modified: Fri, 21 Dec 2018 04:22:41 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8ffd62b7dc6edabc41ab098bafdff11d47f9df5c4c91cb53e2d29bf493e2ddf`  
		Last Modified: Fri, 21 Dec 2018 04:22:41 GMT  
		Size: 251.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7f046dc83c87d866c233447cb0a0b9b8a83d7cecc6cc0245f2ec8b37f5a1f39`  
		Last Modified: Fri, 21 Dec 2018 04:22:41 GMT  
		Size: 1.2 KB (1166 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `influxdb:1.6-meta`

```console
$ docker pull influxdb@sha256:5dce66c5967e7bd2a265b62c7e98bec020a3bc699ed361dbe3a47a16663ce1d5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `influxdb:1.6-meta` - linux; amd64

```console
$ docker pull influxdb@sha256:d089bf1edf682ce04705a7c5d99bb7928d8f29566778688542b47103da389296
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **73.0 MB (72950787 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b5841a6a971b4f45da1d2b496a7183b9555ea2d9a82806ccef93d58bf917b170`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd-meta"]`

```dockerfile
# Thu, 15 Nov 2018 22:44:00 GMT
ADD file:a61c14b18252183a4719980da97ac483044bcaa9df8a569a6d7bf0f719384b5e in / 
# Thu, 15 Nov 2018 22:44:09 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 11:15:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 11:16:02 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 16 Nov 2018 19:42:13 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Fri, 16 Nov 2018 19:46:27 GMT
ENV INFLUXDB_VERSION=1.6.4-c1.6.4
# Fri, 16 Nov 2018 19:47:37 GMT
RUN wget --no-verbose https://dl.influxdata.com/enterprise/releases/influxdb-meta_${INFLUXDB_VERSION}_amd64.deb.asc &&     wget --no-verbose https://dl.influxdata.com/enterprise/releases/influxdb-meta_${INFLUXDB_VERSION}_amd64.deb &&     gpg --batch --verify influxdb-meta_${INFLUXDB_VERSION}_amd64.deb.asc influxdb-meta_${INFLUXDB_VERSION}_amd64.deb &&     dpkg -i influxdb-meta_${INFLUXDB_VERSION}_amd64.deb &&     rm -f influxdb-meta_${INFLUXDB_VERSION}_amd64.deb*
# Fri, 16 Nov 2018 19:47:38 GMT
COPY file:95a6fe33e203909c093135fff9ff2b4cdc02ca4f1fe1dec109b5a9cf6b7a0946 in /etc/influxdb/influxdb-meta.conf 
# Fri, 16 Nov 2018 19:47:38 GMT
EXPOSE 8091/tcp
# Fri, 16 Nov 2018 19:47:39 GMT
VOLUME [/var/lib/influxdb]
# Fri, 16 Nov 2018 19:47:39 GMT
COPY file:b4fa000cf2aff5bf4e5093021ca6255fffa17c43ae18eb4c55ae28a3cc2dc281 in /entrypoint.sh 
# Fri, 16 Nov 2018 19:47:40 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 16 Nov 2018 19:47:40 GMT
CMD ["influxd-meta"]
```

-	Layers:
	-	`sha256:54f7e8ac135a5f502a6ee9537ef3d64b1cd2fa570dc0a40b4d3b6f7ac81e7486`  
		Last Modified: Thu, 15 Nov 2018 23:08:31 GMT  
		Size: 45.3 MB (45320257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6341e30912f12f56e18564a3b582853f65376766f5f9d641a68a724ed6db88f`  
		Last Modified: Fri, 16 Nov 2018 11:33:18 GMT  
		Size: 10.7 MB (10740278 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:087a57faf9491b1b82a83e26bc8cc90c90c30e4a4d858b57ddd5b4c2c90095f6`  
		Last Modified: Fri, 16 Nov 2018 11:33:17 GMT  
		Size: 4.3 MB (4340083 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d648defeaeff4cbd969b5bd8ef56e245e831516f3fa53c25440cf45299945300`  
		Last Modified: Fri, 16 Nov 2018 19:50:21 GMT  
		Size: 2.9 KB (2884 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9284326b8ca9c3b28061277321b23ec731b85ce51e03a8afef6343e298af2fb6`  
		Last Modified: Fri, 16 Nov 2018 19:57:12 GMT  
		Size: 12.5 MB (12546716 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:169d8ea42a11fd2b290d0b182fac09fa070cfcd15e3581ac9cce9b2c6d068cf8`  
		Last Modified: Fri, 16 Nov 2018 19:57:11 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6bb3d04233833f7e1ee5ff615ffd566895bd830aaf88276f66628bcf89ec2b4`  
		Last Modified: Fri, 16 Nov 2018 19:57:10 GMT  
		Size: 375.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `influxdb:1.6-meta-alpine`

```console
$ docker pull influxdb@sha256:98934e905c0bb622114802266c86f05019d4d404a39f5711d3ea7e390f447913
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `influxdb:1.6-meta-alpine` - linux; amd64

```console
$ docker pull influxdb@sha256:ab7b29163fd9d9c6f6f8163aa65a624fc92053ce9b93327a8a5aa9bbff907276
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.6 MB (16578378 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:568d131c8fa88c8d3b8af81747f0d14a8e13ee4bca5ba9205a2af9942002b28e`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd-meta"]`

```dockerfile
# Fri, 21 Dec 2018 00:21:10 GMT
ADD file:1c654f8c89128c1ac8363b251cb5e1e7d9326e430ae2740963f77cf6726aee0b in / 
# Fri, 21 Dec 2018 00:21:11 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 04:20:57 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf
# Fri, 21 Dec 2018 04:20:59 GMT
RUN apk add --no-cache tzdata bash ca-certificates &&     update-ca-certificates
# Fri, 21 Dec 2018 04:21:13 GMT
ENV INFLUXDB_VERSION=1.6.4-c1.6.4
# Fri, 21 Dec 2018 04:21:30 GMT
RUN set -ex &&     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/enterprise/releases/influxdb-meta-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/enterprise/releases/influxdb-meta-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify influxdb-meta-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc influxdb-meta-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf influxdb-meta-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/influxdb-*/influxdb-meta.conf &&     chmod +x /usr/src/influxdb-*/* &&     cp -a /usr/src/influxdb-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Fri, 21 Dec 2018 04:21:31 GMT
COPY file:5d8d1b0acfd7ca05cf6698246b28d240206fa448f4aa5ac839c9ad323adbeac2 in /etc/influxdb/influxdb-meta.conf 
# Fri, 21 Dec 2018 04:21:31 GMT
EXPOSE 8091
# Fri, 21 Dec 2018 04:21:31 GMT
VOLUME [/var/lib/influxdb]
# Fri, 21 Dec 2018 04:21:31 GMT
COPY file:126b1f7e41b4975cf2ce23037cf6a46253fb817023062317380c48ff5df47228 in /entrypoint.sh 
# Fri, 21 Dec 2018 04:21:31 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 21 Dec 2018 04:21:31 GMT
CMD ["influxd-meta"]
```

-	Layers:
	-	`sha256:407ea412d82cbc18a270f0ae17d5e528e620bcf4661229e757446f6e6443768b`  
		Last Modified: Fri, 21 Dec 2018 00:23:41 GMT  
		Size: 2.1 MB (2107153 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d00f09ce7312b69220662bba01a4ad6c075fe2107adea6644e4b4bf1f7d1d575`  
		Last Modified: Fri, 21 Dec 2018 04:22:33 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a99365142bbe7691f2aea9e22980a485d0509ebba01cd61a1ffaf3c93c4a3cf7`  
		Last Modified: Fri, 21 Dec 2018 04:22:32 GMT  
		Size: 2.0 MB (1966661 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:294225a5d3cb369f5dd02e57c69cf61549d1c46cb05f6db29979d6ee1b32c033`  
		Last Modified: Fri, 21 Dec 2018 04:22:55 GMT  
		Size: 12.5 MB (12503841 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae01ca2f88c83a64713486d43ad39e8677e86ca24a8543b954009d7bcf37ed2d`  
		Last Modified: Fri, 21 Dec 2018 04:22:52 GMT  
		Size: 196.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:426831117cf98f6359813be487d16034225e2adccea787007026d5853180a6c1`  
		Last Modified: Fri, 21 Dec 2018 04:22:52 GMT  
		Size: 374.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `influxdb:1.7`

```console
$ docker pull influxdb@sha256:a2a5042026fcc380d3ddfe5a6938939992916bf0b0be4050a8f0c564b932250d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `influxdb:1.7` - linux; amd64

```console
$ docker pull influxdb@sha256:ff24a55d676cffdc8482226418891d8cab9d720ff7d7b50531e02f6decf74f00
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **107.2 MB (107215707 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1987e6cfa147c3f027e7e696c4fbf6dcadade1614b3b7171ebbd51a7db9d30b7`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Thu, 15 Nov 2018 22:44:00 GMT
ADD file:a61c14b18252183a4719980da97ac483044bcaa9df8a569a6d7bf0f719384b5e in / 
# Thu, 15 Nov 2018 22:44:09 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 11:15:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 11:16:02 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 16 Nov 2018 19:42:13 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Thu, 13 Dec 2018 23:30:49 GMT
ENV INFLUXDB_VERSION=1.7.2
# Thu, 13 Dec 2018 23:30:54 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     gpg --batch --verify influxdb_${INFLUXDB_VERSION}_${ARCH}.deb.asc influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     dpkg -i influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     rm -f influxdb_${INFLUXDB_VERSION}_${ARCH}.deb*
# Thu, 13 Dec 2018 23:30:55 GMT
COPY file:3ee2bc0321c2aa2451df7a508649c3a54f0eebc1ef9b8a24967c58105b4d3160 in /etc/influxdb/influxdb.conf 
# Thu, 13 Dec 2018 23:30:55 GMT
EXPOSE 8086/tcp
# Thu, 13 Dec 2018 23:30:55 GMT
VOLUME [/var/lib/influxdb]
# Thu, 13 Dec 2018 23:30:55 GMT
COPY file:098affa3d1b749dacb263ddacfd86a5de1f598d6ba1f7c789ce482c66ee9c80b in /entrypoint.sh 
# Thu, 13 Dec 2018 23:30:56 GMT
COPY file:44e0050f3b04248a6900eace944c581b13b4ad9af1e5cfb91d837cb5e24356e6 in /init-influxdb.sh 
# Thu, 13 Dec 2018 23:30:56 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 13 Dec 2018 23:30:56 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:54f7e8ac135a5f502a6ee9537ef3d64b1cd2fa570dc0a40b4d3b6f7ac81e7486`  
		Last Modified: Thu, 15 Nov 2018 23:08:31 GMT  
		Size: 45.3 MB (45320257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6341e30912f12f56e18564a3b582853f65376766f5f9d641a68a724ed6db88f`  
		Last Modified: Fri, 16 Nov 2018 11:33:18 GMT  
		Size: 10.7 MB (10740278 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:087a57faf9491b1b82a83e26bc8cc90c90c30e4a4d858b57ddd5b4c2c90095f6`  
		Last Modified: Fri, 16 Nov 2018 11:33:17 GMT  
		Size: 4.3 MB (4340083 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d648defeaeff4cbd969b5bd8ef56e245e831516f3fa53c25440cf45299945300`  
		Last Modified: Fri, 16 Nov 2018 19:50:21 GMT  
		Size: 2.9 KB (2884 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:676867d6fb1617bd41c1134a2f05c13fedf58d6f45f36e2d3280c3f8ec94f1de`  
		Last Modified: Thu, 13 Dec 2018 23:32:41 GMT  
		Size: 46.8 MB (46810608 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eace8033f42bab199d5b2692d7885bae906b55774ddb9debfdfa9a4c03b7fc71`  
		Last Modified: Thu, 13 Dec 2018 23:32:34 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b33c200423f9fd21934af88481d04be880cb8341de18e5cb6137a4526bc288f9`  
		Last Modified: Thu, 13 Dec 2018 23:32:33 GMT  
		Size: 209.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a077d30907d054fce5a60f46b0d007fa15e20819b37a18313cd0f66ed90676c7`  
		Last Modified: Thu, 13 Dec 2018 23:32:33 GMT  
		Size: 1.2 KB (1167 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `influxdb:1.7` - linux; arm variant v7

```console
$ docker pull influxdb@sha256:7d607ef6f2ad237002bac2a7f9446b127a69703b10101289b7b755668378b997
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **99.4 MB (99418266 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7fe7c85ef99dc0c5711fa6f87259ea0b66c34e9702eedf00c05b680b4ff4b099`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Fri, 16 Nov 2018 13:08:47 GMT
ADD file:085a6a2a32a05acfff8d2b179dad7789d649aca5cf2565a5b5490403e3d3cea0 in / 
# Fri, 16 Nov 2018 13:08:48 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 18:17:27 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 18:17:38 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 16 Nov 2018 22:44:53 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Fri, 14 Dec 2018 12:58:15 GMT
ENV INFLUXDB_VERSION=1.7.2
# Fri, 14 Dec 2018 12:58:24 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     gpg --batch --verify influxdb_${INFLUXDB_VERSION}_${ARCH}.deb.asc influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     dpkg -i influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     rm -f influxdb_${INFLUXDB_VERSION}_${ARCH}.deb*
# Fri, 14 Dec 2018 12:58:29 GMT
COPY file:3ee2bc0321c2aa2451df7a508649c3a54f0eebc1ef9b8a24967c58105b4d3160 in /etc/influxdb/influxdb.conf 
# Fri, 14 Dec 2018 12:58:30 GMT
EXPOSE 8086/tcp
# Fri, 14 Dec 2018 12:58:30 GMT
VOLUME [/var/lib/influxdb]
# Fri, 14 Dec 2018 12:58:31 GMT
COPY file:098affa3d1b749dacb263ddacfd86a5de1f598d6ba1f7c789ce482c66ee9c80b in /entrypoint.sh 
# Fri, 14 Dec 2018 12:58:32 GMT
COPY file:44e0050f3b04248a6900eace944c581b13b4ad9af1e5cfb91d837cb5e24356e6 in /init-influxdb.sh 
# Fri, 14 Dec 2018 12:58:32 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 14 Dec 2018 12:58:33 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:33dd5ae6335a66a99c6beb10708f7ff8d992b1075b6477cce3accbbe3b3a765e`  
		Last Modified: Fri, 16 Nov 2018 13:21:03 GMT  
		Size: 42.1 MB (42076140 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7353b73b294b9e3d692697431695f92c48a581f30b3295a5fad1b80854f13e5b`  
		Last Modified: Fri, 16 Nov 2018 18:31:31 GMT  
		Size: 9.4 MB (9440401 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e92165ab0bf59142c3f101750c7a81a51d559eed557c0674a209979d86fd4a9`  
		Last Modified: Fri, 16 Nov 2018 18:31:30 GMT  
		Size: 3.9 MB (3918472 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4aac8f53f358cf4c4deb8638fcfd8bb0f9e83d57cb993c17fb9ed9671c024ac4`  
		Last Modified: Fri, 16 Nov 2018 22:47:26 GMT  
		Size: 2.9 KB (2915 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:edfb1ed2ae671f30a2ba526c808e163a02a28a1236d8bc59ae5babb3275c507b`  
		Last Modified: Fri, 14 Dec 2018 12:59:01 GMT  
		Size: 44.0 MB (43978738 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a52c00effdf8cbc179dbf00a24e2798db378d0462f909c4d52f15baecdb7c017`  
		Last Modified: Fri, 14 Dec 2018 12:58:50 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ea32bcf1ca5b4fecf578c04edca31eb9b3527fd2e4b27ea108094985da36faa`  
		Last Modified: Fri, 14 Dec 2018 12:58:50 GMT  
		Size: 211.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f8b39f25fac855be78c6760d6e82d9825e463238cb11d60ceeed9ecbead360e`  
		Last Modified: Fri, 14 Dec 2018 12:58:50 GMT  
		Size: 1.2 KB (1166 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `influxdb:1.7` - linux; arm64 variant v8

```console
$ docker pull influxdb@sha256:a50ca881159eedc7ccdb19feb63caa0146f8e3b28710c4555a986594d1b8a9b6
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **100.2 MB (100204799 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:75cb52f279f1c6c6cf3fb8bd98b86b8de59e50748493fe84a9aef87f4132695b`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Fri, 16 Nov 2018 10:13:25 GMT
ADD file:bf8c0ee6d5a7d54f0c1259b5f65569cf7e5e828cfbe98302312933537cd9087e in / 
# Fri, 16 Nov 2018 10:13:26 GMT
CMD ["bash"]
# Sat, 17 Nov 2018 02:30:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 17 Nov 2018 02:30:54 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 17 Nov 2018 16:58:50 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Fri, 14 Dec 2018 10:07:35 GMT
ENV INFLUXDB_VERSION=1.7.2
# Fri, 14 Dec 2018 10:07:44 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     gpg --batch --verify influxdb_${INFLUXDB_VERSION}_${ARCH}.deb.asc influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     dpkg -i influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     rm -f influxdb_${INFLUXDB_VERSION}_${ARCH}.deb*
# Fri, 14 Dec 2018 10:07:45 GMT
COPY file:3ee2bc0321c2aa2451df7a508649c3a54f0eebc1ef9b8a24967c58105b4d3160 in /etc/influxdb/influxdb.conf 
# Fri, 14 Dec 2018 10:07:45 GMT
EXPOSE 8086/tcp
# Fri, 14 Dec 2018 10:07:46 GMT
VOLUME [/var/lib/influxdb]
# Fri, 14 Dec 2018 10:07:47 GMT
COPY file:098affa3d1b749dacb263ddacfd86a5de1f598d6ba1f7c789ce482c66ee9c80b in /entrypoint.sh 
# Fri, 14 Dec 2018 10:07:47 GMT
COPY file:44e0050f3b04248a6900eace944c581b13b4ad9af1e5cfb91d837cb5e24356e6 in /init-influxdb.sh 
# Fri, 14 Dec 2018 10:07:48 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 14 Dec 2018 10:07:49 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:4f3698b9865b00fa6eb7e0d3d11692c31eb0dc455aa6ab111d965bae67726698`  
		Last Modified: Thu, 15 Nov 2018 01:52:55 GMT  
		Size: 43.1 MB (43116700 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d136331294ced7de67c8e4bea8c807c347632c0aa25c4ec2ae6a7a3e346d6c1`  
		Last Modified: Sat, 17 Nov 2018 02:50:40 GMT  
		Size: 9.7 MB (9690286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44c15aa4d980e5d3689a8a8099f7d79fb667611239aab1dfa5447b52f0a24934`  
		Last Modified: Sat, 17 Nov 2018 02:50:38 GMT  
		Size: 4.1 MB (4093102 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a58696b91002d344db2504db959bd55413ce3d671d4bb1680ff14794d8653394`  
		Last Modified: Sat, 17 Nov 2018 17:00:47 GMT  
		Size: 2.9 KB (2887 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75e5b02147a0f848e74c565ee5607e9236292083483760c4824ea3a7694a781d`  
		Last Modified: Fri, 14 Dec 2018 10:08:24 GMT  
		Size: 43.3 MB (43300225 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d20d830ae0c482c12feacba0a1af71dbff5118779a4443c7cf250e8c62e1212`  
		Last Modified: Fri, 14 Dec 2018 10:08:11 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73fe143d7f037d78c1287c8f231a7d8ddb5d27d8c7cc8d811dacf07a4ace957a`  
		Last Modified: Fri, 14 Dec 2018 10:08:11 GMT  
		Size: 211.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:857b521dcb54ffb6c296280e0d6ca95e87774737679c1a746efffecf10e1bd1f`  
		Last Modified: Fri, 14 Dec 2018 10:08:11 GMT  
		Size: 1.2 KB (1165 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `influxdb:1.7.2`

```console
$ docker pull influxdb@sha256:a2a5042026fcc380d3ddfe5a6938939992916bf0b0be4050a8f0c564b932250d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `influxdb:1.7.2` - linux; amd64

```console
$ docker pull influxdb@sha256:ff24a55d676cffdc8482226418891d8cab9d720ff7d7b50531e02f6decf74f00
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **107.2 MB (107215707 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1987e6cfa147c3f027e7e696c4fbf6dcadade1614b3b7171ebbd51a7db9d30b7`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Thu, 15 Nov 2018 22:44:00 GMT
ADD file:a61c14b18252183a4719980da97ac483044bcaa9df8a569a6d7bf0f719384b5e in / 
# Thu, 15 Nov 2018 22:44:09 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 11:15:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 11:16:02 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 16 Nov 2018 19:42:13 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Thu, 13 Dec 2018 23:30:49 GMT
ENV INFLUXDB_VERSION=1.7.2
# Thu, 13 Dec 2018 23:30:54 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     gpg --batch --verify influxdb_${INFLUXDB_VERSION}_${ARCH}.deb.asc influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     dpkg -i influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     rm -f influxdb_${INFLUXDB_VERSION}_${ARCH}.deb*
# Thu, 13 Dec 2018 23:30:55 GMT
COPY file:3ee2bc0321c2aa2451df7a508649c3a54f0eebc1ef9b8a24967c58105b4d3160 in /etc/influxdb/influxdb.conf 
# Thu, 13 Dec 2018 23:30:55 GMT
EXPOSE 8086/tcp
# Thu, 13 Dec 2018 23:30:55 GMT
VOLUME [/var/lib/influxdb]
# Thu, 13 Dec 2018 23:30:55 GMT
COPY file:098affa3d1b749dacb263ddacfd86a5de1f598d6ba1f7c789ce482c66ee9c80b in /entrypoint.sh 
# Thu, 13 Dec 2018 23:30:56 GMT
COPY file:44e0050f3b04248a6900eace944c581b13b4ad9af1e5cfb91d837cb5e24356e6 in /init-influxdb.sh 
# Thu, 13 Dec 2018 23:30:56 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 13 Dec 2018 23:30:56 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:54f7e8ac135a5f502a6ee9537ef3d64b1cd2fa570dc0a40b4d3b6f7ac81e7486`  
		Last Modified: Thu, 15 Nov 2018 23:08:31 GMT  
		Size: 45.3 MB (45320257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6341e30912f12f56e18564a3b582853f65376766f5f9d641a68a724ed6db88f`  
		Last Modified: Fri, 16 Nov 2018 11:33:18 GMT  
		Size: 10.7 MB (10740278 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:087a57faf9491b1b82a83e26bc8cc90c90c30e4a4d858b57ddd5b4c2c90095f6`  
		Last Modified: Fri, 16 Nov 2018 11:33:17 GMT  
		Size: 4.3 MB (4340083 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d648defeaeff4cbd969b5bd8ef56e245e831516f3fa53c25440cf45299945300`  
		Last Modified: Fri, 16 Nov 2018 19:50:21 GMT  
		Size: 2.9 KB (2884 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:676867d6fb1617bd41c1134a2f05c13fedf58d6f45f36e2d3280c3f8ec94f1de`  
		Last Modified: Thu, 13 Dec 2018 23:32:41 GMT  
		Size: 46.8 MB (46810608 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eace8033f42bab199d5b2692d7885bae906b55774ddb9debfdfa9a4c03b7fc71`  
		Last Modified: Thu, 13 Dec 2018 23:32:34 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b33c200423f9fd21934af88481d04be880cb8341de18e5cb6137a4526bc288f9`  
		Last Modified: Thu, 13 Dec 2018 23:32:33 GMT  
		Size: 209.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a077d30907d054fce5a60f46b0d007fa15e20819b37a18313cd0f66ed90676c7`  
		Last Modified: Thu, 13 Dec 2018 23:32:33 GMT  
		Size: 1.2 KB (1167 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `influxdb:1.7.2` - linux; arm variant v7

```console
$ docker pull influxdb@sha256:7d607ef6f2ad237002bac2a7f9446b127a69703b10101289b7b755668378b997
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **99.4 MB (99418266 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7fe7c85ef99dc0c5711fa6f87259ea0b66c34e9702eedf00c05b680b4ff4b099`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Fri, 16 Nov 2018 13:08:47 GMT
ADD file:085a6a2a32a05acfff8d2b179dad7789d649aca5cf2565a5b5490403e3d3cea0 in / 
# Fri, 16 Nov 2018 13:08:48 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 18:17:27 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 18:17:38 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 16 Nov 2018 22:44:53 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Fri, 14 Dec 2018 12:58:15 GMT
ENV INFLUXDB_VERSION=1.7.2
# Fri, 14 Dec 2018 12:58:24 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     gpg --batch --verify influxdb_${INFLUXDB_VERSION}_${ARCH}.deb.asc influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     dpkg -i influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     rm -f influxdb_${INFLUXDB_VERSION}_${ARCH}.deb*
# Fri, 14 Dec 2018 12:58:29 GMT
COPY file:3ee2bc0321c2aa2451df7a508649c3a54f0eebc1ef9b8a24967c58105b4d3160 in /etc/influxdb/influxdb.conf 
# Fri, 14 Dec 2018 12:58:30 GMT
EXPOSE 8086/tcp
# Fri, 14 Dec 2018 12:58:30 GMT
VOLUME [/var/lib/influxdb]
# Fri, 14 Dec 2018 12:58:31 GMT
COPY file:098affa3d1b749dacb263ddacfd86a5de1f598d6ba1f7c789ce482c66ee9c80b in /entrypoint.sh 
# Fri, 14 Dec 2018 12:58:32 GMT
COPY file:44e0050f3b04248a6900eace944c581b13b4ad9af1e5cfb91d837cb5e24356e6 in /init-influxdb.sh 
# Fri, 14 Dec 2018 12:58:32 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 14 Dec 2018 12:58:33 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:33dd5ae6335a66a99c6beb10708f7ff8d992b1075b6477cce3accbbe3b3a765e`  
		Last Modified: Fri, 16 Nov 2018 13:21:03 GMT  
		Size: 42.1 MB (42076140 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7353b73b294b9e3d692697431695f92c48a581f30b3295a5fad1b80854f13e5b`  
		Last Modified: Fri, 16 Nov 2018 18:31:31 GMT  
		Size: 9.4 MB (9440401 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e92165ab0bf59142c3f101750c7a81a51d559eed557c0674a209979d86fd4a9`  
		Last Modified: Fri, 16 Nov 2018 18:31:30 GMT  
		Size: 3.9 MB (3918472 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4aac8f53f358cf4c4deb8638fcfd8bb0f9e83d57cb993c17fb9ed9671c024ac4`  
		Last Modified: Fri, 16 Nov 2018 22:47:26 GMT  
		Size: 2.9 KB (2915 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:edfb1ed2ae671f30a2ba526c808e163a02a28a1236d8bc59ae5babb3275c507b`  
		Last Modified: Fri, 14 Dec 2018 12:59:01 GMT  
		Size: 44.0 MB (43978738 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a52c00effdf8cbc179dbf00a24e2798db378d0462f909c4d52f15baecdb7c017`  
		Last Modified: Fri, 14 Dec 2018 12:58:50 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ea32bcf1ca5b4fecf578c04edca31eb9b3527fd2e4b27ea108094985da36faa`  
		Last Modified: Fri, 14 Dec 2018 12:58:50 GMT  
		Size: 211.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f8b39f25fac855be78c6760d6e82d9825e463238cb11d60ceeed9ecbead360e`  
		Last Modified: Fri, 14 Dec 2018 12:58:50 GMT  
		Size: 1.2 KB (1166 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `influxdb:1.7.2` - linux; arm64 variant v8

```console
$ docker pull influxdb@sha256:a50ca881159eedc7ccdb19feb63caa0146f8e3b28710c4555a986594d1b8a9b6
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **100.2 MB (100204799 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:75cb52f279f1c6c6cf3fb8bd98b86b8de59e50748493fe84a9aef87f4132695b`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Fri, 16 Nov 2018 10:13:25 GMT
ADD file:bf8c0ee6d5a7d54f0c1259b5f65569cf7e5e828cfbe98302312933537cd9087e in / 
# Fri, 16 Nov 2018 10:13:26 GMT
CMD ["bash"]
# Sat, 17 Nov 2018 02:30:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 17 Nov 2018 02:30:54 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 17 Nov 2018 16:58:50 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Fri, 14 Dec 2018 10:07:35 GMT
ENV INFLUXDB_VERSION=1.7.2
# Fri, 14 Dec 2018 10:07:44 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     gpg --batch --verify influxdb_${INFLUXDB_VERSION}_${ARCH}.deb.asc influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     dpkg -i influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     rm -f influxdb_${INFLUXDB_VERSION}_${ARCH}.deb*
# Fri, 14 Dec 2018 10:07:45 GMT
COPY file:3ee2bc0321c2aa2451df7a508649c3a54f0eebc1ef9b8a24967c58105b4d3160 in /etc/influxdb/influxdb.conf 
# Fri, 14 Dec 2018 10:07:45 GMT
EXPOSE 8086/tcp
# Fri, 14 Dec 2018 10:07:46 GMT
VOLUME [/var/lib/influxdb]
# Fri, 14 Dec 2018 10:07:47 GMT
COPY file:098affa3d1b749dacb263ddacfd86a5de1f598d6ba1f7c789ce482c66ee9c80b in /entrypoint.sh 
# Fri, 14 Dec 2018 10:07:47 GMT
COPY file:44e0050f3b04248a6900eace944c581b13b4ad9af1e5cfb91d837cb5e24356e6 in /init-influxdb.sh 
# Fri, 14 Dec 2018 10:07:48 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 14 Dec 2018 10:07:49 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:4f3698b9865b00fa6eb7e0d3d11692c31eb0dc455aa6ab111d965bae67726698`  
		Last Modified: Thu, 15 Nov 2018 01:52:55 GMT  
		Size: 43.1 MB (43116700 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d136331294ced7de67c8e4bea8c807c347632c0aa25c4ec2ae6a7a3e346d6c1`  
		Last Modified: Sat, 17 Nov 2018 02:50:40 GMT  
		Size: 9.7 MB (9690286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44c15aa4d980e5d3689a8a8099f7d79fb667611239aab1dfa5447b52f0a24934`  
		Last Modified: Sat, 17 Nov 2018 02:50:38 GMT  
		Size: 4.1 MB (4093102 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a58696b91002d344db2504db959bd55413ce3d671d4bb1680ff14794d8653394`  
		Last Modified: Sat, 17 Nov 2018 17:00:47 GMT  
		Size: 2.9 KB (2887 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75e5b02147a0f848e74c565ee5607e9236292083483760c4824ea3a7694a781d`  
		Last Modified: Fri, 14 Dec 2018 10:08:24 GMT  
		Size: 43.3 MB (43300225 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d20d830ae0c482c12feacba0a1af71dbff5118779a4443c7cf250e8c62e1212`  
		Last Modified: Fri, 14 Dec 2018 10:08:11 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73fe143d7f037d78c1287c8f231a7d8ddb5d27d8c7cc8d811dacf07a4ace957a`  
		Last Modified: Fri, 14 Dec 2018 10:08:11 GMT  
		Size: 211.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:857b521dcb54ffb6c296280e0d6ca95e87774737679c1a746efffecf10e1bd1f`  
		Last Modified: Fri, 14 Dec 2018 10:08:11 GMT  
		Size: 1.2 KB (1165 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `influxdb:1.7.2-alpine`

```console
$ docker pull influxdb@sha256:05b5f1973450456395b6ea35b7e2fc029c264c810cfbd8559f281ab2747eed5a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `influxdb:1.7.2-alpine` - linux; amd64

```console
$ docker pull influxdb@sha256:2746fb78a433aba4df889728018f45f81fff983e6323f2ef1faeed724133dbea
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **50.7 MB (50678562 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:360c3d0880c461f6a6ff54d2e8a86fab4f9384847ff019e783669590723b96e4`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Fri, 21 Dec 2018 00:21:10 GMT
ADD file:1c654f8c89128c1ac8363b251cb5e1e7d9326e430ae2740963f77cf6726aee0b in / 
# Fri, 21 Dec 2018 00:21:11 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 04:20:57 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf
# Fri, 21 Dec 2018 04:20:59 GMT
RUN apk add --no-cache tzdata bash ca-certificates &&     update-ca-certificates
# Fri, 21 Dec 2018 04:21:37 GMT
ENV INFLUXDB_VERSION=1.7.2
# Fri, 21 Dec 2018 04:21:44 GMT
RUN set -ex &&     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/influxdb/releases/influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/influxdb/releases/influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/influxdb-*/influxdb.conf &&     chmod +x /usr/src/influxdb-*/* &&     cp -a /usr/src/influxdb-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Fri, 21 Dec 2018 04:21:45 GMT
COPY file:3d8a606d61e1fc0042cf34d036eda4550a18d140c47376dacc02d96ee6f2dd8b in /etc/influxdb/influxdb.conf 
# Fri, 21 Dec 2018 04:21:45 GMT
EXPOSE 8086
# Fri, 21 Dec 2018 04:21:45 GMT
VOLUME [/var/lib/influxdb]
# Fri, 21 Dec 2018 04:21:45 GMT
COPY file:61c4af7a0e637328374ec46266ed6dde40adf7d14ac6c5081100924991beb7f3 in /entrypoint.sh 
# Fri, 21 Dec 2018 04:21:45 GMT
COPY file:892fcd3130baa17c0b88866ac37e7fe0b7b420a67105d9cd99803c685eaf9df4 in /init-influxdb.sh 
# Fri, 21 Dec 2018 04:21:46 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 21 Dec 2018 04:21:46 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:407ea412d82cbc18a270f0ae17d5e528e620bcf4661229e757446f6e6443768b`  
		Last Modified: Fri, 21 Dec 2018 00:23:41 GMT  
		Size: 2.1 MB (2107153 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d00f09ce7312b69220662bba01a4ad6c075fe2107adea6644e4b4bf1f7d1d575`  
		Last Modified: Fri, 21 Dec 2018 04:22:33 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a99365142bbe7691f2aea9e22980a485d0509ebba01cd61a1ffaf3c93c4a3cf7`  
		Last Modified: Fri, 21 Dec 2018 04:22:32 GMT  
		Size: 2.0 MB (1966661 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:690096df6d9410f6a80ef26439d285a5347619d8a0792d043e46ce4162fc9b02`  
		Last Modified: Fri, 21 Dec 2018 04:23:09 GMT  
		Size: 46.6 MB (46602996 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21d26f3dc0a4003f301864550a0cf469aa5dbf5f122f4814a7e9b87afcdaa713`  
		Last Modified: Fri, 21 Dec 2018 04:23:00 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08b66a11af3dbd27dcfe2ea512befd26884685d8dce7e53606b0b3beb4f5d53d`  
		Last Modified: Fri, 21 Dec 2018 04:23:00 GMT  
		Size: 210.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f94835e552274629c88a9e7d3923afd26b6e9087011263d8abe576755b7ca02`  
		Last Modified: Fri, 21 Dec 2018 04:23:00 GMT  
		Size: 1.2 KB (1166 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `influxdb:1.7-alpine`

```console
$ docker pull influxdb@sha256:05b5f1973450456395b6ea35b7e2fc029c264c810cfbd8559f281ab2747eed5a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `influxdb:1.7-alpine` - linux; amd64

```console
$ docker pull influxdb@sha256:2746fb78a433aba4df889728018f45f81fff983e6323f2ef1faeed724133dbea
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **50.7 MB (50678562 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:360c3d0880c461f6a6ff54d2e8a86fab4f9384847ff019e783669590723b96e4`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Fri, 21 Dec 2018 00:21:10 GMT
ADD file:1c654f8c89128c1ac8363b251cb5e1e7d9326e430ae2740963f77cf6726aee0b in / 
# Fri, 21 Dec 2018 00:21:11 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 04:20:57 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf
# Fri, 21 Dec 2018 04:20:59 GMT
RUN apk add --no-cache tzdata bash ca-certificates &&     update-ca-certificates
# Fri, 21 Dec 2018 04:21:37 GMT
ENV INFLUXDB_VERSION=1.7.2
# Fri, 21 Dec 2018 04:21:44 GMT
RUN set -ex &&     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/influxdb/releases/influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/influxdb/releases/influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/influxdb-*/influxdb.conf &&     chmod +x /usr/src/influxdb-*/* &&     cp -a /usr/src/influxdb-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Fri, 21 Dec 2018 04:21:45 GMT
COPY file:3d8a606d61e1fc0042cf34d036eda4550a18d140c47376dacc02d96ee6f2dd8b in /etc/influxdb/influxdb.conf 
# Fri, 21 Dec 2018 04:21:45 GMT
EXPOSE 8086
# Fri, 21 Dec 2018 04:21:45 GMT
VOLUME [/var/lib/influxdb]
# Fri, 21 Dec 2018 04:21:45 GMT
COPY file:61c4af7a0e637328374ec46266ed6dde40adf7d14ac6c5081100924991beb7f3 in /entrypoint.sh 
# Fri, 21 Dec 2018 04:21:45 GMT
COPY file:892fcd3130baa17c0b88866ac37e7fe0b7b420a67105d9cd99803c685eaf9df4 in /init-influxdb.sh 
# Fri, 21 Dec 2018 04:21:46 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 21 Dec 2018 04:21:46 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:407ea412d82cbc18a270f0ae17d5e528e620bcf4661229e757446f6e6443768b`  
		Last Modified: Fri, 21 Dec 2018 00:23:41 GMT  
		Size: 2.1 MB (2107153 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d00f09ce7312b69220662bba01a4ad6c075fe2107adea6644e4b4bf1f7d1d575`  
		Last Modified: Fri, 21 Dec 2018 04:22:33 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a99365142bbe7691f2aea9e22980a485d0509ebba01cd61a1ffaf3c93c4a3cf7`  
		Last Modified: Fri, 21 Dec 2018 04:22:32 GMT  
		Size: 2.0 MB (1966661 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:690096df6d9410f6a80ef26439d285a5347619d8a0792d043e46ce4162fc9b02`  
		Last Modified: Fri, 21 Dec 2018 04:23:09 GMT  
		Size: 46.6 MB (46602996 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21d26f3dc0a4003f301864550a0cf469aa5dbf5f122f4814a7e9b87afcdaa713`  
		Last Modified: Fri, 21 Dec 2018 04:23:00 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08b66a11af3dbd27dcfe2ea512befd26884685d8dce7e53606b0b3beb4f5d53d`  
		Last Modified: Fri, 21 Dec 2018 04:23:00 GMT  
		Size: 210.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f94835e552274629c88a9e7d3923afd26b6e9087011263d8abe576755b7ca02`  
		Last Modified: Fri, 21 Dec 2018 04:23:00 GMT  
		Size: 1.2 KB (1166 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `influxdb:alpine`

```console
$ docker pull influxdb@sha256:05b5f1973450456395b6ea35b7e2fc029c264c810cfbd8559f281ab2747eed5a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `influxdb:alpine` - linux; amd64

```console
$ docker pull influxdb@sha256:2746fb78a433aba4df889728018f45f81fff983e6323f2ef1faeed724133dbea
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **50.7 MB (50678562 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:360c3d0880c461f6a6ff54d2e8a86fab4f9384847ff019e783669590723b96e4`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Fri, 21 Dec 2018 00:21:10 GMT
ADD file:1c654f8c89128c1ac8363b251cb5e1e7d9326e430ae2740963f77cf6726aee0b in / 
# Fri, 21 Dec 2018 00:21:11 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 04:20:57 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf
# Fri, 21 Dec 2018 04:20:59 GMT
RUN apk add --no-cache tzdata bash ca-certificates &&     update-ca-certificates
# Fri, 21 Dec 2018 04:21:37 GMT
ENV INFLUXDB_VERSION=1.7.2
# Fri, 21 Dec 2018 04:21:44 GMT
RUN set -ex &&     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/influxdb/releases/influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/influxdb/releases/influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf influxdb-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/influxdb-*/influxdb.conf &&     chmod +x /usr/src/influxdb-*/* &&     cp -a /usr/src/influxdb-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Fri, 21 Dec 2018 04:21:45 GMT
COPY file:3d8a606d61e1fc0042cf34d036eda4550a18d140c47376dacc02d96ee6f2dd8b in /etc/influxdb/influxdb.conf 
# Fri, 21 Dec 2018 04:21:45 GMT
EXPOSE 8086
# Fri, 21 Dec 2018 04:21:45 GMT
VOLUME [/var/lib/influxdb]
# Fri, 21 Dec 2018 04:21:45 GMT
COPY file:61c4af7a0e637328374ec46266ed6dde40adf7d14ac6c5081100924991beb7f3 in /entrypoint.sh 
# Fri, 21 Dec 2018 04:21:45 GMT
COPY file:892fcd3130baa17c0b88866ac37e7fe0b7b420a67105d9cd99803c685eaf9df4 in /init-influxdb.sh 
# Fri, 21 Dec 2018 04:21:46 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 21 Dec 2018 04:21:46 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:407ea412d82cbc18a270f0ae17d5e528e620bcf4661229e757446f6e6443768b`  
		Last Modified: Fri, 21 Dec 2018 00:23:41 GMT  
		Size: 2.1 MB (2107153 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d00f09ce7312b69220662bba01a4ad6c075fe2107adea6644e4b4bf1f7d1d575`  
		Last Modified: Fri, 21 Dec 2018 04:22:33 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a99365142bbe7691f2aea9e22980a485d0509ebba01cd61a1ffaf3c93c4a3cf7`  
		Last Modified: Fri, 21 Dec 2018 04:22:32 GMT  
		Size: 2.0 MB (1966661 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:690096df6d9410f6a80ef26439d285a5347619d8a0792d043e46ce4162fc9b02`  
		Last Modified: Fri, 21 Dec 2018 04:23:09 GMT  
		Size: 46.6 MB (46602996 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21d26f3dc0a4003f301864550a0cf469aa5dbf5f122f4814a7e9b87afcdaa713`  
		Last Modified: Fri, 21 Dec 2018 04:23:00 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08b66a11af3dbd27dcfe2ea512befd26884685d8dce7e53606b0b3beb4f5d53d`  
		Last Modified: Fri, 21 Dec 2018 04:23:00 GMT  
		Size: 210.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f94835e552274629c88a9e7d3923afd26b6e9087011263d8abe576755b7ca02`  
		Last Modified: Fri, 21 Dec 2018 04:23:00 GMT  
		Size: 1.2 KB (1166 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `influxdb:data`

```console
$ docker pull influxdb@sha256:11e215f1430dc26424d8564b5b1fd69edba17398375b9fc0f509a5041a2a9668
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `influxdb:data` - linux; amd64

```console
$ docker pull influxdb@sha256:390d8dc2727e8bf692b22ab80863941afa677811faae37ad4729c287d1628f12
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **87.0 MB (86977283 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:31d8cea8bfe34ecd973c72be576c664456746baf726f0ccf0f8fde4a161319ea`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Thu, 15 Nov 2018 22:44:00 GMT
ADD file:a61c14b18252183a4719980da97ac483044bcaa9df8a569a6d7bf0f719384b5e in / 
# Thu, 15 Nov 2018 22:44:09 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 11:15:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 11:16:02 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 16 Nov 2018 19:42:13 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Fri, 16 Nov 2018 19:46:27 GMT
ENV INFLUXDB_VERSION=1.6.4-c1.6.4
# Fri, 16 Nov 2018 19:46:33 GMT
RUN wget --no-verbose https://dl.influxdata.com/enterprise/releases/influxdb-data_${INFLUXDB_VERSION}_amd64.deb.asc &&     wget --no-verbose https://dl.influxdata.com/enterprise/releases/influxdb-data_${INFLUXDB_VERSION}_amd64.deb &&     gpg --batch --verify influxdb-data_${INFLUXDB_VERSION}_amd64.deb.asc influxdb-data_${INFLUXDB_VERSION}_amd64.deb &&     dpkg -i influxdb-data_${INFLUXDB_VERSION}_amd64.deb &&     rm -f influxdb-data_${INFLUXDB_VERSION}_amd64.deb*
# Fri, 16 Nov 2018 19:46:34 GMT
COPY file:a7fc957fd6465cc132b5d41618061e4ac55bd347b790cd87cc496ab4f67a274b in /etc/influxdb/influxdb.conf 
# Fri, 16 Nov 2018 19:46:34 GMT
EXPOSE 8086/tcp
# Fri, 16 Nov 2018 19:46:35 GMT
VOLUME [/var/lib/influxdb]
# Fri, 16 Nov 2018 19:46:36 GMT
COPY file:efb819384a9e7a972c15df74e1d18c7d6296e633a7c533def9a6d400b69468fc in /entrypoint.sh 
# Fri, 16 Nov 2018 19:46:36 GMT
COPY file:44e0050f3b04248a6900eace944c581b13b4ad9af1e5cfb91d837cb5e24356e6 in /init-influxdb.sh 
# Fri, 16 Nov 2018 19:46:37 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 16 Nov 2018 19:46:37 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:54f7e8ac135a5f502a6ee9537ef3d64b1cd2fa570dc0a40b4d3b6f7ac81e7486`  
		Last Modified: Thu, 15 Nov 2018 23:08:31 GMT  
		Size: 45.3 MB (45320257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6341e30912f12f56e18564a3b582853f65376766f5f9d641a68a724ed6db88f`  
		Last Modified: Fri, 16 Nov 2018 11:33:18 GMT  
		Size: 10.7 MB (10740278 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:087a57faf9491b1b82a83e26bc8cc90c90c30e4a4d858b57ddd5b4c2c90095f6`  
		Last Modified: Fri, 16 Nov 2018 11:33:17 GMT  
		Size: 4.3 MB (4340083 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d648defeaeff4cbd969b5bd8ef56e245e831516f3fa53c25440cf45299945300`  
		Last Modified: Fri, 16 Nov 2018 19:50:21 GMT  
		Size: 2.9 KB (2884 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f8409714819343b32fbc2e3ebe13e97b7a9b99169ffd46a34ceb80814ef1e82`  
		Last Modified: Fri, 16 Nov 2018 19:54:52 GMT  
		Size: 26.6 MB (26572122 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea05f45b68256f832f005922872ca44b919f88ed40cbf77b2a24115f14cf2977`  
		Last Modified: Fri, 16 Nov 2018 19:54:41 GMT  
		Size: 243.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8ccab27fbbc52c786a49e1c16585060aa6cd2c6f389599e5eec2d0287ee8f0a`  
		Last Modified: Fri, 16 Nov 2018 19:54:41 GMT  
		Size: 251.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd7f7d4bd263972b7dc6d2acf1247be3421a5f505020d946579a0ada604168ea`  
		Last Modified: Fri, 16 Nov 2018 19:54:41 GMT  
		Size: 1.2 KB (1165 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `influxdb:data-alpine`

```console
$ docker pull influxdb@sha256:e654e199720112c127967e391aabe84c3e67567591a27f77b1807daa1c624553
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `influxdb:data-alpine` - linux; amd64

```console
$ docker pull influxdb@sha256:3ec2f1ea506e9dfa7aaf96cdac1f374eef02a8502c48152bd4a4a92f5bfa4c36
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.5 MB (30524499 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e14dab04b431a073d26504f0208b59fee1f50bab333f30c1f5657054f2222cba`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Fri, 21 Dec 2018 00:21:10 GMT
ADD file:1c654f8c89128c1ac8363b251cb5e1e7d9326e430ae2740963f77cf6726aee0b in / 
# Fri, 21 Dec 2018 00:21:11 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 04:20:57 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf
# Fri, 21 Dec 2018 04:20:59 GMT
RUN apk add --no-cache tzdata bash ca-certificates &&     update-ca-certificates
# Fri, 21 Dec 2018 04:21:13 GMT
ENV INFLUXDB_VERSION=1.6.4-c1.6.4
# Fri, 21 Dec 2018 04:21:18 GMT
RUN set -ex &&     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/enterprise/releases/influxdb-data-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/enterprise/releases/influxdb-data-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify influxdb-data-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc influxdb-data-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf influxdb-data-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/influxdb-*/influxdb.conf &&     chmod +x /usr/src/influxdb-*/* &&     cp -a /usr/src/influxdb-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Fri, 21 Dec 2018 04:21:19 GMT
COPY file:bf2f42b62a32a7ee3ab93d9a5e451b7d59af1a97e40dc4a76b8aaf2f64383d7a in /etc/influxdb/influxdb.conf 
# Fri, 21 Dec 2018 04:21:19 GMT
EXPOSE 8086
# Fri, 21 Dec 2018 04:21:19 GMT
VOLUME [/var/lib/influxdb]
# Fri, 21 Dec 2018 04:21:19 GMT
COPY file:182a0176834db40043100d082d05e5aded9887c94b02416f6e3154c827c07360 in /entrypoint.sh 
# Fri, 21 Dec 2018 04:21:19 GMT
COPY file:892fcd3130baa17c0b88866ac37e7fe0b7b420a67105d9cd99803c685eaf9df4 in /init-influxdb.sh 
# Fri, 21 Dec 2018 04:21:20 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 21 Dec 2018 04:21:20 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:407ea412d82cbc18a270f0ae17d5e528e620bcf4661229e757446f6e6443768b`  
		Last Modified: Fri, 21 Dec 2018 00:23:41 GMT  
		Size: 2.1 MB (2107153 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d00f09ce7312b69220662bba01a4ad6c075fe2107adea6644e4b4bf1f7d1d575`  
		Last Modified: Fri, 21 Dec 2018 04:22:33 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a99365142bbe7691f2aea9e22980a485d0509ebba01cd61a1ffaf3c93c4a3cf7`  
		Last Modified: Fri, 21 Dec 2018 04:22:32 GMT  
		Size: 2.0 MB (1966661 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5975dba6eb0a86cb5c8a46a4be84395bf0ba380e3c1cab045475db8e965d10f`  
		Last Modified: Fri, 21 Dec 2018 04:22:47 GMT  
		Size: 26.4 MB (26448877 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18e4a27a04e256ff608f28199e5961cafdbac1ddb54c327a74863b794283f62a`  
		Last Modified: Fri, 21 Dec 2018 04:22:41 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8ffd62b7dc6edabc41ab098bafdff11d47f9df5c4c91cb53e2d29bf493e2ddf`  
		Last Modified: Fri, 21 Dec 2018 04:22:41 GMT  
		Size: 251.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7f046dc83c87d866c233447cb0a0b9b8a83d7cecc6cc0245f2ec8b37f5a1f39`  
		Last Modified: Fri, 21 Dec 2018 04:22:41 GMT  
		Size: 1.2 KB (1166 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `influxdb:latest`

```console
$ docker pull influxdb@sha256:a2a5042026fcc380d3ddfe5a6938939992916bf0b0be4050a8f0c564b932250d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `influxdb:latest` - linux; amd64

```console
$ docker pull influxdb@sha256:ff24a55d676cffdc8482226418891d8cab9d720ff7d7b50531e02f6decf74f00
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **107.2 MB (107215707 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1987e6cfa147c3f027e7e696c4fbf6dcadade1614b3b7171ebbd51a7db9d30b7`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Thu, 15 Nov 2018 22:44:00 GMT
ADD file:a61c14b18252183a4719980da97ac483044bcaa9df8a569a6d7bf0f719384b5e in / 
# Thu, 15 Nov 2018 22:44:09 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 11:15:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 11:16:02 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 16 Nov 2018 19:42:13 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Thu, 13 Dec 2018 23:30:49 GMT
ENV INFLUXDB_VERSION=1.7.2
# Thu, 13 Dec 2018 23:30:54 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     gpg --batch --verify influxdb_${INFLUXDB_VERSION}_${ARCH}.deb.asc influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     dpkg -i influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     rm -f influxdb_${INFLUXDB_VERSION}_${ARCH}.deb*
# Thu, 13 Dec 2018 23:30:55 GMT
COPY file:3ee2bc0321c2aa2451df7a508649c3a54f0eebc1ef9b8a24967c58105b4d3160 in /etc/influxdb/influxdb.conf 
# Thu, 13 Dec 2018 23:30:55 GMT
EXPOSE 8086/tcp
# Thu, 13 Dec 2018 23:30:55 GMT
VOLUME [/var/lib/influxdb]
# Thu, 13 Dec 2018 23:30:55 GMT
COPY file:098affa3d1b749dacb263ddacfd86a5de1f598d6ba1f7c789ce482c66ee9c80b in /entrypoint.sh 
# Thu, 13 Dec 2018 23:30:56 GMT
COPY file:44e0050f3b04248a6900eace944c581b13b4ad9af1e5cfb91d837cb5e24356e6 in /init-influxdb.sh 
# Thu, 13 Dec 2018 23:30:56 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 13 Dec 2018 23:30:56 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:54f7e8ac135a5f502a6ee9537ef3d64b1cd2fa570dc0a40b4d3b6f7ac81e7486`  
		Last Modified: Thu, 15 Nov 2018 23:08:31 GMT  
		Size: 45.3 MB (45320257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6341e30912f12f56e18564a3b582853f65376766f5f9d641a68a724ed6db88f`  
		Last Modified: Fri, 16 Nov 2018 11:33:18 GMT  
		Size: 10.7 MB (10740278 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:087a57faf9491b1b82a83e26bc8cc90c90c30e4a4d858b57ddd5b4c2c90095f6`  
		Last Modified: Fri, 16 Nov 2018 11:33:17 GMT  
		Size: 4.3 MB (4340083 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d648defeaeff4cbd969b5bd8ef56e245e831516f3fa53c25440cf45299945300`  
		Last Modified: Fri, 16 Nov 2018 19:50:21 GMT  
		Size: 2.9 KB (2884 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:676867d6fb1617bd41c1134a2f05c13fedf58d6f45f36e2d3280c3f8ec94f1de`  
		Last Modified: Thu, 13 Dec 2018 23:32:41 GMT  
		Size: 46.8 MB (46810608 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eace8033f42bab199d5b2692d7885bae906b55774ddb9debfdfa9a4c03b7fc71`  
		Last Modified: Thu, 13 Dec 2018 23:32:34 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b33c200423f9fd21934af88481d04be880cb8341de18e5cb6137a4526bc288f9`  
		Last Modified: Thu, 13 Dec 2018 23:32:33 GMT  
		Size: 209.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a077d30907d054fce5a60f46b0d007fa15e20819b37a18313cd0f66ed90676c7`  
		Last Modified: Thu, 13 Dec 2018 23:32:33 GMT  
		Size: 1.2 KB (1167 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `influxdb:latest` - linux; arm variant v7

```console
$ docker pull influxdb@sha256:7d607ef6f2ad237002bac2a7f9446b127a69703b10101289b7b755668378b997
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **99.4 MB (99418266 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7fe7c85ef99dc0c5711fa6f87259ea0b66c34e9702eedf00c05b680b4ff4b099`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Fri, 16 Nov 2018 13:08:47 GMT
ADD file:085a6a2a32a05acfff8d2b179dad7789d649aca5cf2565a5b5490403e3d3cea0 in / 
# Fri, 16 Nov 2018 13:08:48 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 18:17:27 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 18:17:38 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 16 Nov 2018 22:44:53 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Fri, 14 Dec 2018 12:58:15 GMT
ENV INFLUXDB_VERSION=1.7.2
# Fri, 14 Dec 2018 12:58:24 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     gpg --batch --verify influxdb_${INFLUXDB_VERSION}_${ARCH}.deb.asc influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     dpkg -i influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     rm -f influxdb_${INFLUXDB_VERSION}_${ARCH}.deb*
# Fri, 14 Dec 2018 12:58:29 GMT
COPY file:3ee2bc0321c2aa2451df7a508649c3a54f0eebc1ef9b8a24967c58105b4d3160 in /etc/influxdb/influxdb.conf 
# Fri, 14 Dec 2018 12:58:30 GMT
EXPOSE 8086/tcp
# Fri, 14 Dec 2018 12:58:30 GMT
VOLUME [/var/lib/influxdb]
# Fri, 14 Dec 2018 12:58:31 GMT
COPY file:098affa3d1b749dacb263ddacfd86a5de1f598d6ba1f7c789ce482c66ee9c80b in /entrypoint.sh 
# Fri, 14 Dec 2018 12:58:32 GMT
COPY file:44e0050f3b04248a6900eace944c581b13b4ad9af1e5cfb91d837cb5e24356e6 in /init-influxdb.sh 
# Fri, 14 Dec 2018 12:58:32 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 14 Dec 2018 12:58:33 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:33dd5ae6335a66a99c6beb10708f7ff8d992b1075b6477cce3accbbe3b3a765e`  
		Last Modified: Fri, 16 Nov 2018 13:21:03 GMT  
		Size: 42.1 MB (42076140 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7353b73b294b9e3d692697431695f92c48a581f30b3295a5fad1b80854f13e5b`  
		Last Modified: Fri, 16 Nov 2018 18:31:31 GMT  
		Size: 9.4 MB (9440401 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e92165ab0bf59142c3f101750c7a81a51d559eed557c0674a209979d86fd4a9`  
		Last Modified: Fri, 16 Nov 2018 18:31:30 GMT  
		Size: 3.9 MB (3918472 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4aac8f53f358cf4c4deb8638fcfd8bb0f9e83d57cb993c17fb9ed9671c024ac4`  
		Last Modified: Fri, 16 Nov 2018 22:47:26 GMT  
		Size: 2.9 KB (2915 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:edfb1ed2ae671f30a2ba526c808e163a02a28a1236d8bc59ae5babb3275c507b`  
		Last Modified: Fri, 14 Dec 2018 12:59:01 GMT  
		Size: 44.0 MB (43978738 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a52c00effdf8cbc179dbf00a24e2798db378d0462f909c4d52f15baecdb7c017`  
		Last Modified: Fri, 14 Dec 2018 12:58:50 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ea32bcf1ca5b4fecf578c04edca31eb9b3527fd2e4b27ea108094985da36faa`  
		Last Modified: Fri, 14 Dec 2018 12:58:50 GMT  
		Size: 211.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f8b39f25fac855be78c6760d6e82d9825e463238cb11d60ceeed9ecbead360e`  
		Last Modified: Fri, 14 Dec 2018 12:58:50 GMT  
		Size: 1.2 KB (1166 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `influxdb:latest` - linux; arm64 variant v8

```console
$ docker pull influxdb@sha256:a50ca881159eedc7ccdb19feb63caa0146f8e3b28710c4555a986594d1b8a9b6
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **100.2 MB (100204799 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:75cb52f279f1c6c6cf3fb8bd98b86b8de59e50748493fe84a9aef87f4132695b`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd"]`

```dockerfile
# Fri, 16 Nov 2018 10:13:25 GMT
ADD file:bf8c0ee6d5a7d54f0c1259b5f65569cf7e5e828cfbe98302312933537cd9087e in / 
# Fri, 16 Nov 2018 10:13:26 GMT
CMD ["bash"]
# Sat, 17 Nov 2018 02:30:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 17 Nov 2018 02:30:54 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 17 Nov 2018 16:58:50 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Fri, 14 Dec 2018 10:07:35 GMT
ENV INFLUXDB_VERSION=1.7.2
# Fri, 14 Dec 2018 10:07:44 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/influxdb/releases/influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     gpg --batch --verify influxdb_${INFLUXDB_VERSION}_${ARCH}.deb.asc influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     dpkg -i influxdb_${INFLUXDB_VERSION}_${ARCH}.deb &&     rm -f influxdb_${INFLUXDB_VERSION}_${ARCH}.deb*
# Fri, 14 Dec 2018 10:07:45 GMT
COPY file:3ee2bc0321c2aa2451df7a508649c3a54f0eebc1ef9b8a24967c58105b4d3160 in /etc/influxdb/influxdb.conf 
# Fri, 14 Dec 2018 10:07:45 GMT
EXPOSE 8086/tcp
# Fri, 14 Dec 2018 10:07:46 GMT
VOLUME [/var/lib/influxdb]
# Fri, 14 Dec 2018 10:07:47 GMT
COPY file:098affa3d1b749dacb263ddacfd86a5de1f598d6ba1f7c789ce482c66ee9c80b in /entrypoint.sh 
# Fri, 14 Dec 2018 10:07:47 GMT
COPY file:44e0050f3b04248a6900eace944c581b13b4ad9af1e5cfb91d837cb5e24356e6 in /init-influxdb.sh 
# Fri, 14 Dec 2018 10:07:48 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 14 Dec 2018 10:07:49 GMT
CMD ["influxd"]
```

-	Layers:
	-	`sha256:4f3698b9865b00fa6eb7e0d3d11692c31eb0dc455aa6ab111d965bae67726698`  
		Last Modified: Thu, 15 Nov 2018 01:52:55 GMT  
		Size: 43.1 MB (43116700 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d136331294ced7de67c8e4bea8c807c347632c0aa25c4ec2ae6a7a3e346d6c1`  
		Last Modified: Sat, 17 Nov 2018 02:50:40 GMT  
		Size: 9.7 MB (9690286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44c15aa4d980e5d3689a8a8099f7d79fb667611239aab1dfa5447b52f0a24934`  
		Last Modified: Sat, 17 Nov 2018 02:50:38 GMT  
		Size: 4.1 MB (4093102 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a58696b91002d344db2504db959bd55413ce3d671d4bb1680ff14794d8653394`  
		Last Modified: Sat, 17 Nov 2018 17:00:47 GMT  
		Size: 2.9 KB (2887 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75e5b02147a0f848e74c565ee5607e9236292083483760c4824ea3a7694a781d`  
		Last Modified: Fri, 14 Dec 2018 10:08:24 GMT  
		Size: 43.3 MB (43300225 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d20d830ae0c482c12feacba0a1af71dbff5118779a4443c7cf250e8c62e1212`  
		Last Modified: Fri, 14 Dec 2018 10:08:11 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73fe143d7f037d78c1287c8f231a7d8ddb5d27d8c7cc8d811dacf07a4ace957a`  
		Last Modified: Fri, 14 Dec 2018 10:08:11 GMT  
		Size: 211.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:857b521dcb54ffb6c296280e0d6ca95e87774737679c1a746efffecf10e1bd1f`  
		Last Modified: Fri, 14 Dec 2018 10:08:11 GMT  
		Size: 1.2 KB (1165 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `influxdb:meta`

```console
$ docker pull influxdb@sha256:5dce66c5967e7bd2a265b62c7e98bec020a3bc699ed361dbe3a47a16663ce1d5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `influxdb:meta` - linux; amd64

```console
$ docker pull influxdb@sha256:d089bf1edf682ce04705a7c5d99bb7928d8f29566778688542b47103da389296
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **73.0 MB (72950787 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b5841a6a971b4f45da1d2b496a7183b9555ea2d9a82806ccef93d58bf917b170`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd-meta"]`

```dockerfile
# Thu, 15 Nov 2018 22:44:00 GMT
ADD file:a61c14b18252183a4719980da97ac483044bcaa9df8a569a6d7bf0f719384b5e in / 
# Thu, 15 Nov 2018 22:44:09 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 11:15:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 11:16:02 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 16 Nov 2018 19:42:13 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Fri, 16 Nov 2018 19:46:27 GMT
ENV INFLUXDB_VERSION=1.6.4-c1.6.4
# Fri, 16 Nov 2018 19:47:37 GMT
RUN wget --no-verbose https://dl.influxdata.com/enterprise/releases/influxdb-meta_${INFLUXDB_VERSION}_amd64.deb.asc &&     wget --no-verbose https://dl.influxdata.com/enterprise/releases/influxdb-meta_${INFLUXDB_VERSION}_amd64.deb &&     gpg --batch --verify influxdb-meta_${INFLUXDB_VERSION}_amd64.deb.asc influxdb-meta_${INFLUXDB_VERSION}_amd64.deb &&     dpkg -i influxdb-meta_${INFLUXDB_VERSION}_amd64.deb &&     rm -f influxdb-meta_${INFLUXDB_VERSION}_amd64.deb*
# Fri, 16 Nov 2018 19:47:38 GMT
COPY file:95a6fe33e203909c093135fff9ff2b4cdc02ca4f1fe1dec109b5a9cf6b7a0946 in /etc/influxdb/influxdb-meta.conf 
# Fri, 16 Nov 2018 19:47:38 GMT
EXPOSE 8091/tcp
# Fri, 16 Nov 2018 19:47:39 GMT
VOLUME [/var/lib/influxdb]
# Fri, 16 Nov 2018 19:47:39 GMT
COPY file:b4fa000cf2aff5bf4e5093021ca6255fffa17c43ae18eb4c55ae28a3cc2dc281 in /entrypoint.sh 
# Fri, 16 Nov 2018 19:47:40 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 16 Nov 2018 19:47:40 GMT
CMD ["influxd-meta"]
```

-	Layers:
	-	`sha256:54f7e8ac135a5f502a6ee9537ef3d64b1cd2fa570dc0a40b4d3b6f7ac81e7486`  
		Last Modified: Thu, 15 Nov 2018 23:08:31 GMT  
		Size: 45.3 MB (45320257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6341e30912f12f56e18564a3b582853f65376766f5f9d641a68a724ed6db88f`  
		Last Modified: Fri, 16 Nov 2018 11:33:18 GMT  
		Size: 10.7 MB (10740278 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:087a57faf9491b1b82a83e26bc8cc90c90c30e4a4d858b57ddd5b4c2c90095f6`  
		Last Modified: Fri, 16 Nov 2018 11:33:17 GMT  
		Size: 4.3 MB (4340083 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d648defeaeff4cbd969b5bd8ef56e245e831516f3fa53c25440cf45299945300`  
		Last Modified: Fri, 16 Nov 2018 19:50:21 GMT  
		Size: 2.9 KB (2884 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9284326b8ca9c3b28061277321b23ec731b85ce51e03a8afef6343e298af2fb6`  
		Last Modified: Fri, 16 Nov 2018 19:57:12 GMT  
		Size: 12.5 MB (12546716 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:169d8ea42a11fd2b290d0b182fac09fa070cfcd15e3581ac9cce9b2c6d068cf8`  
		Last Modified: Fri, 16 Nov 2018 19:57:11 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6bb3d04233833f7e1ee5ff615ffd566895bd830aaf88276f66628bcf89ec2b4`  
		Last Modified: Fri, 16 Nov 2018 19:57:10 GMT  
		Size: 375.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `influxdb:meta-alpine`

```console
$ docker pull influxdb@sha256:98934e905c0bb622114802266c86f05019d4d404a39f5711d3ea7e390f447913
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `influxdb:meta-alpine` - linux; amd64

```console
$ docker pull influxdb@sha256:ab7b29163fd9d9c6f6f8163aa65a624fc92053ce9b93327a8a5aa9bbff907276
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.6 MB (16578378 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:568d131c8fa88c8d3b8af81747f0d14a8e13ee4bca5ba9205a2af9942002b28e`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["influxd-meta"]`

```dockerfile
# Fri, 21 Dec 2018 00:21:10 GMT
ADD file:1c654f8c89128c1ac8363b251cb5e1e7d9326e430ae2740963f77cf6726aee0b in / 
# Fri, 21 Dec 2018 00:21:11 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 04:20:57 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf
# Fri, 21 Dec 2018 04:20:59 GMT
RUN apk add --no-cache tzdata bash ca-certificates &&     update-ca-certificates
# Fri, 21 Dec 2018 04:21:13 GMT
ENV INFLUXDB_VERSION=1.6.4-c1.6.4
# Fri, 21 Dec 2018 04:21:30 GMT
RUN set -ex &&     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/enterprise/releases/influxdb-meta-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/enterprise/releases/influxdb-meta-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify influxdb-meta-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz.asc influxdb-meta-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf influxdb-meta-${INFLUXDB_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/influxdb-*/influxdb-meta.conf &&     chmod +x /usr/src/influxdb-*/* &&     cp -a /usr/src/influxdb-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Fri, 21 Dec 2018 04:21:31 GMT
COPY file:5d8d1b0acfd7ca05cf6698246b28d240206fa448f4aa5ac839c9ad323adbeac2 in /etc/influxdb/influxdb-meta.conf 
# Fri, 21 Dec 2018 04:21:31 GMT
EXPOSE 8091
# Fri, 21 Dec 2018 04:21:31 GMT
VOLUME [/var/lib/influxdb]
# Fri, 21 Dec 2018 04:21:31 GMT
COPY file:126b1f7e41b4975cf2ce23037cf6a46253fb817023062317380c48ff5df47228 in /entrypoint.sh 
# Fri, 21 Dec 2018 04:21:31 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 21 Dec 2018 04:21:31 GMT
CMD ["influxd-meta"]
```

-	Layers:
	-	`sha256:407ea412d82cbc18a270f0ae17d5e528e620bcf4661229e757446f6e6443768b`  
		Last Modified: Fri, 21 Dec 2018 00:23:41 GMT  
		Size: 2.1 MB (2107153 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d00f09ce7312b69220662bba01a4ad6c075fe2107adea6644e4b4bf1f7d1d575`  
		Last Modified: Fri, 21 Dec 2018 04:22:33 GMT  
		Size: 153.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a99365142bbe7691f2aea9e22980a485d0509ebba01cd61a1ffaf3c93c4a3cf7`  
		Last Modified: Fri, 21 Dec 2018 04:22:32 GMT  
		Size: 2.0 MB (1966661 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:294225a5d3cb369f5dd02e57c69cf61549d1c46cb05f6db29979d6ee1b32c033`  
		Last Modified: Fri, 21 Dec 2018 04:22:55 GMT  
		Size: 12.5 MB (12503841 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae01ca2f88c83a64713486d43ad39e8677e86ca24a8543b954009d7bcf37ed2d`  
		Last Modified: Fri, 21 Dec 2018 04:22:52 GMT  
		Size: 196.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:426831117cf98f6359813be487d16034225e2adccea787007026d5853180a6c1`  
		Last Modified: Fri, 21 Dec 2018 04:22:52 GMT  
		Size: 374.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
