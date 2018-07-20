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
-	[`telegraf:1.7.2`](#telegraf172)
-	[`telegraf:1.7.2-alpine`](#telegraf172-alpine)
-	[`telegraf:1.7-alpine`](#telegraf17-alpine)
-	[`telegraf:alpine`](#telegrafalpine)
-	[`telegraf:latest`](#telegraflatest)

## `telegraf:1.5`

```console
$ docker pull telegraf@sha256:ea2a34253d00d9970075a848c22fc98ce4b866070ca9011138e38ea93df1a69b
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
$ docker pull telegraf@sha256:4e856e6746cc78283d144af43b4c84c724a95884c15e10cd5c6692f17efda3b9
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **79.2 MB (79180787 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5d7b838dcc82846b2010ff0a8e6ed7e5044c6cb688cb018fb9c25bd3c5381be7`
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
# Wed, 18 Jul 2018 12:02:25 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends iputils-ping snmp procps lm-sensors &&     rm -rf /var/lib/apt/lists/*
# Wed, 18 Jul 2018 12:02:34 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Wed, 18 Jul 2018 12:02:35 GMT
ENV TELEGRAF_VERSION=1.5.3
# Wed, 18 Jul 2018 12:02:37 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     gpg --batch --verify telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     dpkg -i telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     rm -f telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb*
# Wed, 18 Jul 2018 12:02:37 GMT
EXPOSE 8092/udp 8094/tcp 8125/udp
# Wed, 18 Jul 2018 12:02:38 GMT
COPY file:7211de01f296351833389a1a1879d450e2cb727d7e2910d5807937f99983edf7 in /entrypoint.sh 
# Wed, 18 Jul 2018 12:02:38 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 18 Jul 2018 12:02:39 GMT
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
	-	`sha256:bfca25b99093892544b78d98bc67f3229206bf2730a4c1568ce90c6cb3f457ce`  
		Last Modified: Wed, 18 Jul 2018 12:03:44 GMT  
		Size: 14.8 MB (14829122 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:205af81845a2b3066b93028d80c9541fbb4ea29054770b0c98f1d96833df2308`  
		Last Modified: Wed, 18 Jul 2018 12:03:39 GMT  
		Size: 2.9 KB (2922 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8dc4fadacc600b216450e4a276e194dc29a32ceb4e948c8c6e7f043f7d641c79`  
		Last Modified: Wed, 18 Jul 2018 12:03:43 GMT  
		Size: 8.9 MB (8934570 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41bdc9b5f61d87a5107c8f498ceb56be85decde2b36e2fb7e4cbd7b4bd178f37`  
		Last Modified: Wed, 18 Jul 2018 12:03:38 GMT  
		Size: 185.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `telegraf:1.5` - linux; arm64 variant v8

```console
$ docker pull telegraf@sha256:19dac87087a43b7ac69afdd495ac39324b63faefa6af4372f0af8354de2550cb
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **81.1 MB (81143781 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9e0ac1d2ee2aed10c2cbebe21a94a374ebfb1b2515885b88dbf2e7493ccbe919`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Tue, 17 Jul 2018 08:47:22 GMT
ADD file:5e1a1aab339b0b1e3047eeab5d0c6c74ad3f388d0407dc86f41e4a78b99c6fd8 in / 
# Tue, 17 Jul 2018 08:47:23 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 14:51:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 14:52:06 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 18 Jul 2018 02:04:56 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends iputils-ping snmp procps lm-sensors &&     rm -rf /var/lib/apt/lists/*
# Wed, 18 Jul 2018 02:05:02 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Wed, 18 Jul 2018 02:05:02 GMT
ENV TELEGRAF_VERSION=1.5.3
# Wed, 18 Jul 2018 02:05:11 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     gpg --batch --verify telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     dpkg -i telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     rm -f telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb*
# Wed, 18 Jul 2018 02:05:12 GMT
EXPOSE 8092/udp 8094/tcp 8125/udp
# Wed, 18 Jul 2018 02:05:13 GMT
COPY file:7211de01f296351833389a1a1879d450e2cb727d7e2910d5807937f99983edf7 in /entrypoint.sh 
# Wed, 18 Jul 2018 02:05:14 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 18 Jul 2018 02:05:15 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:24e48664c69560cde9534aadde23364122f1feb02b5db0ab3776983a4788ea63`  
		Last Modified: Tue, 17 Jul 2018 08:56:03 GMT  
		Size: 43.1 MB (43123568 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cbcf842c718cc953be45905967fc6a0114f55314ce412b80107e20d8b43fdcdb`  
		Last Modified: Tue, 17 Jul 2018 15:10:44 GMT  
		Size: 9.7 MB (9690273 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:317d79a9c0a5c766d03c1c253fa09f645ed7321dc3a80e0ae33599958677cd1d`  
		Last Modified: Tue, 17 Jul 2018 15:10:41 GMT  
		Size: 4.1 MB (4088491 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:655f4d2161e3b571eaaadd594cb0ff00ec003867e1a191eebef39478b5b0be9d`  
		Last Modified: Wed, 18 Jul 2018 02:06:53 GMT  
		Size: 15.5 MB (15525652 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86a6c22c103a21b4321254ad5f80fef24a1595a17fdfa56164fd4a77368ca8fb`  
		Last Modified: Wed, 18 Jul 2018 02:06:46 GMT  
		Size: 2.9 KB (2886 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88ad05fb1489b6eb30e5cd9b2547310b3397cce8304a3933998cdd2f56ddec99`  
		Last Modified: Wed, 18 Jul 2018 02:06:50 GMT  
		Size: 8.7 MB (8712726 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0fdda3436c9bfb6e74dba653e511eb2b7df4ccfbc58ef345e7f6c2e92de1b092`  
		Last Modified: Wed, 18 Jul 2018 02:06:46 GMT  
		Size: 185.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `telegraf:1.5.3`

```console
$ docker pull telegraf@sha256:ea2a34253d00d9970075a848c22fc98ce4b866070ca9011138e38ea93df1a69b
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
$ docker pull telegraf@sha256:4e856e6746cc78283d144af43b4c84c724a95884c15e10cd5c6692f17efda3b9
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **79.2 MB (79180787 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5d7b838dcc82846b2010ff0a8e6ed7e5044c6cb688cb018fb9c25bd3c5381be7`
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
# Wed, 18 Jul 2018 12:02:25 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends iputils-ping snmp procps lm-sensors &&     rm -rf /var/lib/apt/lists/*
# Wed, 18 Jul 2018 12:02:34 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Wed, 18 Jul 2018 12:02:35 GMT
ENV TELEGRAF_VERSION=1.5.3
# Wed, 18 Jul 2018 12:02:37 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     gpg --batch --verify telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     dpkg -i telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     rm -f telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb*
# Wed, 18 Jul 2018 12:02:37 GMT
EXPOSE 8092/udp 8094/tcp 8125/udp
# Wed, 18 Jul 2018 12:02:38 GMT
COPY file:7211de01f296351833389a1a1879d450e2cb727d7e2910d5807937f99983edf7 in /entrypoint.sh 
# Wed, 18 Jul 2018 12:02:38 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 18 Jul 2018 12:02:39 GMT
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
	-	`sha256:bfca25b99093892544b78d98bc67f3229206bf2730a4c1568ce90c6cb3f457ce`  
		Last Modified: Wed, 18 Jul 2018 12:03:44 GMT  
		Size: 14.8 MB (14829122 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:205af81845a2b3066b93028d80c9541fbb4ea29054770b0c98f1d96833df2308`  
		Last Modified: Wed, 18 Jul 2018 12:03:39 GMT  
		Size: 2.9 KB (2922 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8dc4fadacc600b216450e4a276e194dc29a32ceb4e948c8c6e7f043f7d641c79`  
		Last Modified: Wed, 18 Jul 2018 12:03:43 GMT  
		Size: 8.9 MB (8934570 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41bdc9b5f61d87a5107c8f498ceb56be85decde2b36e2fb7e4cbd7b4bd178f37`  
		Last Modified: Wed, 18 Jul 2018 12:03:38 GMT  
		Size: 185.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `telegraf:1.5.3` - linux; arm64 variant v8

```console
$ docker pull telegraf@sha256:19dac87087a43b7ac69afdd495ac39324b63faefa6af4372f0af8354de2550cb
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **81.1 MB (81143781 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9e0ac1d2ee2aed10c2cbebe21a94a374ebfb1b2515885b88dbf2e7493ccbe919`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Tue, 17 Jul 2018 08:47:22 GMT
ADD file:5e1a1aab339b0b1e3047eeab5d0c6c74ad3f388d0407dc86f41e4a78b99c6fd8 in / 
# Tue, 17 Jul 2018 08:47:23 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 14:51:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 14:52:06 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 18 Jul 2018 02:04:56 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends iputils-ping snmp procps lm-sensors &&     rm -rf /var/lib/apt/lists/*
# Wed, 18 Jul 2018 02:05:02 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Wed, 18 Jul 2018 02:05:02 GMT
ENV TELEGRAF_VERSION=1.5.3
# Wed, 18 Jul 2018 02:05:11 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     gpg --batch --verify telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     dpkg -i telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     rm -f telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb*
# Wed, 18 Jul 2018 02:05:12 GMT
EXPOSE 8092/udp 8094/tcp 8125/udp
# Wed, 18 Jul 2018 02:05:13 GMT
COPY file:7211de01f296351833389a1a1879d450e2cb727d7e2910d5807937f99983edf7 in /entrypoint.sh 
# Wed, 18 Jul 2018 02:05:14 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 18 Jul 2018 02:05:15 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:24e48664c69560cde9534aadde23364122f1feb02b5db0ab3776983a4788ea63`  
		Last Modified: Tue, 17 Jul 2018 08:56:03 GMT  
		Size: 43.1 MB (43123568 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cbcf842c718cc953be45905967fc6a0114f55314ce412b80107e20d8b43fdcdb`  
		Last Modified: Tue, 17 Jul 2018 15:10:44 GMT  
		Size: 9.7 MB (9690273 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:317d79a9c0a5c766d03c1c253fa09f645ed7321dc3a80e0ae33599958677cd1d`  
		Last Modified: Tue, 17 Jul 2018 15:10:41 GMT  
		Size: 4.1 MB (4088491 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:655f4d2161e3b571eaaadd594cb0ff00ec003867e1a191eebef39478b5b0be9d`  
		Last Modified: Wed, 18 Jul 2018 02:06:53 GMT  
		Size: 15.5 MB (15525652 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86a6c22c103a21b4321254ad5f80fef24a1595a17fdfa56164fd4a77368ca8fb`  
		Last Modified: Wed, 18 Jul 2018 02:06:46 GMT  
		Size: 2.9 KB (2886 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88ad05fb1489b6eb30e5cd9b2547310b3397cce8304a3933998cdd2f56ddec99`  
		Last Modified: Wed, 18 Jul 2018 02:06:50 GMT  
		Size: 8.7 MB (8712726 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0fdda3436c9bfb6e74dba653e511eb2b7df4ccfbc58ef345e7f6c2e92de1b092`  
		Last Modified: Wed, 18 Jul 2018 02:06:46 GMT  
		Size: 185.0 B  
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
$ docker pull telegraf@sha256:e9da12b257e4fc77c8e25943781ef87a9d2f0cec440e026a4b6b440acf2b3bc8
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
$ docker pull telegraf@sha256:82a78f9b7dc53d66c2d2c05b50f604facb67f8ede1a39094214e6aab5e25d97e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **79.5 MB (79547795 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8eb26bb4baaeca6ca7ce5fa85f53f25ed2fa1d26e65ddcfc9a6efb451a492635`
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
# Wed, 18 Jul 2018 12:02:25 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends iputils-ping snmp procps lm-sensors &&     rm -rf /var/lib/apt/lists/*
# Wed, 18 Jul 2018 12:02:34 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Wed, 18 Jul 2018 12:02:52 GMT
ENV TELEGRAF_VERSION=1.6.4
# Wed, 18 Jul 2018 12:02:54 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     gpg --batch --verify telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     dpkg -i telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     rm -f telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb*
# Wed, 18 Jul 2018 12:02:55 GMT
EXPOSE 8092/udp 8094/tcp 8125/udp
# Wed, 18 Jul 2018 12:02:55 GMT
COPY file:7211de01f296351833389a1a1879d450e2cb727d7e2910d5807937f99983edf7 in /entrypoint.sh 
# Wed, 18 Jul 2018 12:02:56 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 18 Jul 2018 12:02:56 GMT
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
	-	`sha256:bfca25b99093892544b78d98bc67f3229206bf2730a4c1568ce90c6cb3f457ce`  
		Last Modified: Wed, 18 Jul 2018 12:03:44 GMT  
		Size: 14.8 MB (14829122 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:205af81845a2b3066b93028d80c9541fbb4ea29054770b0c98f1d96833df2308`  
		Last Modified: Wed, 18 Jul 2018 12:03:39 GMT  
		Size: 2.9 KB (2922 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc14150aa4e406d1a35f7cb243c0f8a99c8e72532d4b6b11650b0146e95a1ec6`  
		Last Modified: Wed, 18 Jul 2018 12:04:10 GMT  
		Size: 9.3 MB (9301578 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b23a58fc7ef9fc6b9cc1d5c55ea2c78e7dcc93423fdfd905ceb7e80165009466`  
		Last Modified: Wed, 18 Jul 2018 12:04:07 GMT  
		Size: 185.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `telegraf:1.6` - linux; arm64 variant v8

```console
$ docker pull telegraf@sha256:d72a7b35d89dbe56eb1a6f2d2eeb3e0a1b461e5ed3569b70b3eb242b25b2cdbb
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **81.5 MB (81511017 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:070cbc627b2e8e6320cf7144899c579433ec53682eef02653db4af8295e51736`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Tue, 17 Jul 2018 08:47:22 GMT
ADD file:5e1a1aab339b0b1e3047eeab5d0c6c74ad3f388d0407dc86f41e4a78b99c6fd8 in / 
# Tue, 17 Jul 2018 08:47:23 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 14:51:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 14:52:06 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 18 Jul 2018 02:04:56 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends iputils-ping snmp procps lm-sensors &&     rm -rf /var/lib/apt/lists/*
# Wed, 18 Jul 2018 02:05:02 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Wed, 18 Jul 2018 02:05:42 GMT
ENV TELEGRAF_VERSION=1.6.4
# Wed, 18 Jul 2018 02:05:50 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     gpg --batch --verify telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     dpkg -i telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     rm -f telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb*
# Wed, 18 Jul 2018 02:05:51 GMT
EXPOSE 8092/udp 8094/tcp 8125/udp
# Wed, 18 Jul 2018 02:05:52 GMT
COPY file:7211de01f296351833389a1a1879d450e2cb727d7e2910d5807937f99983edf7 in /entrypoint.sh 
# Wed, 18 Jul 2018 02:05:53 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 18 Jul 2018 02:05:54 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:24e48664c69560cde9534aadde23364122f1feb02b5db0ab3776983a4788ea63`  
		Last Modified: Tue, 17 Jul 2018 08:56:03 GMT  
		Size: 43.1 MB (43123568 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cbcf842c718cc953be45905967fc6a0114f55314ce412b80107e20d8b43fdcdb`  
		Last Modified: Tue, 17 Jul 2018 15:10:44 GMT  
		Size: 9.7 MB (9690273 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:317d79a9c0a5c766d03c1c253fa09f645ed7321dc3a80e0ae33599958677cd1d`  
		Last Modified: Tue, 17 Jul 2018 15:10:41 GMT  
		Size: 4.1 MB (4088491 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:655f4d2161e3b571eaaadd594cb0ff00ec003867e1a191eebef39478b5b0be9d`  
		Last Modified: Wed, 18 Jul 2018 02:06:53 GMT  
		Size: 15.5 MB (15525652 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86a6c22c103a21b4321254ad5f80fef24a1595a17fdfa56164fd4a77368ca8fb`  
		Last Modified: Wed, 18 Jul 2018 02:06:46 GMT  
		Size: 2.9 KB (2886 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:998057608ea739271237c985c27d9bc26403ac8df8991634a2c5553d6ebbfcd9`  
		Last Modified: Wed, 18 Jul 2018 02:07:28 GMT  
		Size: 9.1 MB (9079961 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9cad5084a7ccff0f74edfb0e90776f678e5bb58a86cc5f69d9ebc787ec915f9`  
		Last Modified: Wed, 18 Jul 2018 02:07:25 GMT  
		Size: 186.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `telegraf:1.6.4`

```console
$ docker pull telegraf@sha256:e9da12b257e4fc77c8e25943781ef87a9d2f0cec440e026a4b6b440acf2b3bc8
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
$ docker pull telegraf@sha256:82a78f9b7dc53d66c2d2c05b50f604facb67f8ede1a39094214e6aab5e25d97e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **79.5 MB (79547795 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8eb26bb4baaeca6ca7ce5fa85f53f25ed2fa1d26e65ddcfc9a6efb451a492635`
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
# Wed, 18 Jul 2018 12:02:25 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends iputils-ping snmp procps lm-sensors &&     rm -rf /var/lib/apt/lists/*
# Wed, 18 Jul 2018 12:02:34 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Wed, 18 Jul 2018 12:02:52 GMT
ENV TELEGRAF_VERSION=1.6.4
# Wed, 18 Jul 2018 12:02:54 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     gpg --batch --verify telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     dpkg -i telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     rm -f telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb*
# Wed, 18 Jul 2018 12:02:55 GMT
EXPOSE 8092/udp 8094/tcp 8125/udp
# Wed, 18 Jul 2018 12:02:55 GMT
COPY file:7211de01f296351833389a1a1879d450e2cb727d7e2910d5807937f99983edf7 in /entrypoint.sh 
# Wed, 18 Jul 2018 12:02:56 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 18 Jul 2018 12:02:56 GMT
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
	-	`sha256:bfca25b99093892544b78d98bc67f3229206bf2730a4c1568ce90c6cb3f457ce`  
		Last Modified: Wed, 18 Jul 2018 12:03:44 GMT  
		Size: 14.8 MB (14829122 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:205af81845a2b3066b93028d80c9541fbb4ea29054770b0c98f1d96833df2308`  
		Last Modified: Wed, 18 Jul 2018 12:03:39 GMT  
		Size: 2.9 KB (2922 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc14150aa4e406d1a35f7cb243c0f8a99c8e72532d4b6b11650b0146e95a1ec6`  
		Last Modified: Wed, 18 Jul 2018 12:04:10 GMT  
		Size: 9.3 MB (9301578 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b23a58fc7ef9fc6b9cc1d5c55ea2c78e7dcc93423fdfd905ceb7e80165009466`  
		Last Modified: Wed, 18 Jul 2018 12:04:07 GMT  
		Size: 185.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `telegraf:1.6.4` - linux; arm64 variant v8

```console
$ docker pull telegraf@sha256:d72a7b35d89dbe56eb1a6f2d2eeb3e0a1b461e5ed3569b70b3eb242b25b2cdbb
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **81.5 MB (81511017 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:070cbc627b2e8e6320cf7144899c579433ec53682eef02653db4af8295e51736`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Tue, 17 Jul 2018 08:47:22 GMT
ADD file:5e1a1aab339b0b1e3047eeab5d0c6c74ad3f388d0407dc86f41e4a78b99c6fd8 in / 
# Tue, 17 Jul 2018 08:47:23 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 14:51:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 14:52:06 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 18 Jul 2018 02:04:56 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends iputils-ping snmp procps lm-sensors &&     rm -rf /var/lib/apt/lists/*
# Wed, 18 Jul 2018 02:05:02 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Wed, 18 Jul 2018 02:05:42 GMT
ENV TELEGRAF_VERSION=1.6.4
# Wed, 18 Jul 2018 02:05:50 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     gpg --batch --verify telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     dpkg -i telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     rm -f telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb*
# Wed, 18 Jul 2018 02:05:51 GMT
EXPOSE 8092/udp 8094/tcp 8125/udp
# Wed, 18 Jul 2018 02:05:52 GMT
COPY file:7211de01f296351833389a1a1879d450e2cb727d7e2910d5807937f99983edf7 in /entrypoint.sh 
# Wed, 18 Jul 2018 02:05:53 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 18 Jul 2018 02:05:54 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:24e48664c69560cde9534aadde23364122f1feb02b5db0ab3776983a4788ea63`  
		Last Modified: Tue, 17 Jul 2018 08:56:03 GMT  
		Size: 43.1 MB (43123568 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cbcf842c718cc953be45905967fc6a0114f55314ce412b80107e20d8b43fdcdb`  
		Last Modified: Tue, 17 Jul 2018 15:10:44 GMT  
		Size: 9.7 MB (9690273 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:317d79a9c0a5c766d03c1c253fa09f645ed7321dc3a80e0ae33599958677cd1d`  
		Last Modified: Tue, 17 Jul 2018 15:10:41 GMT  
		Size: 4.1 MB (4088491 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:655f4d2161e3b571eaaadd594cb0ff00ec003867e1a191eebef39478b5b0be9d`  
		Last Modified: Wed, 18 Jul 2018 02:06:53 GMT  
		Size: 15.5 MB (15525652 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86a6c22c103a21b4321254ad5f80fef24a1595a17fdfa56164fd4a77368ca8fb`  
		Last Modified: Wed, 18 Jul 2018 02:06:46 GMT  
		Size: 2.9 KB (2886 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:998057608ea739271237c985c27d9bc26403ac8df8991634a2c5553d6ebbfcd9`  
		Last Modified: Wed, 18 Jul 2018 02:07:28 GMT  
		Size: 9.1 MB (9079961 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9cad5084a7ccff0f74edfb0e90776f678e5bb58a86cc5f69d9ebc787ec915f9`  
		Last Modified: Wed, 18 Jul 2018 02:07:25 GMT  
		Size: 186.0 B  
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
$ docker pull telegraf@sha256:74b41062bea9948181182442b1b3ca2cb5b1f722f69d4edd43ccc364015e3ffa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `telegraf:1.7` - linux; amd64

```console
$ docker pull telegraf@sha256:60a35f4dbff17146dd77f988e2f52c96d6a3ad1e7d22026dd167276bad96436e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **86.9 MB (86850586 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:75da471225eb4b79d59b6e5cc699916f383ded2945862981ddfdfb804b76cb8a`
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
# Thu, 19 Jul 2018 22:22:52 GMT
ENV TELEGRAF_VERSION=1.7.2
# Thu, 19 Jul 2018 22:22:58 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     gpg --batch --verify telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     dpkg -i telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     rm -f telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb*
# Thu, 19 Jul 2018 22:23:09 GMT
EXPOSE 8092/udp 8094/tcp 8125/udp
# Thu, 19 Jul 2018 22:23:10 GMT
COPY file:7211de01f296351833389a1a1879d450e2cb727d7e2910d5807937f99983edf7 in /entrypoint.sh 
# Thu, 19 Jul 2018 22:23:10 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 19 Jul 2018 22:23:10 GMT
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
	-	`sha256:cee06a0cbda664be64396a388bec08f54efcf1a7edb9371f6dad207e71a8f5cb`  
		Last Modified: Thu, 19 Jul 2018 22:24:30 GMT  
		Size: 10.5 MB (10497335 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:900b8155120aa0014bd77e20e9bb6b7b4a4b9dda3850ec88cb1631152a2226cc`  
		Last Modified: Thu, 19 Jul 2018 22:24:26 GMT  
		Size: 186.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `telegraf:1.7` - linux; arm variant v7

```console
$ docker pull telegraf@sha256:4093a3100a2fa4a456e11a12a17f2c677dce1a76892a3629f5f9157e9721afff
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **80.3 MB (80335468 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bb5fdd46bb60be9e296e4e668a953e4cb226831f2e8c60c31dfe43705dad03f8`
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
# Wed, 18 Jul 2018 12:02:25 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends iputils-ping snmp procps lm-sensors &&     rm -rf /var/lib/apt/lists/*
# Wed, 18 Jul 2018 12:02:34 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Fri, 20 Jul 2018 12:01:52 GMT
ENV TELEGRAF_VERSION=1.7.2
# Fri, 20 Jul 2018 12:01:55 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     gpg --batch --verify telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     dpkg -i telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     rm -f telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb*
# Fri, 20 Jul 2018 12:01:55 GMT
EXPOSE 8092/udp 8094/tcp 8125/udp
# Fri, 20 Jul 2018 12:01:56 GMT
COPY file:7211de01f296351833389a1a1879d450e2cb727d7e2910d5807937f99983edf7 in /entrypoint.sh 
# Fri, 20 Jul 2018 12:01:56 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 20 Jul 2018 12:01:57 GMT
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
	-	`sha256:bfca25b99093892544b78d98bc67f3229206bf2730a4c1568ce90c6cb3f457ce`  
		Last Modified: Wed, 18 Jul 2018 12:03:44 GMT  
		Size: 14.8 MB (14829122 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:205af81845a2b3066b93028d80c9541fbb4ea29054770b0c98f1d96833df2308`  
		Last Modified: Wed, 18 Jul 2018 12:03:39 GMT  
		Size: 2.9 KB (2922 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99f3beeda1e4dfdb543577b84bfdd3bc6b5a68c3f4f27b39714d01aa75f28558`  
		Last Modified: Fri, 20 Jul 2018 12:02:16 GMT  
		Size: 10.1 MB (10089251 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2cf3e2eeb8b8e45bdc4e55810ace4355fcd27742a6360977fc0102c628f121f1`  
		Last Modified: Fri, 20 Jul 2018 12:02:13 GMT  
		Size: 185.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `telegraf:1.7` - linux; arm64 variant v8

```console
$ docker pull telegraf@sha256:b301b97e0aeecc8509c011f92046c51e011e01905560cfb32b83f0931471b47b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **82.3 MB (82297930 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b4cdfb3513e1ea9482d91d054cf6489ed51373a10e2d46f545bdd3ecf71841d3`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Tue, 17 Jul 2018 08:47:22 GMT
ADD file:5e1a1aab339b0b1e3047eeab5d0c6c74ad3f388d0407dc86f41e4a78b99c6fd8 in / 
# Tue, 17 Jul 2018 08:47:23 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 14:51:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 14:52:06 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 18 Jul 2018 02:04:56 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends iputils-ping snmp procps lm-sensors &&     rm -rf /var/lib/apt/lists/*
# Wed, 18 Jul 2018 02:05:02 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Fri, 20 Jul 2018 08:42:48 GMT
ENV TELEGRAF_VERSION=1.7.2
# Fri, 20 Jul 2018 08:42:57 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     gpg --batch --verify telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     dpkg -i telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     rm -f telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb*
# Fri, 20 Jul 2018 08:43:08 GMT
EXPOSE 8092/udp 8094/tcp 8125/udp
# Fri, 20 Jul 2018 08:43:08 GMT
COPY file:7211de01f296351833389a1a1879d450e2cb727d7e2910d5807937f99983edf7 in /entrypoint.sh 
# Fri, 20 Jul 2018 08:43:09 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 20 Jul 2018 08:43:10 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:24e48664c69560cde9534aadde23364122f1feb02b5db0ab3776983a4788ea63`  
		Last Modified: Tue, 17 Jul 2018 08:56:03 GMT  
		Size: 43.1 MB (43123568 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cbcf842c718cc953be45905967fc6a0114f55314ce412b80107e20d8b43fdcdb`  
		Last Modified: Tue, 17 Jul 2018 15:10:44 GMT  
		Size: 9.7 MB (9690273 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:317d79a9c0a5c766d03c1c253fa09f645ed7321dc3a80e0ae33599958677cd1d`  
		Last Modified: Tue, 17 Jul 2018 15:10:41 GMT  
		Size: 4.1 MB (4088491 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:655f4d2161e3b571eaaadd594cb0ff00ec003867e1a191eebef39478b5b0be9d`  
		Last Modified: Wed, 18 Jul 2018 02:06:53 GMT  
		Size: 15.5 MB (15525652 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86a6c22c103a21b4321254ad5f80fef24a1595a17fdfa56164fd4a77368ca8fb`  
		Last Modified: Wed, 18 Jul 2018 02:06:46 GMT  
		Size: 2.9 KB (2886 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3c105d5b3792e531e6dca69b3c1b472f6b68328caba2b9e123de808556ab915`  
		Last Modified: Fri, 20 Jul 2018 08:43:57 GMT  
		Size: 9.9 MB (9866875 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b180251f3a8639956267e68684401e51da242916d874550d78b32a504124adb`  
		Last Modified: Fri, 20 Jul 2018 08:43:53 GMT  
		Size: 185.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `telegraf:1.7.2`

```console
$ docker pull telegraf@sha256:74b41062bea9948181182442b1b3ca2cb5b1f722f69d4edd43ccc364015e3ffa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `telegraf:1.7.2` - linux; amd64

```console
$ docker pull telegraf@sha256:60a35f4dbff17146dd77f988e2f52c96d6a3ad1e7d22026dd167276bad96436e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **86.9 MB (86850586 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:75da471225eb4b79d59b6e5cc699916f383ded2945862981ddfdfb804b76cb8a`
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
# Thu, 19 Jul 2018 22:22:52 GMT
ENV TELEGRAF_VERSION=1.7.2
# Thu, 19 Jul 2018 22:22:58 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     gpg --batch --verify telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     dpkg -i telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     rm -f telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb*
# Thu, 19 Jul 2018 22:23:09 GMT
EXPOSE 8092/udp 8094/tcp 8125/udp
# Thu, 19 Jul 2018 22:23:10 GMT
COPY file:7211de01f296351833389a1a1879d450e2cb727d7e2910d5807937f99983edf7 in /entrypoint.sh 
# Thu, 19 Jul 2018 22:23:10 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 19 Jul 2018 22:23:10 GMT
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
	-	`sha256:cee06a0cbda664be64396a388bec08f54efcf1a7edb9371f6dad207e71a8f5cb`  
		Last Modified: Thu, 19 Jul 2018 22:24:30 GMT  
		Size: 10.5 MB (10497335 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:900b8155120aa0014bd77e20e9bb6b7b4a4b9dda3850ec88cb1631152a2226cc`  
		Last Modified: Thu, 19 Jul 2018 22:24:26 GMT  
		Size: 186.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `telegraf:1.7.2` - linux; arm variant v7

```console
$ docker pull telegraf@sha256:4093a3100a2fa4a456e11a12a17f2c677dce1a76892a3629f5f9157e9721afff
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **80.3 MB (80335468 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bb5fdd46bb60be9e296e4e668a953e4cb226831f2e8c60c31dfe43705dad03f8`
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
# Wed, 18 Jul 2018 12:02:25 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends iputils-ping snmp procps lm-sensors &&     rm -rf /var/lib/apt/lists/*
# Wed, 18 Jul 2018 12:02:34 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Fri, 20 Jul 2018 12:01:52 GMT
ENV TELEGRAF_VERSION=1.7.2
# Fri, 20 Jul 2018 12:01:55 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     gpg --batch --verify telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     dpkg -i telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     rm -f telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb*
# Fri, 20 Jul 2018 12:01:55 GMT
EXPOSE 8092/udp 8094/tcp 8125/udp
# Fri, 20 Jul 2018 12:01:56 GMT
COPY file:7211de01f296351833389a1a1879d450e2cb727d7e2910d5807937f99983edf7 in /entrypoint.sh 
# Fri, 20 Jul 2018 12:01:56 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 20 Jul 2018 12:01:57 GMT
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
	-	`sha256:bfca25b99093892544b78d98bc67f3229206bf2730a4c1568ce90c6cb3f457ce`  
		Last Modified: Wed, 18 Jul 2018 12:03:44 GMT  
		Size: 14.8 MB (14829122 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:205af81845a2b3066b93028d80c9541fbb4ea29054770b0c98f1d96833df2308`  
		Last Modified: Wed, 18 Jul 2018 12:03:39 GMT  
		Size: 2.9 KB (2922 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99f3beeda1e4dfdb543577b84bfdd3bc6b5a68c3f4f27b39714d01aa75f28558`  
		Last Modified: Fri, 20 Jul 2018 12:02:16 GMT  
		Size: 10.1 MB (10089251 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2cf3e2eeb8b8e45bdc4e55810ace4355fcd27742a6360977fc0102c628f121f1`  
		Last Modified: Fri, 20 Jul 2018 12:02:13 GMT  
		Size: 185.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `telegraf:1.7.2` - linux; arm64 variant v8

```console
$ docker pull telegraf@sha256:b301b97e0aeecc8509c011f92046c51e011e01905560cfb32b83f0931471b47b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **82.3 MB (82297930 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b4cdfb3513e1ea9482d91d054cf6489ed51373a10e2d46f545bdd3ecf71841d3`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Tue, 17 Jul 2018 08:47:22 GMT
ADD file:5e1a1aab339b0b1e3047eeab5d0c6c74ad3f388d0407dc86f41e4a78b99c6fd8 in / 
# Tue, 17 Jul 2018 08:47:23 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 14:51:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 14:52:06 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 18 Jul 2018 02:04:56 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends iputils-ping snmp procps lm-sensors &&     rm -rf /var/lib/apt/lists/*
# Wed, 18 Jul 2018 02:05:02 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Fri, 20 Jul 2018 08:42:48 GMT
ENV TELEGRAF_VERSION=1.7.2
# Fri, 20 Jul 2018 08:42:57 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     gpg --batch --verify telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     dpkg -i telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     rm -f telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb*
# Fri, 20 Jul 2018 08:43:08 GMT
EXPOSE 8092/udp 8094/tcp 8125/udp
# Fri, 20 Jul 2018 08:43:08 GMT
COPY file:7211de01f296351833389a1a1879d450e2cb727d7e2910d5807937f99983edf7 in /entrypoint.sh 
# Fri, 20 Jul 2018 08:43:09 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 20 Jul 2018 08:43:10 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:24e48664c69560cde9534aadde23364122f1feb02b5db0ab3776983a4788ea63`  
		Last Modified: Tue, 17 Jul 2018 08:56:03 GMT  
		Size: 43.1 MB (43123568 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cbcf842c718cc953be45905967fc6a0114f55314ce412b80107e20d8b43fdcdb`  
		Last Modified: Tue, 17 Jul 2018 15:10:44 GMT  
		Size: 9.7 MB (9690273 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:317d79a9c0a5c766d03c1c253fa09f645ed7321dc3a80e0ae33599958677cd1d`  
		Last Modified: Tue, 17 Jul 2018 15:10:41 GMT  
		Size: 4.1 MB (4088491 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:655f4d2161e3b571eaaadd594cb0ff00ec003867e1a191eebef39478b5b0be9d`  
		Last Modified: Wed, 18 Jul 2018 02:06:53 GMT  
		Size: 15.5 MB (15525652 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86a6c22c103a21b4321254ad5f80fef24a1595a17fdfa56164fd4a77368ca8fb`  
		Last Modified: Wed, 18 Jul 2018 02:06:46 GMT  
		Size: 2.9 KB (2886 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3c105d5b3792e531e6dca69b3c1b472f6b68328caba2b9e123de808556ab915`  
		Last Modified: Fri, 20 Jul 2018 08:43:57 GMT  
		Size: 9.9 MB (9866875 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b180251f3a8639956267e68684401e51da242916d874550d78b32a504124adb`  
		Last Modified: Fri, 20 Jul 2018 08:43:53 GMT  
		Size: 185.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `telegraf:1.7.2-alpine`

```console
$ docker pull telegraf@sha256:9bc4e7316f97ebdf33d0c1edfbf3fb0de2e7db7769d393f46463ef203c8f2c33
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `telegraf:1.7.2-alpine` - linux; amd64

```console
$ docker pull telegraf@sha256:17e8aa1c571925c407e160013a7f0c15a3f8246018bacf2bcc0debb9ba84e942
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.8 MB (15827003 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:547d6d3016ff5d9815d2953762c7ecacf47dc5537a06ffde48ed8534d78e52ec`
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
# Thu, 19 Jul 2018 22:23:39 GMT
ENV TELEGRAF_VERSION=1.7.2
# Thu, 19 Jul 2018 22:23:48 GMT
RUN set -ex &&     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf-${TELEGRAF_VERSION}-static_linux_amd64.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf-${TELEGRAF_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify telegraf-${TELEGRAF_VERSION}-static_linux_amd64.tar.gz.asc telegraf-${TELEGRAF_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src /etc/telegraf &&     tar -C /usr/src -xzf telegraf-${TELEGRAF_VERSION}-static_linux_amd64.tar.gz &&     mv /usr/src/telegraf*/telegraf.conf /etc/telegraf/ &&     chmod +x /usr/src/telegraf*/* &&     cp -a /usr/src/telegraf*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Thu, 19 Jul 2018 22:23:54 GMT
EXPOSE 8092/udp 8094/tcp 8125/udp
# Thu, 19 Jul 2018 22:23:55 GMT
COPY file:43e6828e001b57ab465cff8dfd3d30830289afe7ca5944b61641956bfe38cd1c in /entrypoint.sh 
# Thu, 19 Jul 2018 22:23:55 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 19 Jul 2018 22:23:55 GMT
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
	-	`sha256:28dc5f846df8c3212053fb57a5f13040974cb0041afc71de1519d66e90fbaa8c`  
		Last Modified: Thu, 19 Jul 2018 22:26:03 GMT  
		Size: 10.5 MB (10465187 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cbf4ff759895d4341761ba9c8c2defe20b6cc4c5196ac35321187bedb466468e`  
		Last Modified: Thu, 19 Jul 2018 22:25:58 GMT  
		Size: 182.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `telegraf:1.7-alpine`

```console
$ docker pull telegraf@sha256:9bc4e7316f97ebdf33d0c1edfbf3fb0de2e7db7769d393f46463ef203c8f2c33
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `telegraf:1.7-alpine` - linux; amd64

```console
$ docker pull telegraf@sha256:17e8aa1c571925c407e160013a7f0c15a3f8246018bacf2bcc0debb9ba84e942
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.8 MB (15827003 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:547d6d3016ff5d9815d2953762c7ecacf47dc5537a06ffde48ed8534d78e52ec`
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
# Thu, 19 Jul 2018 22:23:39 GMT
ENV TELEGRAF_VERSION=1.7.2
# Thu, 19 Jul 2018 22:23:48 GMT
RUN set -ex &&     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf-${TELEGRAF_VERSION}-static_linux_amd64.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf-${TELEGRAF_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify telegraf-${TELEGRAF_VERSION}-static_linux_amd64.tar.gz.asc telegraf-${TELEGRAF_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src /etc/telegraf &&     tar -C /usr/src -xzf telegraf-${TELEGRAF_VERSION}-static_linux_amd64.tar.gz &&     mv /usr/src/telegraf*/telegraf.conf /etc/telegraf/ &&     chmod +x /usr/src/telegraf*/* &&     cp -a /usr/src/telegraf*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Thu, 19 Jul 2018 22:23:54 GMT
EXPOSE 8092/udp 8094/tcp 8125/udp
# Thu, 19 Jul 2018 22:23:55 GMT
COPY file:43e6828e001b57ab465cff8dfd3d30830289afe7ca5944b61641956bfe38cd1c in /entrypoint.sh 
# Thu, 19 Jul 2018 22:23:55 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 19 Jul 2018 22:23:55 GMT
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
	-	`sha256:28dc5f846df8c3212053fb57a5f13040974cb0041afc71de1519d66e90fbaa8c`  
		Last Modified: Thu, 19 Jul 2018 22:26:03 GMT  
		Size: 10.5 MB (10465187 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cbf4ff759895d4341761ba9c8c2defe20b6cc4c5196ac35321187bedb466468e`  
		Last Modified: Thu, 19 Jul 2018 22:25:58 GMT  
		Size: 182.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `telegraf:alpine`

```console
$ docker pull telegraf@sha256:9bc4e7316f97ebdf33d0c1edfbf3fb0de2e7db7769d393f46463ef203c8f2c33
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `telegraf:alpine` - linux; amd64

```console
$ docker pull telegraf@sha256:17e8aa1c571925c407e160013a7f0c15a3f8246018bacf2bcc0debb9ba84e942
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.8 MB (15827003 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:547d6d3016ff5d9815d2953762c7ecacf47dc5537a06ffde48ed8534d78e52ec`
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
# Thu, 19 Jul 2018 22:23:39 GMT
ENV TELEGRAF_VERSION=1.7.2
# Thu, 19 Jul 2018 22:23:48 GMT
RUN set -ex &&     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf-${TELEGRAF_VERSION}-static_linux_amd64.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf-${TELEGRAF_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify telegraf-${TELEGRAF_VERSION}-static_linux_amd64.tar.gz.asc telegraf-${TELEGRAF_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src /etc/telegraf &&     tar -C /usr/src -xzf telegraf-${TELEGRAF_VERSION}-static_linux_amd64.tar.gz &&     mv /usr/src/telegraf*/telegraf.conf /etc/telegraf/ &&     chmod +x /usr/src/telegraf*/* &&     cp -a /usr/src/telegraf*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Thu, 19 Jul 2018 22:23:54 GMT
EXPOSE 8092/udp 8094/tcp 8125/udp
# Thu, 19 Jul 2018 22:23:55 GMT
COPY file:43e6828e001b57ab465cff8dfd3d30830289afe7ca5944b61641956bfe38cd1c in /entrypoint.sh 
# Thu, 19 Jul 2018 22:23:55 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 19 Jul 2018 22:23:55 GMT
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
	-	`sha256:28dc5f846df8c3212053fb57a5f13040974cb0041afc71de1519d66e90fbaa8c`  
		Last Modified: Thu, 19 Jul 2018 22:26:03 GMT  
		Size: 10.5 MB (10465187 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cbf4ff759895d4341761ba9c8c2defe20b6cc4c5196ac35321187bedb466468e`  
		Last Modified: Thu, 19 Jul 2018 22:25:58 GMT  
		Size: 182.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `telegraf:latest`

```console
$ docker pull telegraf@sha256:762d69d0dbd8cc2ca54d14ab5b82c5dd5ba668cf5cbdce89048a25b80a81ae32
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `telegraf:latest` - linux; amd64

```console
$ docker pull telegraf@sha256:60a35f4dbff17146dd77f988e2f52c96d6a3ad1e7d22026dd167276bad96436e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **86.9 MB (86850586 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:75da471225eb4b79d59b6e5cc699916f383ded2945862981ddfdfb804b76cb8a`
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
# Thu, 19 Jul 2018 22:22:52 GMT
ENV TELEGRAF_VERSION=1.7.2
# Thu, 19 Jul 2018 22:22:58 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     gpg --batch --verify telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     dpkg -i telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     rm -f telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb*
# Thu, 19 Jul 2018 22:23:09 GMT
EXPOSE 8092/udp 8094/tcp 8125/udp
# Thu, 19 Jul 2018 22:23:10 GMT
COPY file:7211de01f296351833389a1a1879d450e2cb727d7e2910d5807937f99983edf7 in /entrypoint.sh 
# Thu, 19 Jul 2018 22:23:10 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 19 Jul 2018 22:23:10 GMT
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
	-	`sha256:cee06a0cbda664be64396a388bec08f54efcf1a7edb9371f6dad207e71a8f5cb`  
		Last Modified: Thu, 19 Jul 2018 22:24:30 GMT  
		Size: 10.5 MB (10497335 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:900b8155120aa0014bd77e20e9bb6b7b4a4b9dda3850ec88cb1631152a2226cc`  
		Last Modified: Thu, 19 Jul 2018 22:24:26 GMT  
		Size: 186.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `telegraf:latest` - linux; arm variant v7

```console
$ docker pull telegraf@sha256:ab70dc4e69e88c1360a431cc93a860105f9d5bda94f1595e020f9896ac21bad3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **80.3 MB (80335387 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f3ce27aa7ee8d4e6568d84a418681e50a870edf2e3f9a0f2d88c079c9eb26e1a`
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
# Wed, 18 Jul 2018 12:02:25 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends iputils-ping snmp procps lm-sensors &&     rm -rf /var/lib/apt/lists/*
# Wed, 18 Jul 2018 12:02:34 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Wed, 18 Jul 2018 12:03:08 GMT
ENV TELEGRAF_VERSION=1.7.1
# Wed, 18 Jul 2018 12:03:11 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     gpg --batch --verify telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     dpkg -i telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     rm -f telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb*
# Wed, 18 Jul 2018 12:03:19 GMT
EXPOSE 8092/udp 8094/tcp 8125/udp
# Wed, 18 Jul 2018 12:03:20 GMT
COPY file:7211de01f296351833389a1a1879d450e2cb727d7e2910d5807937f99983edf7 in /entrypoint.sh 
# Wed, 18 Jul 2018 12:03:21 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 18 Jul 2018 12:03:21 GMT
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
	-	`sha256:bfca25b99093892544b78d98bc67f3229206bf2730a4c1568ce90c6cb3f457ce`  
		Last Modified: Wed, 18 Jul 2018 12:03:44 GMT  
		Size: 14.8 MB (14829122 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:205af81845a2b3066b93028d80c9541fbb4ea29054770b0c98f1d96833df2308`  
		Last Modified: Wed, 18 Jul 2018 12:03:39 GMT  
		Size: 2.9 KB (2922 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0baec1195a991f5067e97c9e57740961a88be29b57ec283784ef1b4e0b3b252f`  
		Last Modified: Wed, 18 Jul 2018 12:04:47 GMT  
		Size: 10.1 MB (10089172 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:112fac620592d304064549251a5d145c40ef07c454284f1a4864d3fb05dd20ba`  
		Last Modified: Wed, 18 Jul 2018 12:04:43 GMT  
		Size: 183.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `telegraf:latest` - linux; arm64 variant v8

```console
$ docker pull telegraf@sha256:b301b97e0aeecc8509c011f92046c51e011e01905560cfb32b83f0931471b47b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **82.3 MB (82297930 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b4cdfb3513e1ea9482d91d054cf6489ed51373a10e2d46f545bdd3ecf71841d3`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Tue, 17 Jul 2018 08:47:22 GMT
ADD file:5e1a1aab339b0b1e3047eeab5d0c6c74ad3f388d0407dc86f41e4a78b99c6fd8 in / 
# Tue, 17 Jul 2018 08:47:23 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 14:51:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 14:52:06 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 18 Jul 2018 02:04:56 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends iputils-ping snmp procps lm-sensors &&     rm -rf /var/lib/apt/lists/*
# Wed, 18 Jul 2018 02:05:02 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Fri, 20 Jul 2018 08:42:48 GMT
ENV TELEGRAF_VERSION=1.7.2
# Fri, 20 Jul 2018 08:42:57 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     gpg --batch --verify telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     dpkg -i telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     rm -f telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb*
# Fri, 20 Jul 2018 08:43:08 GMT
EXPOSE 8092/udp 8094/tcp 8125/udp
# Fri, 20 Jul 2018 08:43:08 GMT
COPY file:7211de01f296351833389a1a1879d450e2cb727d7e2910d5807937f99983edf7 in /entrypoint.sh 
# Fri, 20 Jul 2018 08:43:09 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 20 Jul 2018 08:43:10 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:24e48664c69560cde9534aadde23364122f1feb02b5db0ab3776983a4788ea63`  
		Last Modified: Tue, 17 Jul 2018 08:56:03 GMT  
		Size: 43.1 MB (43123568 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cbcf842c718cc953be45905967fc6a0114f55314ce412b80107e20d8b43fdcdb`  
		Last Modified: Tue, 17 Jul 2018 15:10:44 GMT  
		Size: 9.7 MB (9690273 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:317d79a9c0a5c766d03c1c253fa09f645ed7321dc3a80e0ae33599958677cd1d`  
		Last Modified: Tue, 17 Jul 2018 15:10:41 GMT  
		Size: 4.1 MB (4088491 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:655f4d2161e3b571eaaadd594cb0ff00ec003867e1a191eebef39478b5b0be9d`  
		Last Modified: Wed, 18 Jul 2018 02:06:53 GMT  
		Size: 15.5 MB (15525652 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86a6c22c103a21b4321254ad5f80fef24a1595a17fdfa56164fd4a77368ca8fb`  
		Last Modified: Wed, 18 Jul 2018 02:06:46 GMT  
		Size: 2.9 KB (2886 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3c105d5b3792e531e6dca69b3c1b472f6b68328caba2b9e123de808556ab915`  
		Last Modified: Fri, 20 Jul 2018 08:43:57 GMT  
		Size: 9.9 MB (9866875 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b180251f3a8639956267e68684401e51da242916d874550d78b32a504124adb`  
		Last Modified: Fri, 20 Jul 2018 08:43:53 GMT  
		Size: 185.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
