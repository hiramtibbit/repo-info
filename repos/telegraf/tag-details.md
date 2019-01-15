<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `telegraf`

-	[`telegraf:1.7`](#telegraf17)
-	[`telegraf:1.7.4`](#telegraf174)
-	[`telegraf:1.7.4-alpine`](#telegraf174-alpine)
-	[`telegraf:1.7-alpine`](#telegraf17-alpine)
-	[`telegraf:1.8`](#telegraf18)
-	[`telegraf:1.8.3`](#telegraf183)
-	[`telegraf:1.8.3-alpine`](#telegraf183-alpine)
-	[`telegraf:1.8-alpine`](#telegraf18-alpine)
-	[`telegraf:1.9`](#telegraf19)
-	[`telegraf:1.9.2`](#telegraf192)
-	[`telegraf:1.9.2-alpine`](#telegraf192-alpine)
-	[`telegraf:1.9-alpine`](#telegraf19-alpine)
-	[`telegraf:alpine`](#telegrafalpine)
-	[`telegraf:latest`](#telegraflatest)

## `telegraf:1.7`

```console
$ docker pull telegraf@sha256:6a7ba24f039e5e2aab4404f0e4fc155e12c87aff17b9e4154a4b6d26a18ec075
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `telegraf:1.7` - linux; amd64

```console
$ docker pull telegraf@sha256:042e87e69c55125f9f87c70455fe5c6962c1a67a9efa1f4c2e343fd0dfd5d5d0
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **86.9 MB (86912100 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1eedec289843a658a18503b3b18a137ea5e0f1be734e49c9fe4dd44c111b36f7`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Fri, 28 Dec 2018 23:29:37 GMT
ADD file:da71baf0d22cb2ede91c5e3ff959607e47459a9d7bda220a62a3da362b0e59ea in / 
# Fri, 28 Dec 2018 23:29:38 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 00:04:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 00:04:34 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 29 Dec 2018 09:16:36 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends iputils-ping snmp procps lm-sensors &&     rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 09:16:39 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Sat, 29 Dec 2018 09:16:39 GMT
ENV TELEGRAF_VERSION=1.7.4
# Sat, 29 Dec 2018 09:16:41 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     gpg --batch --verify telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     dpkg -i telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     rm -f telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb*
# Sat, 29 Dec 2018 09:16:41 GMT
EXPOSE 8092/udp 8094 8125/udp
# Sat, 29 Dec 2018 09:16:42 GMT
COPY file:7e725b38b34580a28d521266535fcafc651af09f8af8fc6e03ef74768e1b69a2 in /entrypoint.sh 
# Sat, 29 Dec 2018 09:16:42 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Sat, 29 Dec 2018 09:16:42 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:cd8eada9c7bb496eb685fc6d2198c33db7cb05daf0fde42e4cf5bf0127cbdf38`  
		Last Modified: Fri, 28 Dec 2018 23:35:50 GMT  
		Size: 45.3 MB (45323792 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2677faec825930a8844845f55454ee0495ceb5bea9fc904d5b3125de863dc1d`  
		Last Modified: Sat, 29 Dec 2018 00:21:34 GMT  
		Size: 10.8 MB (10780911 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fcce419a96b1219a265bf7a933d66b585a6f8d73448533f3833c73ad49fb5e88`  
		Last Modified: Sat, 29 Dec 2018 00:21:30 GMT  
		Size: 4.3 MB (4340024 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9249369b96631bbde225f53b4c8eedb28914de24f74f79698386ddba766e031`  
		Last Modified: Sat, 29 Dec 2018 09:17:18 GMT  
		Size: 16.0 MB (15965033 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a330fa0469555ef184a32f20c337762bc1c219de4b70de5d3086ccbcac9001b`  
		Last Modified: Sat, 29 Dec 2018 09:17:14 GMT  
		Size: 2.8 KB (2773 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2147629e13454dbddf0d074325e724f32bd8e2909f0dba8c7d4d83066b85c13f`  
		Last Modified: Sat, 29 Dec 2018 09:17:17 GMT  
		Size: 10.5 MB (10499382 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d29d8e15d4b76bcd849426c9c879e58f1a68a1120f99b9ca9077bc895b226f2`  
		Last Modified: Sat, 29 Dec 2018 09:17:15 GMT  
		Size: 185.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `telegraf:1.7` - linux; arm variant v7

```console
$ docker pull telegraf@sha256:1113e655a0fe02655e853dcfc136c50333e20a64837c5c46cc35a273b2f45be5
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **80.4 MB (80402502 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2938bacb5e8e28942fa866b532b5a3e410886a805a66203cb34c7d75aa7c9e12`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Sat, 29 Dec 2018 13:04:28 GMT
ADD file:3ab1f738bb6fe0b2e0c47963cf773badbd7069848e58eeb671d7f13e357f02d8 in / 
# Sat, 29 Dec 2018 13:04:30 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 13:43:30 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 13:43:42 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 09 Jan 2019 15:20:27 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends iputils-ping snmp procps lm-sensors &&     rm -rf /var/lib/apt/lists/*
# Wed, 09 Jan 2019 15:20:31 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Wed, 09 Jan 2019 15:20:31 GMT
ENV TELEGRAF_VERSION=1.7.4
# Wed, 09 Jan 2019 15:20:35 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     gpg --batch --verify telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     dpkg -i telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     rm -f telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb*
# Wed, 09 Jan 2019 15:20:35 GMT
EXPOSE 8092/udp 8094 8125/udp
# Wed, 09 Jan 2019 15:20:36 GMT
COPY file:7e725b38b34580a28d521266535fcafc651af09f8af8fc6e03ef74768e1b69a2 in /entrypoint.sh 
# Wed, 09 Jan 2019 15:20:36 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 09 Jan 2019 15:20:37 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:76e424dac3ee85f0c45a60646f8b87f57bf2ed6b48b6e06522628d2d8f7e06cf`  
		Last Modified: Sat, 29 Dec 2018 13:12:18 GMT  
		Size: 42.1 MB (42074583 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2f48ddd91eb6c0651e04903412a7878a0c6b983485404d539b5770c2df6c462`  
		Last Modified: Sat, 29 Dec 2018 14:04:30 GMT  
		Size: 9.5 MB (9480290 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:307946877196cb875cf9ce23e16058fc9525d372e0e3c6652d6f805675257c98`  
		Last Modified: Sat, 29 Dec 2018 14:04:30 GMT  
		Size: 3.9 MB (3918483 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0a36d6ccc5afe43556856cc17963ba79966f1c2fbad16ee144e2a218b36b2df`  
		Last Modified: Wed, 09 Jan 2019 15:21:18 GMT  
		Size: 14.8 MB (14835898 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc4e97c9da1241d95641b533a30efd6d787b113473a893e3a6e73a8ad3239d4d`  
		Last Modified: Wed, 09 Jan 2019 15:21:12 GMT  
		Size: 2.8 KB (2799 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70f2f299fc38527d75a229e830f885ebeeba77b4a2b367592c3089abbbeccead`  
		Last Modified: Wed, 09 Jan 2019 15:21:15 GMT  
		Size: 10.1 MB (10090264 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d1b0164c7236688c5088065e2f5d9135d45e3bb3b5d38592130b31363dda6bd`  
		Last Modified: Wed, 09 Jan 2019 15:21:12 GMT  
		Size: 185.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `telegraf:1.7` - linux; arm64 variant v8

```console
$ docker pull telegraf@sha256:57c67c48614582b515b667e2f497f0b9de68d2d62288a9a59502ea321d5d800d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **82.3 MB (82334717 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b283464a517886e412c1a44bb785784b926edc32cad03318763e685549053fae`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Sat, 29 Dec 2018 10:08:10 GMT
ADD file:8238e4e08413d772a0383ef64eccc0448c682834c018a28e87a568a33b0da788 in / 
# Sat, 29 Dec 2018 10:08:11 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 12:10:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 12:11:00 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sun, 30 Dec 2018 01:48:32 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends iputils-ping snmp procps lm-sensors &&     rm -rf /var/lib/apt/lists/*
# Sun, 30 Dec 2018 01:48:38 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Sun, 30 Dec 2018 01:48:39 GMT
ENV TELEGRAF_VERSION=1.7.4
# Sun, 30 Dec 2018 01:48:48 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     gpg --batch --verify telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     dpkg -i telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     rm -f telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb*
# Sun, 30 Dec 2018 01:48:49 GMT
EXPOSE 8092/udp 8094 8125/udp
# Sun, 30 Dec 2018 01:48:50 GMT
COPY file:7e725b38b34580a28d521266535fcafc651af09f8af8fc6e03ef74768e1b69a2 in /entrypoint.sh 
# Sun, 30 Dec 2018 01:48:51 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Sun, 30 Dec 2018 01:48:52 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:ed1ec7511bfa23f7413f2fc49fb5b111ef33638df9a60111a2c282a2f78a7653`  
		Last Modified: Sat, 29 Dec 2018 10:14:38 GMT  
		Size: 43.1 MB (43116478 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:adb2bf3fc8884b0bfbf3d5317df5126bdd1911341a1d0736bca48b0043d81785`  
		Last Modified: Sat, 29 Dec 2018 13:33:28 GMT  
		Size: 9.7 MB (9728682 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:795dadfe0a1e898d47690c9839194ddb1373266c1883d742f4b8d5872be25b8c`  
		Last Modified: Sat, 29 Dec 2018 13:33:25 GMT  
		Size: 4.1 MB (4093166 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:711640d4f740677ab3d213c1b1894cfddf351bc3fc1b81e8edd1ea1b2017fac2`  
		Last Modified: Sun, 30 Dec 2018 01:50:17 GMT  
		Size: 15.5 MB (15525881 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39e5bc855a0d7a87bc8898165fad216c4fa707537c43dda911dab9159d573d0b`  
		Last Modified: Sun, 30 Dec 2018 01:50:05 GMT  
		Size: 2.8 KB (2771 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:255612e708e723b145641af36758f07904960b91f473fd6fc0bcace113c218be`  
		Last Modified: Sun, 30 Dec 2018 01:50:13 GMT  
		Size: 9.9 MB (9867557 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ead020740997cd96f35946311b4edc7dc6e0f59f0e5e6da4e90065b08c699bd1`  
		Last Modified: Sun, 30 Dec 2018 01:50:04 GMT  
		Size: 182.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `telegraf:1.7.4`

```console
$ docker pull telegraf@sha256:6a7ba24f039e5e2aab4404f0e4fc155e12c87aff17b9e4154a4b6d26a18ec075
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `telegraf:1.7.4` - linux; amd64

```console
$ docker pull telegraf@sha256:042e87e69c55125f9f87c70455fe5c6962c1a67a9efa1f4c2e343fd0dfd5d5d0
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **86.9 MB (86912100 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1eedec289843a658a18503b3b18a137ea5e0f1be734e49c9fe4dd44c111b36f7`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Fri, 28 Dec 2018 23:29:37 GMT
ADD file:da71baf0d22cb2ede91c5e3ff959607e47459a9d7bda220a62a3da362b0e59ea in / 
# Fri, 28 Dec 2018 23:29:38 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 00:04:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 00:04:34 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 29 Dec 2018 09:16:36 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends iputils-ping snmp procps lm-sensors &&     rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 09:16:39 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Sat, 29 Dec 2018 09:16:39 GMT
ENV TELEGRAF_VERSION=1.7.4
# Sat, 29 Dec 2018 09:16:41 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     gpg --batch --verify telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     dpkg -i telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     rm -f telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb*
# Sat, 29 Dec 2018 09:16:41 GMT
EXPOSE 8092/udp 8094 8125/udp
# Sat, 29 Dec 2018 09:16:42 GMT
COPY file:7e725b38b34580a28d521266535fcafc651af09f8af8fc6e03ef74768e1b69a2 in /entrypoint.sh 
# Sat, 29 Dec 2018 09:16:42 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Sat, 29 Dec 2018 09:16:42 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:cd8eada9c7bb496eb685fc6d2198c33db7cb05daf0fde42e4cf5bf0127cbdf38`  
		Last Modified: Fri, 28 Dec 2018 23:35:50 GMT  
		Size: 45.3 MB (45323792 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2677faec825930a8844845f55454ee0495ceb5bea9fc904d5b3125de863dc1d`  
		Last Modified: Sat, 29 Dec 2018 00:21:34 GMT  
		Size: 10.8 MB (10780911 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fcce419a96b1219a265bf7a933d66b585a6f8d73448533f3833c73ad49fb5e88`  
		Last Modified: Sat, 29 Dec 2018 00:21:30 GMT  
		Size: 4.3 MB (4340024 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9249369b96631bbde225f53b4c8eedb28914de24f74f79698386ddba766e031`  
		Last Modified: Sat, 29 Dec 2018 09:17:18 GMT  
		Size: 16.0 MB (15965033 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a330fa0469555ef184a32f20c337762bc1c219de4b70de5d3086ccbcac9001b`  
		Last Modified: Sat, 29 Dec 2018 09:17:14 GMT  
		Size: 2.8 KB (2773 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2147629e13454dbddf0d074325e724f32bd8e2909f0dba8c7d4d83066b85c13f`  
		Last Modified: Sat, 29 Dec 2018 09:17:17 GMT  
		Size: 10.5 MB (10499382 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d29d8e15d4b76bcd849426c9c879e58f1a68a1120f99b9ca9077bc895b226f2`  
		Last Modified: Sat, 29 Dec 2018 09:17:15 GMT  
		Size: 185.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `telegraf:1.7.4` - linux; arm variant v7

```console
$ docker pull telegraf@sha256:1113e655a0fe02655e853dcfc136c50333e20a64837c5c46cc35a273b2f45be5
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **80.4 MB (80402502 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2938bacb5e8e28942fa866b532b5a3e410886a805a66203cb34c7d75aa7c9e12`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Sat, 29 Dec 2018 13:04:28 GMT
ADD file:3ab1f738bb6fe0b2e0c47963cf773badbd7069848e58eeb671d7f13e357f02d8 in / 
# Sat, 29 Dec 2018 13:04:30 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 13:43:30 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 13:43:42 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 09 Jan 2019 15:20:27 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends iputils-ping snmp procps lm-sensors &&     rm -rf /var/lib/apt/lists/*
# Wed, 09 Jan 2019 15:20:31 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Wed, 09 Jan 2019 15:20:31 GMT
ENV TELEGRAF_VERSION=1.7.4
# Wed, 09 Jan 2019 15:20:35 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     gpg --batch --verify telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     dpkg -i telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     rm -f telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb*
# Wed, 09 Jan 2019 15:20:35 GMT
EXPOSE 8092/udp 8094 8125/udp
# Wed, 09 Jan 2019 15:20:36 GMT
COPY file:7e725b38b34580a28d521266535fcafc651af09f8af8fc6e03ef74768e1b69a2 in /entrypoint.sh 
# Wed, 09 Jan 2019 15:20:36 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 09 Jan 2019 15:20:37 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:76e424dac3ee85f0c45a60646f8b87f57bf2ed6b48b6e06522628d2d8f7e06cf`  
		Last Modified: Sat, 29 Dec 2018 13:12:18 GMT  
		Size: 42.1 MB (42074583 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2f48ddd91eb6c0651e04903412a7878a0c6b983485404d539b5770c2df6c462`  
		Last Modified: Sat, 29 Dec 2018 14:04:30 GMT  
		Size: 9.5 MB (9480290 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:307946877196cb875cf9ce23e16058fc9525d372e0e3c6652d6f805675257c98`  
		Last Modified: Sat, 29 Dec 2018 14:04:30 GMT  
		Size: 3.9 MB (3918483 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0a36d6ccc5afe43556856cc17963ba79966f1c2fbad16ee144e2a218b36b2df`  
		Last Modified: Wed, 09 Jan 2019 15:21:18 GMT  
		Size: 14.8 MB (14835898 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc4e97c9da1241d95641b533a30efd6d787b113473a893e3a6e73a8ad3239d4d`  
		Last Modified: Wed, 09 Jan 2019 15:21:12 GMT  
		Size: 2.8 KB (2799 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70f2f299fc38527d75a229e830f885ebeeba77b4a2b367592c3089abbbeccead`  
		Last Modified: Wed, 09 Jan 2019 15:21:15 GMT  
		Size: 10.1 MB (10090264 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d1b0164c7236688c5088065e2f5d9135d45e3bb3b5d38592130b31363dda6bd`  
		Last Modified: Wed, 09 Jan 2019 15:21:12 GMT  
		Size: 185.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `telegraf:1.7.4` - linux; arm64 variant v8

```console
$ docker pull telegraf@sha256:57c67c48614582b515b667e2f497f0b9de68d2d62288a9a59502ea321d5d800d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **82.3 MB (82334717 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b283464a517886e412c1a44bb785784b926edc32cad03318763e685549053fae`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Sat, 29 Dec 2018 10:08:10 GMT
ADD file:8238e4e08413d772a0383ef64eccc0448c682834c018a28e87a568a33b0da788 in / 
# Sat, 29 Dec 2018 10:08:11 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 12:10:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 12:11:00 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sun, 30 Dec 2018 01:48:32 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends iputils-ping snmp procps lm-sensors &&     rm -rf /var/lib/apt/lists/*
# Sun, 30 Dec 2018 01:48:38 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Sun, 30 Dec 2018 01:48:39 GMT
ENV TELEGRAF_VERSION=1.7.4
# Sun, 30 Dec 2018 01:48:48 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     gpg --batch --verify telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     dpkg -i telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     rm -f telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb*
# Sun, 30 Dec 2018 01:48:49 GMT
EXPOSE 8092/udp 8094 8125/udp
# Sun, 30 Dec 2018 01:48:50 GMT
COPY file:7e725b38b34580a28d521266535fcafc651af09f8af8fc6e03ef74768e1b69a2 in /entrypoint.sh 
# Sun, 30 Dec 2018 01:48:51 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Sun, 30 Dec 2018 01:48:52 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:ed1ec7511bfa23f7413f2fc49fb5b111ef33638df9a60111a2c282a2f78a7653`  
		Last Modified: Sat, 29 Dec 2018 10:14:38 GMT  
		Size: 43.1 MB (43116478 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:adb2bf3fc8884b0bfbf3d5317df5126bdd1911341a1d0736bca48b0043d81785`  
		Last Modified: Sat, 29 Dec 2018 13:33:28 GMT  
		Size: 9.7 MB (9728682 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:795dadfe0a1e898d47690c9839194ddb1373266c1883d742f4b8d5872be25b8c`  
		Last Modified: Sat, 29 Dec 2018 13:33:25 GMT  
		Size: 4.1 MB (4093166 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:711640d4f740677ab3d213c1b1894cfddf351bc3fc1b81e8edd1ea1b2017fac2`  
		Last Modified: Sun, 30 Dec 2018 01:50:17 GMT  
		Size: 15.5 MB (15525881 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39e5bc855a0d7a87bc8898165fad216c4fa707537c43dda911dab9159d573d0b`  
		Last Modified: Sun, 30 Dec 2018 01:50:05 GMT  
		Size: 2.8 KB (2771 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:255612e708e723b145641af36758f07904960b91f473fd6fc0bcace113c218be`  
		Last Modified: Sun, 30 Dec 2018 01:50:13 GMT  
		Size: 9.9 MB (9867557 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ead020740997cd96f35946311b4edc7dc6e0f59f0e5e6da4e90065b08c699bd1`  
		Last Modified: Sun, 30 Dec 2018 01:50:04 GMT  
		Size: 182.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `telegraf:1.7.4-alpine`

```console
$ docker pull telegraf@sha256:54324a4dd4e61b141f4a380ec78840ab80a665ee1b824807fd7a81ea934fc48a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `telegraf:1.7.4-alpine` - linux; amd64

```console
$ docker pull telegraf@sha256:200670c888eb9dc4c159c752d021c104160e6a50a13a047875d2e9a81eaf1501
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.9 MB (15922260 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f422c708fe812160ac340db83e92e064fa314f9f91a6b0aa9b2ea1b541ee5916`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Fri, 21 Dec 2018 00:21:29 GMT
ADD file:2ff00caea4e83dfade726ca47e3c795a1e9acb8ac24e392785c474ecf9a621f2 in / 
# Fri, 21 Dec 2018 00:21:30 GMT
CMD ["/bin/sh"]
# Thu, 10 Jan 2019 22:19:23 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf
# Thu, 10 Jan 2019 22:22:02 GMT
RUN apk add --no-cache iputils ca-certificates net-snmp-tools procps lm_sensors &&     update-ca-certificates
# Thu, 10 Jan 2019 22:22:02 GMT
ENV TELEGRAF_VERSION=1.7.4
# Thu, 10 Jan 2019 22:22:07 GMT
RUN set -ex &&     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf-${TELEGRAF_VERSION}-static_linux_amd64.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf-${TELEGRAF_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify telegraf-${TELEGRAF_VERSION}-static_linux_amd64.tar.gz.asc telegraf-${TELEGRAF_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src /etc/telegraf &&     tar -C /usr/src -xzf telegraf-${TELEGRAF_VERSION}-static_linux_amd64.tar.gz &&     mv /usr/src/telegraf*/telegraf.conf /etc/telegraf/ &&     chmod +x /usr/src/telegraf*/* &&     cp -a /usr/src/telegraf*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Thu, 10 Jan 2019 22:22:07 GMT
EXPOSE 8092/udp 8094 8125/udp
# Thu, 10 Jan 2019 22:22:07 GMT
COPY file:a8a66b0d8dac2aee66897c63ce9b7a3d282bb5d7b796ffb12c2cd9227fed341b in /entrypoint.sh 
# Thu, 10 Jan 2019 22:22:08 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 10 Jan 2019 22:22:08 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:cd784148e3483c2c86c50a48e535302ab0288bebd587accf40b714fffd0646b3`  
		Last Modified: Fri, 21 Dec 2018 00:23:44 GMT  
		Size: 2.2 MB (2207025 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6de7358bfdb4efc63064a37b0ad200f87cc0d4f70fc47f1c720ce71c9543e1fa`  
		Last Modified: Thu, 10 Jan 2019 22:20:06 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bed8de54468cd6b6b1a8b159fe6e77256b7f00b00106d3d0a6452c17c4ab8cc3`  
		Last Modified: Thu, 10 Jan 2019 22:22:46 GMT  
		Size: 3.2 MB (3248163 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2081a841aea3b31ad2cacf99d435db1dcc0a0bb6669290b2a040d1b67772257`  
		Last Modified: Thu, 10 Jan 2019 22:22:47 GMT  
		Size: 10.5 MB (10466735 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64ea19e4f90eb497cc34152857401c3825270fc94c8d755a5c2ac97c1bbcdb91`  
		Last Modified: Thu, 10 Jan 2019 22:22:45 GMT  
		Size: 182.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `telegraf:1.7-alpine`

```console
$ docker pull telegraf@sha256:54324a4dd4e61b141f4a380ec78840ab80a665ee1b824807fd7a81ea934fc48a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `telegraf:1.7-alpine` - linux; amd64

```console
$ docker pull telegraf@sha256:200670c888eb9dc4c159c752d021c104160e6a50a13a047875d2e9a81eaf1501
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.9 MB (15922260 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f422c708fe812160ac340db83e92e064fa314f9f91a6b0aa9b2ea1b541ee5916`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Fri, 21 Dec 2018 00:21:29 GMT
ADD file:2ff00caea4e83dfade726ca47e3c795a1e9acb8ac24e392785c474ecf9a621f2 in / 
# Fri, 21 Dec 2018 00:21:30 GMT
CMD ["/bin/sh"]
# Thu, 10 Jan 2019 22:19:23 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf
# Thu, 10 Jan 2019 22:22:02 GMT
RUN apk add --no-cache iputils ca-certificates net-snmp-tools procps lm_sensors &&     update-ca-certificates
# Thu, 10 Jan 2019 22:22:02 GMT
ENV TELEGRAF_VERSION=1.7.4
# Thu, 10 Jan 2019 22:22:07 GMT
RUN set -ex &&     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf-${TELEGRAF_VERSION}-static_linux_amd64.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf-${TELEGRAF_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify telegraf-${TELEGRAF_VERSION}-static_linux_amd64.tar.gz.asc telegraf-${TELEGRAF_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src /etc/telegraf &&     tar -C /usr/src -xzf telegraf-${TELEGRAF_VERSION}-static_linux_amd64.tar.gz &&     mv /usr/src/telegraf*/telegraf.conf /etc/telegraf/ &&     chmod +x /usr/src/telegraf*/* &&     cp -a /usr/src/telegraf*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Thu, 10 Jan 2019 22:22:07 GMT
EXPOSE 8092/udp 8094 8125/udp
# Thu, 10 Jan 2019 22:22:07 GMT
COPY file:a8a66b0d8dac2aee66897c63ce9b7a3d282bb5d7b796ffb12c2cd9227fed341b in /entrypoint.sh 
# Thu, 10 Jan 2019 22:22:08 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 10 Jan 2019 22:22:08 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:cd784148e3483c2c86c50a48e535302ab0288bebd587accf40b714fffd0646b3`  
		Last Modified: Fri, 21 Dec 2018 00:23:44 GMT  
		Size: 2.2 MB (2207025 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6de7358bfdb4efc63064a37b0ad200f87cc0d4f70fc47f1c720ce71c9543e1fa`  
		Last Modified: Thu, 10 Jan 2019 22:20:06 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bed8de54468cd6b6b1a8b159fe6e77256b7f00b00106d3d0a6452c17c4ab8cc3`  
		Last Modified: Thu, 10 Jan 2019 22:22:46 GMT  
		Size: 3.2 MB (3248163 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2081a841aea3b31ad2cacf99d435db1dcc0a0bb6669290b2a040d1b67772257`  
		Last Modified: Thu, 10 Jan 2019 22:22:47 GMT  
		Size: 10.5 MB (10466735 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64ea19e4f90eb497cc34152857401c3825270fc94c8d755a5c2ac97c1bbcdb91`  
		Last Modified: Thu, 10 Jan 2019 22:22:45 GMT  
		Size: 182.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `telegraf:1.8`

```console
$ docker pull telegraf@sha256:d6249b1608da2f2181454657f46b25fba300d91f786a01413b82493bde72ad03
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `telegraf:1.8` - linux; amd64

```console
$ docker pull telegraf@sha256:3fe597a834c7e32c674337e9d4e3193cd2f82c6fc4fef25f8fb2d35f9fd03ed6
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **90.5 MB (90514321 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e176082bb9b30297f8462661353404007ad2b51816d7685939e878f958b61616`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Fri, 28 Dec 2018 23:29:37 GMT
ADD file:da71baf0d22cb2ede91c5e3ff959607e47459a9d7bda220a62a3da362b0e59ea in / 
# Fri, 28 Dec 2018 23:29:38 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 00:04:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 00:04:34 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 29 Dec 2018 09:16:36 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends iputils-ping snmp procps lm-sensors &&     rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 09:16:39 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Sat, 29 Dec 2018 09:16:50 GMT
ENV TELEGRAF_VERSION=1.8.3
# Sat, 29 Dec 2018 09:16:53 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     gpg --batch --verify telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     dpkg -i telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     rm -f telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb*
# Sat, 29 Dec 2018 09:16:53 GMT
EXPOSE 8092/udp 8094 8125/udp
# Sat, 29 Dec 2018 09:16:53 GMT
COPY file:7e725b38b34580a28d521266535fcafc651af09f8af8fc6e03ef74768e1b69a2 in /entrypoint.sh 
# Sat, 29 Dec 2018 09:16:53 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Sat, 29 Dec 2018 09:16:54 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:cd8eada9c7bb496eb685fc6d2198c33db7cb05daf0fde42e4cf5bf0127cbdf38`  
		Last Modified: Fri, 28 Dec 2018 23:35:50 GMT  
		Size: 45.3 MB (45323792 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2677faec825930a8844845f55454ee0495ceb5bea9fc904d5b3125de863dc1d`  
		Last Modified: Sat, 29 Dec 2018 00:21:34 GMT  
		Size: 10.8 MB (10780911 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fcce419a96b1219a265bf7a933d66b585a6f8d73448533f3833c73ad49fb5e88`  
		Last Modified: Sat, 29 Dec 2018 00:21:30 GMT  
		Size: 4.3 MB (4340024 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9249369b96631bbde225f53b4c8eedb28914de24f74f79698386ddba766e031`  
		Last Modified: Sat, 29 Dec 2018 09:17:18 GMT  
		Size: 16.0 MB (15965033 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a330fa0469555ef184a32f20c337762bc1c219de4b70de5d3086ccbcac9001b`  
		Last Modified: Sat, 29 Dec 2018 09:17:14 GMT  
		Size: 2.8 KB (2773 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3ab965ff6c00e97bc39d19db37a562ec5b00a21890e869c61533cd14d1dfa95`  
		Last Modified: Sat, 29 Dec 2018 09:17:26 GMT  
		Size: 14.1 MB (14101603 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97206ae3bdee12f181537217fa5ec844ff44354ff429e4bf389f120fdea2960e`  
		Last Modified: Sat, 29 Dec 2018 09:17:22 GMT  
		Size: 185.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `telegraf:1.8` - linux; arm variant v7

```console
$ docker pull telegraf@sha256:ac678e033165dcc12fc602c04a0964beb7bd08dddc73f91d77bdb49757c414db
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **83.9 MB (83863431 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bb12652c7cdadeda148ae4275f79307ad2f625ba430661ce0f7d5cdc2eb94708`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Sat, 29 Dec 2018 13:04:28 GMT
ADD file:3ab1f738bb6fe0b2e0c47963cf773badbd7069848e58eeb671d7f13e357f02d8 in / 
# Sat, 29 Dec 2018 13:04:30 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 13:43:30 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 13:43:42 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 09 Jan 2019 15:20:27 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends iputils-ping snmp procps lm-sensors &&     rm -rf /var/lib/apt/lists/*
# Wed, 09 Jan 2019 15:20:31 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Wed, 09 Jan 2019 15:20:44 GMT
ENV TELEGRAF_VERSION=1.8.3
# Wed, 09 Jan 2019 15:20:48 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     gpg --batch --verify telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     dpkg -i telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     rm -f telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb*
# Wed, 09 Jan 2019 15:20:49 GMT
EXPOSE 8092/udp 8094 8125/udp
# Wed, 09 Jan 2019 15:20:49 GMT
COPY file:7e725b38b34580a28d521266535fcafc651af09f8af8fc6e03ef74768e1b69a2 in /entrypoint.sh 
# Wed, 09 Jan 2019 15:20:50 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 09 Jan 2019 15:20:50 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:76e424dac3ee85f0c45a60646f8b87f57bf2ed6b48b6e06522628d2d8f7e06cf`  
		Last Modified: Sat, 29 Dec 2018 13:12:18 GMT  
		Size: 42.1 MB (42074583 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2f48ddd91eb6c0651e04903412a7878a0c6b983485404d539b5770c2df6c462`  
		Last Modified: Sat, 29 Dec 2018 14:04:30 GMT  
		Size: 9.5 MB (9480290 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:307946877196cb875cf9ce23e16058fc9525d372e0e3c6652d6f805675257c98`  
		Last Modified: Sat, 29 Dec 2018 14:04:30 GMT  
		Size: 3.9 MB (3918483 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0a36d6ccc5afe43556856cc17963ba79966f1c2fbad16ee144e2a218b36b2df`  
		Last Modified: Wed, 09 Jan 2019 15:21:18 GMT  
		Size: 14.8 MB (14835898 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc4e97c9da1241d95641b533a30efd6d787b113473a893e3a6e73a8ad3239d4d`  
		Last Modified: Wed, 09 Jan 2019 15:21:12 GMT  
		Size: 2.8 KB (2799 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5676a62056598025195cef392b3ea568cda1640a641f9740d3cb04fe271bb35e`  
		Last Modified: Wed, 09 Jan 2019 15:21:30 GMT  
		Size: 13.6 MB (13551196 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8076f650f1cb84119c91bad82004f4c2b81aaf3aa89a54c2b3430c0681b174f`  
		Last Modified: Wed, 09 Jan 2019 15:21:25 GMT  
		Size: 182.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `telegraf:1.8` - linux; arm64 variant v8

```console
$ docker pull telegraf@sha256:3d8fe0d14b060814e647c8b7a45264710fb62723f4a3fd7714c862874cfce06b
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **85.8 MB (85755374 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:af34fa667123153109d834245b9e1996c8309f4c9def43fdc336a5e70f1b52e2`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Sat, 29 Dec 2018 10:08:10 GMT
ADD file:8238e4e08413d772a0383ef64eccc0448c682834c018a28e87a568a33b0da788 in / 
# Sat, 29 Dec 2018 10:08:11 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 12:10:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 12:11:00 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sun, 30 Dec 2018 01:48:32 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends iputils-ping snmp procps lm-sensors &&     rm -rf /var/lib/apt/lists/*
# Sun, 30 Dec 2018 01:48:38 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Sun, 30 Dec 2018 01:49:03 GMT
ENV TELEGRAF_VERSION=1.8.3
# Sun, 30 Dec 2018 01:49:13 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     gpg --batch --verify telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     dpkg -i telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     rm -f telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb*
# Sun, 30 Dec 2018 01:49:14 GMT
EXPOSE 8092/udp 8094 8125/udp
# Sun, 30 Dec 2018 01:49:15 GMT
COPY file:7e725b38b34580a28d521266535fcafc651af09f8af8fc6e03ef74768e1b69a2 in /entrypoint.sh 
# Sun, 30 Dec 2018 01:49:16 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Sun, 30 Dec 2018 01:49:17 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:ed1ec7511bfa23f7413f2fc49fb5b111ef33638df9a60111a2c282a2f78a7653`  
		Last Modified: Sat, 29 Dec 2018 10:14:38 GMT  
		Size: 43.1 MB (43116478 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:adb2bf3fc8884b0bfbf3d5317df5126bdd1911341a1d0736bca48b0043d81785`  
		Last Modified: Sat, 29 Dec 2018 13:33:28 GMT  
		Size: 9.7 MB (9728682 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:795dadfe0a1e898d47690c9839194ddb1373266c1883d742f4b8d5872be25b8c`  
		Last Modified: Sat, 29 Dec 2018 13:33:25 GMT  
		Size: 4.1 MB (4093166 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:711640d4f740677ab3d213c1b1894cfddf351bc3fc1b81e8edd1ea1b2017fac2`  
		Last Modified: Sun, 30 Dec 2018 01:50:17 GMT  
		Size: 15.5 MB (15525881 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39e5bc855a0d7a87bc8898165fad216c4fa707537c43dda911dab9159d573d0b`  
		Last Modified: Sun, 30 Dec 2018 01:50:05 GMT  
		Size: 2.8 KB (2771 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fae7155eb2f1dfe846b0f3affcdd144e4a5026a34b15abcc1f01115bb77a870`  
		Last Modified: Sun, 30 Dec 2018 01:50:35 GMT  
		Size: 13.3 MB (13288212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ac0b27951d9e8057a8679f23fe169f602589bc6e4e1ba07a5dc6c26bb1475c5`  
		Last Modified: Sun, 30 Dec 2018 01:50:27 GMT  
		Size: 184.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `telegraf:1.8.3`

```console
$ docker pull telegraf@sha256:d6249b1608da2f2181454657f46b25fba300d91f786a01413b82493bde72ad03
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `telegraf:1.8.3` - linux; amd64

```console
$ docker pull telegraf@sha256:3fe597a834c7e32c674337e9d4e3193cd2f82c6fc4fef25f8fb2d35f9fd03ed6
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **90.5 MB (90514321 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e176082bb9b30297f8462661353404007ad2b51816d7685939e878f958b61616`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Fri, 28 Dec 2018 23:29:37 GMT
ADD file:da71baf0d22cb2ede91c5e3ff959607e47459a9d7bda220a62a3da362b0e59ea in / 
# Fri, 28 Dec 2018 23:29:38 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 00:04:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 00:04:34 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 29 Dec 2018 09:16:36 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends iputils-ping snmp procps lm-sensors &&     rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 09:16:39 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Sat, 29 Dec 2018 09:16:50 GMT
ENV TELEGRAF_VERSION=1.8.3
# Sat, 29 Dec 2018 09:16:53 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     gpg --batch --verify telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     dpkg -i telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     rm -f telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb*
# Sat, 29 Dec 2018 09:16:53 GMT
EXPOSE 8092/udp 8094 8125/udp
# Sat, 29 Dec 2018 09:16:53 GMT
COPY file:7e725b38b34580a28d521266535fcafc651af09f8af8fc6e03ef74768e1b69a2 in /entrypoint.sh 
# Sat, 29 Dec 2018 09:16:53 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Sat, 29 Dec 2018 09:16:54 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:cd8eada9c7bb496eb685fc6d2198c33db7cb05daf0fde42e4cf5bf0127cbdf38`  
		Last Modified: Fri, 28 Dec 2018 23:35:50 GMT  
		Size: 45.3 MB (45323792 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2677faec825930a8844845f55454ee0495ceb5bea9fc904d5b3125de863dc1d`  
		Last Modified: Sat, 29 Dec 2018 00:21:34 GMT  
		Size: 10.8 MB (10780911 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fcce419a96b1219a265bf7a933d66b585a6f8d73448533f3833c73ad49fb5e88`  
		Last Modified: Sat, 29 Dec 2018 00:21:30 GMT  
		Size: 4.3 MB (4340024 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9249369b96631bbde225f53b4c8eedb28914de24f74f79698386ddba766e031`  
		Last Modified: Sat, 29 Dec 2018 09:17:18 GMT  
		Size: 16.0 MB (15965033 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a330fa0469555ef184a32f20c337762bc1c219de4b70de5d3086ccbcac9001b`  
		Last Modified: Sat, 29 Dec 2018 09:17:14 GMT  
		Size: 2.8 KB (2773 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3ab965ff6c00e97bc39d19db37a562ec5b00a21890e869c61533cd14d1dfa95`  
		Last Modified: Sat, 29 Dec 2018 09:17:26 GMT  
		Size: 14.1 MB (14101603 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97206ae3bdee12f181537217fa5ec844ff44354ff429e4bf389f120fdea2960e`  
		Last Modified: Sat, 29 Dec 2018 09:17:22 GMT  
		Size: 185.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `telegraf:1.8.3` - linux; arm variant v7

```console
$ docker pull telegraf@sha256:ac678e033165dcc12fc602c04a0964beb7bd08dddc73f91d77bdb49757c414db
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **83.9 MB (83863431 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bb12652c7cdadeda148ae4275f79307ad2f625ba430661ce0f7d5cdc2eb94708`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Sat, 29 Dec 2018 13:04:28 GMT
ADD file:3ab1f738bb6fe0b2e0c47963cf773badbd7069848e58eeb671d7f13e357f02d8 in / 
# Sat, 29 Dec 2018 13:04:30 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 13:43:30 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 13:43:42 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 09 Jan 2019 15:20:27 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends iputils-ping snmp procps lm-sensors &&     rm -rf /var/lib/apt/lists/*
# Wed, 09 Jan 2019 15:20:31 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Wed, 09 Jan 2019 15:20:44 GMT
ENV TELEGRAF_VERSION=1.8.3
# Wed, 09 Jan 2019 15:20:48 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     gpg --batch --verify telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     dpkg -i telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     rm -f telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb*
# Wed, 09 Jan 2019 15:20:49 GMT
EXPOSE 8092/udp 8094 8125/udp
# Wed, 09 Jan 2019 15:20:49 GMT
COPY file:7e725b38b34580a28d521266535fcafc651af09f8af8fc6e03ef74768e1b69a2 in /entrypoint.sh 
# Wed, 09 Jan 2019 15:20:50 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 09 Jan 2019 15:20:50 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:76e424dac3ee85f0c45a60646f8b87f57bf2ed6b48b6e06522628d2d8f7e06cf`  
		Last Modified: Sat, 29 Dec 2018 13:12:18 GMT  
		Size: 42.1 MB (42074583 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2f48ddd91eb6c0651e04903412a7878a0c6b983485404d539b5770c2df6c462`  
		Last Modified: Sat, 29 Dec 2018 14:04:30 GMT  
		Size: 9.5 MB (9480290 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:307946877196cb875cf9ce23e16058fc9525d372e0e3c6652d6f805675257c98`  
		Last Modified: Sat, 29 Dec 2018 14:04:30 GMT  
		Size: 3.9 MB (3918483 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0a36d6ccc5afe43556856cc17963ba79966f1c2fbad16ee144e2a218b36b2df`  
		Last Modified: Wed, 09 Jan 2019 15:21:18 GMT  
		Size: 14.8 MB (14835898 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc4e97c9da1241d95641b533a30efd6d787b113473a893e3a6e73a8ad3239d4d`  
		Last Modified: Wed, 09 Jan 2019 15:21:12 GMT  
		Size: 2.8 KB (2799 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5676a62056598025195cef392b3ea568cda1640a641f9740d3cb04fe271bb35e`  
		Last Modified: Wed, 09 Jan 2019 15:21:30 GMT  
		Size: 13.6 MB (13551196 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8076f650f1cb84119c91bad82004f4c2b81aaf3aa89a54c2b3430c0681b174f`  
		Last Modified: Wed, 09 Jan 2019 15:21:25 GMT  
		Size: 182.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `telegraf:1.8.3` - linux; arm64 variant v8

```console
$ docker pull telegraf@sha256:3d8fe0d14b060814e647c8b7a45264710fb62723f4a3fd7714c862874cfce06b
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **85.8 MB (85755374 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:af34fa667123153109d834245b9e1996c8309f4c9def43fdc336a5e70f1b52e2`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Sat, 29 Dec 2018 10:08:10 GMT
ADD file:8238e4e08413d772a0383ef64eccc0448c682834c018a28e87a568a33b0da788 in / 
# Sat, 29 Dec 2018 10:08:11 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 12:10:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 12:11:00 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sun, 30 Dec 2018 01:48:32 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends iputils-ping snmp procps lm-sensors &&     rm -rf /var/lib/apt/lists/*
# Sun, 30 Dec 2018 01:48:38 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Sun, 30 Dec 2018 01:49:03 GMT
ENV TELEGRAF_VERSION=1.8.3
# Sun, 30 Dec 2018 01:49:13 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     gpg --batch --verify telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     dpkg -i telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     rm -f telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb*
# Sun, 30 Dec 2018 01:49:14 GMT
EXPOSE 8092/udp 8094 8125/udp
# Sun, 30 Dec 2018 01:49:15 GMT
COPY file:7e725b38b34580a28d521266535fcafc651af09f8af8fc6e03ef74768e1b69a2 in /entrypoint.sh 
# Sun, 30 Dec 2018 01:49:16 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Sun, 30 Dec 2018 01:49:17 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:ed1ec7511bfa23f7413f2fc49fb5b111ef33638df9a60111a2c282a2f78a7653`  
		Last Modified: Sat, 29 Dec 2018 10:14:38 GMT  
		Size: 43.1 MB (43116478 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:adb2bf3fc8884b0bfbf3d5317df5126bdd1911341a1d0736bca48b0043d81785`  
		Last Modified: Sat, 29 Dec 2018 13:33:28 GMT  
		Size: 9.7 MB (9728682 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:795dadfe0a1e898d47690c9839194ddb1373266c1883d742f4b8d5872be25b8c`  
		Last Modified: Sat, 29 Dec 2018 13:33:25 GMT  
		Size: 4.1 MB (4093166 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:711640d4f740677ab3d213c1b1894cfddf351bc3fc1b81e8edd1ea1b2017fac2`  
		Last Modified: Sun, 30 Dec 2018 01:50:17 GMT  
		Size: 15.5 MB (15525881 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39e5bc855a0d7a87bc8898165fad216c4fa707537c43dda911dab9159d573d0b`  
		Last Modified: Sun, 30 Dec 2018 01:50:05 GMT  
		Size: 2.8 KB (2771 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fae7155eb2f1dfe846b0f3affcdd144e4a5026a34b15abcc1f01115bb77a870`  
		Last Modified: Sun, 30 Dec 2018 01:50:35 GMT  
		Size: 13.3 MB (13288212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ac0b27951d9e8057a8679f23fe169f602589bc6e4e1ba07a5dc6c26bb1475c5`  
		Last Modified: Sun, 30 Dec 2018 01:50:27 GMT  
		Size: 184.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `telegraf:1.8.3-alpine`

```console
$ docker pull telegraf@sha256:16e3617e076ad65a1da7316d526d878a36fbbbf78192c7268a0355b37e727dbf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `telegraf:1.8.3-alpine` - linux; amd64

```console
$ docker pull telegraf@sha256:c84b6a573e01dd18b4e1529c47eaea97503b7e5f4c78e172b6b88498cd89cd2a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **19.5 MB (19528754 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7b9e864e57e37c850ff41394387aa8a1e1d59d5deacd1a61cf5122cb057923cd`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Fri, 21 Dec 2018 00:21:29 GMT
ADD file:2ff00caea4e83dfade726ca47e3c795a1e9acb8ac24e392785c474ecf9a621f2 in / 
# Fri, 21 Dec 2018 00:21:30 GMT
CMD ["/bin/sh"]
# Thu, 10 Jan 2019 22:19:23 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf
# Thu, 10 Jan 2019 22:22:02 GMT
RUN apk add --no-cache iputils ca-certificates net-snmp-tools procps lm_sensors &&     update-ca-certificates
# Thu, 10 Jan 2019 22:22:13 GMT
ENV TELEGRAF_VERSION=1.8.3
# Thu, 10 Jan 2019 22:22:18 GMT
RUN set -ex &&     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf-${TELEGRAF_VERSION}-static_linux_amd64.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf-${TELEGRAF_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify telegraf-${TELEGRAF_VERSION}-static_linux_amd64.tar.gz.asc telegraf-${TELEGRAF_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src /etc/telegraf &&     tar -C /usr/src -xzf telegraf-${TELEGRAF_VERSION}-static_linux_amd64.tar.gz &&     mv /usr/src/telegraf*/telegraf.conf /etc/telegraf/ &&     chmod +x /usr/src/telegraf*/* &&     cp -a /usr/src/telegraf*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Thu, 10 Jan 2019 22:22:18 GMT
EXPOSE 8092/udp 8094 8125/udp
# Thu, 10 Jan 2019 22:22:19 GMT
COPY file:a8a66b0d8dac2aee66897c63ce9b7a3d282bb5d7b796ffb12c2cd9227fed341b in /entrypoint.sh 
# Thu, 10 Jan 2019 22:22:19 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 10 Jan 2019 22:22:19 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:cd784148e3483c2c86c50a48e535302ab0288bebd587accf40b714fffd0646b3`  
		Last Modified: Fri, 21 Dec 2018 00:23:44 GMT  
		Size: 2.2 MB (2207025 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6de7358bfdb4efc63064a37b0ad200f87cc0d4f70fc47f1c720ce71c9543e1fa`  
		Last Modified: Thu, 10 Jan 2019 22:20:06 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bed8de54468cd6b6b1a8b159fe6e77256b7f00b00106d3d0a6452c17c4ab8cc3`  
		Last Modified: Thu, 10 Jan 2019 22:22:46 GMT  
		Size: 3.2 MB (3248163 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0eb3733b76d5b7ce7d1cf1f41a67c47781ffc2b4fbeda64a9a579bc4b85bcf82`  
		Last Modified: Thu, 10 Jan 2019 22:22:55 GMT  
		Size: 14.1 MB (14073227 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd90089b31e34d674e800a557db197883c01ec52ae90ed8b7e6cb86b358f18d0`  
		Last Modified: Thu, 10 Jan 2019 22:22:52 GMT  
		Size: 184.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `telegraf:1.8-alpine`

```console
$ docker pull telegraf@sha256:16e3617e076ad65a1da7316d526d878a36fbbbf78192c7268a0355b37e727dbf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `telegraf:1.8-alpine` - linux; amd64

```console
$ docker pull telegraf@sha256:c84b6a573e01dd18b4e1529c47eaea97503b7e5f4c78e172b6b88498cd89cd2a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **19.5 MB (19528754 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7b9e864e57e37c850ff41394387aa8a1e1d59d5deacd1a61cf5122cb057923cd`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Fri, 21 Dec 2018 00:21:29 GMT
ADD file:2ff00caea4e83dfade726ca47e3c795a1e9acb8ac24e392785c474ecf9a621f2 in / 
# Fri, 21 Dec 2018 00:21:30 GMT
CMD ["/bin/sh"]
# Thu, 10 Jan 2019 22:19:23 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf
# Thu, 10 Jan 2019 22:22:02 GMT
RUN apk add --no-cache iputils ca-certificates net-snmp-tools procps lm_sensors &&     update-ca-certificates
# Thu, 10 Jan 2019 22:22:13 GMT
ENV TELEGRAF_VERSION=1.8.3
# Thu, 10 Jan 2019 22:22:18 GMT
RUN set -ex &&     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf-${TELEGRAF_VERSION}-static_linux_amd64.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf-${TELEGRAF_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify telegraf-${TELEGRAF_VERSION}-static_linux_amd64.tar.gz.asc telegraf-${TELEGRAF_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src /etc/telegraf &&     tar -C /usr/src -xzf telegraf-${TELEGRAF_VERSION}-static_linux_amd64.tar.gz &&     mv /usr/src/telegraf*/telegraf.conf /etc/telegraf/ &&     chmod +x /usr/src/telegraf*/* &&     cp -a /usr/src/telegraf*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Thu, 10 Jan 2019 22:22:18 GMT
EXPOSE 8092/udp 8094 8125/udp
# Thu, 10 Jan 2019 22:22:19 GMT
COPY file:a8a66b0d8dac2aee66897c63ce9b7a3d282bb5d7b796ffb12c2cd9227fed341b in /entrypoint.sh 
# Thu, 10 Jan 2019 22:22:19 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 10 Jan 2019 22:22:19 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:cd784148e3483c2c86c50a48e535302ab0288bebd587accf40b714fffd0646b3`  
		Last Modified: Fri, 21 Dec 2018 00:23:44 GMT  
		Size: 2.2 MB (2207025 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6de7358bfdb4efc63064a37b0ad200f87cc0d4f70fc47f1c720ce71c9543e1fa`  
		Last Modified: Thu, 10 Jan 2019 22:20:06 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bed8de54468cd6b6b1a8b159fe6e77256b7f00b00106d3d0a6452c17c4ab8cc3`  
		Last Modified: Thu, 10 Jan 2019 22:22:46 GMT  
		Size: 3.2 MB (3248163 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0eb3733b76d5b7ce7d1cf1f41a67c47781ffc2b4fbeda64a9a579bc4b85bcf82`  
		Last Modified: Thu, 10 Jan 2019 22:22:55 GMT  
		Size: 14.1 MB (14073227 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd90089b31e34d674e800a557db197883c01ec52ae90ed8b7e6cb86b358f18d0`  
		Last Modified: Thu, 10 Jan 2019 22:22:52 GMT  
		Size: 184.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `telegraf:1.9`

```console
$ docker pull telegraf@sha256:3751b46bead80b2691c43642c54387c2190b05e77973fdea7e6c70416bf5fb0f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `telegraf:1.9` - linux; amd64

```console
$ docker pull telegraf@sha256:d0f1b1539b98359ee06a22f1ae46fe0dc392210f25f524603d10fe0c2ea2a5b0
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **94.2 MB (94194337 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:09490fb07c90e364a1175b717af4d37999de0e1b68de9692b76905aaf57b72f7`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Fri, 28 Dec 2018 23:29:37 GMT
ADD file:da71baf0d22cb2ede91c5e3ff959607e47459a9d7bda220a62a3da362b0e59ea in / 
# Fri, 28 Dec 2018 23:29:38 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 00:04:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 00:04:34 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 29 Dec 2018 09:16:36 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends iputils-ping snmp procps lm-sensors &&     rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 09:16:39 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Thu, 10 Jan 2019 22:22:23 GMT
ENV TELEGRAF_VERSION=1.9.2
# Thu, 10 Jan 2019 22:22:25 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     gpg --batch --verify telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     dpkg -i telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     rm -f telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb*
# Thu, 10 Jan 2019 22:22:25 GMT
EXPOSE 8092/udp 8094 8125/udp
# Thu, 10 Jan 2019 22:22:26 GMT
COPY file:7e725b38b34580a28d521266535fcafc651af09f8af8fc6e03ef74768e1b69a2 in /entrypoint.sh 
# Thu, 10 Jan 2019 22:22:26 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 10 Jan 2019 22:22:26 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:cd8eada9c7bb496eb685fc6d2198c33db7cb05daf0fde42e4cf5bf0127cbdf38`  
		Last Modified: Fri, 28 Dec 2018 23:35:50 GMT  
		Size: 45.3 MB (45323792 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2677faec825930a8844845f55454ee0495ceb5bea9fc904d5b3125de863dc1d`  
		Last Modified: Sat, 29 Dec 2018 00:21:34 GMT  
		Size: 10.8 MB (10780911 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fcce419a96b1219a265bf7a933d66b585a6f8d73448533f3833c73ad49fb5e88`  
		Last Modified: Sat, 29 Dec 2018 00:21:30 GMT  
		Size: 4.3 MB (4340024 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9249369b96631bbde225f53b4c8eedb28914de24f74f79698386ddba766e031`  
		Last Modified: Sat, 29 Dec 2018 09:17:18 GMT  
		Size: 16.0 MB (15965033 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a330fa0469555ef184a32f20c337762bc1c219de4b70de5d3086ccbcac9001b`  
		Last Modified: Sat, 29 Dec 2018 09:17:14 GMT  
		Size: 2.8 KB (2773 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a91826884bdfad617403cdb195a21ce36aa99580b59c7201e1cac10dc3093950`  
		Last Modified: Thu, 10 Jan 2019 22:23:04 GMT  
		Size: 17.8 MB (17781619 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ba85c6d8b9c0436bcc815ae549dfa0985518fec7fb66740e10f1740ff387cf5`  
		Last Modified: Thu, 10 Jan 2019 22:22:58 GMT  
		Size: 185.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `telegraf:1.9` - linux; arm variant v7

```console
$ docker pull telegraf@sha256:8a5cbede1551eb076d12c4ec262efb9ab63a35830fc13c08a9071fd06cdef979
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **87.1 MB (87098923 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:640f06f51fd0db2b841fc588e724882ac6da0e042d74e00f4c90a36385a0246e`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Sat, 29 Dec 2018 13:04:28 GMT
ADD file:3ab1f738bb6fe0b2e0c47963cf773badbd7069848e58eeb671d7f13e357f02d8 in / 
# Sat, 29 Dec 2018 13:04:30 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 13:43:30 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 13:43:42 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 09 Jan 2019 15:20:27 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends iputils-ping snmp procps lm-sensors &&     rm -rf /var/lib/apt/lists/*
# Wed, 09 Jan 2019 15:20:31 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Fri, 11 Jan 2019 13:21:26 GMT
ENV TELEGRAF_VERSION=1.9.2
# Fri, 11 Jan 2019 13:21:32 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     gpg --batch --verify telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     dpkg -i telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     rm -f telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb*
# Fri, 11 Jan 2019 13:21:33 GMT
EXPOSE 8092/udp 8094 8125/udp
# Fri, 11 Jan 2019 13:21:33 GMT
COPY file:7e725b38b34580a28d521266535fcafc651af09f8af8fc6e03ef74768e1b69a2 in /entrypoint.sh 
# Fri, 11 Jan 2019 13:21:34 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 11 Jan 2019 13:21:34 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:76e424dac3ee85f0c45a60646f8b87f57bf2ed6b48b6e06522628d2d8f7e06cf`  
		Last Modified: Sat, 29 Dec 2018 13:12:18 GMT  
		Size: 42.1 MB (42074583 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2f48ddd91eb6c0651e04903412a7878a0c6b983485404d539b5770c2df6c462`  
		Last Modified: Sat, 29 Dec 2018 14:04:30 GMT  
		Size: 9.5 MB (9480290 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:307946877196cb875cf9ce23e16058fc9525d372e0e3c6652d6f805675257c98`  
		Last Modified: Sat, 29 Dec 2018 14:04:30 GMT  
		Size: 3.9 MB (3918483 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0a36d6ccc5afe43556856cc17963ba79966f1c2fbad16ee144e2a218b36b2df`  
		Last Modified: Wed, 09 Jan 2019 15:21:18 GMT  
		Size: 14.8 MB (14835898 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc4e97c9da1241d95641b533a30efd6d787b113473a893e3a6e73a8ad3239d4d`  
		Last Modified: Wed, 09 Jan 2019 15:21:12 GMT  
		Size: 2.8 KB (2799 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cacdbd4c8826d75f7bc383f18a11526cfadb74d3a80aa9b14c2183a96572eda3`  
		Last Modified: Fri, 11 Jan 2019 13:21:52 GMT  
		Size: 16.8 MB (16786685 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5bb09f1ebab72c13902d72de94338c2ffd0fca81d9d7eb967b9e67e04a978dfa`  
		Last Modified: Fri, 11 Jan 2019 13:21:45 GMT  
		Size: 185.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `telegraf:1.9` - linux; arm64 variant v8

```console
$ docker pull telegraf@sha256:2e40914c6785b92d7c5e33a9478459270a6b2f68c0ee801d1b3724b12b119a84
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **88.7 MB (88728295 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e75b7661d2e57e88a9b2b3991d1155b0f0168a1a95783208bc03f2daf0f5427c`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Sat, 29 Dec 2018 10:08:10 GMT
ADD file:8238e4e08413d772a0383ef64eccc0448c682834c018a28e87a568a33b0da788 in / 
# Sat, 29 Dec 2018 10:08:11 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 12:10:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 12:11:00 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sun, 30 Dec 2018 01:48:32 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends iputils-ping snmp procps lm-sensors &&     rm -rf /var/lib/apt/lists/*
# Sun, 30 Dec 2018 01:48:38 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Fri, 11 Jan 2019 10:22:01 GMT
ENV TELEGRAF_VERSION=1.9.2
# Fri, 11 Jan 2019 10:22:10 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     gpg --batch --verify telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     dpkg -i telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     rm -f telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb*
# Fri, 11 Jan 2019 10:22:11 GMT
EXPOSE 8092/udp 8094 8125/udp
# Fri, 11 Jan 2019 10:22:12 GMT
COPY file:7e725b38b34580a28d521266535fcafc651af09f8af8fc6e03ef74768e1b69a2 in /entrypoint.sh 
# Fri, 11 Jan 2019 10:22:13 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 11 Jan 2019 10:22:14 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:ed1ec7511bfa23f7413f2fc49fb5b111ef33638df9a60111a2c282a2f78a7653`  
		Last Modified: Sat, 29 Dec 2018 10:14:38 GMT  
		Size: 43.1 MB (43116478 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:adb2bf3fc8884b0bfbf3d5317df5126bdd1911341a1d0736bca48b0043d81785`  
		Last Modified: Sat, 29 Dec 2018 13:33:28 GMT  
		Size: 9.7 MB (9728682 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:795dadfe0a1e898d47690c9839194ddb1373266c1883d742f4b8d5872be25b8c`  
		Last Modified: Sat, 29 Dec 2018 13:33:25 GMT  
		Size: 4.1 MB (4093166 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:711640d4f740677ab3d213c1b1894cfddf351bc3fc1b81e8edd1ea1b2017fac2`  
		Last Modified: Sun, 30 Dec 2018 01:50:17 GMT  
		Size: 15.5 MB (15525881 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39e5bc855a0d7a87bc8898165fad216c4fa707537c43dda911dab9159d573d0b`  
		Last Modified: Sun, 30 Dec 2018 01:50:05 GMT  
		Size: 2.8 KB (2771 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b06143209d1f880a502ee50f57a1549b84ab821a09ca0158281a33f922f9c2b4`  
		Last Modified: Fri, 11 Jan 2019 10:22:35 GMT  
		Size: 16.3 MB (16261135 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6776276d8ea0af869f8f4534c6feeab2721f8df5406df204f5cfaa40d012165a`  
		Last Modified: Fri, 11 Jan 2019 10:22:28 GMT  
		Size: 182.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `telegraf:1.9.2`

```console
$ docker pull telegraf@sha256:3751b46bead80b2691c43642c54387c2190b05e77973fdea7e6c70416bf5fb0f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `telegraf:1.9.2` - linux; amd64

```console
$ docker pull telegraf@sha256:d0f1b1539b98359ee06a22f1ae46fe0dc392210f25f524603d10fe0c2ea2a5b0
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **94.2 MB (94194337 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:09490fb07c90e364a1175b717af4d37999de0e1b68de9692b76905aaf57b72f7`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Fri, 28 Dec 2018 23:29:37 GMT
ADD file:da71baf0d22cb2ede91c5e3ff959607e47459a9d7bda220a62a3da362b0e59ea in / 
# Fri, 28 Dec 2018 23:29:38 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 00:04:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 00:04:34 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 29 Dec 2018 09:16:36 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends iputils-ping snmp procps lm-sensors &&     rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 09:16:39 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Thu, 10 Jan 2019 22:22:23 GMT
ENV TELEGRAF_VERSION=1.9.2
# Thu, 10 Jan 2019 22:22:25 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     gpg --batch --verify telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     dpkg -i telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     rm -f telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb*
# Thu, 10 Jan 2019 22:22:25 GMT
EXPOSE 8092/udp 8094 8125/udp
# Thu, 10 Jan 2019 22:22:26 GMT
COPY file:7e725b38b34580a28d521266535fcafc651af09f8af8fc6e03ef74768e1b69a2 in /entrypoint.sh 
# Thu, 10 Jan 2019 22:22:26 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 10 Jan 2019 22:22:26 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:cd8eada9c7bb496eb685fc6d2198c33db7cb05daf0fde42e4cf5bf0127cbdf38`  
		Last Modified: Fri, 28 Dec 2018 23:35:50 GMT  
		Size: 45.3 MB (45323792 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2677faec825930a8844845f55454ee0495ceb5bea9fc904d5b3125de863dc1d`  
		Last Modified: Sat, 29 Dec 2018 00:21:34 GMT  
		Size: 10.8 MB (10780911 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fcce419a96b1219a265bf7a933d66b585a6f8d73448533f3833c73ad49fb5e88`  
		Last Modified: Sat, 29 Dec 2018 00:21:30 GMT  
		Size: 4.3 MB (4340024 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9249369b96631bbde225f53b4c8eedb28914de24f74f79698386ddba766e031`  
		Last Modified: Sat, 29 Dec 2018 09:17:18 GMT  
		Size: 16.0 MB (15965033 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a330fa0469555ef184a32f20c337762bc1c219de4b70de5d3086ccbcac9001b`  
		Last Modified: Sat, 29 Dec 2018 09:17:14 GMT  
		Size: 2.8 KB (2773 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a91826884bdfad617403cdb195a21ce36aa99580b59c7201e1cac10dc3093950`  
		Last Modified: Thu, 10 Jan 2019 22:23:04 GMT  
		Size: 17.8 MB (17781619 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ba85c6d8b9c0436bcc815ae549dfa0985518fec7fb66740e10f1740ff387cf5`  
		Last Modified: Thu, 10 Jan 2019 22:22:58 GMT  
		Size: 185.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `telegraf:1.9.2` - linux; arm variant v7

```console
$ docker pull telegraf@sha256:8a5cbede1551eb076d12c4ec262efb9ab63a35830fc13c08a9071fd06cdef979
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **87.1 MB (87098923 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:640f06f51fd0db2b841fc588e724882ac6da0e042d74e00f4c90a36385a0246e`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Sat, 29 Dec 2018 13:04:28 GMT
ADD file:3ab1f738bb6fe0b2e0c47963cf773badbd7069848e58eeb671d7f13e357f02d8 in / 
# Sat, 29 Dec 2018 13:04:30 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 13:43:30 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 13:43:42 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 09 Jan 2019 15:20:27 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends iputils-ping snmp procps lm-sensors &&     rm -rf /var/lib/apt/lists/*
# Wed, 09 Jan 2019 15:20:31 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Fri, 11 Jan 2019 13:21:26 GMT
ENV TELEGRAF_VERSION=1.9.2
# Fri, 11 Jan 2019 13:21:32 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     gpg --batch --verify telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     dpkg -i telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     rm -f telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb*
# Fri, 11 Jan 2019 13:21:33 GMT
EXPOSE 8092/udp 8094 8125/udp
# Fri, 11 Jan 2019 13:21:33 GMT
COPY file:7e725b38b34580a28d521266535fcafc651af09f8af8fc6e03ef74768e1b69a2 in /entrypoint.sh 
# Fri, 11 Jan 2019 13:21:34 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 11 Jan 2019 13:21:34 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:76e424dac3ee85f0c45a60646f8b87f57bf2ed6b48b6e06522628d2d8f7e06cf`  
		Last Modified: Sat, 29 Dec 2018 13:12:18 GMT  
		Size: 42.1 MB (42074583 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2f48ddd91eb6c0651e04903412a7878a0c6b983485404d539b5770c2df6c462`  
		Last Modified: Sat, 29 Dec 2018 14:04:30 GMT  
		Size: 9.5 MB (9480290 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:307946877196cb875cf9ce23e16058fc9525d372e0e3c6652d6f805675257c98`  
		Last Modified: Sat, 29 Dec 2018 14:04:30 GMT  
		Size: 3.9 MB (3918483 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0a36d6ccc5afe43556856cc17963ba79966f1c2fbad16ee144e2a218b36b2df`  
		Last Modified: Wed, 09 Jan 2019 15:21:18 GMT  
		Size: 14.8 MB (14835898 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc4e97c9da1241d95641b533a30efd6d787b113473a893e3a6e73a8ad3239d4d`  
		Last Modified: Wed, 09 Jan 2019 15:21:12 GMT  
		Size: 2.8 KB (2799 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cacdbd4c8826d75f7bc383f18a11526cfadb74d3a80aa9b14c2183a96572eda3`  
		Last Modified: Fri, 11 Jan 2019 13:21:52 GMT  
		Size: 16.8 MB (16786685 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5bb09f1ebab72c13902d72de94338c2ffd0fca81d9d7eb967b9e67e04a978dfa`  
		Last Modified: Fri, 11 Jan 2019 13:21:45 GMT  
		Size: 185.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `telegraf:1.9.2` - linux; arm64 variant v8

```console
$ docker pull telegraf@sha256:2e40914c6785b92d7c5e33a9478459270a6b2f68c0ee801d1b3724b12b119a84
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **88.7 MB (88728295 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e75b7661d2e57e88a9b2b3991d1155b0f0168a1a95783208bc03f2daf0f5427c`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Sat, 29 Dec 2018 10:08:10 GMT
ADD file:8238e4e08413d772a0383ef64eccc0448c682834c018a28e87a568a33b0da788 in / 
# Sat, 29 Dec 2018 10:08:11 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 12:10:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 12:11:00 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sun, 30 Dec 2018 01:48:32 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends iputils-ping snmp procps lm-sensors &&     rm -rf /var/lib/apt/lists/*
# Sun, 30 Dec 2018 01:48:38 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Fri, 11 Jan 2019 10:22:01 GMT
ENV TELEGRAF_VERSION=1.9.2
# Fri, 11 Jan 2019 10:22:10 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     gpg --batch --verify telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     dpkg -i telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     rm -f telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb*
# Fri, 11 Jan 2019 10:22:11 GMT
EXPOSE 8092/udp 8094 8125/udp
# Fri, 11 Jan 2019 10:22:12 GMT
COPY file:7e725b38b34580a28d521266535fcafc651af09f8af8fc6e03ef74768e1b69a2 in /entrypoint.sh 
# Fri, 11 Jan 2019 10:22:13 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 11 Jan 2019 10:22:14 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:ed1ec7511bfa23f7413f2fc49fb5b111ef33638df9a60111a2c282a2f78a7653`  
		Last Modified: Sat, 29 Dec 2018 10:14:38 GMT  
		Size: 43.1 MB (43116478 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:adb2bf3fc8884b0bfbf3d5317df5126bdd1911341a1d0736bca48b0043d81785`  
		Last Modified: Sat, 29 Dec 2018 13:33:28 GMT  
		Size: 9.7 MB (9728682 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:795dadfe0a1e898d47690c9839194ddb1373266c1883d742f4b8d5872be25b8c`  
		Last Modified: Sat, 29 Dec 2018 13:33:25 GMT  
		Size: 4.1 MB (4093166 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:711640d4f740677ab3d213c1b1894cfddf351bc3fc1b81e8edd1ea1b2017fac2`  
		Last Modified: Sun, 30 Dec 2018 01:50:17 GMT  
		Size: 15.5 MB (15525881 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39e5bc855a0d7a87bc8898165fad216c4fa707537c43dda911dab9159d573d0b`  
		Last Modified: Sun, 30 Dec 2018 01:50:05 GMT  
		Size: 2.8 KB (2771 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b06143209d1f880a502ee50f57a1549b84ab821a09ca0158281a33f922f9c2b4`  
		Last Modified: Fri, 11 Jan 2019 10:22:35 GMT  
		Size: 16.3 MB (16261135 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6776276d8ea0af869f8f4534c6feeab2721f8df5406df204f5cfaa40d012165a`  
		Last Modified: Fri, 11 Jan 2019 10:22:28 GMT  
		Size: 182.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `telegraf:1.9.2-alpine`

```console
$ docker pull telegraf@sha256:a7a4719baffa6327e09c43c679363b899296803042b8f7c03c50cfdd162127d8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `telegraf:1.9.2-alpine` - linux; amd64

```console
$ docker pull telegraf@sha256:db0ad9a4eed1d1792c04c6ab6a9142ab8c191c0b3ad7761e4ac4bad1c4240b68
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.2 MB (23200128 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4f8ecc9ab2c96d2bdf8bc545773bf687be407afdba0f5a4307d1193a12f186be`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Fri, 21 Dec 2018 00:21:29 GMT
ADD file:2ff00caea4e83dfade726ca47e3c795a1e9acb8ac24e392785c474ecf9a621f2 in / 
# Fri, 21 Dec 2018 00:21:30 GMT
CMD ["/bin/sh"]
# Thu, 10 Jan 2019 22:19:23 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf
# Thu, 10 Jan 2019 22:22:02 GMT
RUN apk add --no-cache iputils ca-certificates net-snmp-tools procps lm_sensors &&     update-ca-certificates
# Thu, 10 Jan 2019 22:22:28 GMT
ENV TELEGRAF_VERSION=1.9.2
# Thu, 10 Jan 2019 22:22:34 GMT
RUN set -ex &&     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf-${TELEGRAF_VERSION}-static_linux_amd64.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf-${TELEGRAF_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify telegraf-${TELEGRAF_VERSION}-static_linux_amd64.tar.gz.asc telegraf-${TELEGRAF_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src /etc/telegraf &&     tar -C /usr/src -xzf telegraf-${TELEGRAF_VERSION}-static_linux_amd64.tar.gz &&     mv /usr/src/telegraf*/telegraf.conf /etc/telegraf/ &&     chmod +x /usr/src/telegraf*/* &&     cp -a /usr/src/telegraf*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Thu, 10 Jan 2019 22:22:34 GMT
EXPOSE 8092/udp 8094 8125/udp
# Thu, 10 Jan 2019 22:22:34 GMT
COPY file:a8a66b0d8dac2aee66897c63ce9b7a3d282bb5d7b796ffb12c2cd9227fed341b in /entrypoint.sh 
# Thu, 10 Jan 2019 22:22:34 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 10 Jan 2019 22:22:34 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:cd784148e3483c2c86c50a48e535302ab0288bebd587accf40b714fffd0646b3`  
		Last Modified: Fri, 21 Dec 2018 00:23:44 GMT  
		Size: 2.2 MB (2207025 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6de7358bfdb4efc63064a37b0ad200f87cc0d4f70fc47f1c720ce71c9543e1fa`  
		Last Modified: Thu, 10 Jan 2019 22:20:06 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bed8de54468cd6b6b1a8b159fe6e77256b7f00b00106d3d0a6452c17c4ab8cc3`  
		Last Modified: Thu, 10 Jan 2019 22:22:46 GMT  
		Size: 3.2 MB (3248163 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ded3b955b3de8cc2c191824f34b7cc57c2f854e6527ad65a37f11ac733998f0`  
		Last Modified: Thu, 10 Jan 2019 22:23:16 GMT  
		Size: 17.7 MB (17744601 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab7de6942d3be408c8d642b8bdae06af4d7e227cdc84c774bd9f1220298cd648`  
		Last Modified: Thu, 10 Jan 2019 22:23:12 GMT  
		Size: 184.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `telegraf:1.9-alpine`

```console
$ docker pull telegraf@sha256:a7a4719baffa6327e09c43c679363b899296803042b8f7c03c50cfdd162127d8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `telegraf:1.9-alpine` - linux; amd64

```console
$ docker pull telegraf@sha256:db0ad9a4eed1d1792c04c6ab6a9142ab8c191c0b3ad7761e4ac4bad1c4240b68
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.2 MB (23200128 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4f8ecc9ab2c96d2bdf8bc545773bf687be407afdba0f5a4307d1193a12f186be`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Fri, 21 Dec 2018 00:21:29 GMT
ADD file:2ff00caea4e83dfade726ca47e3c795a1e9acb8ac24e392785c474ecf9a621f2 in / 
# Fri, 21 Dec 2018 00:21:30 GMT
CMD ["/bin/sh"]
# Thu, 10 Jan 2019 22:19:23 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf
# Thu, 10 Jan 2019 22:22:02 GMT
RUN apk add --no-cache iputils ca-certificates net-snmp-tools procps lm_sensors &&     update-ca-certificates
# Thu, 10 Jan 2019 22:22:28 GMT
ENV TELEGRAF_VERSION=1.9.2
# Thu, 10 Jan 2019 22:22:34 GMT
RUN set -ex &&     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf-${TELEGRAF_VERSION}-static_linux_amd64.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf-${TELEGRAF_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify telegraf-${TELEGRAF_VERSION}-static_linux_amd64.tar.gz.asc telegraf-${TELEGRAF_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src /etc/telegraf &&     tar -C /usr/src -xzf telegraf-${TELEGRAF_VERSION}-static_linux_amd64.tar.gz &&     mv /usr/src/telegraf*/telegraf.conf /etc/telegraf/ &&     chmod +x /usr/src/telegraf*/* &&     cp -a /usr/src/telegraf*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Thu, 10 Jan 2019 22:22:34 GMT
EXPOSE 8092/udp 8094 8125/udp
# Thu, 10 Jan 2019 22:22:34 GMT
COPY file:a8a66b0d8dac2aee66897c63ce9b7a3d282bb5d7b796ffb12c2cd9227fed341b in /entrypoint.sh 
# Thu, 10 Jan 2019 22:22:34 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 10 Jan 2019 22:22:34 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:cd784148e3483c2c86c50a48e535302ab0288bebd587accf40b714fffd0646b3`  
		Last Modified: Fri, 21 Dec 2018 00:23:44 GMT  
		Size: 2.2 MB (2207025 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6de7358bfdb4efc63064a37b0ad200f87cc0d4f70fc47f1c720ce71c9543e1fa`  
		Last Modified: Thu, 10 Jan 2019 22:20:06 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bed8de54468cd6b6b1a8b159fe6e77256b7f00b00106d3d0a6452c17c4ab8cc3`  
		Last Modified: Thu, 10 Jan 2019 22:22:46 GMT  
		Size: 3.2 MB (3248163 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ded3b955b3de8cc2c191824f34b7cc57c2f854e6527ad65a37f11ac733998f0`  
		Last Modified: Thu, 10 Jan 2019 22:23:16 GMT  
		Size: 17.7 MB (17744601 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab7de6942d3be408c8d642b8bdae06af4d7e227cdc84c774bd9f1220298cd648`  
		Last Modified: Thu, 10 Jan 2019 22:23:12 GMT  
		Size: 184.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `telegraf:alpine`

```console
$ docker pull telegraf@sha256:a7a4719baffa6327e09c43c679363b899296803042b8f7c03c50cfdd162127d8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `telegraf:alpine` - linux; amd64

```console
$ docker pull telegraf@sha256:db0ad9a4eed1d1792c04c6ab6a9142ab8c191c0b3ad7761e4ac4bad1c4240b68
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.2 MB (23200128 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4f8ecc9ab2c96d2bdf8bc545773bf687be407afdba0f5a4307d1193a12f186be`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Fri, 21 Dec 2018 00:21:29 GMT
ADD file:2ff00caea4e83dfade726ca47e3c795a1e9acb8ac24e392785c474ecf9a621f2 in / 
# Fri, 21 Dec 2018 00:21:30 GMT
CMD ["/bin/sh"]
# Thu, 10 Jan 2019 22:19:23 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf
# Thu, 10 Jan 2019 22:22:02 GMT
RUN apk add --no-cache iputils ca-certificates net-snmp-tools procps lm_sensors &&     update-ca-certificates
# Thu, 10 Jan 2019 22:22:28 GMT
ENV TELEGRAF_VERSION=1.9.2
# Thu, 10 Jan 2019 22:22:34 GMT
RUN set -ex &&     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf-${TELEGRAF_VERSION}-static_linux_amd64.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf-${TELEGRAF_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify telegraf-${TELEGRAF_VERSION}-static_linux_amd64.tar.gz.asc telegraf-${TELEGRAF_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src /etc/telegraf &&     tar -C /usr/src -xzf telegraf-${TELEGRAF_VERSION}-static_linux_amd64.tar.gz &&     mv /usr/src/telegraf*/telegraf.conf /etc/telegraf/ &&     chmod +x /usr/src/telegraf*/* &&     cp -a /usr/src/telegraf*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Thu, 10 Jan 2019 22:22:34 GMT
EXPOSE 8092/udp 8094 8125/udp
# Thu, 10 Jan 2019 22:22:34 GMT
COPY file:a8a66b0d8dac2aee66897c63ce9b7a3d282bb5d7b796ffb12c2cd9227fed341b in /entrypoint.sh 
# Thu, 10 Jan 2019 22:22:34 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 10 Jan 2019 22:22:34 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:cd784148e3483c2c86c50a48e535302ab0288bebd587accf40b714fffd0646b3`  
		Last Modified: Fri, 21 Dec 2018 00:23:44 GMT  
		Size: 2.2 MB (2207025 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6de7358bfdb4efc63064a37b0ad200f87cc0d4f70fc47f1c720ce71c9543e1fa`  
		Last Modified: Thu, 10 Jan 2019 22:20:06 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bed8de54468cd6b6b1a8b159fe6e77256b7f00b00106d3d0a6452c17c4ab8cc3`  
		Last Modified: Thu, 10 Jan 2019 22:22:46 GMT  
		Size: 3.2 MB (3248163 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ded3b955b3de8cc2c191824f34b7cc57c2f854e6527ad65a37f11ac733998f0`  
		Last Modified: Thu, 10 Jan 2019 22:23:16 GMT  
		Size: 17.7 MB (17744601 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab7de6942d3be408c8d642b8bdae06af4d7e227cdc84c774bd9f1220298cd648`  
		Last Modified: Thu, 10 Jan 2019 22:23:12 GMT  
		Size: 184.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `telegraf:latest`

```console
$ docker pull telegraf@sha256:3751b46bead80b2691c43642c54387c2190b05e77973fdea7e6c70416bf5fb0f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `telegraf:latest` - linux; amd64

```console
$ docker pull telegraf@sha256:d0f1b1539b98359ee06a22f1ae46fe0dc392210f25f524603d10fe0c2ea2a5b0
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **94.2 MB (94194337 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:09490fb07c90e364a1175b717af4d37999de0e1b68de9692b76905aaf57b72f7`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Fri, 28 Dec 2018 23:29:37 GMT
ADD file:da71baf0d22cb2ede91c5e3ff959607e47459a9d7bda220a62a3da362b0e59ea in / 
# Fri, 28 Dec 2018 23:29:38 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 00:04:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 00:04:34 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 29 Dec 2018 09:16:36 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends iputils-ping snmp procps lm-sensors &&     rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 09:16:39 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Thu, 10 Jan 2019 22:22:23 GMT
ENV TELEGRAF_VERSION=1.9.2
# Thu, 10 Jan 2019 22:22:25 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     gpg --batch --verify telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     dpkg -i telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     rm -f telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb*
# Thu, 10 Jan 2019 22:22:25 GMT
EXPOSE 8092/udp 8094 8125/udp
# Thu, 10 Jan 2019 22:22:26 GMT
COPY file:7e725b38b34580a28d521266535fcafc651af09f8af8fc6e03ef74768e1b69a2 in /entrypoint.sh 
# Thu, 10 Jan 2019 22:22:26 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 10 Jan 2019 22:22:26 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:cd8eada9c7bb496eb685fc6d2198c33db7cb05daf0fde42e4cf5bf0127cbdf38`  
		Last Modified: Fri, 28 Dec 2018 23:35:50 GMT  
		Size: 45.3 MB (45323792 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2677faec825930a8844845f55454ee0495ceb5bea9fc904d5b3125de863dc1d`  
		Last Modified: Sat, 29 Dec 2018 00:21:34 GMT  
		Size: 10.8 MB (10780911 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fcce419a96b1219a265bf7a933d66b585a6f8d73448533f3833c73ad49fb5e88`  
		Last Modified: Sat, 29 Dec 2018 00:21:30 GMT  
		Size: 4.3 MB (4340024 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9249369b96631bbde225f53b4c8eedb28914de24f74f79698386ddba766e031`  
		Last Modified: Sat, 29 Dec 2018 09:17:18 GMT  
		Size: 16.0 MB (15965033 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a330fa0469555ef184a32f20c337762bc1c219de4b70de5d3086ccbcac9001b`  
		Last Modified: Sat, 29 Dec 2018 09:17:14 GMT  
		Size: 2.8 KB (2773 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a91826884bdfad617403cdb195a21ce36aa99580b59c7201e1cac10dc3093950`  
		Last Modified: Thu, 10 Jan 2019 22:23:04 GMT  
		Size: 17.8 MB (17781619 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ba85c6d8b9c0436bcc815ae549dfa0985518fec7fb66740e10f1740ff387cf5`  
		Last Modified: Thu, 10 Jan 2019 22:22:58 GMT  
		Size: 185.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `telegraf:latest` - linux; arm variant v7

```console
$ docker pull telegraf@sha256:8a5cbede1551eb076d12c4ec262efb9ab63a35830fc13c08a9071fd06cdef979
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **87.1 MB (87098923 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:640f06f51fd0db2b841fc588e724882ac6da0e042d74e00f4c90a36385a0246e`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Sat, 29 Dec 2018 13:04:28 GMT
ADD file:3ab1f738bb6fe0b2e0c47963cf773badbd7069848e58eeb671d7f13e357f02d8 in / 
# Sat, 29 Dec 2018 13:04:30 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 13:43:30 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 13:43:42 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 09 Jan 2019 15:20:27 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends iputils-ping snmp procps lm-sensors &&     rm -rf /var/lib/apt/lists/*
# Wed, 09 Jan 2019 15:20:31 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Fri, 11 Jan 2019 13:21:26 GMT
ENV TELEGRAF_VERSION=1.9.2
# Fri, 11 Jan 2019 13:21:32 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     gpg --batch --verify telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     dpkg -i telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     rm -f telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb*
# Fri, 11 Jan 2019 13:21:33 GMT
EXPOSE 8092/udp 8094 8125/udp
# Fri, 11 Jan 2019 13:21:33 GMT
COPY file:7e725b38b34580a28d521266535fcafc651af09f8af8fc6e03ef74768e1b69a2 in /entrypoint.sh 
# Fri, 11 Jan 2019 13:21:34 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 11 Jan 2019 13:21:34 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:76e424dac3ee85f0c45a60646f8b87f57bf2ed6b48b6e06522628d2d8f7e06cf`  
		Last Modified: Sat, 29 Dec 2018 13:12:18 GMT  
		Size: 42.1 MB (42074583 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2f48ddd91eb6c0651e04903412a7878a0c6b983485404d539b5770c2df6c462`  
		Last Modified: Sat, 29 Dec 2018 14:04:30 GMT  
		Size: 9.5 MB (9480290 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:307946877196cb875cf9ce23e16058fc9525d372e0e3c6652d6f805675257c98`  
		Last Modified: Sat, 29 Dec 2018 14:04:30 GMT  
		Size: 3.9 MB (3918483 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0a36d6ccc5afe43556856cc17963ba79966f1c2fbad16ee144e2a218b36b2df`  
		Last Modified: Wed, 09 Jan 2019 15:21:18 GMT  
		Size: 14.8 MB (14835898 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc4e97c9da1241d95641b533a30efd6d787b113473a893e3a6e73a8ad3239d4d`  
		Last Modified: Wed, 09 Jan 2019 15:21:12 GMT  
		Size: 2.8 KB (2799 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cacdbd4c8826d75f7bc383f18a11526cfadb74d3a80aa9b14c2183a96572eda3`  
		Last Modified: Fri, 11 Jan 2019 13:21:52 GMT  
		Size: 16.8 MB (16786685 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5bb09f1ebab72c13902d72de94338c2ffd0fca81d9d7eb967b9e67e04a978dfa`  
		Last Modified: Fri, 11 Jan 2019 13:21:45 GMT  
		Size: 185.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `telegraf:latest` - linux; arm64 variant v8

```console
$ docker pull telegraf@sha256:2e40914c6785b92d7c5e33a9478459270a6b2f68c0ee801d1b3724b12b119a84
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **88.7 MB (88728295 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e75b7661d2e57e88a9b2b3991d1155b0f0168a1a95783208bc03f2daf0f5427c`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Sat, 29 Dec 2018 10:08:10 GMT
ADD file:8238e4e08413d772a0383ef64eccc0448c682834c018a28e87a568a33b0da788 in / 
# Sat, 29 Dec 2018 10:08:11 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 12:10:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 12:11:00 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sun, 30 Dec 2018 01:48:32 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends iputils-ping snmp procps lm-sensors &&     rm -rf /var/lib/apt/lists/*
# Sun, 30 Dec 2018 01:48:38 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Fri, 11 Jan 2019 10:22:01 GMT
ENV TELEGRAF_VERSION=1.9.2
# Fri, 11 Jan 2019 10:22:10 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     gpg --batch --verify telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     dpkg -i telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     rm -f telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb*
# Fri, 11 Jan 2019 10:22:11 GMT
EXPOSE 8092/udp 8094 8125/udp
# Fri, 11 Jan 2019 10:22:12 GMT
COPY file:7e725b38b34580a28d521266535fcafc651af09f8af8fc6e03ef74768e1b69a2 in /entrypoint.sh 
# Fri, 11 Jan 2019 10:22:13 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 11 Jan 2019 10:22:14 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:ed1ec7511bfa23f7413f2fc49fb5b111ef33638df9a60111a2c282a2f78a7653`  
		Last Modified: Sat, 29 Dec 2018 10:14:38 GMT  
		Size: 43.1 MB (43116478 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:adb2bf3fc8884b0bfbf3d5317df5126bdd1911341a1d0736bca48b0043d81785`  
		Last Modified: Sat, 29 Dec 2018 13:33:28 GMT  
		Size: 9.7 MB (9728682 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:795dadfe0a1e898d47690c9839194ddb1373266c1883d742f4b8d5872be25b8c`  
		Last Modified: Sat, 29 Dec 2018 13:33:25 GMT  
		Size: 4.1 MB (4093166 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:711640d4f740677ab3d213c1b1894cfddf351bc3fc1b81e8edd1ea1b2017fac2`  
		Last Modified: Sun, 30 Dec 2018 01:50:17 GMT  
		Size: 15.5 MB (15525881 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39e5bc855a0d7a87bc8898165fad216c4fa707537c43dda911dab9159d573d0b`  
		Last Modified: Sun, 30 Dec 2018 01:50:05 GMT  
		Size: 2.8 KB (2771 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b06143209d1f880a502ee50f57a1549b84ab821a09ca0158281a33f922f9c2b4`  
		Last Modified: Fri, 11 Jan 2019 10:22:35 GMT  
		Size: 16.3 MB (16261135 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6776276d8ea0af869f8f4534c6feeab2721f8df5406df204f5cfaa40d012165a`  
		Last Modified: Fri, 11 Jan 2019 10:22:28 GMT  
		Size: 182.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
