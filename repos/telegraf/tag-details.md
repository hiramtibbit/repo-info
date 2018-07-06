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
$ docker pull telegraf@sha256:808db1873e3e98e83693954316b7c3643094fed90b5fbdeaa4b596d08e64a07e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `telegraf:1.5` - linux; amd64

```console
$ docker pull telegraf@sha256:435b1925621c921c6bd9418d45dec8773082a736a939defc8524c8c712020584
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **85.5 MB (85511616 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b26fb77f80e06fd509b3909c099436f040380d3f4c104ad552ad186ef17fce65`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Tue, 26 Jun 2018 21:24:58 GMT
ADD file:f21d7c14104d5d9fa99f271177e765a3472f5a69398bb78f34f7401e9b2df837 in / 
# Tue, 26 Jun 2018 21:24:58 GMT
CMD ["bash"]
# Tue, 26 Jun 2018 22:16:40 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 26 Jun 2018 22:16:48 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 27 Jun 2018 04:14:22 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends iputils-ping snmp procps &&     rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 04:14:25 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Wed, 27 Jun 2018 04:14:26 GMT
ENV TELEGRAF_VERSION=1.5.3
# Wed, 27 Jun 2018 04:14:30 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     gpg --batch --verify telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     dpkg -i telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     rm -f telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb*
# Wed, 27 Jun 2018 04:14:31 GMT
EXPOSE 8092/udp 8094/tcp 8125/udp
# Wed, 27 Jun 2018 04:14:31 GMT
COPY file:7211de01f296351833389a1a1879d450e2cb727d7e2910d5807937f99983edf7 in /entrypoint.sh 
# Wed, 27 Jun 2018 04:14:31 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 27 Jun 2018 04:14:31 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:0bd44ff9c2cf1129ef8cea689b3e10e6498f64d2f8d5532caae55841b474bf3a`  
		Last Modified: Tue, 26 Jun 2018 21:36:36 GMT  
		Size: 45.3 MB (45319224 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:047670ddbd2a37cb7940be99332555b0a9f4f2531802e50c06128c340ccd0c0d`  
		Last Modified: Tue, 26 Jun 2018 22:30:05 GMT  
		Size: 10.8 MB (10774053 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea7d5dc8943870545f4eecc6b06b3fd6b12b987dc99f0bbcfee8f132044fc9e2`  
		Last Modified: Tue, 26 Jun 2018 22:30:03 GMT  
		Size: 4.3 MB (4336270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b722436a7ba3b685a185d347f736acacfcc5473d051fdc084a60afeead4e62a8`  
		Last Modified: Wed, 27 Jun 2018 04:15:28 GMT  
		Size: 15.6 MB (15587454 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6ee0dc7fcf815172eaf007ca9432a354478ea1dccd5966c34cb043847cb4991`  
		Last Modified: Wed, 27 Jun 2018 04:15:23 GMT  
		Size: 2.9 KB (2900 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f4959f709194cdb665b244025ef6aabbcde5062d7091664c9f9da88f3dce875`  
		Last Modified: Wed, 27 Jun 2018 04:15:26 GMT  
		Size: 9.5 MB (9491530 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9fc0c4417e6682ea482b1f316258c4b85ae0242d38ef5774f617bf308fade19`  
		Last Modified: Wed, 27 Jun 2018 04:15:25 GMT  
		Size: 185.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `telegraf:1.5` - linux; arm variant v7

```console
$ docker pull telegraf@sha256:421abb98bb44bb1286ac378b29bc9b918f65ee371d5cb23c33cb72962c8944ee
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **78.8 MB (78849876 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0e36b45ba5a5a5848b7fd8090575e86e265d38a0b1a8cee22bea80230e5cdcf4`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Wed, 27 Jun 2018 12:03:26 GMT
ADD file:b928e6adeb71af1928fc7b8e0ff4770e5521eebf544a3b27f9736ac86e7a0ffa in / 
# Wed, 27 Jun 2018 12:03:27 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 12:47:41 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 12:47:48 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 27 Jun 2018 15:52:19 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends iputils-ping snmp procps &&     rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 15:52:24 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Wed, 27 Jun 2018 15:52:24 GMT
ENV TELEGRAF_VERSION=1.5.3
# Wed, 27 Jun 2018 15:52:29 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     gpg --batch --verify telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     dpkg -i telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     rm -f telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb*
# Wed, 27 Jun 2018 15:52:29 GMT
EXPOSE 8092/udp 8094/tcp 8125/udp
# Wed, 27 Jun 2018 15:52:30 GMT
COPY file:7211de01f296351833389a1a1879d450e2cb727d7e2910d5807937f99983edf7 in /entrypoint.sh 
# Wed, 27 Jun 2018 15:52:31 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 27 Jun 2018 15:52:31 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:c675459249e5e2b5c2119c5965490fb00918a71cd19ba6a70e1c14ea0366cc9a`  
		Last Modified: Wed, 27 Jun 2018 12:12:46 GMT  
		Size: 42.1 MB (42062253 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a87675d75ec387a55e1b055dfadf15fd7137586ee9acf9be9b2a4840e4001b2a`  
		Last Modified: Wed, 27 Jun 2018 12:58:52 GMT  
		Size: 9.5 MB (9472634 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f55e83b4f681428c2fb1542a44d864d0d2f78d235199a33824985049fd42bb5`  
		Last Modified: Wed, 27 Jun 2018 12:58:50 GMT  
		Size: 3.9 MB (3913173 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d833c61f9b3a119781fe7adfa5eba885a0ab79225cd2588bd742c4070092790`  
		Last Modified: Wed, 27 Jun 2018 15:53:20 GMT  
		Size: 14.5 MB (14465663 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea6fd3757f57f08c55b03f5b69442def4aa297a168ecb7313bafd104255e317d`  
		Last Modified: Wed, 27 Jun 2018 15:53:15 GMT  
		Size: 2.9 KB (2915 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3743c32a9c1b99777eaec9f2173806622ff1fceaa8b0cae6084909e3c4ed4f2`  
		Last Modified: Wed, 27 Jun 2018 15:53:18 GMT  
		Size: 8.9 MB (8933053 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee20fcf49f5da79294aa664c070e6582259f2a4703a2993d7d83a4648965e9d7`  
		Last Modified: Wed, 27 Jun 2018 15:53:14 GMT  
		Size: 185.0 B  
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
$ docker pull telegraf@sha256:808db1873e3e98e83693954316b7c3643094fed90b5fbdeaa4b596d08e64a07e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `telegraf:1.5.3` - linux; amd64

```console
$ docker pull telegraf@sha256:435b1925621c921c6bd9418d45dec8773082a736a939defc8524c8c712020584
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **85.5 MB (85511616 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b26fb77f80e06fd509b3909c099436f040380d3f4c104ad552ad186ef17fce65`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Tue, 26 Jun 2018 21:24:58 GMT
ADD file:f21d7c14104d5d9fa99f271177e765a3472f5a69398bb78f34f7401e9b2df837 in / 
# Tue, 26 Jun 2018 21:24:58 GMT
CMD ["bash"]
# Tue, 26 Jun 2018 22:16:40 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 26 Jun 2018 22:16:48 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 27 Jun 2018 04:14:22 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends iputils-ping snmp procps &&     rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 04:14:25 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Wed, 27 Jun 2018 04:14:26 GMT
ENV TELEGRAF_VERSION=1.5.3
# Wed, 27 Jun 2018 04:14:30 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     gpg --batch --verify telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     dpkg -i telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     rm -f telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb*
# Wed, 27 Jun 2018 04:14:31 GMT
EXPOSE 8092/udp 8094/tcp 8125/udp
# Wed, 27 Jun 2018 04:14:31 GMT
COPY file:7211de01f296351833389a1a1879d450e2cb727d7e2910d5807937f99983edf7 in /entrypoint.sh 
# Wed, 27 Jun 2018 04:14:31 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 27 Jun 2018 04:14:31 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:0bd44ff9c2cf1129ef8cea689b3e10e6498f64d2f8d5532caae55841b474bf3a`  
		Last Modified: Tue, 26 Jun 2018 21:36:36 GMT  
		Size: 45.3 MB (45319224 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:047670ddbd2a37cb7940be99332555b0a9f4f2531802e50c06128c340ccd0c0d`  
		Last Modified: Tue, 26 Jun 2018 22:30:05 GMT  
		Size: 10.8 MB (10774053 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea7d5dc8943870545f4eecc6b06b3fd6b12b987dc99f0bbcfee8f132044fc9e2`  
		Last Modified: Tue, 26 Jun 2018 22:30:03 GMT  
		Size: 4.3 MB (4336270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b722436a7ba3b685a185d347f736acacfcc5473d051fdc084a60afeead4e62a8`  
		Last Modified: Wed, 27 Jun 2018 04:15:28 GMT  
		Size: 15.6 MB (15587454 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6ee0dc7fcf815172eaf007ca9432a354478ea1dccd5966c34cb043847cb4991`  
		Last Modified: Wed, 27 Jun 2018 04:15:23 GMT  
		Size: 2.9 KB (2900 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f4959f709194cdb665b244025ef6aabbcde5062d7091664c9f9da88f3dce875`  
		Last Modified: Wed, 27 Jun 2018 04:15:26 GMT  
		Size: 9.5 MB (9491530 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9fc0c4417e6682ea482b1f316258c4b85ae0242d38ef5774f617bf308fade19`  
		Last Modified: Wed, 27 Jun 2018 04:15:25 GMT  
		Size: 185.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `telegraf:1.5.3` - linux; arm variant v7

```console
$ docker pull telegraf@sha256:421abb98bb44bb1286ac378b29bc9b918f65ee371d5cb23c33cb72962c8944ee
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **78.8 MB (78849876 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0e36b45ba5a5a5848b7fd8090575e86e265d38a0b1a8cee22bea80230e5cdcf4`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Wed, 27 Jun 2018 12:03:26 GMT
ADD file:b928e6adeb71af1928fc7b8e0ff4770e5521eebf544a3b27f9736ac86e7a0ffa in / 
# Wed, 27 Jun 2018 12:03:27 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 12:47:41 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 12:47:48 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 27 Jun 2018 15:52:19 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends iputils-ping snmp procps &&     rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 15:52:24 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Wed, 27 Jun 2018 15:52:24 GMT
ENV TELEGRAF_VERSION=1.5.3
# Wed, 27 Jun 2018 15:52:29 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     gpg --batch --verify telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     dpkg -i telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     rm -f telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb*
# Wed, 27 Jun 2018 15:52:29 GMT
EXPOSE 8092/udp 8094/tcp 8125/udp
# Wed, 27 Jun 2018 15:52:30 GMT
COPY file:7211de01f296351833389a1a1879d450e2cb727d7e2910d5807937f99983edf7 in /entrypoint.sh 
# Wed, 27 Jun 2018 15:52:31 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 27 Jun 2018 15:52:31 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:c675459249e5e2b5c2119c5965490fb00918a71cd19ba6a70e1c14ea0366cc9a`  
		Last Modified: Wed, 27 Jun 2018 12:12:46 GMT  
		Size: 42.1 MB (42062253 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a87675d75ec387a55e1b055dfadf15fd7137586ee9acf9be9b2a4840e4001b2a`  
		Last Modified: Wed, 27 Jun 2018 12:58:52 GMT  
		Size: 9.5 MB (9472634 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f55e83b4f681428c2fb1542a44d864d0d2f78d235199a33824985049fd42bb5`  
		Last Modified: Wed, 27 Jun 2018 12:58:50 GMT  
		Size: 3.9 MB (3913173 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d833c61f9b3a119781fe7adfa5eba885a0ab79225cd2588bd742c4070092790`  
		Last Modified: Wed, 27 Jun 2018 15:53:20 GMT  
		Size: 14.5 MB (14465663 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea6fd3757f57f08c55b03f5b69442def4aa297a168ecb7313bafd104255e317d`  
		Last Modified: Wed, 27 Jun 2018 15:53:15 GMT  
		Size: 2.9 KB (2915 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3743c32a9c1b99777eaec9f2173806622ff1fceaa8b0cae6084909e3c4ed4f2`  
		Last Modified: Wed, 27 Jun 2018 15:53:18 GMT  
		Size: 8.9 MB (8933053 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee20fcf49f5da79294aa664c070e6582259f2a4703a2993d7d83a4648965e9d7`  
		Last Modified: Wed, 27 Jun 2018 15:53:14 GMT  
		Size: 185.0 B  
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
$ docker pull telegraf@sha256:5ed8926bee6ba3369ca9a3dd63ce068e5767bacf01d9b64a30cf7ab27d981c10
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `telegraf:1.5.3-alpine` - linux; amd64

```console
$ docker pull telegraf@sha256:457b7e87141a0afe770638c357d3b27c5438894e6e5fb4cf0a6ef26af2ec6762
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.3 MB (14250832 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:351bcff1e1c4567a44b44043924ea3ca3521b54da18ba3e1fb5656710af379e7`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Tue, 09 Jan 2018 21:10:38 GMT
ADD file:6edc55fb54ec9fc3658c8f5176a70e792103a516154442f94fed8e0290e4960e in / 
# Tue, 09 Jan 2018 21:10:38 GMT
CMD ["/bin/sh"]
# Wed, 06 Jun 2018 02:19:28 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf
# Wed, 06 Jun 2018 20:51:01 GMT
RUN apk add --no-cache iputils ca-certificates net-snmp-tools procps &&     update-ca-certificates
# Wed, 06 Jun 2018 20:51:34 GMT
ENV TELEGRAF_VERSION=1.5.3
# Wed, 06 Jun 2018 20:51:41 GMT
RUN set -ex &&     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf-${TELEGRAF_VERSION}-static_linux_amd64.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf-${TELEGRAF_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify telegraf-${TELEGRAF_VERSION}-static_linux_amd64.tar.gz.asc telegraf-${TELEGRAF_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src /etc/telegraf &&     tar -C /usr/src -xzf telegraf-${TELEGRAF_VERSION}-static_linux_amd64.tar.gz &&     mv /usr/src/telegraf*/telegraf.conf /etc/telegraf/ &&     chmod +x /usr/src/telegraf*/* &&     cp -a /usr/src/telegraf*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Wed, 06 Jun 2018 20:51:42 GMT
EXPOSE 8092/udp 8094/tcp 8125/udp
# Wed, 06 Jun 2018 20:51:42 GMT
COPY file:43e6828e001b57ab465cff8dfd3d30830289afe7ca5944b61641956bfe38cd1c in /entrypoint.sh 
# Wed, 06 Jun 2018 20:51:42 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 06 Jun 2018 20:51:42 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:605ce1bd3f3164f2949a30501cc596f52a72de05da1306ab360055f0d7130c32`  
		Last Modified: Tue, 09 Jan 2018 21:13:17 GMT  
		Size: 2.0 MB (1991747 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cef3c00c983df21fc6052a045c3017bf50950f08d64bf6f618faf998c77590d6`  
		Last Modified: Wed, 06 Jun 2018 02:21:33 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd5ffe38a8b156196e500a97049be24c6d34cf61a7e520c6f826e044ac2dcb50`  
		Last Modified: Wed, 06 Jun 2018 20:52:37 GMT  
		Size: 2.8 MB (2799668 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7cace56a203a5cb73814bfef69bfdda03e6867035d259db943ce9cf40484ec1c`  
		Last Modified: Wed, 06 Jun 2018 20:53:17 GMT  
		Size: 9.5 MB (9459081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2626ee0c456836d6a81b3fbcdfeac16ff5f204a2591a16781d38beefb28f4f1e`  
		Last Modified: Wed, 06 Jun 2018 20:53:13 GMT  
		Size: 182.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `telegraf:1.5-alpine`

```console
$ docker pull telegraf@sha256:5ed8926bee6ba3369ca9a3dd63ce068e5767bacf01d9b64a30cf7ab27d981c10
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `telegraf:1.5-alpine` - linux; amd64

```console
$ docker pull telegraf@sha256:457b7e87141a0afe770638c357d3b27c5438894e6e5fb4cf0a6ef26af2ec6762
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.3 MB (14250832 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:351bcff1e1c4567a44b44043924ea3ca3521b54da18ba3e1fb5656710af379e7`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Tue, 09 Jan 2018 21:10:38 GMT
ADD file:6edc55fb54ec9fc3658c8f5176a70e792103a516154442f94fed8e0290e4960e in / 
# Tue, 09 Jan 2018 21:10:38 GMT
CMD ["/bin/sh"]
# Wed, 06 Jun 2018 02:19:28 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf
# Wed, 06 Jun 2018 20:51:01 GMT
RUN apk add --no-cache iputils ca-certificates net-snmp-tools procps &&     update-ca-certificates
# Wed, 06 Jun 2018 20:51:34 GMT
ENV TELEGRAF_VERSION=1.5.3
# Wed, 06 Jun 2018 20:51:41 GMT
RUN set -ex &&     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf-${TELEGRAF_VERSION}-static_linux_amd64.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf-${TELEGRAF_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify telegraf-${TELEGRAF_VERSION}-static_linux_amd64.tar.gz.asc telegraf-${TELEGRAF_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src /etc/telegraf &&     tar -C /usr/src -xzf telegraf-${TELEGRAF_VERSION}-static_linux_amd64.tar.gz &&     mv /usr/src/telegraf*/telegraf.conf /etc/telegraf/ &&     chmod +x /usr/src/telegraf*/* &&     cp -a /usr/src/telegraf*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Wed, 06 Jun 2018 20:51:42 GMT
EXPOSE 8092/udp 8094/tcp 8125/udp
# Wed, 06 Jun 2018 20:51:42 GMT
COPY file:43e6828e001b57ab465cff8dfd3d30830289afe7ca5944b61641956bfe38cd1c in /entrypoint.sh 
# Wed, 06 Jun 2018 20:51:42 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 06 Jun 2018 20:51:42 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:605ce1bd3f3164f2949a30501cc596f52a72de05da1306ab360055f0d7130c32`  
		Last Modified: Tue, 09 Jan 2018 21:13:17 GMT  
		Size: 2.0 MB (1991747 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cef3c00c983df21fc6052a045c3017bf50950f08d64bf6f618faf998c77590d6`  
		Last Modified: Wed, 06 Jun 2018 02:21:33 GMT  
		Size: 154.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd5ffe38a8b156196e500a97049be24c6d34cf61a7e520c6f826e044ac2dcb50`  
		Last Modified: Wed, 06 Jun 2018 20:52:37 GMT  
		Size: 2.8 MB (2799668 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7cace56a203a5cb73814bfef69bfdda03e6867035d259db943ce9cf40484ec1c`  
		Last Modified: Wed, 06 Jun 2018 20:53:17 GMT  
		Size: 9.5 MB (9459081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2626ee0c456836d6a81b3fbcdfeac16ff5f204a2591a16781d38beefb28f4f1e`  
		Last Modified: Wed, 06 Jun 2018 20:53:13 GMT  
		Size: 182.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `telegraf:1.6`

```console
$ docker pull telegraf@sha256:146716480e48165edf99cba636dcb41beb0248c9d2b7933f6826b3fed110d08a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `telegraf:1.6` - linux; amd64

```console
$ docker pull telegraf@sha256:598c09570bb21388609ae36342164b302311f956bf54eb0341f7e67d9b5b6b8e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **85.9 MB (85900025 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:88795dbeaf15fd3976ba9657d36d9430931b2127b5ef09b4d09503e4d983600c`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Tue, 26 Jun 2018 21:24:58 GMT
ADD file:f21d7c14104d5d9fa99f271177e765a3472f5a69398bb78f34f7401e9b2df837 in / 
# Tue, 26 Jun 2018 21:24:58 GMT
CMD ["bash"]
# Tue, 26 Jun 2018 22:16:40 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 26 Jun 2018 22:16:48 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 27 Jun 2018 04:14:22 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends iputils-ping snmp procps &&     rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 04:14:25 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Wed, 27 Jun 2018 04:14:43 GMT
ENV TELEGRAF_VERSION=1.6.4
# Wed, 27 Jun 2018 04:14:49 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     gpg --batch --verify telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     dpkg -i telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     rm -f telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb*
# Wed, 27 Jun 2018 04:14:50 GMT
EXPOSE 8092/udp 8094/tcp 8125/udp
# Wed, 27 Jun 2018 04:14:50 GMT
COPY file:7211de01f296351833389a1a1879d450e2cb727d7e2910d5807937f99983edf7 in /entrypoint.sh 
# Wed, 27 Jun 2018 04:14:50 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 27 Jun 2018 04:14:50 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:0bd44ff9c2cf1129ef8cea689b3e10e6498f64d2f8d5532caae55841b474bf3a`  
		Last Modified: Tue, 26 Jun 2018 21:36:36 GMT  
		Size: 45.3 MB (45319224 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:047670ddbd2a37cb7940be99332555b0a9f4f2531802e50c06128c340ccd0c0d`  
		Last Modified: Tue, 26 Jun 2018 22:30:05 GMT  
		Size: 10.8 MB (10774053 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea7d5dc8943870545f4eecc6b06b3fd6b12b987dc99f0bbcfee8f132044fc9e2`  
		Last Modified: Tue, 26 Jun 2018 22:30:03 GMT  
		Size: 4.3 MB (4336270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b722436a7ba3b685a185d347f736acacfcc5473d051fdc084a60afeead4e62a8`  
		Last Modified: Wed, 27 Jun 2018 04:15:28 GMT  
		Size: 15.6 MB (15587454 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6ee0dc7fcf815172eaf007ca9432a354478ea1dccd5966c34cb043847cb4991`  
		Last Modified: Wed, 27 Jun 2018 04:15:23 GMT  
		Size: 2.9 KB (2900 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16b3d92db30168cdb585d7f5e57b46ac5dd18356923b295d7976af55a479a8f4`  
		Last Modified: Wed, 27 Jun 2018 04:15:57 GMT  
		Size: 9.9 MB (9879940 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f01bc3092266a610cb72ec53df2989817738f1869634a3ac97c9afca174c51c3`  
		Last Modified: Wed, 27 Jun 2018 04:15:56 GMT  
		Size: 184.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `telegraf:1.6` - linux; arm variant v7

```console
$ docker pull telegraf@sha256:f651e7a960e4a2a791d6c5e2474ca0683a40badf7d606db5b70578b13e7796d8
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **79.2 MB (79216970 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d051ffdd0e4c93c4b04af4fbb55d95a513bae718cd9a4fa833df99a77e044753`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Wed, 27 Jun 2018 12:03:26 GMT
ADD file:b928e6adeb71af1928fc7b8e0ff4770e5521eebf544a3b27f9736ac86e7a0ffa in / 
# Wed, 27 Jun 2018 12:03:27 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 12:47:41 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 12:47:48 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 27 Jun 2018 15:52:19 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends iputils-ping snmp procps &&     rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 15:52:24 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Wed, 27 Jun 2018 15:52:40 GMT
ENV TELEGRAF_VERSION=1.6.4
# Wed, 27 Jun 2018 15:52:45 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     gpg --batch --verify telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     dpkg -i telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     rm -f telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb*
# Wed, 27 Jun 2018 15:52:46 GMT
EXPOSE 8092/udp 8094/tcp 8125/udp
# Wed, 27 Jun 2018 15:52:46 GMT
COPY file:7211de01f296351833389a1a1879d450e2cb727d7e2910d5807937f99983edf7 in /entrypoint.sh 
# Wed, 27 Jun 2018 15:52:47 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 27 Jun 2018 15:52:48 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:c675459249e5e2b5c2119c5965490fb00918a71cd19ba6a70e1c14ea0366cc9a`  
		Last Modified: Wed, 27 Jun 2018 12:12:46 GMT  
		Size: 42.1 MB (42062253 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a87675d75ec387a55e1b055dfadf15fd7137586ee9acf9be9b2a4840e4001b2a`  
		Last Modified: Wed, 27 Jun 2018 12:58:52 GMT  
		Size: 9.5 MB (9472634 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f55e83b4f681428c2fb1542a44d864d0d2f78d235199a33824985049fd42bb5`  
		Last Modified: Wed, 27 Jun 2018 12:58:50 GMT  
		Size: 3.9 MB (3913173 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d833c61f9b3a119781fe7adfa5eba885a0ab79225cd2588bd742c4070092790`  
		Last Modified: Wed, 27 Jun 2018 15:53:20 GMT  
		Size: 14.5 MB (14465663 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea6fd3757f57f08c55b03f5b69442def4aa297a168ecb7313bafd104255e317d`  
		Last Modified: Wed, 27 Jun 2018 15:53:15 GMT  
		Size: 2.9 KB (2915 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64bb574bd88c8777a6c2747d9ce0fc6fb4a793500462fe69d22d698576a10ef6`  
		Last Modified: Wed, 27 Jun 2018 15:53:37 GMT  
		Size: 9.3 MB (9300150 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d33791c557dc86fdbcca7834c39b8cae1ebfa9563d52969ed509cab31f7c8e74`  
		Last Modified: Wed, 27 Jun 2018 15:53:34 GMT  
		Size: 182.0 B  
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
$ docker pull telegraf@sha256:146716480e48165edf99cba636dcb41beb0248c9d2b7933f6826b3fed110d08a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `telegraf:1.6.4` - linux; amd64

```console
$ docker pull telegraf@sha256:598c09570bb21388609ae36342164b302311f956bf54eb0341f7e67d9b5b6b8e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **85.9 MB (85900025 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:88795dbeaf15fd3976ba9657d36d9430931b2127b5ef09b4d09503e4d983600c`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Tue, 26 Jun 2018 21:24:58 GMT
ADD file:f21d7c14104d5d9fa99f271177e765a3472f5a69398bb78f34f7401e9b2df837 in / 
# Tue, 26 Jun 2018 21:24:58 GMT
CMD ["bash"]
# Tue, 26 Jun 2018 22:16:40 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 26 Jun 2018 22:16:48 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 27 Jun 2018 04:14:22 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends iputils-ping snmp procps &&     rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 04:14:25 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Wed, 27 Jun 2018 04:14:43 GMT
ENV TELEGRAF_VERSION=1.6.4
# Wed, 27 Jun 2018 04:14:49 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     gpg --batch --verify telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     dpkg -i telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     rm -f telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb*
# Wed, 27 Jun 2018 04:14:50 GMT
EXPOSE 8092/udp 8094/tcp 8125/udp
# Wed, 27 Jun 2018 04:14:50 GMT
COPY file:7211de01f296351833389a1a1879d450e2cb727d7e2910d5807937f99983edf7 in /entrypoint.sh 
# Wed, 27 Jun 2018 04:14:50 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 27 Jun 2018 04:14:50 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:0bd44ff9c2cf1129ef8cea689b3e10e6498f64d2f8d5532caae55841b474bf3a`  
		Last Modified: Tue, 26 Jun 2018 21:36:36 GMT  
		Size: 45.3 MB (45319224 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:047670ddbd2a37cb7940be99332555b0a9f4f2531802e50c06128c340ccd0c0d`  
		Last Modified: Tue, 26 Jun 2018 22:30:05 GMT  
		Size: 10.8 MB (10774053 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea7d5dc8943870545f4eecc6b06b3fd6b12b987dc99f0bbcfee8f132044fc9e2`  
		Last Modified: Tue, 26 Jun 2018 22:30:03 GMT  
		Size: 4.3 MB (4336270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b722436a7ba3b685a185d347f736acacfcc5473d051fdc084a60afeead4e62a8`  
		Last Modified: Wed, 27 Jun 2018 04:15:28 GMT  
		Size: 15.6 MB (15587454 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6ee0dc7fcf815172eaf007ca9432a354478ea1dccd5966c34cb043847cb4991`  
		Last Modified: Wed, 27 Jun 2018 04:15:23 GMT  
		Size: 2.9 KB (2900 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16b3d92db30168cdb585d7f5e57b46ac5dd18356923b295d7976af55a479a8f4`  
		Last Modified: Wed, 27 Jun 2018 04:15:57 GMT  
		Size: 9.9 MB (9879940 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f01bc3092266a610cb72ec53df2989817738f1869634a3ac97c9afca174c51c3`  
		Last Modified: Wed, 27 Jun 2018 04:15:56 GMT  
		Size: 184.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `telegraf:1.6.4` - linux; arm variant v7

```console
$ docker pull telegraf@sha256:f651e7a960e4a2a791d6c5e2474ca0683a40badf7d606db5b70578b13e7796d8
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **79.2 MB (79216970 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d051ffdd0e4c93c4b04af4fbb55d95a513bae718cd9a4fa833df99a77e044753`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Wed, 27 Jun 2018 12:03:26 GMT
ADD file:b928e6adeb71af1928fc7b8e0ff4770e5521eebf544a3b27f9736ac86e7a0ffa in / 
# Wed, 27 Jun 2018 12:03:27 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 12:47:41 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 12:47:48 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 27 Jun 2018 15:52:19 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends iputils-ping snmp procps &&     rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 15:52:24 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Wed, 27 Jun 2018 15:52:40 GMT
ENV TELEGRAF_VERSION=1.6.4
# Wed, 27 Jun 2018 15:52:45 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     gpg --batch --verify telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     dpkg -i telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     rm -f telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb*
# Wed, 27 Jun 2018 15:52:46 GMT
EXPOSE 8092/udp 8094/tcp 8125/udp
# Wed, 27 Jun 2018 15:52:46 GMT
COPY file:7211de01f296351833389a1a1879d450e2cb727d7e2910d5807937f99983edf7 in /entrypoint.sh 
# Wed, 27 Jun 2018 15:52:47 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 27 Jun 2018 15:52:48 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:c675459249e5e2b5c2119c5965490fb00918a71cd19ba6a70e1c14ea0366cc9a`  
		Last Modified: Wed, 27 Jun 2018 12:12:46 GMT  
		Size: 42.1 MB (42062253 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a87675d75ec387a55e1b055dfadf15fd7137586ee9acf9be9b2a4840e4001b2a`  
		Last Modified: Wed, 27 Jun 2018 12:58:52 GMT  
		Size: 9.5 MB (9472634 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f55e83b4f681428c2fb1542a44d864d0d2f78d235199a33824985049fd42bb5`  
		Last Modified: Wed, 27 Jun 2018 12:58:50 GMT  
		Size: 3.9 MB (3913173 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d833c61f9b3a119781fe7adfa5eba885a0ab79225cd2588bd742c4070092790`  
		Last Modified: Wed, 27 Jun 2018 15:53:20 GMT  
		Size: 14.5 MB (14465663 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea6fd3757f57f08c55b03f5b69442def4aa297a168ecb7313bafd104255e317d`  
		Last Modified: Wed, 27 Jun 2018 15:53:15 GMT  
		Size: 2.9 KB (2915 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64bb574bd88c8777a6c2747d9ce0fc6fb4a793500462fe69d22d698576a10ef6`  
		Last Modified: Wed, 27 Jun 2018 15:53:37 GMT  
		Size: 9.3 MB (9300150 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d33791c557dc86fdbcca7834c39b8cae1ebfa9563d52969ed509cab31f7c8e74`  
		Last Modified: Wed, 27 Jun 2018 15:53:34 GMT  
		Size: 182.0 B  
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
$ docker pull telegraf@sha256:5cde0b990b521e946c55a42a9df0a0452dabb85848caa71b9dbc27fcb8a347cc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `telegraf:1.6.4-alpine` - linux; amd64

```console
$ docker pull telegraf@sha256:9c7f2504a8e0cf60577e222269a2b4d8be479d116e19650c7a6527cefa3291cf
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.6 MB (14636941 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8cb3160eebea2dccedfe2e478b1bb38778d55c82de218b7419dd947067809cd0`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Tue, 09 Jan 2018 21:10:38 GMT
ADD file:6edc55fb54ec9fc3658c8f5176a70e792103a516154442f94fed8e0290e4960e in / 
# Tue, 09 Jan 2018 21:10:38 GMT
CMD ["/bin/sh"]
# Tue, 09 Jan 2018 21:31:21 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf
# Wed, 10 Jan 2018 03:04:44 GMT
RUN apk add --no-cache iputils ca-certificates net-snmp-tools procps &&     update-ca-certificates
# Thu, 14 Jun 2018 05:30:43 GMT
ENV TELEGRAF_VERSION=1.6.4
# Thu, 14 Jun 2018 05:30:52 GMT
RUN set -ex &&     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf-${TELEGRAF_VERSION}-static_linux_amd64.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf-${TELEGRAF_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify telegraf-${TELEGRAF_VERSION}-static_linux_amd64.tar.gz.asc telegraf-${TELEGRAF_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src /etc/telegraf &&     tar -C /usr/src -xzf telegraf-${TELEGRAF_VERSION}-static_linux_amd64.tar.gz &&     mv /usr/src/telegraf*/telegraf.conf /etc/telegraf/ &&     chmod +x /usr/src/telegraf*/* &&     cp -a /usr/src/telegraf*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Thu, 14 Jun 2018 05:30:52 GMT
EXPOSE 8092/udp 8094/tcp 8125/udp
# Thu, 14 Jun 2018 05:30:52 GMT
COPY file:43e6828e001b57ab465cff8dfd3d30830289afe7ca5944b61641956bfe38cd1c in /entrypoint.sh 
# Thu, 14 Jun 2018 05:30:52 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 14 Jun 2018 05:30:53 GMT
CMD ["telegraf"]
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
	-	`sha256:744f2d4e2ea14cfa1b936a8f71db3bf1f3bd417925c618740330adc60e1b2b01`  
		Last Modified: Wed, 10 Jan 2018 03:05:41 GMT  
		Size: 2.8 MB (2796395 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82001ce239d3ccbcfabffd7d1591ccb76e8bc58a5771e7d5f04131e012eb932e`  
		Last Modified: Thu, 14 Jun 2018 05:32:05 GMT  
		Size: 9.8 MB (9848462 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a2fc9f21402490face6b3984f6eebbc760d2a0fdb1afca20ae50a4478837f02`  
		Last Modified: Thu, 14 Jun 2018 05:32:03 GMT  
		Size: 184.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `telegraf:1.6-alpine`

```console
$ docker pull telegraf@sha256:5cde0b990b521e946c55a42a9df0a0452dabb85848caa71b9dbc27fcb8a347cc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `telegraf:1.6-alpine` - linux; amd64

```console
$ docker pull telegraf@sha256:9c7f2504a8e0cf60577e222269a2b4d8be479d116e19650c7a6527cefa3291cf
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.6 MB (14636941 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8cb3160eebea2dccedfe2e478b1bb38778d55c82de218b7419dd947067809cd0`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Tue, 09 Jan 2018 21:10:38 GMT
ADD file:6edc55fb54ec9fc3658c8f5176a70e792103a516154442f94fed8e0290e4960e in / 
# Tue, 09 Jan 2018 21:10:38 GMT
CMD ["/bin/sh"]
# Tue, 09 Jan 2018 21:31:21 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf
# Wed, 10 Jan 2018 03:04:44 GMT
RUN apk add --no-cache iputils ca-certificates net-snmp-tools procps &&     update-ca-certificates
# Thu, 14 Jun 2018 05:30:43 GMT
ENV TELEGRAF_VERSION=1.6.4
# Thu, 14 Jun 2018 05:30:52 GMT
RUN set -ex &&     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf-${TELEGRAF_VERSION}-static_linux_amd64.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf-${TELEGRAF_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify telegraf-${TELEGRAF_VERSION}-static_linux_amd64.tar.gz.asc telegraf-${TELEGRAF_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src /etc/telegraf &&     tar -C /usr/src -xzf telegraf-${TELEGRAF_VERSION}-static_linux_amd64.tar.gz &&     mv /usr/src/telegraf*/telegraf.conf /etc/telegraf/ &&     chmod +x /usr/src/telegraf*/* &&     cp -a /usr/src/telegraf*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Thu, 14 Jun 2018 05:30:52 GMT
EXPOSE 8092/udp 8094/tcp 8125/udp
# Thu, 14 Jun 2018 05:30:52 GMT
COPY file:43e6828e001b57ab465cff8dfd3d30830289afe7ca5944b61641956bfe38cd1c in /entrypoint.sh 
# Thu, 14 Jun 2018 05:30:52 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 14 Jun 2018 05:30:53 GMT
CMD ["telegraf"]
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
	-	`sha256:744f2d4e2ea14cfa1b936a8f71db3bf1f3bd417925c618740330adc60e1b2b01`  
		Last Modified: Wed, 10 Jan 2018 03:05:41 GMT  
		Size: 2.8 MB (2796395 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82001ce239d3ccbcfabffd7d1591ccb76e8bc58a5771e7d5f04131e012eb932e`  
		Last Modified: Thu, 14 Jun 2018 05:32:05 GMT  
		Size: 9.8 MB (9848462 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a2fc9f21402490face6b3984f6eebbc760d2a0fdb1afca20ae50a4478837f02`  
		Last Modified: Thu, 14 Jun 2018 05:32:03 GMT  
		Size: 184.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `telegraf:1.7`

```console
$ docker pull telegraf@sha256:839750260a4f9a817be477fa95f13014c78d2828021c52c865ffbf8ec416bbe7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `telegraf:1.7` - linux; amd64

```console
$ docker pull telegraf@sha256:ea35f74c809a03c03238f0d5e843189655a826154db28759e7c24958261825bf
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **86.5 MB (86515964 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bc1811bdad4e7621c91aa81c168f81345238c0c09acf78bf3a45dedbda191f13`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Tue, 26 Jun 2018 21:24:58 GMT
ADD file:f21d7c14104d5d9fa99f271177e765a3472f5a69398bb78f34f7401e9b2df837 in / 
# Tue, 26 Jun 2018 21:24:58 GMT
CMD ["bash"]
# Tue, 26 Jun 2018 22:16:40 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 26 Jun 2018 22:16:48 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 27 Jun 2018 04:14:22 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends iputils-ping snmp procps &&     rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 04:14:25 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Fri, 06 Jul 2018 02:11:37 GMT
ENV TELEGRAF_VERSION=1.7.1
# Fri, 06 Jul 2018 02:11:43 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     gpg --batch --verify telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     dpkg -i telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     rm -f telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb*
# Fri, 06 Jul 2018 02:11:43 GMT
EXPOSE 8092/udp 8094/tcp 8125/udp
# Fri, 06 Jul 2018 02:11:44 GMT
COPY file:7211de01f296351833389a1a1879d450e2cb727d7e2910d5807937f99983edf7 in /entrypoint.sh 
# Fri, 06 Jul 2018 02:11:44 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 06 Jul 2018 02:11:44 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:0bd44ff9c2cf1129ef8cea689b3e10e6498f64d2f8d5532caae55841b474bf3a`  
		Last Modified: Tue, 26 Jun 2018 21:36:36 GMT  
		Size: 45.3 MB (45319224 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:047670ddbd2a37cb7940be99332555b0a9f4f2531802e50c06128c340ccd0c0d`  
		Last Modified: Tue, 26 Jun 2018 22:30:05 GMT  
		Size: 10.8 MB (10774053 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea7d5dc8943870545f4eecc6b06b3fd6b12b987dc99f0bbcfee8f132044fc9e2`  
		Last Modified: Tue, 26 Jun 2018 22:30:03 GMT  
		Size: 4.3 MB (4336270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b722436a7ba3b685a185d347f736acacfcc5473d051fdc084a60afeead4e62a8`  
		Last Modified: Wed, 27 Jun 2018 04:15:28 GMT  
		Size: 15.6 MB (15587454 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6ee0dc7fcf815172eaf007ca9432a354478ea1dccd5966c34cb043847cb4991`  
		Last Modified: Wed, 27 Jun 2018 04:15:23 GMT  
		Size: 2.9 KB (2900 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93f776c71297b4ff33e14d6ed6f5acf4dcacdf3e2297198cd4f74f7cbdd037aa`  
		Last Modified: Fri, 06 Jul 2018 02:12:20 GMT  
		Size: 10.5 MB (10495880 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43f83dd890228387072250e78bc74ce71426ef3627548bdf84c558bc6b971eb5`  
		Last Modified: Fri, 06 Jul 2018 02:12:19 GMT  
		Size: 183.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `telegraf:1.7` - linux; arm variant v7

```console
$ docker pull telegraf@sha256:b8716a1cf55e74dccf78ba2c0b27ac8defe03d2d53d1f7412000eeb0d34596b4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **80.0 MB (80005135 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e0b54efad23c5741d1b1a0c140b480ee7f740881407e08f3728e58ca4bb7ffd1`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Wed, 27 Jun 2018 12:03:26 GMT
ADD file:b928e6adeb71af1928fc7b8e0ff4770e5521eebf544a3b27f9736ac86e7a0ffa in / 
# Wed, 27 Jun 2018 12:03:27 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 12:47:41 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 12:47:48 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 27 Jun 2018 15:52:19 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends iputils-ping snmp procps &&     rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 15:52:24 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Wed, 27 Jun 2018 15:52:56 GMT
ENV TELEGRAF_VERSION=1.7.0
# Wed, 27 Jun 2018 15:52:59 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     gpg --batch --verify telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     dpkg -i telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     rm -f telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb*
# Wed, 27 Jun 2018 15:53:00 GMT
EXPOSE 8092/udp 8094/tcp 8125/udp
# Wed, 27 Jun 2018 15:53:00 GMT
COPY file:7211de01f296351833389a1a1879d450e2cb727d7e2910d5807937f99983edf7 in /entrypoint.sh 
# Wed, 27 Jun 2018 15:53:01 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 27 Jun 2018 15:53:02 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:c675459249e5e2b5c2119c5965490fb00918a71cd19ba6a70e1c14ea0366cc9a`  
		Last Modified: Wed, 27 Jun 2018 12:12:46 GMT  
		Size: 42.1 MB (42062253 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a87675d75ec387a55e1b055dfadf15fd7137586ee9acf9be9b2a4840e4001b2a`  
		Last Modified: Wed, 27 Jun 2018 12:58:52 GMT  
		Size: 9.5 MB (9472634 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f55e83b4f681428c2fb1542a44d864d0d2f78d235199a33824985049fd42bb5`  
		Last Modified: Wed, 27 Jun 2018 12:58:50 GMT  
		Size: 3.9 MB (3913173 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d833c61f9b3a119781fe7adfa5eba885a0ab79225cd2588bd742c4070092790`  
		Last Modified: Wed, 27 Jun 2018 15:53:20 GMT  
		Size: 14.5 MB (14465663 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea6fd3757f57f08c55b03f5b69442def4aa297a168ecb7313bafd104255e317d`  
		Last Modified: Wed, 27 Jun 2018 15:53:15 GMT  
		Size: 2.9 KB (2915 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1debfbe2a293bb4b39ffc931c1a41840de5655aa7c212f140ae2040f44c2e0aa`  
		Last Modified: Wed, 27 Jun 2018 15:53:54 GMT  
		Size: 10.1 MB (10088313 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41d5ee60d9ea6fbbcae5cd2e6d5c01f92f44cb81152b97cb1b5040e76bf63b76`  
		Last Modified: Wed, 27 Jun 2018 15:53:52 GMT  
		Size: 184.0 B  
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
$ docker pull telegraf@sha256:839750260a4f9a817be477fa95f13014c78d2828021c52c865ffbf8ec416bbe7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `telegraf:1.7.1` - linux; amd64

```console
$ docker pull telegraf@sha256:ea35f74c809a03c03238f0d5e843189655a826154db28759e7c24958261825bf
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **86.5 MB (86515964 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bc1811bdad4e7621c91aa81c168f81345238c0c09acf78bf3a45dedbda191f13`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Tue, 26 Jun 2018 21:24:58 GMT
ADD file:f21d7c14104d5d9fa99f271177e765a3472f5a69398bb78f34f7401e9b2df837 in / 
# Tue, 26 Jun 2018 21:24:58 GMT
CMD ["bash"]
# Tue, 26 Jun 2018 22:16:40 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 26 Jun 2018 22:16:48 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 27 Jun 2018 04:14:22 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends iputils-ping snmp procps &&     rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 04:14:25 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Fri, 06 Jul 2018 02:11:37 GMT
ENV TELEGRAF_VERSION=1.7.1
# Fri, 06 Jul 2018 02:11:43 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     gpg --batch --verify telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     dpkg -i telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     rm -f telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb*
# Fri, 06 Jul 2018 02:11:43 GMT
EXPOSE 8092/udp 8094/tcp 8125/udp
# Fri, 06 Jul 2018 02:11:44 GMT
COPY file:7211de01f296351833389a1a1879d450e2cb727d7e2910d5807937f99983edf7 in /entrypoint.sh 
# Fri, 06 Jul 2018 02:11:44 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 06 Jul 2018 02:11:44 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:0bd44ff9c2cf1129ef8cea689b3e10e6498f64d2f8d5532caae55841b474bf3a`  
		Last Modified: Tue, 26 Jun 2018 21:36:36 GMT  
		Size: 45.3 MB (45319224 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:047670ddbd2a37cb7940be99332555b0a9f4f2531802e50c06128c340ccd0c0d`  
		Last Modified: Tue, 26 Jun 2018 22:30:05 GMT  
		Size: 10.8 MB (10774053 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea7d5dc8943870545f4eecc6b06b3fd6b12b987dc99f0bbcfee8f132044fc9e2`  
		Last Modified: Tue, 26 Jun 2018 22:30:03 GMT  
		Size: 4.3 MB (4336270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b722436a7ba3b685a185d347f736acacfcc5473d051fdc084a60afeead4e62a8`  
		Last Modified: Wed, 27 Jun 2018 04:15:28 GMT  
		Size: 15.6 MB (15587454 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6ee0dc7fcf815172eaf007ca9432a354478ea1dccd5966c34cb043847cb4991`  
		Last Modified: Wed, 27 Jun 2018 04:15:23 GMT  
		Size: 2.9 KB (2900 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93f776c71297b4ff33e14d6ed6f5acf4dcacdf3e2297198cd4f74f7cbdd037aa`  
		Last Modified: Fri, 06 Jul 2018 02:12:20 GMT  
		Size: 10.5 MB (10495880 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43f83dd890228387072250e78bc74ce71426ef3627548bdf84c558bc6b971eb5`  
		Last Modified: Fri, 06 Jul 2018 02:12:19 GMT  
		Size: 183.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `telegraf:1.7.1` - linux; arm variant v7

```console
$ docker pull telegraf@sha256:b8716a1cf55e74dccf78ba2c0b27ac8defe03d2d53d1f7412000eeb0d34596b4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **80.0 MB (80005135 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e0b54efad23c5741d1b1a0c140b480ee7f740881407e08f3728e58ca4bb7ffd1`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Wed, 27 Jun 2018 12:03:26 GMT
ADD file:b928e6adeb71af1928fc7b8e0ff4770e5521eebf544a3b27f9736ac86e7a0ffa in / 
# Wed, 27 Jun 2018 12:03:27 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 12:47:41 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 12:47:48 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 27 Jun 2018 15:52:19 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends iputils-ping snmp procps &&     rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 15:52:24 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Wed, 27 Jun 2018 15:52:56 GMT
ENV TELEGRAF_VERSION=1.7.0
# Wed, 27 Jun 2018 15:52:59 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     gpg --batch --verify telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     dpkg -i telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     rm -f telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb*
# Wed, 27 Jun 2018 15:53:00 GMT
EXPOSE 8092/udp 8094/tcp 8125/udp
# Wed, 27 Jun 2018 15:53:00 GMT
COPY file:7211de01f296351833389a1a1879d450e2cb727d7e2910d5807937f99983edf7 in /entrypoint.sh 
# Wed, 27 Jun 2018 15:53:01 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 27 Jun 2018 15:53:02 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:c675459249e5e2b5c2119c5965490fb00918a71cd19ba6a70e1c14ea0366cc9a`  
		Last Modified: Wed, 27 Jun 2018 12:12:46 GMT  
		Size: 42.1 MB (42062253 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a87675d75ec387a55e1b055dfadf15fd7137586ee9acf9be9b2a4840e4001b2a`  
		Last Modified: Wed, 27 Jun 2018 12:58:52 GMT  
		Size: 9.5 MB (9472634 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f55e83b4f681428c2fb1542a44d864d0d2f78d235199a33824985049fd42bb5`  
		Last Modified: Wed, 27 Jun 2018 12:58:50 GMT  
		Size: 3.9 MB (3913173 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d833c61f9b3a119781fe7adfa5eba885a0ab79225cd2588bd742c4070092790`  
		Last Modified: Wed, 27 Jun 2018 15:53:20 GMT  
		Size: 14.5 MB (14465663 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea6fd3757f57f08c55b03f5b69442def4aa297a168ecb7313bafd104255e317d`  
		Last Modified: Wed, 27 Jun 2018 15:53:15 GMT  
		Size: 2.9 KB (2915 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1debfbe2a293bb4b39ffc931c1a41840de5655aa7c212f140ae2040f44c2e0aa`  
		Last Modified: Wed, 27 Jun 2018 15:53:54 GMT  
		Size: 10.1 MB (10088313 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41d5ee60d9ea6fbbcae5cd2e6d5c01f92f44cb81152b97cb1b5040e76bf63b76`  
		Last Modified: Wed, 27 Jun 2018 15:53:52 GMT  
		Size: 184.0 B  
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
$ docker pull telegraf@sha256:9fb6e492e5baa8511a8401ae3414af61f0c97ab3081bcf50a10b537dc4707fa0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `telegraf:1.7.1-alpine` - linux; amd64

```console
$ docker pull telegraf@sha256:d3bf42646600681aab8a6189a50771d5df74a03b6a5db6ba023fb210a3d7083c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.3 MB (15252706 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:44ba3ffc7adafbc6c2dab5d42c7a964387c79ca8e8761fe9bdef56e04c10ac87`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Tue, 09 Jan 2018 21:10:38 GMT
ADD file:6edc55fb54ec9fc3658c8f5176a70e792103a516154442f94fed8e0290e4960e in / 
# Tue, 09 Jan 2018 21:10:38 GMT
CMD ["/bin/sh"]
# Tue, 09 Jan 2018 21:31:21 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf
# Wed, 10 Jan 2018 03:04:44 GMT
RUN apk add --no-cache iputils ca-certificates net-snmp-tools procps &&     update-ca-certificates
# Fri, 06 Jul 2018 02:11:55 GMT
ENV TELEGRAF_VERSION=1.7.1
# Fri, 06 Jul 2018 02:12:00 GMT
RUN set -ex &&     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf-${TELEGRAF_VERSION}-static_linux_amd64.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf-${TELEGRAF_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify telegraf-${TELEGRAF_VERSION}-static_linux_amd64.tar.gz.asc telegraf-${TELEGRAF_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src /etc/telegraf &&     tar -C /usr/src -xzf telegraf-${TELEGRAF_VERSION}-static_linux_amd64.tar.gz &&     mv /usr/src/telegraf*/telegraf.conf /etc/telegraf/ &&     chmod +x /usr/src/telegraf*/* &&     cp -a /usr/src/telegraf*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Fri, 06 Jul 2018 02:12:00 GMT
EXPOSE 8092/udp 8094/tcp 8125/udp
# Fri, 06 Jul 2018 02:12:00 GMT
COPY file:43e6828e001b57ab465cff8dfd3d30830289afe7ca5944b61641956bfe38cd1c in /entrypoint.sh 
# Fri, 06 Jul 2018 02:12:00 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 06 Jul 2018 02:12:01 GMT
CMD ["telegraf"]
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
	-	`sha256:744f2d4e2ea14cfa1b936a8f71db3bf1f3bd417925c618740330adc60e1b2b01`  
		Last Modified: Wed, 10 Jan 2018 03:05:41 GMT  
		Size: 2.8 MB (2796395 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7ffb2ba692c36f49e2ea9aa345f39d8414269f4f9474c03c429aa1340494c34`  
		Last Modified: Fri, 06 Jul 2018 02:13:00 GMT  
		Size: 10.5 MB (10464228 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7f0fe511257d5658544bfb7e1b959a2e9abc04c19c5663ea721fdd49f3d8b22`  
		Last Modified: Fri, 06 Jul 2018 02:12:57 GMT  
		Size: 183.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `telegraf:1.7-alpine`

```console
$ docker pull telegraf@sha256:9fb6e492e5baa8511a8401ae3414af61f0c97ab3081bcf50a10b537dc4707fa0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `telegraf:1.7-alpine` - linux; amd64

```console
$ docker pull telegraf@sha256:d3bf42646600681aab8a6189a50771d5df74a03b6a5db6ba023fb210a3d7083c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.3 MB (15252706 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:44ba3ffc7adafbc6c2dab5d42c7a964387c79ca8e8761fe9bdef56e04c10ac87`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Tue, 09 Jan 2018 21:10:38 GMT
ADD file:6edc55fb54ec9fc3658c8f5176a70e792103a516154442f94fed8e0290e4960e in / 
# Tue, 09 Jan 2018 21:10:38 GMT
CMD ["/bin/sh"]
# Tue, 09 Jan 2018 21:31:21 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf
# Wed, 10 Jan 2018 03:04:44 GMT
RUN apk add --no-cache iputils ca-certificates net-snmp-tools procps &&     update-ca-certificates
# Fri, 06 Jul 2018 02:11:55 GMT
ENV TELEGRAF_VERSION=1.7.1
# Fri, 06 Jul 2018 02:12:00 GMT
RUN set -ex &&     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf-${TELEGRAF_VERSION}-static_linux_amd64.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf-${TELEGRAF_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify telegraf-${TELEGRAF_VERSION}-static_linux_amd64.tar.gz.asc telegraf-${TELEGRAF_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src /etc/telegraf &&     tar -C /usr/src -xzf telegraf-${TELEGRAF_VERSION}-static_linux_amd64.tar.gz &&     mv /usr/src/telegraf*/telegraf.conf /etc/telegraf/ &&     chmod +x /usr/src/telegraf*/* &&     cp -a /usr/src/telegraf*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Fri, 06 Jul 2018 02:12:00 GMT
EXPOSE 8092/udp 8094/tcp 8125/udp
# Fri, 06 Jul 2018 02:12:00 GMT
COPY file:43e6828e001b57ab465cff8dfd3d30830289afe7ca5944b61641956bfe38cd1c in /entrypoint.sh 
# Fri, 06 Jul 2018 02:12:00 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 06 Jul 2018 02:12:01 GMT
CMD ["telegraf"]
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
	-	`sha256:744f2d4e2ea14cfa1b936a8f71db3bf1f3bd417925c618740330adc60e1b2b01`  
		Last Modified: Wed, 10 Jan 2018 03:05:41 GMT  
		Size: 2.8 MB (2796395 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7ffb2ba692c36f49e2ea9aa345f39d8414269f4f9474c03c429aa1340494c34`  
		Last Modified: Fri, 06 Jul 2018 02:13:00 GMT  
		Size: 10.5 MB (10464228 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7f0fe511257d5658544bfb7e1b959a2e9abc04c19c5663ea721fdd49f3d8b22`  
		Last Modified: Fri, 06 Jul 2018 02:12:57 GMT  
		Size: 183.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `telegraf:alpine`

```console
$ docker pull telegraf@sha256:9fb6e492e5baa8511a8401ae3414af61f0c97ab3081bcf50a10b537dc4707fa0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `telegraf:alpine` - linux; amd64

```console
$ docker pull telegraf@sha256:d3bf42646600681aab8a6189a50771d5df74a03b6a5db6ba023fb210a3d7083c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.3 MB (15252706 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:44ba3ffc7adafbc6c2dab5d42c7a964387c79ca8e8761fe9bdef56e04c10ac87`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Tue, 09 Jan 2018 21:10:38 GMT
ADD file:6edc55fb54ec9fc3658c8f5176a70e792103a516154442f94fed8e0290e4960e in / 
# Tue, 09 Jan 2018 21:10:38 GMT
CMD ["/bin/sh"]
# Tue, 09 Jan 2018 21:31:21 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf
# Wed, 10 Jan 2018 03:04:44 GMT
RUN apk add --no-cache iputils ca-certificates net-snmp-tools procps &&     update-ca-certificates
# Fri, 06 Jul 2018 02:11:55 GMT
ENV TELEGRAF_VERSION=1.7.1
# Fri, 06 Jul 2018 02:12:00 GMT
RUN set -ex &&     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf-${TELEGRAF_VERSION}-static_linux_amd64.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf-${TELEGRAF_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify telegraf-${TELEGRAF_VERSION}-static_linux_amd64.tar.gz.asc telegraf-${TELEGRAF_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src /etc/telegraf &&     tar -C /usr/src -xzf telegraf-${TELEGRAF_VERSION}-static_linux_amd64.tar.gz &&     mv /usr/src/telegraf*/telegraf.conf /etc/telegraf/ &&     chmod +x /usr/src/telegraf*/* &&     cp -a /usr/src/telegraf*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Fri, 06 Jul 2018 02:12:00 GMT
EXPOSE 8092/udp 8094/tcp 8125/udp
# Fri, 06 Jul 2018 02:12:00 GMT
COPY file:43e6828e001b57ab465cff8dfd3d30830289afe7ca5944b61641956bfe38cd1c in /entrypoint.sh 
# Fri, 06 Jul 2018 02:12:00 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 06 Jul 2018 02:12:01 GMT
CMD ["telegraf"]
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
	-	`sha256:744f2d4e2ea14cfa1b936a8f71db3bf1f3bd417925c618740330adc60e1b2b01`  
		Last Modified: Wed, 10 Jan 2018 03:05:41 GMT  
		Size: 2.8 MB (2796395 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7ffb2ba692c36f49e2ea9aa345f39d8414269f4f9474c03c429aa1340494c34`  
		Last Modified: Fri, 06 Jul 2018 02:13:00 GMT  
		Size: 10.5 MB (10464228 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7f0fe511257d5658544bfb7e1b959a2e9abc04c19c5663ea721fdd49f3d8b22`  
		Last Modified: Fri, 06 Jul 2018 02:12:57 GMT  
		Size: 183.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `telegraf:latest`

```console
$ docker pull telegraf@sha256:839750260a4f9a817be477fa95f13014c78d2828021c52c865ffbf8ec416bbe7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `telegraf:latest` - linux; amd64

```console
$ docker pull telegraf@sha256:ea35f74c809a03c03238f0d5e843189655a826154db28759e7c24958261825bf
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **86.5 MB (86515964 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bc1811bdad4e7621c91aa81c168f81345238c0c09acf78bf3a45dedbda191f13`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Tue, 26 Jun 2018 21:24:58 GMT
ADD file:f21d7c14104d5d9fa99f271177e765a3472f5a69398bb78f34f7401e9b2df837 in / 
# Tue, 26 Jun 2018 21:24:58 GMT
CMD ["bash"]
# Tue, 26 Jun 2018 22:16:40 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 26 Jun 2018 22:16:48 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 27 Jun 2018 04:14:22 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends iputils-ping snmp procps &&     rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 04:14:25 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Fri, 06 Jul 2018 02:11:37 GMT
ENV TELEGRAF_VERSION=1.7.1
# Fri, 06 Jul 2018 02:11:43 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     gpg --batch --verify telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     dpkg -i telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     rm -f telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb*
# Fri, 06 Jul 2018 02:11:43 GMT
EXPOSE 8092/udp 8094/tcp 8125/udp
# Fri, 06 Jul 2018 02:11:44 GMT
COPY file:7211de01f296351833389a1a1879d450e2cb727d7e2910d5807937f99983edf7 in /entrypoint.sh 
# Fri, 06 Jul 2018 02:11:44 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 06 Jul 2018 02:11:44 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:0bd44ff9c2cf1129ef8cea689b3e10e6498f64d2f8d5532caae55841b474bf3a`  
		Last Modified: Tue, 26 Jun 2018 21:36:36 GMT  
		Size: 45.3 MB (45319224 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:047670ddbd2a37cb7940be99332555b0a9f4f2531802e50c06128c340ccd0c0d`  
		Last Modified: Tue, 26 Jun 2018 22:30:05 GMT  
		Size: 10.8 MB (10774053 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea7d5dc8943870545f4eecc6b06b3fd6b12b987dc99f0bbcfee8f132044fc9e2`  
		Last Modified: Tue, 26 Jun 2018 22:30:03 GMT  
		Size: 4.3 MB (4336270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b722436a7ba3b685a185d347f736acacfcc5473d051fdc084a60afeead4e62a8`  
		Last Modified: Wed, 27 Jun 2018 04:15:28 GMT  
		Size: 15.6 MB (15587454 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6ee0dc7fcf815172eaf007ca9432a354478ea1dccd5966c34cb043847cb4991`  
		Last Modified: Wed, 27 Jun 2018 04:15:23 GMT  
		Size: 2.9 KB (2900 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93f776c71297b4ff33e14d6ed6f5acf4dcacdf3e2297198cd4f74f7cbdd037aa`  
		Last Modified: Fri, 06 Jul 2018 02:12:20 GMT  
		Size: 10.5 MB (10495880 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43f83dd890228387072250e78bc74ce71426ef3627548bdf84c558bc6b971eb5`  
		Last Modified: Fri, 06 Jul 2018 02:12:19 GMT  
		Size: 183.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `telegraf:latest` - linux; arm variant v7

```console
$ docker pull telegraf@sha256:b8716a1cf55e74dccf78ba2c0b27ac8defe03d2d53d1f7412000eeb0d34596b4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **80.0 MB (80005135 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e0b54efad23c5741d1b1a0c140b480ee7f740881407e08f3728e58ca4bb7ffd1`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Wed, 27 Jun 2018 12:03:26 GMT
ADD file:b928e6adeb71af1928fc7b8e0ff4770e5521eebf544a3b27f9736ac86e7a0ffa in / 
# Wed, 27 Jun 2018 12:03:27 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 12:47:41 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 12:47:48 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 27 Jun 2018 15:52:19 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends iputils-ping snmp procps &&     rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 15:52:24 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Wed, 27 Jun 2018 15:52:56 GMT
ENV TELEGRAF_VERSION=1.7.0
# Wed, 27 Jun 2018 15:52:59 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     gpg --batch --verify telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     dpkg -i telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     rm -f telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb*
# Wed, 27 Jun 2018 15:53:00 GMT
EXPOSE 8092/udp 8094/tcp 8125/udp
# Wed, 27 Jun 2018 15:53:00 GMT
COPY file:7211de01f296351833389a1a1879d450e2cb727d7e2910d5807937f99983edf7 in /entrypoint.sh 
# Wed, 27 Jun 2018 15:53:01 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 27 Jun 2018 15:53:02 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:c675459249e5e2b5c2119c5965490fb00918a71cd19ba6a70e1c14ea0366cc9a`  
		Last Modified: Wed, 27 Jun 2018 12:12:46 GMT  
		Size: 42.1 MB (42062253 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a87675d75ec387a55e1b055dfadf15fd7137586ee9acf9be9b2a4840e4001b2a`  
		Last Modified: Wed, 27 Jun 2018 12:58:52 GMT  
		Size: 9.5 MB (9472634 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f55e83b4f681428c2fb1542a44d864d0d2f78d235199a33824985049fd42bb5`  
		Last Modified: Wed, 27 Jun 2018 12:58:50 GMT  
		Size: 3.9 MB (3913173 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d833c61f9b3a119781fe7adfa5eba885a0ab79225cd2588bd742c4070092790`  
		Last Modified: Wed, 27 Jun 2018 15:53:20 GMT  
		Size: 14.5 MB (14465663 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea6fd3757f57f08c55b03f5b69442def4aa297a168ecb7313bafd104255e317d`  
		Last Modified: Wed, 27 Jun 2018 15:53:15 GMT  
		Size: 2.9 KB (2915 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1debfbe2a293bb4b39ffc931c1a41840de5655aa7c212f140ae2040f44c2e0aa`  
		Last Modified: Wed, 27 Jun 2018 15:53:54 GMT  
		Size: 10.1 MB (10088313 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41d5ee60d9ea6fbbcae5cd2e6d5c01f92f44cb81152b97cb1b5040e76bf63b76`  
		Last Modified: Wed, 27 Jun 2018 15:53:52 GMT  
		Size: 184.0 B  
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
