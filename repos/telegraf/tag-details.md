<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `telegraf`

-	[`telegraf:1.6`](#telegraf16)
-	[`telegraf:1.6.4`](#telegraf164)
-	[`telegraf:1.6.4-alpine`](#telegraf164-alpine)
-	[`telegraf:1.6-alpine`](#telegraf16-alpine)
-	[`telegraf:1.7`](#telegraf17)
-	[`telegraf:1.7.4`](#telegraf174)
-	[`telegraf:1.7.4-alpine`](#telegraf174-alpine)
-	[`telegraf:1.7-alpine`](#telegraf17-alpine)
-	[`telegraf:1.8`](#telegraf18)
-	[`telegraf:1.8.0`](#telegraf180)
-	[`telegraf:1.8.0-alpine`](#telegraf180-alpine)
-	[`telegraf:1.8-alpine`](#telegraf18-alpine)
-	[`telegraf:alpine`](#telegrafalpine)
-	[`telegraf:latest`](#telegraflatest)

## `telegraf:1.6`

```console
$ docker pull telegraf@sha256:efeeed2b251953dc7dbb71a1105929116661653369137b607e7b656075dfc5e1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `telegraf:1.6` - linux; amd64

```console
$ docker pull telegraf@sha256:cf08ef856940f776da11460dcab1989afab612753d43e51325c3dca3a40cbbc1
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **86.2 MB (86235100 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fc2396b418dbb4c578e4331364b0f345d14e8f4980dfa7ecc53774822846b93d`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Tue, 04 Sep 2018 21:21:24 GMT
ADD file:58d5c21fcabcf1eec94e8676a3b1e51c5fdc2db5c7b866a761f907fa30ede4d8 in / 
# Tue, 04 Sep 2018 21:21:24 GMT
CMD ["bash"]
# Tue, 04 Sep 2018 22:33:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 04 Sep 2018 22:33:43 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 05 Sep 2018 10:29:52 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends iputils-ping snmp procps lm-sensors &&     rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 10:29:55 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Wed, 05 Sep 2018 10:30:04 GMT
ENV TELEGRAF_VERSION=1.6.4
# Wed, 05 Sep 2018 10:30:06 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     gpg --batch --verify telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     dpkg -i telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     rm -f telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb*
# Wed, 05 Sep 2018 10:30:06 GMT
EXPOSE 8092/udp 8094/tcp 8125/udp
# Wed, 05 Sep 2018 10:30:07 GMT
COPY file:7211de01f296351833389a1a1879d450e2cb727d7e2910d5807937f99983edf7 in /entrypoint.sh 
# Wed, 05 Sep 2018 10:30:07 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 05 Sep 2018 10:30:07 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:05d1a5232b461a4b35424129580054caa878cd56f100e34282510bd4b4082e4d`  
		Last Modified: Tue, 04 Sep 2018 21:25:27 GMT  
		Size: 45.3 MB (45310060 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5cee356eda6bfe3a5a229cd3d964e722ade1da4381842b24e943b03a37aec1f2`  
		Last Modified: Tue, 04 Sep 2018 22:52:43 GMT  
		Size: 10.7 MB (10740429 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89d3385f0fd3c0c904ff6e87195bb46f5d9d309e8ddd91bc9b20855d103eeffb`  
		Last Modified: Tue, 04 Sep 2018 22:52:42 GMT  
		Size: 4.3 MB (4336162 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c49a5ea11702830bff3a41967cfa246eec2b9a13952ab9910b6ebd68f05d7ac`  
		Last Modified: Wed, 05 Sep 2018 10:30:36 GMT  
		Size: 16.0 MB (15963792 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de0161bf449d53374a09e29093a7e51c8cea5e67566477f909c36abe0b42e6c3`  
		Last Modified: Wed, 05 Sep 2018 10:30:31 GMT  
		Size: 2.9 KB (2883 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1938ff263e26d5cd3f2f22a0676c5444eef156b856b14cc3681cea1f978a61f5`  
		Last Modified: Wed, 05 Sep 2018 10:31:10 GMT  
		Size: 9.9 MB (9881588 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe4260ac36614e6bda22433ba628523a71db0179458ceb5ff9b0fecf845301da`  
		Last Modified: Wed, 05 Sep 2018 10:31:07 GMT  
		Size: 186.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `telegraf:1.6` - linux; arm variant v7

```console
$ docker pull telegraf@sha256:e7572a1dc6906254556af7d98ba4417fc9f903ae6b57fd8368c3d57ed9aae2ab
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **79.5 MB (79549728 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7cab4055f872d90d8e0a279b33866d71b5d3d9dc9151d1aa5321ae9009e70409`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Wed, 05 Sep 2018 12:04:11 GMT
ADD file:bacead0de46aaeea589aade1154ab29f7b53ba32ac884c84a950a3f42bbe2868 in / 
# Wed, 05 Sep 2018 12:04:12 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 12:44:43 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 12:44:52 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 05 Sep 2018 17:01:54 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends iputils-ping snmp procps lm-sensors &&     rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 17:01:59 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Wed, 05 Sep 2018 17:02:25 GMT
ENV TELEGRAF_VERSION=1.6.4
# Wed, 05 Sep 2018 17:02:29 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     gpg --batch --verify telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     dpkg -i telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     rm -f telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb*
# Wed, 05 Sep 2018 17:02:33 GMT
EXPOSE 8092/udp 8094/tcp 8125/udp
# Wed, 05 Sep 2018 17:02:33 GMT
COPY file:7211de01f296351833389a1a1879d450e2cb727d7e2910d5807937f99983edf7 in /entrypoint.sh 
# Wed, 05 Sep 2018 17:02:34 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 05 Sep 2018 17:02:34 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:b0e52c109d408e4b15451c236c7e463334a304fd078c535edbd687b22bfde52c`  
		Last Modified: Wed, 05 Sep 2018 12:12:54 GMT  
		Size: 42.1 MB (42062670 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:215164aeca718c35ec0eb0e6c0105cdcb8ceadce60d8c8ccc9c182f3b9928d32`  
		Last Modified: Wed, 05 Sep 2018 12:56:53 GMT  
		Size: 9.4 MB (9440248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3881d6781569972fa823e9e0c4eab63be9dd636d1ae45ba90a364cfea2ed4f51`  
		Last Modified: Wed, 05 Sep 2018 12:56:51 GMT  
		Size: 3.9 MB (3912963 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b82adee2dc7a18168c891ea9029d68c0b9010bceab2dbc0d3e7dbeea2e26c5b`  
		Last Modified: Wed, 05 Sep 2018 17:03:26 GMT  
		Size: 14.8 MB (14829149 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef97a2ae86efad32f91af9895f063626307de55a0a17c7b656179f9c39552ba1`  
		Last Modified: Wed, 05 Sep 2018 17:03:20 GMT  
		Size: 2.9 KB (2914 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65c8d6118760214147cdccb58964f63ccae29e250d14cc480b5bf5ade8cc9647`  
		Last Modified: Wed, 05 Sep 2018 17:04:01 GMT  
		Size: 9.3 MB (9301599 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ebdef42ef3b0f9b13c9754c24e84a1a462b32c330353870aac08182dd61cb40`  
		Last Modified: Wed, 05 Sep 2018 17:03:55 GMT  
		Size: 185.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `telegraf:1.6` - linux; arm64 variant v8

```console
$ docker pull telegraf@sha256:ec38d0e2e5e6a33b06b002040b762f13a2a8455fa2a58398165d217c42c14c1d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **81.5 MB (81510687 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e7d686f90e9fc94bbb68be33b9feee9baf036ee6e63cae3ad680311b85a22f2b`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Wed, 05 Sep 2018 08:50:16 GMT
ADD file:4e01bc399974f6fe22cd2b4421c2e52c52380aa00a770986939071dbc59d734e in / 
# Wed, 05 Sep 2018 08:50:30 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 10:02:26 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 10:02:44 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 05 Sep 2018 23:42:34 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends iputils-ping snmp procps lm-sensors &&     rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 23:42:40 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Wed, 05 Sep 2018 23:43:46 GMT
ENV TELEGRAF_VERSION=1.6.4
# Wed, 05 Sep 2018 23:43:56 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     gpg --batch --verify telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     dpkg -i telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     rm -f telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb*
# Wed, 05 Sep 2018 23:43:57 GMT
EXPOSE 8092/udp 8094/tcp 8125/udp
# Wed, 05 Sep 2018 23:43:59 GMT
COPY file:7211de01f296351833389a1a1879d450e2cb727d7e2910d5807937f99983edf7 in /entrypoint.sh 
# Wed, 05 Sep 2018 23:44:00 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 05 Sep 2018 23:44:02 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:421608e4e92275f9265604523f9299cf5f4bd493a1ea3affd62c265b38fc8823`  
		Last Modified: Wed, 05 Sep 2018 09:06:53 GMT  
		Size: 43.1 MB (43123621 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:185ac5864132647baf5fa26dfe782dbf1645944aca4a8e963d24572bb0b90007`  
		Last Modified: Wed, 05 Sep 2018 10:25:53 GMT  
		Size: 9.7 MB (9690090 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c69d98c830cad0499c1720f09b5ec6e3dde0f144f0b5ab1b555fa37e4eac6623`  
		Last Modified: Wed, 05 Sep 2018 10:25:51 GMT  
		Size: 4.1 MB (4088370 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51f53e935c51dd5e6c8979a5909bc72d8a8fefa16dcf892a98bdf4befcfea7bb`  
		Last Modified: Wed, 05 Sep 2018 23:45:38 GMT  
		Size: 15.5 MB (15525631 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c52a8cfccf965e72e3f98fdeb0d58195310dbb0493b4335cf843d8189ac2b387`  
		Last Modified: Wed, 05 Sep 2018 23:45:31 GMT  
		Size: 2.9 KB (2885 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95a01e77c34eb1d63fbb6256496de33331bbf27302f7338660dc48e867b2e0cc`  
		Last Modified: Wed, 05 Sep 2018 23:46:39 GMT  
		Size: 9.1 MB (9079905 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ac7436280c5aa12bbcf4495998e26393429c78b06cc8793cbbb77fd5e1a5655`  
		Last Modified: Wed, 05 Sep 2018 23:46:35 GMT  
		Size: 185.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `telegraf:1.6.4`

```console
$ docker pull telegraf@sha256:efeeed2b251953dc7dbb71a1105929116661653369137b607e7b656075dfc5e1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `telegraf:1.6.4` - linux; amd64

```console
$ docker pull telegraf@sha256:cf08ef856940f776da11460dcab1989afab612753d43e51325c3dca3a40cbbc1
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **86.2 MB (86235100 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fc2396b418dbb4c578e4331364b0f345d14e8f4980dfa7ecc53774822846b93d`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Tue, 04 Sep 2018 21:21:24 GMT
ADD file:58d5c21fcabcf1eec94e8676a3b1e51c5fdc2db5c7b866a761f907fa30ede4d8 in / 
# Tue, 04 Sep 2018 21:21:24 GMT
CMD ["bash"]
# Tue, 04 Sep 2018 22:33:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 04 Sep 2018 22:33:43 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 05 Sep 2018 10:29:52 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends iputils-ping snmp procps lm-sensors &&     rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 10:29:55 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Wed, 05 Sep 2018 10:30:04 GMT
ENV TELEGRAF_VERSION=1.6.4
# Wed, 05 Sep 2018 10:30:06 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     gpg --batch --verify telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     dpkg -i telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     rm -f telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb*
# Wed, 05 Sep 2018 10:30:06 GMT
EXPOSE 8092/udp 8094/tcp 8125/udp
# Wed, 05 Sep 2018 10:30:07 GMT
COPY file:7211de01f296351833389a1a1879d450e2cb727d7e2910d5807937f99983edf7 in /entrypoint.sh 
# Wed, 05 Sep 2018 10:30:07 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 05 Sep 2018 10:30:07 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:05d1a5232b461a4b35424129580054caa878cd56f100e34282510bd4b4082e4d`  
		Last Modified: Tue, 04 Sep 2018 21:25:27 GMT  
		Size: 45.3 MB (45310060 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5cee356eda6bfe3a5a229cd3d964e722ade1da4381842b24e943b03a37aec1f2`  
		Last Modified: Tue, 04 Sep 2018 22:52:43 GMT  
		Size: 10.7 MB (10740429 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89d3385f0fd3c0c904ff6e87195bb46f5d9d309e8ddd91bc9b20855d103eeffb`  
		Last Modified: Tue, 04 Sep 2018 22:52:42 GMT  
		Size: 4.3 MB (4336162 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c49a5ea11702830bff3a41967cfa246eec2b9a13952ab9910b6ebd68f05d7ac`  
		Last Modified: Wed, 05 Sep 2018 10:30:36 GMT  
		Size: 16.0 MB (15963792 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de0161bf449d53374a09e29093a7e51c8cea5e67566477f909c36abe0b42e6c3`  
		Last Modified: Wed, 05 Sep 2018 10:30:31 GMT  
		Size: 2.9 KB (2883 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1938ff263e26d5cd3f2f22a0676c5444eef156b856b14cc3681cea1f978a61f5`  
		Last Modified: Wed, 05 Sep 2018 10:31:10 GMT  
		Size: 9.9 MB (9881588 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe4260ac36614e6bda22433ba628523a71db0179458ceb5ff9b0fecf845301da`  
		Last Modified: Wed, 05 Sep 2018 10:31:07 GMT  
		Size: 186.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `telegraf:1.6.4` - linux; arm variant v7

```console
$ docker pull telegraf@sha256:e7572a1dc6906254556af7d98ba4417fc9f903ae6b57fd8368c3d57ed9aae2ab
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **79.5 MB (79549728 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7cab4055f872d90d8e0a279b33866d71b5d3d9dc9151d1aa5321ae9009e70409`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Wed, 05 Sep 2018 12:04:11 GMT
ADD file:bacead0de46aaeea589aade1154ab29f7b53ba32ac884c84a950a3f42bbe2868 in / 
# Wed, 05 Sep 2018 12:04:12 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 12:44:43 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 12:44:52 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 05 Sep 2018 17:01:54 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends iputils-ping snmp procps lm-sensors &&     rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 17:01:59 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Wed, 05 Sep 2018 17:02:25 GMT
ENV TELEGRAF_VERSION=1.6.4
# Wed, 05 Sep 2018 17:02:29 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     gpg --batch --verify telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     dpkg -i telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     rm -f telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb*
# Wed, 05 Sep 2018 17:02:33 GMT
EXPOSE 8092/udp 8094/tcp 8125/udp
# Wed, 05 Sep 2018 17:02:33 GMT
COPY file:7211de01f296351833389a1a1879d450e2cb727d7e2910d5807937f99983edf7 in /entrypoint.sh 
# Wed, 05 Sep 2018 17:02:34 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 05 Sep 2018 17:02:34 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:b0e52c109d408e4b15451c236c7e463334a304fd078c535edbd687b22bfde52c`  
		Last Modified: Wed, 05 Sep 2018 12:12:54 GMT  
		Size: 42.1 MB (42062670 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:215164aeca718c35ec0eb0e6c0105cdcb8ceadce60d8c8ccc9c182f3b9928d32`  
		Last Modified: Wed, 05 Sep 2018 12:56:53 GMT  
		Size: 9.4 MB (9440248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3881d6781569972fa823e9e0c4eab63be9dd636d1ae45ba90a364cfea2ed4f51`  
		Last Modified: Wed, 05 Sep 2018 12:56:51 GMT  
		Size: 3.9 MB (3912963 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b82adee2dc7a18168c891ea9029d68c0b9010bceab2dbc0d3e7dbeea2e26c5b`  
		Last Modified: Wed, 05 Sep 2018 17:03:26 GMT  
		Size: 14.8 MB (14829149 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef97a2ae86efad32f91af9895f063626307de55a0a17c7b656179f9c39552ba1`  
		Last Modified: Wed, 05 Sep 2018 17:03:20 GMT  
		Size: 2.9 KB (2914 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65c8d6118760214147cdccb58964f63ccae29e250d14cc480b5bf5ade8cc9647`  
		Last Modified: Wed, 05 Sep 2018 17:04:01 GMT  
		Size: 9.3 MB (9301599 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ebdef42ef3b0f9b13c9754c24e84a1a462b32c330353870aac08182dd61cb40`  
		Last Modified: Wed, 05 Sep 2018 17:03:55 GMT  
		Size: 185.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `telegraf:1.6.4` - linux; arm64 variant v8

```console
$ docker pull telegraf@sha256:ec38d0e2e5e6a33b06b002040b762f13a2a8455fa2a58398165d217c42c14c1d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **81.5 MB (81510687 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e7d686f90e9fc94bbb68be33b9feee9baf036ee6e63cae3ad680311b85a22f2b`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Wed, 05 Sep 2018 08:50:16 GMT
ADD file:4e01bc399974f6fe22cd2b4421c2e52c52380aa00a770986939071dbc59d734e in / 
# Wed, 05 Sep 2018 08:50:30 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 10:02:26 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 10:02:44 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 05 Sep 2018 23:42:34 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends iputils-ping snmp procps lm-sensors &&     rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 23:42:40 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Wed, 05 Sep 2018 23:43:46 GMT
ENV TELEGRAF_VERSION=1.6.4
# Wed, 05 Sep 2018 23:43:56 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     gpg --batch --verify telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     dpkg -i telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     rm -f telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb*
# Wed, 05 Sep 2018 23:43:57 GMT
EXPOSE 8092/udp 8094/tcp 8125/udp
# Wed, 05 Sep 2018 23:43:59 GMT
COPY file:7211de01f296351833389a1a1879d450e2cb727d7e2910d5807937f99983edf7 in /entrypoint.sh 
# Wed, 05 Sep 2018 23:44:00 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 05 Sep 2018 23:44:02 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:421608e4e92275f9265604523f9299cf5f4bd493a1ea3affd62c265b38fc8823`  
		Last Modified: Wed, 05 Sep 2018 09:06:53 GMT  
		Size: 43.1 MB (43123621 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:185ac5864132647baf5fa26dfe782dbf1645944aca4a8e963d24572bb0b90007`  
		Last Modified: Wed, 05 Sep 2018 10:25:53 GMT  
		Size: 9.7 MB (9690090 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c69d98c830cad0499c1720f09b5ec6e3dde0f144f0b5ab1b555fa37e4eac6623`  
		Last Modified: Wed, 05 Sep 2018 10:25:51 GMT  
		Size: 4.1 MB (4088370 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51f53e935c51dd5e6c8979a5909bc72d8a8fefa16dcf892a98bdf4befcfea7bb`  
		Last Modified: Wed, 05 Sep 2018 23:45:38 GMT  
		Size: 15.5 MB (15525631 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c52a8cfccf965e72e3f98fdeb0d58195310dbb0493b4335cf843d8189ac2b387`  
		Last Modified: Wed, 05 Sep 2018 23:45:31 GMT  
		Size: 2.9 KB (2885 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95a01e77c34eb1d63fbb6256496de33331bbf27302f7338660dc48e867b2e0cc`  
		Last Modified: Wed, 05 Sep 2018 23:46:39 GMT  
		Size: 9.1 MB (9079905 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ac7436280c5aa12bbcf4495998e26393429c78b06cc8793cbbb77fd5e1a5655`  
		Last Modified: Wed, 05 Sep 2018 23:46:35 GMT  
		Size: 185.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `telegraf:1.6.4-alpine`

```console
$ docker pull telegraf@sha256:d1f14fc4e8583d4199a5a813e1a4ef8e854922bc557c517fef0c52c4e7bbd2d5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `telegraf:1.6.4-alpine` - linux; amd64

```console
$ docker pull telegraf@sha256:7fa849764eb9154e65f265adf7886d3f33388f35992418e01933543ccb296c85
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.2 MB (15220894 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dfce4113d15281dac14b2e50cce63cb29b6f61e7e8f485245b19ce21de33cc75`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Tue, 11 Sep 2018 22:19:27 GMT
ADD file:ad486f580145bd2de2441f0846f0bfa62cd1f6d5cb374c28d29ef1ca785a0bbc in / 
# Tue, 11 Sep 2018 22:19:28 GMT
CMD ["/bin/sh"]
# Tue, 11 Sep 2018 22:45:27 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf
# Wed, 12 Sep 2018 03:34:30 GMT
RUN apk add --no-cache iputils ca-certificates net-snmp-tools procps lm_sensors &&     update-ca-certificates
# Wed, 12 Sep 2018 03:34:51 GMT
ENV TELEGRAF_VERSION=1.6.4
# Wed, 12 Sep 2018 03:34:59 GMT
RUN set -ex &&     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf-${TELEGRAF_VERSION}-static_linux_amd64.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf-${TELEGRAF_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify telegraf-${TELEGRAF_VERSION}-static_linux_amd64.tar.gz.asc telegraf-${TELEGRAF_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src /etc/telegraf &&     tar -C /usr/src -xzf telegraf-${TELEGRAF_VERSION}-static_linux_amd64.tar.gz &&     mv /usr/src/telegraf*/telegraf.conf /etc/telegraf/ &&     chmod +x /usr/src/telegraf*/* &&     cp -a /usr/src/telegraf*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Wed, 12 Sep 2018 03:34:59 GMT
EXPOSE 8092/udp 8094/tcp 8125/udp
# Wed, 12 Sep 2018 03:35:00 GMT
COPY file:43e6828e001b57ab465cff8dfd3d30830289afe7ca5944b61641956bfe38cd1c in /entrypoint.sh 
# Wed, 12 Sep 2018 03:35:00 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 12 Sep 2018 03:35:00 GMT
CMD ["telegraf"]
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
	-	`sha256:bfe6adc180ad61c0fc3a7f7d7be119abff4a049d68c17b1360ff4d64931a453c`  
		Last Modified: Wed, 12 Sep 2018 03:35:40 GMT  
		Size: 3.4 MB (3354114 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16151a0c7d938ad2fc6fa45adcfd893a2fdf09a68869adcaf7f5696cfa0e99b8`  
		Last Modified: Wed, 12 Sep 2018 03:36:05 GMT  
		Size: 9.8 MB (9849749 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:259cdfd4498c67bb102d7672cd9a82868b35740c830c67780bf6d8350ada7462`  
		Last Modified: Wed, 12 Sep 2018 03:36:03 GMT  
		Size: 185.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `telegraf:1.6-alpine`

```console
$ docker pull telegraf@sha256:d1f14fc4e8583d4199a5a813e1a4ef8e854922bc557c517fef0c52c4e7bbd2d5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `telegraf:1.6-alpine` - linux; amd64

```console
$ docker pull telegraf@sha256:7fa849764eb9154e65f265adf7886d3f33388f35992418e01933543ccb296c85
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.2 MB (15220894 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dfce4113d15281dac14b2e50cce63cb29b6f61e7e8f485245b19ce21de33cc75`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Tue, 11 Sep 2018 22:19:27 GMT
ADD file:ad486f580145bd2de2441f0846f0bfa62cd1f6d5cb374c28d29ef1ca785a0bbc in / 
# Tue, 11 Sep 2018 22:19:28 GMT
CMD ["/bin/sh"]
# Tue, 11 Sep 2018 22:45:27 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf
# Wed, 12 Sep 2018 03:34:30 GMT
RUN apk add --no-cache iputils ca-certificates net-snmp-tools procps lm_sensors &&     update-ca-certificates
# Wed, 12 Sep 2018 03:34:51 GMT
ENV TELEGRAF_VERSION=1.6.4
# Wed, 12 Sep 2018 03:34:59 GMT
RUN set -ex &&     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf-${TELEGRAF_VERSION}-static_linux_amd64.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf-${TELEGRAF_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify telegraf-${TELEGRAF_VERSION}-static_linux_amd64.tar.gz.asc telegraf-${TELEGRAF_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src /etc/telegraf &&     tar -C /usr/src -xzf telegraf-${TELEGRAF_VERSION}-static_linux_amd64.tar.gz &&     mv /usr/src/telegraf*/telegraf.conf /etc/telegraf/ &&     chmod +x /usr/src/telegraf*/* &&     cp -a /usr/src/telegraf*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Wed, 12 Sep 2018 03:34:59 GMT
EXPOSE 8092/udp 8094/tcp 8125/udp
# Wed, 12 Sep 2018 03:35:00 GMT
COPY file:43e6828e001b57ab465cff8dfd3d30830289afe7ca5944b61641956bfe38cd1c in /entrypoint.sh 
# Wed, 12 Sep 2018 03:35:00 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 12 Sep 2018 03:35:00 GMT
CMD ["telegraf"]
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
	-	`sha256:bfe6adc180ad61c0fc3a7f7d7be119abff4a049d68c17b1360ff4d64931a453c`  
		Last Modified: Wed, 12 Sep 2018 03:35:40 GMT  
		Size: 3.4 MB (3354114 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16151a0c7d938ad2fc6fa45adcfd893a2fdf09a68869adcaf7f5696cfa0e99b8`  
		Last Modified: Wed, 12 Sep 2018 03:36:05 GMT  
		Size: 9.8 MB (9849749 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:259cdfd4498c67bb102d7672cd9a82868b35740c830c67780bf6d8350ada7462`  
		Last Modified: Wed, 12 Sep 2018 03:36:03 GMT  
		Size: 185.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `telegraf:1.7`

```console
$ docker pull telegraf@sha256:9d3fc73882bbdc9f0920789b0cb2f0b7d5f6ad3a42d9ec249cb63006149dc338
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `telegraf:1.7` - linux; amd64

```console
$ docker pull telegraf@sha256:2549a5b9b044d6b01121f04b3b803ef46686fa7fcf4f8fbb3c3217f6f2b7b102
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **86.9 MB (86852941 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:35ba09e54bb8374aaa116ebb4fd46dc0d093792fd654e5d8eb9fdd36e2614f81`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Tue, 04 Sep 2018 21:21:24 GMT
ADD file:58d5c21fcabcf1eec94e8676a3b1e51c5fdc2db5c7b866a761f907fa30ede4d8 in / 
# Tue, 04 Sep 2018 21:21:24 GMT
CMD ["bash"]
# Tue, 04 Sep 2018 22:33:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 04 Sep 2018 22:33:43 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 05 Sep 2018 10:29:52 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends iputils-ping snmp procps lm-sensors &&     rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 10:29:55 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Wed, 05 Sep 2018 10:30:14 GMT
ENV TELEGRAF_VERSION=1.7.4
# Wed, 05 Sep 2018 10:30:17 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     gpg --batch --verify telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     dpkg -i telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     rm -f telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb*
# Wed, 05 Sep 2018 10:30:17 GMT
EXPOSE 8092/udp 8094/tcp 8125/udp
# Wed, 05 Sep 2018 10:30:17 GMT
COPY file:7211de01f296351833389a1a1879d450e2cb727d7e2910d5807937f99983edf7 in /entrypoint.sh 
# Wed, 05 Sep 2018 10:30:17 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 05 Sep 2018 10:30:18 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:05d1a5232b461a4b35424129580054caa878cd56f100e34282510bd4b4082e4d`  
		Last Modified: Tue, 04 Sep 2018 21:25:27 GMT  
		Size: 45.3 MB (45310060 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5cee356eda6bfe3a5a229cd3d964e722ade1da4381842b24e943b03a37aec1f2`  
		Last Modified: Tue, 04 Sep 2018 22:52:43 GMT  
		Size: 10.7 MB (10740429 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89d3385f0fd3c0c904ff6e87195bb46f5d9d309e8ddd91bc9b20855d103eeffb`  
		Last Modified: Tue, 04 Sep 2018 22:52:42 GMT  
		Size: 4.3 MB (4336162 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c49a5ea11702830bff3a41967cfa246eec2b9a13952ab9910b6ebd68f05d7ac`  
		Last Modified: Wed, 05 Sep 2018 10:30:36 GMT  
		Size: 16.0 MB (15963792 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de0161bf449d53374a09e29093a7e51c8cea5e67566477f909c36abe0b42e6c3`  
		Last Modified: Wed, 05 Sep 2018 10:30:31 GMT  
		Size: 2.9 KB (2883 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18206b89b12b5361d18e41668f1da51f33ea1c7d4ef8e9cf70df54aa415621bf`  
		Last Modified: Wed, 05 Sep 2018 10:31:24 GMT  
		Size: 10.5 MB (10499429 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbafc8e6e19f5a693481dcd18e7e4c3039c94f7f8698a850ff629966bb61e99b`  
		Last Modified: Wed, 05 Sep 2018 10:31:20 GMT  
		Size: 186.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `telegraf:1.7` - linux; arm variant v7

```console
$ docker pull telegraf@sha256:c611a5e861d5537ab67b0ec40987177b27da0bb68a3fbe108dd9c5a33c716606
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **80.3 MB (80338296 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5936cd0d4291108644ee5c7c45615f8ee654d0ed5baba613124bb86999ce27ed`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Wed, 05 Sep 2018 12:04:11 GMT
ADD file:bacead0de46aaeea589aade1154ab29f7b53ba32ac884c84a950a3f42bbe2868 in / 
# Wed, 05 Sep 2018 12:04:12 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 12:44:43 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 12:44:52 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 05 Sep 2018 17:01:54 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends iputils-ping snmp procps lm-sensors &&     rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 17:01:59 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Wed, 05 Sep 2018 17:02:55 GMT
ENV TELEGRAF_VERSION=1.7.4
# Wed, 05 Sep 2018 17:02:58 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     gpg --batch --verify telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     dpkg -i telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     rm -f telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb*
# Wed, 05 Sep 2018 17:03:03 GMT
EXPOSE 8092/udp 8094/tcp 8125/udp
# Wed, 05 Sep 2018 17:03:04 GMT
COPY file:7211de01f296351833389a1a1879d450e2cb727d7e2910d5807937f99983edf7 in /entrypoint.sh 
# Wed, 05 Sep 2018 17:03:04 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 05 Sep 2018 17:03:04 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:b0e52c109d408e4b15451c236c7e463334a304fd078c535edbd687b22bfde52c`  
		Last Modified: Wed, 05 Sep 2018 12:12:54 GMT  
		Size: 42.1 MB (42062670 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:215164aeca718c35ec0eb0e6c0105cdcb8ceadce60d8c8ccc9c182f3b9928d32`  
		Last Modified: Wed, 05 Sep 2018 12:56:53 GMT  
		Size: 9.4 MB (9440248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3881d6781569972fa823e9e0c4eab63be9dd636d1ae45ba90a364cfea2ed4f51`  
		Last Modified: Wed, 05 Sep 2018 12:56:51 GMT  
		Size: 3.9 MB (3912963 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b82adee2dc7a18168c891ea9029d68c0b9010bceab2dbc0d3e7dbeea2e26c5b`  
		Last Modified: Wed, 05 Sep 2018 17:03:26 GMT  
		Size: 14.8 MB (14829149 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef97a2ae86efad32f91af9895f063626307de55a0a17c7b656179f9c39552ba1`  
		Last Modified: Wed, 05 Sep 2018 17:03:20 GMT  
		Size: 2.9 KB (2914 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f5729c1dd5504006b1a49cfb28d1a6fe926afb1f3fd3d5fb1c43ea9685b9749`  
		Last Modified: Wed, 05 Sep 2018 17:04:29 GMT  
		Size: 10.1 MB (10090170 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0485f32038075230154b60776e2955c1aa134a23d4d3a46094903fc2ba7c9214`  
		Last Modified: Wed, 05 Sep 2018 17:04:26 GMT  
		Size: 182.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `telegraf:1.7` - linux; arm64 variant v8

```console
$ docker pull telegraf@sha256:c16e4b5cd0791c3c80a313805858676bfe3d310e353b1e2eb92e79d265e6cf89
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **82.3 MB (82298242 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d0a2f5db8799f538f9cc5ed9bbe678d7770b440904035f017b285dd11e2ed7d4`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Wed, 05 Sep 2018 08:50:16 GMT
ADD file:4e01bc399974f6fe22cd2b4421c2e52c52380aa00a770986939071dbc59d734e in / 
# Wed, 05 Sep 2018 08:50:30 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 10:02:26 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 10:02:44 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 05 Sep 2018 23:42:34 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends iputils-ping snmp procps lm-sensors &&     rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 23:42:40 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Wed, 05 Sep 2018 23:44:41 GMT
ENV TELEGRAF_VERSION=1.7.4
# Wed, 05 Sep 2018 23:44:52 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     gpg --batch --verify telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     dpkg -i telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     rm -f telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb*
# Wed, 05 Sep 2018 23:44:54 GMT
EXPOSE 8092/udp 8094/tcp 8125/udp
# Wed, 05 Sep 2018 23:44:55 GMT
COPY file:7211de01f296351833389a1a1879d450e2cb727d7e2910d5807937f99983edf7 in /entrypoint.sh 
# Wed, 05 Sep 2018 23:44:57 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 05 Sep 2018 23:44:58 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:421608e4e92275f9265604523f9299cf5f4bd493a1ea3affd62c265b38fc8823`  
		Last Modified: Wed, 05 Sep 2018 09:06:53 GMT  
		Size: 43.1 MB (43123621 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:185ac5864132647baf5fa26dfe782dbf1645944aca4a8e963d24572bb0b90007`  
		Last Modified: Wed, 05 Sep 2018 10:25:53 GMT  
		Size: 9.7 MB (9690090 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c69d98c830cad0499c1720f09b5ec6e3dde0f144f0b5ab1b555fa37e4eac6623`  
		Last Modified: Wed, 05 Sep 2018 10:25:51 GMT  
		Size: 4.1 MB (4088370 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51f53e935c51dd5e6c8979a5909bc72d8a8fefa16dcf892a98bdf4befcfea7bb`  
		Last Modified: Wed, 05 Sep 2018 23:45:38 GMT  
		Size: 15.5 MB (15525631 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c52a8cfccf965e72e3f98fdeb0d58195310dbb0493b4335cf843d8189ac2b387`  
		Last Modified: Wed, 05 Sep 2018 23:45:31 GMT  
		Size: 2.9 KB (2885 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f81da51c5fa0a49cef2f1b1c245c2c75c06070f47fc67dbb0c94429ef2ce057`  
		Last Modified: Wed, 05 Sep 2018 23:47:40 GMT  
		Size: 9.9 MB (9867461 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4e79c3793320c04c92027e35caca26744252d4eb763e9807de8e704fc2d4237`  
		Last Modified: Wed, 05 Sep 2018 23:47:35 GMT  
		Size: 184.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `telegraf:1.7.4`

```console
$ docker pull telegraf@sha256:9d3fc73882bbdc9f0920789b0cb2f0b7d5f6ad3a42d9ec249cb63006149dc338
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `telegraf:1.7.4` - linux; amd64

```console
$ docker pull telegraf@sha256:2549a5b9b044d6b01121f04b3b803ef46686fa7fcf4f8fbb3c3217f6f2b7b102
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **86.9 MB (86852941 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:35ba09e54bb8374aaa116ebb4fd46dc0d093792fd654e5d8eb9fdd36e2614f81`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Tue, 04 Sep 2018 21:21:24 GMT
ADD file:58d5c21fcabcf1eec94e8676a3b1e51c5fdc2db5c7b866a761f907fa30ede4d8 in / 
# Tue, 04 Sep 2018 21:21:24 GMT
CMD ["bash"]
# Tue, 04 Sep 2018 22:33:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 04 Sep 2018 22:33:43 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 05 Sep 2018 10:29:52 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends iputils-ping snmp procps lm-sensors &&     rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 10:29:55 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Wed, 05 Sep 2018 10:30:14 GMT
ENV TELEGRAF_VERSION=1.7.4
# Wed, 05 Sep 2018 10:30:17 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     gpg --batch --verify telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     dpkg -i telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     rm -f telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb*
# Wed, 05 Sep 2018 10:30:17 GMT
EXPOSE 8092/udp 8094/tcp 8125/udp
# Wed, 05 Sep 2018 10:30:17 GMT
COPY file:7211de01f296351833389a1a1879d450e2cb727d7e2910d5807937f99983edf7 in /entrypoint.sh 
# Wed, 05 Sep 2018 10:30:17 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 05 Sep 2018 10:30:18 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:05d1a5232b461a4b35424129580054caa878cd56f100e34282510bd4b4082e4d`  
		Last Modified: Tue, 04 Sep 2018 21:25:27 GMT  
		Size: 45.3 MB (45310060 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5cee356eda6bfe3a5a229cd3d964e722ade1da4381842b24e943b03a37aec1f2`  
		Last Modified: Tue, 04 Sep 2018 22:52:43 GMT  
		Size: 10.7 MB (10740429 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89d3385f0fd3c0c904ff6e87195bb46f5d9d309e8ddd91bc9b20855d103eeffb`  
		Last Modified: Tue, 04 Sep 2018 22:52:42 GMT  
		Size: 4.3 MB (4336162 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c49a5ea11702830bff3a41967cfa246eec2b9a13952ab9910b6ebd68f05d7ac`  
		Last Modified: Wed, 05 Sep 2018 10:30:36 GMT  
		Size: 16.0 MB (15963792 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de0161bf449d53374a09e29093a7e51c8cea5e67566477f909c36abe0b42e6c3`  
		Last Modified: Wed, 05 Sep 2018 10:30:31 GMT  
		Size: 2.9 KB (2883 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18206b89b12b5361d18e41668f1da51f33ea1c7d4ef8e9cf70df54aa415621bf`  
		Last Modified: Wed, 05 Sep 2018 10:31:24 GMT  
		Size: 10.5 MB (10499429 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbafc8e6e19f5a693481dcd18e7e4c3039c94f7f8698a850ff629966bb61e99b`  
		Last Modified: Wed, 05 Sep 2018 10:31:20 GMT  
		Size: 186.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `telegraf:1.7.4` - linux; arm variant v7

```console
$ docker pull telegraf@sha256:c611a5e861d5537ab67b0ec40987177b27da0bb68a3fbe108dd9c5a33c716606
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **80.3 MB (80338296 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5936cd0d4291108644ee5c7c45615f8ee654d0ed5baba613124bb86999ce27ed`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Wed, 05 Sep 2018 12:04:11 GMT
ADD file:bacead0de46aaeea589aade1154ab29f7b53ba32ac884c84a950a3f42bbe2868 in / 
# Wed, 05 Sep 2018 12:04:12 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 12:44:43 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 12:44:52 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 05 Sep 2018 17:01:54 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends iputils-ping snmp procps lm-sensors &&     rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 17:01:59 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Wed, 05 Sep 2018 17:02:55 GMT
ENV TELEGRAF_VERSION=1.7.4
# Wed, 05 Sep 2018 17:02:58 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     gpg --batch --verify telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     dpkg -i telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     rm -f telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb*
# Wed, 05 Sep 2018 17:03:03 GMT
EXPOSE 8092/udp 8094/tcp 8125/udp
# Wed, 05 Sep 2018 17:03:04 GMT
COPY file:7211de01f296351833389a1a1879d450e2cb727d7e2910d5807937f99983edf7 in /entrypoint.sh 
# Wed, 05 Sep 2018 17:03:04 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 05 Sep 2018 17:03:04 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:b0e52c109d408e4b15451c236c7e463334a304fd078c535edbd687b22bfde52c`  
		Last Modified: Wed, 05 Sep 2018 12:12:54 GMT  
		Size: 42.1 MB (42062670 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:215164aeca718c35ec0eb0e6c0105cdcb8ceadce60d8c8ccc9c182f3b9928d32`  
		Last Modified: Wed, 05 Sep 2018 12:56:53 GMT  
		Size: 9.4 MB (9440248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3881d6781569972fa823e9e0c4eab63be9dd636d1ae45ba90a364cfea2ed4f51`  
		Last Modified: Wed, 05 Sep 2018 12:56:51 GMT  
		Size: 3.9 MB (3912963 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b82adee2dc7a18168c891ea9029d68c0b9010bceab2dbc0d3e7dbeea2e26c5b`  
		Last Modified: Wed, 05 Sep 2018 17:03:26 GMT  
		Size: 14.8 MB (14829149 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef97a2ae86efad32f91af9895f063626307de55a0a17c7b656179f9c39552ba1`  
		Last Modified: Wed, 05 Sep 2018 17:03:20 GMT  
		Size: 2.9 KB (2914 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f5729c1dd5504006b1a49cfb28d1a6fe926afb1f3fd3d5fb1c43ea9685b9749`  
		Last Modified: Wed, 05 Sep 2018 17:04:29 GMT  
		Size: 10.1 MB (10090170 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0485f32038075230154b60776e2955c1aa134a23d4d3a46094903fc2ba7c9214`  
		Last Modified: Wed, 05 Sep 2018 17:04:26 GMT  
		Size: 182.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `telegraf:1.7.4` - linux; arm64 variant v8

```console
$ docker pull telegraf@sha256:c16e4b5cd0791c3c80a313805858676bfe3d310e353b1e2eb92e79d265e6cf89
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **82.3 MB (82298242 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d0a2f5db8799f538f9cc5ed9bbe678d7770b440904035f017b285dd11e2ed7d4`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Wed, 05 Sep 2018 08:50:16 GMT
ADD file:4e01bc399974f6fe22cd2b4421c2e52c52380aa00a770986939071dbc59d734e in / 
# Wed, 05 Sep 2018 08:50:30 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 10:02:26 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 10:02:44 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 05 Sep 2018 23:42:34 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends iputils-ping snmp procps lm-sensors &&     rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 23:42:40 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Wed, 05 Sep 2018 23:44:41 GMT
ENV TELEGRAF_VERSION=1.7.4
# Wed, 05 Sep 2018 23:44:52 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     gpg --batch --verify telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     dpkg -i telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     rm -f telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb*
# Wed, 05 Sep 2018 23:44:54 GMT
EXPOSE 8092/udp 8094/tcp 8125/udp
# Wed, 05 Sep 2018 23:44:55 GMT
COPY file:7211de01f296351833389a1a1879d450e2cb727d7e2910d5807937f99983edf7 in /entrypoint.sh 
# Wed, 05 Sep 2018 23:44:57 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 05 Sep 2018 23:44:58 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:421608e4e92275f9265604523f9299cf5f4bd493a1ea3affd62c265b38fc8823`  
		Last Modified: Wed, 05 Sep 2018 09:06:53 GMT  
		Size: 43.1 MB (43123621 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:185ac5864132647baf5fa26dfe782dbf1645944aca4a8e963d24572bb0b90007`  
		Last Modified: Wed, 05 Sep 2018 10:25:53 GMT  
		Size: 9.7 MB (9690090 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c69d98c830cad0499c1720f09b5ec6e3dde0f144f0b5ab1b555fa37e4eac6623`  
		Last Modified: Wed, 05 Sep 2018 10:25:51 GMT  
		Size: 4.1 MB (4088370 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51f53e935c51dd5e6c8979a5909bc72d8a8fefa16dcf892a98bdf4befcfea7bb`  
		Last Modified: Wed, 05 Sep 2018 23:45:38 GMT  
		Size: 15.5 MB (15525631 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c52a8cfccf965e72e3f98fdeb0d58195310dbb0493b4335cf843d8189ac2b387`  
		Last Modified: Wed, 05 Sep 2018 23:45:31 GMT  
		Size: 2.9 KB (2885 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f81da51c5fa0a49cef2f1b1c245c2c75c06070f47fc67dbb0c94429ef2ce057`  
		Last Modified: Wed, 05 Sep 2018 23:47:40 GMT  
		Size: 9.9 MB (9867461 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4e79c3793320c04c92027e35caca26744252d4eb763e9807de8e704fc2d4237`  
		Last Modified: Wed, 05 Sep 2018 23:47:35 GMT  
		Size: 184.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `telegraf:1.7.4-alpine`

```console
$ docker pull telegraf@sha256:c05da4705f7338b49468bbd53339a691a394afcdb7427fab3b6aaac5c45ce524
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `telegraf:1.7.4-alpine` - linux; amd64

```console
$ docker pull telegraf@sha256:ddf48920c5b890e23f855506b11bcab9bc9dd24de1be2d309c59246c58ddeb7f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.8 MB (15835709 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a496a76b32b38f8c54511784aed8606dc56e889d3d2b107db10ac376a480095e`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Tue, 11 Sep 2018 22:19:27 GMT
ADD file:ad486f580145bd2de2441f0846f0bfa62cd1f6d5cb374c28d29ef1ca785a0bbc in / 
# Tue, 11 Sep 2018 22:19:28 GMT
CMD ["/bin/sh"]
# Tue, 11 Sep 2018 22:45:27 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf
# Wed, 12 Sep 2018 03:34:30 GMT
RUN apk add --no-cache iputils ca-certificates net-snmp-tools procps lm_sensors &&     update-ca-certificates
# Wed, 12 Sep 2018 03:35:14 GMT
ENV TELEGRAF_VERSION=1.7.4
# Wed, 12 Sep 2018 03:35:20 GMT
RUN set -ex &&     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf-${TELEGRAF_VERSION}-static_linux_amd64.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf-${TELEGRAF_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify telegraf-${TELEGRAF_VERSION}-static_linux_amd64.tar.gz.asc telegraf-${TELEGRAF_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src /etc/telegraf &&     tar -C /usr/src -xzf telegraf-${TELEGRAF_VERSION}-static_linux_amd64.tar.gz &&     mv /usr/src/telegraf*/telegraf.conf /etc/telegraf/ &&     chmod +x /usr/src/telegraf*/* &&     cp -a /usr/src/telegraf*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Wed, 12 Sep 2018 03:35:20 GMT
EXPOSE 8092/udp 8094/tcp 8125/udp
# Wed, 12 Sep 2018 03:35:20 GMT
COPY file:43e6828e001b57ab465cff8dfd3d30830289afe7ca5944b61641956bfe38cd1c in /entrypoint.sh 
# Wed, 12 Sep 2018 03:35:21 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 12 Sep 2018 03:35:21 GMT
CMD ["telegraf"]
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
	-	`sha256:bfe6adc180ad61c0fc3a7f7d7be119abff4a049d68c17b1360ff4d64931a453c`  
		Last Modified: Wed, 12 Sep 2018 03:35:40 GMT  
		Size: 3.4 MB (3354114 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:734ed9f3198371652295dfeb34aafc3a8986950844dd775a0f4d9cb006a7de77`  
		Last Modified: Wed, 12 Sep 2018 03:36:30 GMT  
		Size: 10.5 MB (10464567 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:083ad8dc5aea79b4356cbac2e17a72a7dde02e5ec3f5557e0b04d2d7d74cd98d`  
		Last Modified: Wed, 12 Sep 2018 03:36:26 GMT  
		Size: 182.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `telegraf:1.7-alpine`

```console
$ docker pull telegraf@sha256:c05da4705f7338b49468bbd53339a691a394afcdb7427fab3b6aaac5c45ce524
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `telegraf:1.7-alpine` - linux; amd64

```console
$ docker pull telegraf@sha256:ddf48920c5b890e23f855506b11bcab9bc9dd24de1be2d309c59246c58ddeb7f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.8 MB (15835709 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a496a76b32b38f8c54511784aed8606dc56e889d3d2b107db10ac376a480095e`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Tue, 11 Sep 2018 22:19:27 GMT
ADD file:ad486f580145bd2de2441f0846f0bfa62cd1f6d5cb374c28d29ef1ca785a0bbc in / 
# Tue, 11 Sep 2018 22:19:28 GMT
CMD ["/bin/sh"]
# Tue, 11 Sep 2018 22:45:27 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf
# Wed, 12 Sep 2018 03:34:30 GMT
RUN apk add --no-cache iputils ca-certificates net-snmp-tools procps lm_sensors &&     update-ca-certificates
# Wed, 12 Sep 2018 03:35:14 GMT
ENV TELEGRAF_VERSION=1.7.4
# Wed, 12 Sep 2018 03:35:20 GMT
RUN set -ex &&     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf-${TELEGRAF_VERSION}-static_linux_amd64.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf-${TELEGRAF_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify telegraf-${TELEGRAF_VERSION}-static_linux_amd64.tar.gz.asc telegraf-${TELEGRAF_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src /etc/telegraf &&     tar -C /usr/src -xzf telegraf-${TELEGRAF_VERSION}-static_linux_amd64.tar.gz &&     mv /usr/src/telegraf*/telegraf.conf /etc/telegraf/ &&     chmod +x /usr/src/telegraf*/* &&     cp -a /usr/src/telegraf*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Wed, 12 Sep 2018 03:35:20 GMT
EXPOSE 8092/udp 8094/tcp 8125/udp
# Wed, 12 Sep 2018 03:35:20 GMT
COPY file:43e6828e001b57ab465cff8dfd3d30830289afe7ca5944b61641956bfe38cd1c in /entrypoint.sh 
# Wed, 12 Sep 2018 03:35:21 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 12 Sep 2018 03:35:21 GMT
CMD ["telegraf"]
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
	-	`sha256:bfe6adc180ad61c0fc3a7f7d7be119abff4a049d68c17b1360ff4d64931a453c`  
		Last Modified: Wed, 12 Sep 2018 03:35:40 GMT  
		Size: 3.4 MB (3354114 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:734ed9f3198371652295dfeb34aafc3a8986950844dd775a0f4d9cb006a7de77`  
		Last Modified: Wed, 12 Sep 2018 03:36:30 GMT  
		Size: 10.5 MB (10464567 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:083ad8dc5aea79b4356cbac2e17a72a7dde02e5ec3f5557e0b04d2d7d74cd98d`  
		Last Modified: Wed, 12 Sep 2018 03:36:26 GMT  
		Size: 182.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `telegraf:1.8`

```console
$ docker pull telegraf@sha256:fdd67c9ac0234a6e03763d2c2478509fc75fb9feaac24489b0f28955461aed15
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `telegraf:1.8` - linux; amd64

```console
$ docker pull telegraf@sha256:9bf8cc0cad9fb003925f3a67c5286f433fabd0d34b901220a50e207fbd4c7a32
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **90.5 MB (90451369 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d217543072d9ac6b6b5f84d808aa45095c754bfeeb2d896c30a6acf31ea718fa`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Tue, 04 Sep 2018 21:21:24 GMT
ADD file:58d5c21fcabcf1eec94e8676a3b1e51c5fdc2db5c7b866a761f907fa30ede4d8 in / 
# Tue, 04 Sep 2018 21:21:24 GMT
CMD ["bash"]
# Tue, 04 Sep 2018 22:33:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 04 Sep 2018 22:33:43 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 05 Sep 2018 10:29:52 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends iputils-ping snmp procps lm-sensors &&     rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 10:29:55 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Mon, 24 Sep 2018 20:25:35 GMT
ENV TELEGRAF_VERSION=1.8.0
# Mon, 24 Sep 2018 20:25:39 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     gpg --batch --verify telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     dpkg -i telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     rm -f telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb*
# Mon, 24 Sep 2018 20:25:39 GMT
EXPOSE 8092/udp 8094/tcp 8125/udp
# Mon, 24 Sep 2018 20:25:39 GMT
COPY file:7211de01f296351833389a1a1879d450e2cb727d7e2910d5807937f99983edf7 in /entrypoint.sh 
# Mon, 24 Sep 2018 20:25:39 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 24 Sep 2018 20:25:40 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:05d1a5232b461a4b35424129580054caa878cd56f100e34282510bd4b4082e4d`  
		Last Modified: Tue, 04 Sep 2018 21:25:27 GMT  
		Size: 45.3 MB (45310060 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5cee356eda6bfe3a5a229cd3d964e722ade1da4381842b24e943b03a37aec1f2`  
		Last Modified: Tue, 04 Sep 2018 22:52:43 GMT  
		Size: 10.7 MB (10740429 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89d3385f0fd3c0c904ff6e87195bb46f5d9d309e8ddd91bc9b20855d103eeffb`  
		Last Modified: Tue, 04 Sep 2018 22:52:42 GMT  
		Size: 4.3 MB (4336162 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c49a5ea11702830bff3a41967cfa246eec2b9a13952ab9910b6ebd68f05d7ac`  
		Last Modified: Wed, 05 Sep 2018 10:30:36 GMT  
		Size: 16.0 MB (15963792 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de0161bf449d53374a09e29093a7e51c8cea5e67566477f909c36abe0b42e6c3`  
		Last Modified: Wed, 05 Sep 2018 10:30:31 GMT  
		Size: 2.9 KB (2883 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4c7f446d6f506cd21866c397fc3f0c6ea50dfdb2736cb9fa174a2b631dc0452`  
		Last Modified: Mon, 24 Sep 2018 20:26:21 GMT  
		Size: 14.1 MB (14097858 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c98700af4c1f9ed077f54092f184d95bbe6cd56ecd876ae7467429654ce862c`  
		Last Modified: Mon, 24 Sep 2018 20:26:19 GMT  
		Size: 185.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `telegraf:1.8` - linux; arm variant v7

```console
$ docker pull telegraf@sha256:9a04907f574f5fdf7e60c38ab570fb0d5339eaff388b73688b83a3de92f7cfc9
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **83.8 MB (83793627 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3a02d85bae67499b4f6bd37c8648cd7c8dd84801deb22e2391d85f639e2aab9c`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Wed, 05 Sep 2018 12:04:11 GMT
ADD file:bacead0de46aaeea589aade1154ab29f7b53ba32ac884c84a950a3f42bbe2868 in / 
# Wed, 05 Sep 2018 12:04:12 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 12:44:43 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 12:44:52 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 05 Sep 2018 17:01:54 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends iputils-ping snmp procps lm-sensors &&     rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 17:01:59 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Tue, 25 Sep 2018 11:59:28 GMT
ENV TELEGRAF_VERSION=1.8.0
# Tue, 25 Sep 2018 11:59:36 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     gpg --batch --verify telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     dpkg -i telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     rm -f telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb*
# Tue, 25 Sep 2018 11:59:36 GMT
EXPOSE 8092/udp 8094/tcp 8125/udp
# Tue, 25 Sep 2018 11:59:37 GMT
COPY file:7211de01f296351833389a1a1879d450e2cb727d7e2910d5807937f99983edf7 in /entrypoint.sh 
# Tue, 25 Sep 2018 11:59:37 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 25 Sep 2018 11:59:46 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:b0e52c109d408e4b15451c236c7e463334a304fd078c535edbd687b22bfde52c`  
		Last Modified: Wed, 05 Sep 2018 12:12:54 GMT  
		Size: 42.1 MB (42062670 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:215164aeca718c35ec0eb0e6c0105cdcb8ceadce60d8c8ccc9c182f3b9928d32`  
		Last Modified: Wed, 05 Sep 2018 12:56:53 GMT  
		Size: 9.4 MB (9440248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3881d6781569972fa823e9e0c4eab63be9dd636d1ae45ba90a364cfea2ed4f51`  
		Last Modified: Wed, 05 Sep 2018 12:56:51 GMT  
		Size: 3.9 MB (3912963 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b82adee2dc7a18168c891ea9029d68c0b9010bceab2dbc0d3e7dbeea2e26c5b`  
		Last Modified: Wed, 05 Sep 2018 17:03:26 GMT  
		Size: 14.8 MB (14829149 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef97a2ae86efad32f91af9895f063626307de55a0a17c7b656179f9c39552ba1`  
		Last Modified: Wed, 05 Sep 2018 17:03:20 GMT  
		Size: 2.9 KB (2914 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c3ec7b7b94c9ba90ec5aec818d32d7e201b5cc7c383e0ae27846265ff0aad41`  
		Last Modified: Tue, 25 Sep 2018 12:00:09 GMT  
		Size: 13.5 MB (13545497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4755b56f26b0cfd0c931a806927cb6511333528e3cb0ae3adf8d8cdc4693b1fd`  
		Last Modified: Tue, 25 Sep 2018 12:00:04 GMT  
		Size: 186.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `telegraf:1.8` - linux; arm64 variant v8

```console
$ docker pull telegraf@sha256:c2d0f907dac99cf8369f4285aadba8060d572dadf90ce507a8efcce279a188d3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **85.7 MB (85719006 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:50535f934305ad6c91d90386e39c5f2315cbc77d41cdcb655470db71b4d5413f`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Wed, 05 Sep 2018 08:50:16 GMT
ADD file:4e01bc399974f6fe22cd2b4421c2e52c52380aa00a770986939071dbc59d734e in / 
# Wed, 05 Sep 2018 08:50:30 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 10:02:26 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 10:02:44 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 05 Sep 2018 23:42:34 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends iputils-ping snmp procps lm-sensors &&     rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 23:42:40 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Tue, 25 Sep 2018 09:09:54 GMT
ENV TELEGRAF_VERSION=1.8.0
# Tue, 25 Sep 2018 09:10:05 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     gpg --batch --verify telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     dpkg -i telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     rm -f telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb*
# Tue, 25 Sep 2018 09:10:05 GMT
EXPOSE 8092/udp 8094/tcp 8125/udp
# Tue, 25 Sep 2018 09:10:06 GMT
COPY file:7211de01f296351833389a1a1879d450e2cb727d7e2910d5807937f99983edf7 in /entrypoint.sh 
# Tue, 25 Sep 2018 09:10:07 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 25 Sep 2018 09:10:07 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:421608e4e92275f9265604523f9299cf5f4bd493a1ea3affd62c265b38fc8823`  
		Last Modified: Wed, 05 Sep 2018 09:06:53 GMT  
		Size: 43.1 MB (43123621 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:185ac5864132647baf5fa26dfe782dbf1645944aca4a8e963d24572bb0b90007`  
		Last Modified: Wed, 05 Sep 2018 10:25:53 GMT  
		Size: 9.7 MB (9690090 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c69d98c830cad0499c1720f09b5ec6e3dde0f144f0b5ab1b555fa37e4eac6623`  
		Last Modified: Wed, 05 Sep 2018 10:25:51 GMT  
		Size: 4.1 MB (4088370 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51f53e935c51dd5e6c8979a5909bc72d8a8fefa16dcf892a98bdf4befcfea7bb`  
		Last Modified: Wed, 05 Sep 2018 23:45:38 GMT  
		Size: 15.5 MB (15525631 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c52a8cfccf965e72e3f98fdeb0d58195310dbb0493b4335cf843d8189ac2b387`  
		Last Modified: Wed, 05 Sep 2018 23:45:31 GMT  
		Size: 2.9 KB (2885 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f82e3f5d20a3c1c506c30fd9b4aa308252cf687cb2884a1235fd4ce81b28b5c`  
		Last Modified: Tue, 25 Sep 2018 09:10:32 GMT  
		Size: 13.3 MB (13288223 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03fd0bb589a740752ddeaee5d65d8fd61e1f8cc788459edd087bf095a5f36216`  
		Last Modified: Tue, 25 Sep 2018 09:10:27 GMT  
		Size: 186.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `telegraf:1.8.0`

```console
$ docker pull telegraf@sha256:fdd67c9ac0234a6e03763d2c2478509fc75fb9feaac24489b0f28955461aed15
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `telegraf:1.8.0` - linux; amd64

```console
$ docker pull telegraf@sha256:9bf8cc0cad9fb003925f3a67c5286f433fabd0d34b901220a50e207fbd4c7a32
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **90.5 MB (90451369 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d217543072d9ac6b6b5f84d808aa45095c754bfeeb2d896c30a6acf31ea718fa`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Tue, 04 Sep 2018 21:21:24 GMT
ADD file:58d5c21fcabcf1eec94e8676a3b1e51c5fdc2db5c7b866a761f907fa30ede4d8 in / 
# Tue, 04 Sep 2018 21:21:24 GMT
CMD ["bash"]
# Tue, 04 Sep 2018 22:33:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 04 Sep 2018 22:33:43 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 05 Sep 2018 10:29:52 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends iputils-ping snmp procps lm-sensors &&     rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 10:29:55 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Mon, 24 Sep 2018 20:25:35 GMT
ENV TELEGRAF_VERSION=1.8.0
# Mon, 24 Sep 2018 20:25:39 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     gpg --batch --verify telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     dpkg -i telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     rm -f telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb*
# Mon, 24 Sep 2018 20:25:39 GMT
EXPOSE 8092/udp 8094/tcp 8125/udp
# Mon, 24 Sep 2018 20:25:39 GMT
COPY file:7211de01f296351833389a1a1879d450e2cb727d7e2910d5807937f99983edf7 in /entrypoint.sh 
# Mon, 24 Sep 2018 20:25:39 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 24 Sep 2018 20:25:40 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:05d1a5232b461a4b35424129580054caa878cd56f100e34282510bd4b4082e4d`  
		Last Modified: Tue, 04 Sep 2018 21:25:27 GMT  
		Size: 45.3 MB (45310060 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5cee356eda6bfe3a5a229cd3d964e722ade1da4381842b24e943b03a37aec1f2`  
		Last Modified: Tue, 04 Sep 2018 22:52:43 GMT  
		Size: 10.7 MB (10740429 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89d3385f0fd3c0c904ff6e87195bb46f5d9d309e8ddd91bc9b20855d103eeffb`  
		Last Modified: Tue, 04 Sep 2018 22:52:42 GMT  
		Size: 4.3 MB (4336162 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c49a5ea11702830bff3a41967cfa246eec2b9a13952ab9910b6ebd68f05d7ac`  
		Last Modified: Wed, 05 Sep 2018 10:30:36 GMT  
		Size: 16.0 MB (15963792 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de0161bf449d53374a09e29093a7e51c8cea5e67566477f909c36abe0b42e6c3`  
		Last Modified: Wed, 05 Sep 2018 10:30:31 GMT  
		Size: 2.9 KB (2883 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4c7f446d6f506cd21866c397fc3f0c6ea50dfdb2736cb9fa174a2b631dc0452`  
		Last Modified: Mon, 24 Sep 2018 20:26:21 GMT  
		Size: 14.1 MB (14097858 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c98700af4c1f9ed077f54092f184d95bbe6cd56ecd876ae7467429654ce862c`  
		Last Modified: Mon, 24 Sep 2018 20:26:19 GMT  
		Size: 185.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `telegraf:1.8.0` - linux; arm variant v7

```console
$ docker pull telegraf@sha256:9a04907f574f5fdf7e60c38ab570fb0d5339eaff388b73688b83a3de92f7cfc9
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **83.8 MB (83793627 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3a02d85bae67499b4f6bd37c8648cd7c8dd84801deb22e2391d85f639e2aab9c`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Wed, 05 Sep 2018 12:04:11 GMT
ADD file:bacead0de46aaeea589aade1154ab29f7b53ba32ac884c84a950a3f42bbe2868 in / 
# Wed, 05 Sep 2018 12:04:12 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 12:44:43 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 12:44:52 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 05 Sep 2018 17:01:54 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends iputils-ping snmp procps lm-sensors &&     rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 17:01:59 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Tue, 25 Sep 2018 11:59:28 GMT
ENV TELEGRAF_VERSION=1.8.0
# Tue, 25 Sep 2018 11:59:36 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     gpg --batch --verify telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     dpkg -i telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     rm -f telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb*
# Tue, 25 Sep 2018 11:59:36 GMT
EXPOSE 8092/udp 8094/tcp 8125/udp
# Tue, 25 Sep 2018 11:59:37 GMT
COPY file:7211de01f296351833389a1a1879d450e2cb727d7e2910d5807937f99983edf7 in /entrypoint.sh 
# Tue, 25 Sep 2018 11:59:37 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 25 Sep 2018 11:59:46 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:b0e52c109d408e4b15451c236c7e463334a304fd078c535edbd687b22bfde52c`  
		Last Modified: Wed, 05 Sep 2018 12:12:54 GMT  
		Size: 42.1 MB (42062670 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:215164aeca718c35ec0eb0e6c0105cdcb8ceadce60d8c8ccc9c182f3b9928d32`  
		Last Modified: Wed, 05 Sep 2018 12:56:53 GMT  
		Size: 9.4 MB (9440248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3881d6781569972fa823e9e0c4eab63be9dd636d1ae45ba90a364cfea2ed4f51`  
		Last Modified: Wed, 05 Sep 2018 12:56:51 GMT  
		Size: 3.9 MB (3912963 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b82adee2dc7a18168c891ea9029d68c0b9010bceab2dbc0d3e7dbeea2e26c5b`  
		Last Modified: Wed, 05 Sep 2018 17:03:26 GMT  
		Size: 14.8 MB (14829149 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef97a2ae86efad32f91af9895f063626307de55a0a17c7b656179f9c39552ba1`  
		Last Modified: Wed, 05 Sep 2018 17:03:20 GMT  
		Size: 2.9 KB (2914 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c3ec7b7b94c9ba90ec5aec818d32d7e201b5cc7c383e0ae27846265ff0aad41`  
		Last Modified: Tue, 25 Sep 2018 12:00:09 GMT  
		Size: 13.5 MB (13545497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4755b56f26b0cfd0c931a806927cb6511333528e3cb0ae3adf8d8cdc4693b1fd`  
		Last Modified: Tue, 25 Sep 2018 12:00:04 GMT  
		Size: 186.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `telegraf:1.8.0` - linux; arm64 variant v8

```console
$ docker pull telegraf@sha256:c2d0f907dac99cf8369f4285aadba8060d572dadf90ce507a8efcce279a188d3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **85.7 MB (85719006 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:50535f934305ad6c91d90386e39c5f2315cbc77d41cdcb655470db71b4d5413f`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Wed, 05 Sep 2018 08:50:16 GMT
ADD file:4e01bc399974f6fe22cd2b4421c2e52c52380aa00a770986939071dbc59d734e in / 
# Wed, 05 Sep 2018 08:50:30 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 10:02:26 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 10:02:44 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 05 Sep 2018 23:42:34 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends iputils-ping snmp procps lm-sensors &&     rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 23:42:40 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Tue, 25 Sep 2018 09:09:54 GMT
ENV TELEGRAF_VERSION=1.8.0
# Tue, 25 Sep 2018 09:10:05 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     gpg --batch --verify telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     dpkg -i telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     rm -f telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb*
# Tue, 25 Sep 2018 09:10:05 GMT
EXPOSE 8092/udp 8094/tcp 8125/udp
# Tue, 25 Sep 2018 09:10:06 GMT
COPY file:7211de01f296351833389a1a1879d450e2cb727d7e2910d5807937f99983edf7 in /entrypoint.sh 
# Tue, 25 Sep 2018 09:10:07 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 25 Sep 2018 09:10:07 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:421608e4e92275f9265604523f9299cf5f4bd493a1ea3affd62c265b38fc8823`  
		Last Modified: Wed, 05 Sep 2018 09:06:53 GMT  
		Size: 43.1 MB (43123621 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:185ac5864132647baf5fa26dfe782dbf1645944aca4a8e963d24572bb0b90007`  
		Last Modified: Wed, 05 Sep 2018 10:25:53 GMT  
		Size: 9.7 MB (9690090 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c69d98c830cad0499c1720f09b5ec6e3dde0f144f0b5ab1b555fa37e4eac6623`  
		Last Modified: Wed, 05 Sep 2018 10:25:51 GMT  
		Size: 4.1 MB (4088370 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51f53e935c51dd5e6c8979a5909bc72d8a8fefa16dcf892a98bdf4befcfea7bb`  
		Last Modified: Wed, 05 Sep 2018 23:45:38 GMT  
		Size: 15.5 MB (15525631 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c52a8cfccf965e72e3f98fdeb0d58195310dbb0493b4335cf843d8189ac2b387`  
		Last Modified: Wed, 05 Sep 2018 23:45:31 GMT  
		Size: 2.9 KB (2885 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f82e3f5d20a3c1c506c30fd9b4aa308252cf687cb2884a1235fd4ce81b28b5c`  
		Last Modified: Tue, 25 Sep 2018 09:10:32 GMT  
		Size: 13.3 MB (13288223 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03fd0bb589a740752ddeaee5d65d8fd61e1f8cc788459edd087bf095a5f36216`  
		Last Modified: Tue, 25 Sep 2018 09:10:27 GMT  
		Size: 186.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `telegraf:1.8.0-alpine`

```console
$ docker pull telegraf@sha256:95a58daa04e3fe8bfd1ac712e0111660ed93e96cefca9e07e92a7af1cb44fe0d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `telegraf:1.8.0-alpine` - linux; amd64

```console
$ docker pull telegraf@sha256:a51fd8797c5abf98b42d421a84cadb909317c85c3c3792fcc46caf2bfd874940
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **19.4 MB (19438351 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:648f365d05167dc6daf8bb0a407664aafa2e8e918aeb016b00cfe3ed137c18c3`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Tue, 11 Sep 2018 22:19:27 GMT
ADD file:ad486f580145bd2de2441f0846f0bfa62cd1f6d5cb374c28d29ef1ca785a0bbc in / 
# Tue, 11 Sep 2018 22:19:28 GMT
CMD ["/bin/sh"]
# Tue, 11 Sep 2018 22:45:27 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf
# Wed, 12 Sep 2018 03:34:30 GMT
RUN apk add --no-cache iputils ca-certificates net-snmp-tools procps lm_sensors &&     update-ca-certificates
# Mon, 24 Sep 2018 20:25:55 GMT
ENV TELEGRAF_VERSION=1.8.0
# Mon, 24 Sep 2018 20:26:01 GMT
RUN set -ex &&     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf-${TELEGRAF_VERSION}-static_linux_amd64.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf-${TELEGRAF_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify telegraf-${TELEGRAF_VERSION}-static_linux_amd64.tar.gz.asc telegraf-${TELEGRAF_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src /etc/telegraf &&     tar -C /usr/src -xzf telegraf-${TELEGRAF_VERSION}-static_linux_amd64.tar.gz &&     mv /usr/src/telegraf*/telegraf.conf /etc/telegraf/ &&     chmod +x /usr/src/telegraf*/* &&     cp -a /usr/src/telegraf*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Mon, 24 Sep 2018 20:26:01 GMT
EXPOSE 8092/udp 8094/tcp 8125/udp
# Mon, 24 Sep 2018 20:26:01 GMT
COPY file:43e6828e001b57ab465cff8dfd3d30830289afe7ca5944b61641956bfe38cd1c in /entrypoint.sh 
# Mon, 24 Sep 2018 20:26:02 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 24 Sep 2018 20:26:02 GMT
CMD ["telegraf"]
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
	-	`sha256:bfe6adc180ad61c0fc3a7f7d7be119abff4a049d68c17b1360ff4d64931a453c`  
		Last Modified: Wed, 12 Sep 2018 03:35:40 GMT  
		Size: 3.4 MB (3354114 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6eb20867ff21837e33159dd324fc66a81a6249d04e9c6ef854961061d7f65ddc`  
		Last Modified: Mon, 24 Sep 2018 20:26:57 GMT  
		Size: 14.1 MB (14067207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2473d32f429af2a12555a8fc334356b6a3b03af68051d16e6dc19275a0e4263c`  
		Last Modified: Mon, 24 Sep 2018 20:26:54 GMT  
		Size: 184.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `telegraf:1.8-alpine`

```console
$ docker pull telegraf@sha256:95a58daa04e3fe8bfd1ac712e0111660ed93e96cefca9e07e92a7af1cb44fe0d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `telegraf:1.8-alpine` - linux; amd64

```console
$ docker pull telegraf@sha256:a51fd8797c5abf98b42d421a84cadb909317c85c3c3792fcc46caf2bfd874940
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **19.4 MB (19438351 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:648f365d05167dc6daf8bb0a407664aafa2e8e918aeb016b00cfe3ed137c18c3`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Tue, 11 Sep 2018 22:19:27 GMT
ADD file:ad486f580145bd2de2441f0846f0bfa62cd1f6d5cb374c28d29ef1ca785a0bbc in / 
# Tue, 11 Sep 2018 22:19:28 GMT
CMD ["/bin/sh"]
# Tue, 11 Sep 2018 22:45:27 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf
# Wed, 12 Sep 2018 03:34:30 GMT
RUN apk add --no-cache iputils ca-certificates net-snmp-tools procps lm_sensors &&     update-ca-certificates
# Mon, 24 Sep 2018 20:25:55 GMT
ENV TELEGRAF_VERSION=1.8.0
# Mon, 24 Sep 2018 20:26:01 GMT
RUN set -ex &&     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf-${TELEGRAF_VERSION}-static_linux_amd64.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf-${TELEGRAF_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify telegraf-${TELEGRAF_VERSION}-static_linux_amd64.tar.gz.asc telegraf-${TELEGRAF_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src /etc/telegraf &&     tar -C /usr/src -xzf telegraf-${TELEGRAF_VERSION}-static_linux_amd64.tar.gz &&     mv /usr/src/telegraf*/telegraf.conf /etc/telegraf/ &&     chmod +x /usr/src/telegraf*/* &&     cp -a /usr/src/telegraf*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Mon, 24 Sep 2018 20:26:01 GMT
EXPOSE 8092/udp 8094/tcp 8125/udp
# Mon, 24 Sep 2018 20:26:01 GMT
COPY file:43e6828e001b57ab465cff8dfd3d30830289afe7ca5944b61641956bfe38cd1c in /entrypoint.sh 
# Mon, 24 Sep 2018 20:26:02 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 24 Sep 2018 20:26:02 GMT
CMD ["telegraf"]
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
	-	`sha256:bfe6adc180ad61c0fc3a7f7d7be119abff4a049d68c17b1360ff4d64931a453c`  
		Last Modified: Wed, 12 Sep 2018 03:35:40 GMT  
		Size: 3.4 MB (3354114 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6eb20867ff21837e33159dd324fc66a81a6249d04e9c6ef854961061d7f65ddc`  
		Last Modified: Mon, 24 Sep 2018 20:26:57 GMT  
		Size: 14.1 MB (14067207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2473d32f429af2a12555a8fc334356b6a3b03af68051d16e6dc19275a0e4263c`  
		Last Modified: Mon, 24 Sep 2018 20:26:54 GMT  
		Size: 184.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `telegraf:alpine`

```console
$ docker pull telegraf@sha256:95a58daa04e3fe8bfd1ac712e0111660ed93e96cefca9e07e92a7af1cb44fe0d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `telegraf:alpine` - linux; amd64

```console
$ docker pull telegraf@sha256:a51fd8797c5abf98b42d421a84cadb909317c85c3c3792fcc46caf2bfd874940
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **19.4 MB (19438351 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:648f365d05167dc6daf8bb0a407664aafa2e8e918aeb016b00cfe3ed137c18c3`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Tue, 11 Sep 2018 22:19:27 GMT
ADD file:ad486f580145bd2de2441f0846f0bfa62cd1f6d5cb374c28d29ef1ca785a0bbc in / 
# Tue, 11 Sep 2018 22:19:28 GMT
CMD ["/bin/sh"]
# Tue, 11 Sep 2018 22:45:27 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf
# Wed, 12 Sep 2018 03:34:30 GMT
RUN apk add --no-cache iputils ca-certificates net-snmp-tools procps lm_sensors &&     update-ca-certificates
# Mon, 24 Sep 2018 20:25:55 GMT
ENV TELEGRAF_VERSION=1.8.0
# Mon, 24 Sep 2018 20:26:01 GMT
RUN set -ex &&     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf-${TELEGRAF_VERSION}-static_linux_amd64.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf-${TELEGRAF_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify telegraf-${TELEGRAF_VERSION}-static_linux_amd64.tar.gz.asc telegraf-${TELEGRAF_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src /etc/telegraf &&     tar -C /usr/src -xzf telegraf-${TELEGRAF_VERSION}-static_linux_amd64.tar.gz &&     mv /usr/src/telegraf*/telegraf.conf /etc/telegraf/ &&     chmod +x /usr/src/telegraf*/* &&     cp -a /usr/src/telegraf*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Mon, 24 Sep 2018 20:26:01 GMT
EXPOSE 8092/udp 8094/tcp 8125/udp
# Mon, 24 Sep 2018 20:26:01 GMT
COPY file:43e6828e001b57ab465cff8dfd3d30830289afe7ca5944b61641956bfe38cd1c in /entrypoint.sh 
# Mon, 24 Sep 2018 20:26:02 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 24 Sep 2018 20:26:02 GMT
CMD ["telegraf"]
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
	-	`sha256:bfe6adc180ad61c0fc3a7f7d7be119abff4a049d68c17b1360ff4d64931a453c`  
		Last Modified: Wed, 12 Sep 2018 03:35:40 GMT  
		Size: 3.4 MB (3354114 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6eb20867ff21837e33159dd324fc66a81a6249d04e9c6ef854961061d7f65ddc`  
		Last Modified: Mon, 24 Sep 2018 20:26:57 GMT  
		Size: 14.1 MB (14067207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2473d32f429af2a12555a8fc334356b6a3b03af68051d16e6dc19275a0e4263c`  
		Last Modified: Mon, 24 Sep 2018 20:26:54 GMT  
		Size: 184.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `telegraf:latest`

```console
$ docker pull telegraf@sha256:c12d8d9c137857c639601328f0ff9bdcbeb95d9648b593fe0f79a53d8e9683ce
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `telegraf:latest` - linux; amd64

```console
$ docker pull telegraf@sha256:9bf8cc0cad9fb003925f3a67c5286f433fabd0d34b901220a50e207fbd4c7a32
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **90.5 MB (90451369 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d217543072d9ac6b6b5f84d808aa45095c754bfeeb2d896c30a6acf31ea718fa`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Tue, 04 Sep 2018 21:21:24 GMT
ADD file:58d5c21fcabcf1eec94e8676a3b1e51c5fdc2db5c7b866a761f907fa30ede4d8 in / 
# Tue, 04 Sep 2018 21:21:24 GMT
CMD ["bash"]
# Tue, 04 Sep 2018 22:33:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 04 Sep 2018 22:33:43 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 05 Sep 2018 10:29:52 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends iputils-ping snmp procps lm-sensors &&     rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 10:29:55 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Mon, 24 Sep 2018 20:25:35 GMT
ENV TELEGRAF_VERSION=1.8.0
# Mon, 24 Sep 2018 20:25:39 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     gpg --batch --verify telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     dpkg -i telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     rm -f telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb*
# Mon, 24 Sep 2018 20:25:39 GMT
EXPOSE 8092/udp 8094/tcp 8125/udp
# Mon, 24 Sep 2018 20:25:39 GMT
COPY file:7211de01f296351833389a1a1879d450e2cb727d7e2910d5807937f99983edf7 in /entrypoint.sh 
# Mon, 24 Sep 2018 20:25:39 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 24 Sep 2018 20:25:40 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:05d1a5232b461a4b35424129580054caa878cd56f100e34282510bd4b4082e4d`  
		Last Modified: Tue, 04 Sep 2018 21:25:27 GMT  
		Size: 45.3 MB (45310060 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5cee356eda6bfe3a5a229cd3d964e722ade1da4381842b24e943b03a37aec1f2`  
		Last Modified: Tue, 04 Sep 2018 22:52:43 GMT  
		Size: 10.7 MB (10740429 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89d3385f0fd3c0c904ff6e87195bb46f5d9d309e8ddd91bc9b20855d103eeffb`  
		Last Modified: Tue, 04 Sep 2018 22:52:42 GMT  
		Size: 4.3 MB (4336162 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c49a5ea11702830bff3a41967cfa246eec2b9a13952ab9910b6ebd68f05d7ac`  
		Last Modified: Wed, 05 Sep 2018 10:30:36 GMT  
		Size: 16.0 MB (15963792 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de0161bf449d53374a09e29093a7e51c8cea5e67566477f909c36abe0b42e6c3`  
		Last Modified: Wed, 05 Sep 2018 10:30:31 GMT  
		Size: 2.9 KB (2883 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4c7f446d6f506cd21866c397fc3f0c6ea50dfdb2736cb9fa174a2b631dc0452`  
		Last Modified: Mon, 24 Sep 2018 20:26:21 GMT  
		Size: 14.1 MB (14097858 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c98700af4c1f9ed077f54092f184d95bbe6cd56ecd876ae7467429654ce862c`  
		Last Modified: Mon, 24 Sep 2018 20:26:19 GMT  
		Size: 185.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `telegraf:latest` - linux; arm64 variant v8

```console
$ docker pull telegraf@sha256:c2d0f907dac99cf8369f4285aadba8060d572dadf90ce507a8efcce279a188d3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **85.7 MB (85719006 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:50535f934305ad6c91d90386e39c5f2315cbc77d41cdcb655470db71b4d5413f`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Wed, 05 Sep 2018 08:50:16 GMT
ADD file:4e01bc399974f6fe22cd2b4421c2e52c52380aa00a770986939071dbc59d734e in / 
# Wed, 05 Sep 2018 08:50:30 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 10:02:26 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 10:02:44 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 05 Sep 2018 23:42:34 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends iputils-ping snmp procps lm-sensors &&     rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 23:42:40 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Tue, 25 Sep 2018 09:09:54 GMT
ENV TELEGRAF_VERSION=1.8.0
# Tue, 25 Sep 2018 09:10:05 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     gpg --batch --verify telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     dpkg -i telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     rm -f telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb*
# Tue, 25 Sep 2018 09:10:05 GMT
EXPOSE 8092/udp 8094/tcp 8125/udp
# Tue, 25 Sep 2018 09:10:06 GMT
COPY file:7211de01f296351833389a1a1879d450e2cb727d7e2910d5807937f99983edf7 in /entrypoint.sh 
# Tue, 25 Sep 2018 09:10:07 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 25 Sep 2018 09:10:07 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:421608e4e92275f9265604523f9299cf5f4bd493a1ea3affd62c265b38fc8823`  
		Last Modified: Wed, 05 Sep 2018 09:06:53 GMT  
		Size: 43.1 MB (43123621 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:185ac5864132647baf5fa26dfe782dbf1645944aca4a8e963d24572bb0b90007`  
		Last Modified: Wed, 05 Sep 2018 10:25:53 GMT  
		Size: 9.7 MB (9690090 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c69d98c830cad0499c1720f09b5ec6e3dde0f144f0b5ab1b555fa37e4eac6623`  
		Last Modified: Wed, 05 Sep 2018 10:25:51 GMT  
		Size: 4.1 MB (4088370 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51f53e935c51dd5e6c8979a5909bc72d8a8fefa16dcf892a98bdf4befcfea7bb`  
		Last Modified: Wed, 05 Sep 2018 23:45:38 GMT  
		Size: 15.5 MB (15525631 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c52a8cfccf965e72e3f98fdeb0d58195310dbb0493b4335cf843d8189ac2b387`  
		Last Modified: Wed, 05 Sep 2018 23:45:31 GMT  
		Size: 2.9 KB (2885 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f82e3f5d20a3c1c506c30fd9b4aa308252cf687cb2884a1235fd4ce81b28b5c`  
		Last Modified: Tue, 25 Sep 2018 09:10:32 GMT  
		Size: 13.3 MB (13288223 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03fd0bb589a740752ddeaee5d65d8fd61e1f8cc788459edd087bf095a5f36216`  
		Last Modified: Tue, 25 Sep 2018 09:10:27 GMT  
		Size: 186.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
