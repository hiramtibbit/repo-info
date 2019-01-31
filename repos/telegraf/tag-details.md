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
-	[`telegraf:1.9.3`](#telegraf193)
-	[`telegraf:1.9.3-alpine`](#telegraf193-alpine)
-	[`telegraf:1.9-alpine`](#telegraf19-alpine)
-	[`telegraf:alpine`](#telegrafalpine)
-	[`telegraf:latest`](#telegraflatest)

## `telegraf:1.7`

```console
$ docker pull telegraf@sha256:88e92afcb22e30e250b149fb2293714b92d8b0dc0668a58d948d2b0f9a017bbe
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `telegraf:1.7` - linux; amd64

```console
$ docker pull telegraf@sha256:133d2caf02743d0994b5cc05aa6c314480f8597eeb1de10f72ebd69b54cd1f4a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **86.9 MB (86933221 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7ef5878ed88b65c61d4710a15627f9d3ae3f2610397a8d5e1daf02017d16b487`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Tue, 22 Jan 2019 19:30:03 GMT
ADD file:feb9fd29475961253e3449db036bbf56bf6f4d02f2df1202209e393a9e7e95f5 in / 
# Tue, 22 Jan 2019 19:30:04 GMT
CMD ["bash"]
# Tue, 22 Jan 2019 20:05:43 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 22 Jan 2019 20:05:48 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 23 Jan 2019 05:42:28 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends iputils-ping snmp procps lm-sensors &&     rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 05:42:31 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Wed, 23 Jan 2019 05:42:31 GMT
ENV TELEGRAF_VERSION=1.7.4
# Wed, 23 Jan 2019 05:42:33 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     gpg --batch --verify telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     dpkg -i telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     rm -f telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb*
# Wed, 23 Jan 2019 05:42:34 GMT
EXPOSE 8092/udp 8094 8125/udp
# Wed, 23 Jan 2019 05:42:34 GMT
COPY file:7e725b38b34580a28d521266535fcafc651af09f8af8fc6e03ef74768e1b69a2 in /entrypoint.sh 
# Wed, 23 Jan 2019 05:42:34 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 23 Jan 2019 05:42:34 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:ab1fc7e4bf9195e554669fafa47f69befe22053d7100f5f7002cb9254a36f37c`  
		Last Modified: Tue, 22 Jan 2019 19:36:49 GMT  
		Size: 45.3 MB (45344749 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35fba333ff5209042e8925a73f3cbabf00ba725257bdba38ec3b415e5d7e6cc7`  
		Last Modified: Tue, 22 Jan 2019 20:13:11 GMT  
		Size: 10.8 MB (10780995 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0cb1fa13079687d5118e5cd7e3ce3c09dc483fa44f0577eca349de8d76e4e8c`  
		Last Modified: Tue, 22 Jan 2019 20:13:09 GMT  
		Size: 4.3 MB (4340040 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc580a9ccefbc1281206126bbd88e08f3660df6336f99f84e5ea5a47aefed0e1`  
		Last Modified: Wed, 23 Jan 2019 05:43:20 GMT  
		Size: 16.0 MB (15965041 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1b601359fed264243471d23ab1ab8b3a078e8c9756ffe3cfbb446833918d15a`  
		Last Modified: Wed, 23 Jan 2019 05:43:15 GMT  
		Size: 2.8 KB (2776 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:affa8cd5906e949d124fad7ce5455cf6cc3e4206d696943c209213dc7cb44710`  
		Last Modified: Wed, 23 Jan 2019 05:43:19 GMT  
		Size: 10.5 MB (10499435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f41fc6c1d384625a0e07eee11ff14a4b8bf1feca36c2f6359c3402dd7eb98c6e`  
		Last Modified: Wed, 23 Jan 2019 05:43:15 GMT  
		Size: 185.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `telegraf:1.7` - linux; arm variant v7

```console
$ docker pull telegraf@sha256:fc8eee3c00605dd659d8c133855113e3699817bd1b82602e466ffde777fa7452
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **80.4 MB (80415659 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9af75f4534772119d13a702208207b4f621d19c1d4497368d7cf36e0ccb1d2d1`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Wed, 23 Jan 2019 13:04:29 GMT
ADD file:f58fcfcac4bd31e03fe733b7c850ff7f67728d2532fc54252c02a91c66445c88 in / 
# Wed, 23 Jan 2019 13:04:29 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 13:44:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 13:44:26 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 23 Jan 2019 18:33:03 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends iputils-ping snmp procps lm-sensors &&     rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 18:33:08 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Wed, 23 Jan 2019 18:33:08 GMT
ENV TELEGRAF_VERSION=1.7.4
# Wed, 23 Jan 2019 18:33:12 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     gpg --batch --verify telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     dpkg -i telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     rm -f telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb*
# Wed, 23 Jan 2019 18:33:13 GMT
EXPOSE 8092/udp 8094 8125/udp
# Wed, 23 Jan 2019 18:33:14 GMT
COPY file:7e725b38b34580a28d521266535fcafc651af09f8af8fc6e03ef74768e1b69a2 in /entrypoint.sh 
# Wed, 23 Jan 2019 18:33:15 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 23 Jan 2019 18:33:16 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:d9d6acb4f2f3e6ab798235f9f094d5e343bad5a702bac8cf38e2569dfec4e284`  
		Last Modified: Wed, 23 Jan 2019 13:12:06 GMT  
		Size: 42.1 MB (42087731 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aaa7b6903fc66574eed3dd94d25c8ee0c27a478c84ff3219c4ce223b0233aeba`  
		Last Modified: Wed, 23 Jan 2019 14:05:44 GMT  
		Size: 9.5 MB (9480423 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2011a5c4d9cbe6e42446717e9f145d3264c681a9a7be23834c6d1989afab2dfc`  
		Last Modified: Wed, 23 Jan 2019 14:05:42 GMT  
		Size: 3.9 MB (3918464 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ed6e0675d10f3a3e3de662eda6f00f7ed2d32a6d5bbd9005b8a3d12b33c13ea`  
		Last Modified: Wed, 23 Jan 2019 18:34:01 GMT  
		Size: 14.8 MB (14835811 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51d3489f897875e156b70c6d2f362ac6251dc1e80e404131c7c154e149240675`  
		Last Modified: Wed, 23 Jan 2019 18:33:56 GMT  
		Size: 2.8 KB (2801 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ee88ca3257a52e48039fe5f09d42ad675c22f548b7839d766e7911e2b7fe1c9`  
		Last Modified: Wed, 23 Jan 2019 18:33:59 GMT  
		Size: 10.1 MB (10090244 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:911e092cce2f1b3c901d2d542856c43b7f8ef21c027e933c607108e3f7a3745f`  
		Last Modified: Wed, 23 Jan 2019 18:33:56 GMT  
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
$ docker pull telegraf@sha256:88e92afcb22e30e250b149fb2293714b92d8b0dc0668a58d948d2b0f9a017bbe
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `telegraf:1.7.4` - linux; amd64

```console
$ docker pull telegraf@sha256:133d2caf02743d0994b5cc05aa6c314480f8597eeb1de10f72ebd69b54cd1f4a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **86.9 MB (86933221 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7ef5878ed88b65c61d4710a15627f9d3ae3f2610397a8d5e1daf02017d16b487`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Tue, 22 Jan 2019 19:30:03 GMT
ADD file:feb9fd29475961253e3449db036bbf56bf6f4d02f2df1202209e393a9e7e95f5 in / 
# Tue, 22 Jan 2019 19:30:04 GMT
CMD ["bash"]
# Tue, 22 Jan 2019 20:05:43 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 22 Jan 2019 20:05:48 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 23 Jan 2019 05:42:28 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends iputils-ping snmp procps lm-sensors &&     rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 05:42:31 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Wed, 23 Jan 2019 05:42:31 GMT
ENV TELEGRAF_VERSION=1.7.4
# Wed, 23 Jan 2019 05:42:33 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     gpg --batch --verify telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     dpkg -i telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     rm -f telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb*
# Wed, 23 Jan 2019 05:42:34 GMT
EXPOSE 8092/udp 8094 8125/udp
# Wed, 23 Jan 2019 05:42:34 GMT
COPY file:7e725b38b34580a28d521266535fcafc651af09f8af8fc6e03ef74768e1b69a2 in /entrypoint.sh 
# Wed, 23 Jan 2019 05:42:34 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 23 Jan 2019 05:42:34 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:ab1fc7e4bf9195e554669fafa47f69befe22053d7100f5f7002cb9254a36f37c`  
		Last Modified: Tue, 22 Jan 2019 19:36:49 GMT  
		Size: 45.3 MB (45344749 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35fba333ff5209042e8925a73f3cbabf00ba725257bdba38ec3b415e5d7e6cc7`  
		Last Modified: Tue, 22 Jan 2019 20:13:11 GMT  
		Size: 10.8 MB (10780995 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0cb1fa13079687d5118e5cd7e3ce3c09dc483fa44f0577eca349de8d76e4e8c`  
		Last Modified: Tue, 22 Jan 2019 20:13:09 GMT  
		Size: 4.3 MB (4340040 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc580a9ccefbc1281206126bbd88e08f3660df6336f99f84e5ea5a47aefed0e1`  
		Last Modified: Wed, 23 Jan 2019 05:43:20 GMT  
		Size: 16.0 MB (15965041 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1b601359fed264243471d23ab1ab8b3a078e8c9756ffe3cfbb446833918d15a`  
		Last Modified: Wed, 23 Jan 2019 05:43:15 GMT  
		Size: 2.8 KB (2776 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:affa8cd5906e949d124fad7ce5455cf6cc3e4206d696943c209213dc7cb44710`  
		Last Modified: Wed, 23 Jan 2019 05:43:19 GMT  
		Size: 10.5 MB (10499435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f41fc6c1d384625a0e07eee11ff14a4b8bf1feca36c2f6359c3402dd7eb98c6e`  
		Last Modified: Wed, 23 Jan 2019 05:43:15 GMT  
		Size: 185.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `telegraf:1.7.4` - linux; arm variant v7

```console
$ docker pull telegraf@sha256:fc8eee3c00605dd659d8c133855113e3699817bd1b82602e466ffde777fa7452
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **80.4 MB (80415659 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9af75f4534772119d13a702208207b4f621d19c1d4497368d7cf36e0ccb1d2d1`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Wed, 23 Jan 2019 13:04:29 GMT
ADD file:f58fcfcac4bd31e03fe733b7c850ff7f67728d2532fc54252c02a91c66445c88 in / 
# Wed, 23 Jan 2019 13:04:29 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 13:44:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 13:44:26 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 23 Jan 2019 18:33:03 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends iputils-ping snmp procps lm-sensors &&     rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 18:33:08 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Wed, 23 Jan 2019 18:33:08 GMT
ENV TELEGRAF_VERSION=1.7.4
# Wed, 23 Jan 2019 18:33:12 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     gpg --batch --verify telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     dpkg -i telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     rm -f telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb*
# Wed, 23 Jan 2019 18:33:13 GMT
EXPOSE 8092/udp 8094 8125/udp
# Wed, 23 Jan 2019 18:33:14 GMT
COPY file:7e725b38b34580a28d521266535fcafc651af09f8af8fc6e03ef74768e1b69a2 in /entrypoint.sh 
# Wed, 23 Jan 2019 18:33:15 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 23 Jan 2019 18:33:16 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:d9d6acb4f2f3e6ab798235f9f094d5e343bad5a702bac8cf38e2569dfec4e284`  
		Last Modified: Wed, 23 Jan 2019 13:12:06 GMT  
		Size: 42.1 MB (42087731 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aaa7b6903fc66574eed3dd94d25c8ee0c27a478c84ff3219c4ce223b0233aeba`  
		Last Modified: Wed, 23 Jan 2019 14:05:44 GMT  
		Size: 9.5 MB (9480423 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2011a5c4d9cbe6e42446717e9f145d3264c681a9a7be23834c6d1989afab2dfc`  
		Last Modified: Wed, 23 Jan 2019 14:05:42 GMT  
		Size: 3.9 MB (3918464 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ed6e0675d10f3a3e3de662eda6f00f7ed2d32a6d5bbd9005b8a3d12b33c13ea`  
		Last Modified: Wed, 23 Jan 2019 18:34:01 GMT  
		Size: 14.8 MB (14835811 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51d3489f897875e156b70c6d2f362ac6251dc1e80e404131c7c154e149240675`  
		Last Modified: Wed, 23 Jan 2019 18:33:56 GMT  
		Size: 2.8 KB (2801 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ee88ca3257a52e48039fe5f09d42ad675c22f548b7839d766e7911e2b7fe1c9`  
		Last Modified: Wed, 23 Jan 2019 18:33:59 GMT  
		Size: 10.1 MB (10090244 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:911e092cce2f1b3c901d2d542856c43b7f8ef21c027e933c607108e3f7a3745f`  
		Last Modified: Wed, 23 Jan 2019 18:33:56 GMT  
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
$ docker pull telegraf@sha256:30e0e301b0b951ac7c2668ef446d01cec1416f2af4605ba03d10dd4474311681
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `telegraf:1.7.4-alpine` - linux; amd64

```console
$ docker pull telegraf@sha256:1fe31e47b065a375a5d700d0782cb1558fa8e93b150cb8b3684e6df5e3da086d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.9 MB (15922265 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e4f26d0971d7e3f3c69eda55f11f5455c206e367068ade16d4229ed571c3ac45`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Wed, 30 Jan 2019 22:19:46 GMT
ADD file:91fb97ea3549e52e7b6e22b93a6736cf915c756f3d13348406d8ad5f1a872680 in / 
# Wed, 30 Jan 2019 22:19:47 GMT
CMD ["/bin/sh"]
# Wed, 30 Jan 2019 22:39:26 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf
# Thu, 31 Jan 2019 02:15:10 GMT
RUN apk add --no-cache iputils ca-certificates net-snmp-tools procps lm_sensors &&     update-ca-certificates
# Thu, 31 Jan 2019 02:15:12 GMT
ENV TELEGRAF_VERSION=1.7.4
# Thu, 31 Jan 2019 02:15:18 GMT
RUN set -ex &&     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf-${TELEGRAF_VERSION}-static_linux_amd64.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf-${TELEGRAF_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify telegraf-${TELEGRAF_VERSION}-static_linux_amd64.tar.gz.asc telegraf-${TELEGRAF_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src /etc/telegraf &&     tar -C /usr/src -xzf telegraf-${TELEGRAF_VERSION}-static_linux_amd64.tar.gz &&     mv /usr/src/telegraf*/telegraf.conf /etc/telegraf/ &&     chmod +x /usr/src/telegraf*/* &&     cp -a /usr/src/telegraf*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Thu, 31 Jan 2019 02:15:18 GMT
EXPOSE 8092/udp 8094 8125/udp
# Thu, 31 Jan 2019 02:15:19 GMT
COPY file:a8a66b0d8dac2aee66897c63ce9b7a3d282bb5d7b796ffb12c2cd9227fed341b in /entrypoint.sh 
# Thu, 31 Jan 2019 02:15:19 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 31 Jan 2019 02:15:19 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:169185f82c45a6eb72e0ca4ee66152626e7ace92a0cbc53624fb46d0a553f0bd`  
		Last Modified: Wed, 30 Jan 2019 22:21:04 GMT  
		Size: 2.2 MB (2207038 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5fc741e575cbed81d8f84e8f1f782804230bb1a3dfb0d2765f31b4eb19235dca`  
		Last Modified: Wed, 30 Jan 2019 22:40:10 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6bbf026a32bf997772907b39fecb278195ab4800bd8475e1d1e1b8de20fbb9ce`  
		Last Modified: Thu, 31 Jan 2019 02:16:08 GMT  
		Size: 3.2 MB (3248155 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bcbfb124dd692e5dd9902f9bbd50b41cdab7c029e3449d81dc4dc02bea465ef0`  
		Last Modified: Thu, 31 Jan 2019 02:16:10 GMT  
		Size: 10.5 MB (10466733 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:433e9694d1db30e371becca44a88d2a57f2d3ea36808dcc8eeae8ea871f94f45`  
		Last Modified: Thu, 31 Jan 2019 02:16:07 GMT  
		Size: 184.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `telegraf:1.7-alpine`

```console
$ docker pull telegraf@sha256:30e0e301b0b951ac7c2668ef446d01cec1416f2af4605ba03d10dd4474311681
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `telegraf:1.7-alpine` - linux; amd64

```console
$ docker pull telegraf@sha256:1fe31e47b065a375a5d700d0782cb1558fa8e93b150cb8b3684e6df5e3da086d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.9 MB (15922265 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e4f26d0971d7e3f3c69eda55f11f5455c206e367068ade16d4229ed571c3ac45`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Wed, 30 Jan 2019 22:19:46 GMT
ADD file:91fb97ea3549e52e7b6e22b93a6736cf915c756f3d13348406d8ad5f1a872680 in / 
# Wed, 30 Jan 2019 22:19:47 GMT
CMD ["/bin/sh"]
# Wed, 30 Jan 2019 22:39:26 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf
# Thu, 31 Jan 2019 02:15:10 GMT
RUN apk add --no-cache iputils ca-certificates net-snmp-tools procps lm_sensors &&     update-ca-certificates
# Thu, 31 Jan 2019 02:15:12 GMT
ENV TELEGRAF_VERSION=1.7.4
# Thu, 31 Jan 2019 02:15:18 GMT
RUN set -ex &&     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf-${TELEGRAF_VERSION}-static_linux_amd64.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf-${TELEGRAF_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify telegraf-${TELEGRAF_VERSION}-static_linux_amd64.tar.gz.asc telegraf-${TELEGRAF_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src /etc/telegraf &&     tar -C /usr/src -xzf telegraf-${TELEGRAF_VERSION}-static_linux_amd64.tar.gz &&     mv /usr/src/telegraf*/telegraf.conf /etc/telegraf/ &&     chmod +x /usr/src/telegraf*/* &&     cp -a /usr/src/telegraf*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Thu, 31 Jan 2019 02:15:18 GMT
EXPOSE 8092/udp 8094 8125/udp
# Thu, 31 Jan 2019 02:15:19 GMT
COPY file:a8a66b0d8dac2aee66897c63ce9b7a3d282bb5d7b796ffb12c2cd9227fed341b in /entrypoint.sh 
# Thu, 31 Jan 2019 02:15:19 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 31 Jan 2019 02:15:19 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:169185f82c45a6eb72e0ca4ee66152626e7ace92a0cbc53624fb46d0a553f0bd`  
		Last Modified: Wed, 30 Jan 2019 22:21:04 GMT  
		Size: 2.2 MB (2207038 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5fc741e575cbed81d8f84e8f1f782804230bb1a3dfb0d2765f31b4eb19235dca`  
		Last Modified: Wed, 30 Jan 2019 22:40:10 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6bbf026a32bf997772907b39fecb278195ab4800bd8475e1d1e1b8de20fbb9ce`  
		Last Modified: Thu, 31 Jan 2019 02:16:08 GMT  
		Size: 3.2 MB (3248155 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bcbfb124dd692e5dd9902f9bbd50b41cdab7c029e3449d81dc4dc02bea465ef0`  
		Last Modified: Thu, 31 Jan 2019 02:16:10 GMT  
		Size: 10.5 MB (10466733 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:433e9694d1db30e371becca44a88d2a57f2d3ea36808dcc8eeae8ea871f94f45`  
		Last Modified: Thu, 31 Jan 2019 02:16:07 GMT  
		Size: 184.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `telegraf:1.8`

```console
$ docker pull telegraf@sha256:0beccc176ab46449fb4b602946af0cbdbc091a089344811c934c7f50712da224
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `telegraf:1.8` - linux; amd64

```console
$ docker pull telegraf@sha256:7bf87a8edb74504e08005ad20984605d1fb5c0fc0947c70edd36e27d8ebd12fe
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **90.5 MB (90535415 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:81257bf0eb6bb578492e313303b7cac4fba929e8debdad9d46d46115df512d4e`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Tue, 22 Jan 2019 19:30:03 GMT
ADD file:feb9fd29475961253e3449db036bbf56bf6f4d02f2df1202209e393a9e7e95f5 in / 
# Tue, 22 Jan 2019 19:30:04 GMT
CMD ["bash"]
# Tue, 22 Jan 2019 20:05:43 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 22 Jan 2019 20:05:48 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 23 Jan 2019 05:42:28 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends iputils-ping snmp procps lm-sensors &&     rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 05:42:31 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Wed, 23 Jan 2019 05:42:40 GMT
ENV TELEGRAF_VERSION=1.8.3
# Wed, 23 Jan 2019 05:42:43 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     gpg --batch --verify telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     dpkg -i telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     rm -f telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb*
# Wed, 23 Jan 2019 05:42:43 GMT
EXPOSE 8092/udp 8094 8125/udp
# Wed, 23 Jan 2019 05:42:43 GMT
COPY file:7e725b38b34580a28d521266535fcafc651af09f8af8fc6e03ef74768e1b69a2 in /entrypoint.sh 
# Wed, 23 Jan 2019 05:42:44 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 23 Jan 2019 05:42:44 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:ab1fc7e4bf9195e554669fafa47f69befe22053d7100f5f7002cb9254a36f37c`  
		Last Modified: Tue, 22 Jan 2019 19:36:49 GMT  
		Size: 45.3 MB (45344749 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35fba333ff5209042e8925a73f3cbabf00ba725257bdba38ec3b415e5d7e6cc7`  
		Last Modified: Tue, 22 Jan 2019 20:13:11 GMT  
		Size: 10.8 MB (10780995 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0cb1fa13079687d5118e5cd7e3ce3c09dc483fa44f0577eca349de8d76e4e8c`  
		Last Modified: Tue, 22 Jan 2019 20:13:09 GMT  
		Size: 4.3 MB (4340040 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc580a9ccefbc1281206126bbd88e08f3660df6336f99f84e5ea5a47aefed0e1`  
		Last Modified: Wed, 23 Jan 2019 05:43:20 GMT  
		Size: 16.0 MB (15965041 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1b601359fed264243471d23ab1ab8b3a078e8c9756ffe3cfbb446833918d15a`  
		Last Modified: Wed, 23 Jan 2019 05:43:15 GMT  
		Size: 2.8 KB (2776 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4358e1b66348a9a276fa0f89ef3719c82504fbb70d93c5f08ff9d89590ee5c1c`  
		Last Modified: Wed, 23 Jan 2019 05:43:29 GMT  
		Size: 14.1 MB (14101629 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3795a4071f030f72c6ac85091e7cd2f85de7d9fb95e9c8b2846e7c78dffa73f7`  
		Last Modified: Wed, 23 Jan 2019 05:43:25 GMT  
		Size: 185.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `telegraf:1.8` - linux; arm variant v7

```console
$ docker pull telegraf@sha256:a8ec8fa754ee2291d8c0ff6dca50c8d8804310be070e05e866adce4526ff5f72
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **83.9 MB (83876577 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fea6461b5a5b7a7f8af757be040d8718a2cf8ba03978d3272d5bd7d399b4a757`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Wed, 23 Jan 2019 13:04:29 GMT
ADD file:f58fcfcac4bd31e03fe733b7c850ff7f67728d2532fc54252c02a91c66445c88 in / 
# Wed, 23 Jan 2019 13:04:29 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 13:44:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 13:44:26 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 23 Jan 2019 18:33:03 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends iputils-ping snmp procps lm-sensors &&     rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 18:33:08 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Wed, 23 Jan 2019 18:33:22 GMT
ENV TELEGRAF_VERSION=1.8.3
# Wed, 23 Jan 2019 18:33:27 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     gpg --batch --verify telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     dpkg -i telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     rm -f telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb*
# Wed, 23 Jan 2019 18:33:28 GMT
EXPOSE 8092/udp 8094 8125/udp
# Wed, 23 Jan 2019 18:33:28 GMT
COPY file:7e725b38b34580a28d521266535fcafc651af09f8af8fc6e03ef74768e1b69a2 in /entrypoint.sh 
# Wed, 23 Jan 2019 18:33:29 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 23 Jan 2019 18:33:29 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:d9d6acb4f2f3e6ab798235f9f094d5e343bad5a702bac8cf38e2569dfec4e284`  
		Last Modified: Wed, 23 Jan 2019 13:12:06 GMT  
		Size: 42.1 MB (42087731 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aaa7b6903fc66574eed3dd94d25c8ee0c27a478c84ff3219c4ce223b0233aeba`  
		Last Modified: Wed, 23 Jan 2019 14:05:44 GMT  
		Size: 9.5 MB (9480423 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2011a5c4d9cbe6e42446717e9f145d3264c681a9a7be23834c6d1989afab2dfc`  
		Last Modified: Wed, 23 Jan 2019 14:05:42 GMT  
		Size: 3.9 MB (3918464 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ed6e0675d10f3a3e3de662eda6f00f7ed2d32a6d5bbd9005b8a3d12b33c13ea`  
		Last Modified: Wed, 23 Jan 2019 18:34:01 GMT  
		Size: 14.8 MB (14835811 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51d3489f897875e156b70c6d2f362ac6251dc1e80e404131c7c154e149240675`  
		Last Modified: Wed, 23 Jan 2019 18:33:56 GMT  
		Size: 2.8 KB (2801 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a545543915533269d7997465d04021c283819b926f3150a09ff06dba3db75087`  
		Last Modified: Wed, 23 Jan 2019 18:34:12 GMT  
		Size: 13.6 MB (13551161 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b7cacbac1220d62df40541f0f7d291a10463910c2dad696ea08a1c3357fa88a`  
		Last Modified: Wed, 23 Jan 2019 18:34:07 GMT  
		Size: 186.0 B  
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
$ docker pull telegraf@sha256:0beccc176ab46449fb4b602946af0cbdbc091a089344811c934c7f50712da224
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `telegraf:1.8.3` - linux; amd64

```console
$ docker pull telegraf@sha256:7bf87a8edb74504e08005ad20984605d1fb5c0fc0947c70edd36e27d8ebd12fe
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **90.5 MB (90535415 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:81257bf0eb6bb578492e313303b7cac4fba929e8debdad9d46d46115df512d4e`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Tue, 22 Jan 2019 19:30:03 GMT
ADD file:feb9fd29475961253e3449db036bbf56bf6f4d02f2df1202209e393a9e7e95f5 in / 
# Tue, 22 Jan 2019 19:30:04 GMT
CMD ["bash"]
# Tue, 22 Jan 2019 20:05:43 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 22 Jan 2019 20:05:48 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 23 Jan 2019 05:42:28 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends iputils-ping snmp procps lm-sensors &&     rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 05:42:31 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Wed, 23 Jan 2019 05:42:40 GMT
ENV TELEGRAF_VERSION=1.8.3
# Wed, 23 Jan 2019 05:42:43 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     gpg --batch --verify telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     dpkg -i telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     rm -f telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb*
# Wed, 23 Jan 2019 05:42:43 GMT
EXPOSE 8092/udp 8094 8125/udp
# Wed, 23 Jan 2019 05:42:43 GMT
COPY file:7e725b38b34580a28d521266535fcafc651af09f8af8fc6e03ef74768e1b69a2 in /entrypoint.sh 
# Wed, 23 Jan 2019 05:42:44 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 23 Jan 2019 05:42:44 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:ab1fc7e4bf9195e554669fafa47f69befe22053d7100f5f7002cb9254a36f37c`  
		Last Modified: Tue, 22 Jan 2019 19:36:49 GMT  
		Size: 45.3 MB (45344749 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35fba333ff5209042e8925a73f3cbabf00ba725257bdba38ec3b415e5d7e6cc7`  
		Last Modified: Tue, 22 Jan 2019 20:13:11 GMT  
		Size: 10.8 MB (10780995 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0cb1fa13079687d5118e5cd7e3ce3c09dc483fa44f0577eca349de8d76e4e8c`  
		Last Modified: Tue, 22 Jan 2019 20:13:09 GMT  
		Size: 4.3 MB (4340040 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc580a9ccefbc1281206126bbd88e08f3660df6336f99f84e5ea5a47aefed0e1`  
		Last Modified: Wed, 23 Jan 2019 05:43:20 GMT  
		Size: 16.0 MB (15965041 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1b601359fed264243471d23ab1ab8b3a078e8c9756ffe3cfbb446833918d15a`  
		Last Modified: Wed, 23 Jan 2019 05:43:15 GMT  
		Size: 2.8 KB (2776 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4358e1b66348a9a276fa0f89ef3719c82504fbb70d93c5f08ff9d89590ee5c1c`  
		Last Modified: Wed, 23 Jan 2019 05:43:29 GMT  
		Size: 14.1 MB (14101629 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3795a4071f030f72c6ac85091e7cd2f85de7d9fb95e9c8b2846e7c78dffa73f7`  
		Last Modified: Wed, 23 Jan 2019 05:43:25 GMT  
		Size: 185.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `telegraf:1.8.3` - linux; arm variant v7

```console
$ docker pull telegraf@sha256:a8ec8fa754ee2291d8c0ff6dca50c8d8804310be070e05e866adce4526ff5f72
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **83.9 MB (83876577 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fea6461b5a5b7a7f8af757be040d8718a2cf8ba03978d3272d5bd7d399b4a757`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Wed, 23 Jan 2019 13:04:29 GMT
ADD file:f58fcfcac4bd31e03fe733b7c850ff7f67728d2532fc54252c02a91c66445c88 in / 
# Wed, 23 Jan 2019 13:04:29 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 13:44:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 13:44:26 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 23 Jan 2019 18:33:03 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends iputils-ping snmp procps lm-sensors &&     rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 18:33:08 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Wed, 23 Jan 2019 18:33:22 GMT
ENV TELEGRAF_VERSION=1.8.3
# Wed, 23 Jan 2019 18:33:27 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     gpg --batch --verify telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     dpkg -i telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     rm -f telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb*
# Wed, 23 Jan 2019 18:33:28 GMT
EXPOSE 8092/udp 8094 8125/udp
# Wed, 23 Jan 2019 18:33:28 GMT
COPY file:7e725b38b34580a28d521266535fcafc651af09f8af8fc6e03ef74768e1b69a2 in /entrypoint.sh 
# Wed, 23 Jan 2019 18:33:29 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 23 Jan 2019 18:33:29 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:d9d6acb4f2f3e6ab798235f9f094d5e343bad5a702bac8cf38e2569dfec4e284`  
		Last Modified: Wed, 23 Jan 2019 13:12:06 GMT  
		Size: 42.1 MB (42087731 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aaa7b6903fc66574eed3dd94d25c8ee0c27a478c84ff3219c4ce223b0233aeba`  
		Last Modified: Wed, 23 Jan 2019 14:05:44 GMT  
		Size: 9.5 MB (9480423 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2011a5c4d9cbe6e42446717e9f145d3264c681a9a7be23834c6d1989afab2dfc`  
		Last Modified: Wed, 23 Jan 2019 14:05:42 GMT  
		Size: 3.9 MB (3918464 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ed6e0675d10f3a3e3de662eda6f00f7ed2d32a6d5bbd9005b8a3d12b33c13ea`  
		Last Modified: Wed, 23 Jan 2019 18:34:01 GMT  
		Size: 14.8 MB (14835811 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51d3489f897875e156b70c6d2f362ac6251dc1e80e404131c7c154e149240675`  
		Last Modified: Wed, 23 Jan 2019 18:33:56 GMT  
		Size: 2.8 KB (2801 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a545543915533269d7997465d04021c283819b926f3150a09ff06dba3db75087`  
		Last Modified: Wed, 23 Jan 2019 18:34:12 GMT  
		Size: 13.6 MB (13551161 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b7cacbac1220d62df40541f0f7d291a10463910c2dad696ea08a1c3357fa88a`  
		Last Modified: Wed, 23 Jan 2019 18:34:07 GMT  
		Size: 186.0 B  
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
$ docker pull telegraf@sha256:59aa366ad801b920d477cc870485a288e7eece67241a1bbba6c9c6a2d72bfa2f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `telegraf:1.8.3-alpine` - linux; amd64

```console
$ docker pull telegraf@sha256:744b4f5407bd6d8fed5c1cce9241a41f9d63094106095ff9db2d95db97412f40
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **19.5 MB (19528709 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:21aeb1adda9cf9aa50ade79784bf6689dcd901020f58dace781bbe4ee25273d9`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Wed, 30 Jan 2019 22:19:46 GMT
ADD file:91fb97ea3549e52e7b6e22b93a6736cf915c756f3d13348406d8ad5f1a872680 in / 
# Wed, 30 Jan 2019 22:19:47 GMT
CMD ["/bin/sh"]
# Wed, 30 Jan 2019 22:39:26 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf
# Thu, 31 Jan 2019 02:15:10 GMT
RUN apk add --no-cache iputils ca-certificates net-snmp-tools procps lm_sensors &&     update-ca-certificates
# Thu, 31 Jan 2019 02:15:28 GMT
ENV TELEGRAF_VERSION=1.8.3
# Thu, 31 Jan 2019 02:15:35 GMT
RUN set -ex &&     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf-${TELEGRAF_VERSION}-static_linux_amd64.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf-${TELEGRAF_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify telegraf-${TELEGRAF_VERSION}-static_linux_amd64.tar.gz.asc telegraf-${TELEGRAF_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src /etc/telegraf &&     tar -C /usr/src -xzf telegraf-${TELEGRAF_VERSION}-static_linux_amd64.tar.gz &&     mv /usr/src/telegraf*/telegraf.conf /etc/telegraf/ &&     chmod +x /usr/src/telegraf*/* &&     cp -a /usr/src/telegraf*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Thu, 31 Jan 2019 02:15:35 GMT
EXPOSE 8092/udp 8094 8125/udp
# Thu, 31 Jan 2019 02:15:35 GMT
COPY file:a8a66b0d8dac2aee66897c63ce9b7a3d282bb5d7b796ffb12c2cd9227fed341b in /entrypoint.sh 
# Thu, 31 Jan 2019 02:15:35 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 31 Jan 2019 02:15:36 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:169185f82c45a6eb72e0ca4ee66152626e7ace92a0cbc53624fb46d0a553f0bd`  
		Last Modified: Wed, 30 Jan 2019 22:21:04 GMT  
		Size: 2.2 MB (2207038 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5fc741e575cbed81d8f84e8f1f782804230bb1a3dfb0d2765f31b4eb19235dca`  
		Last Modified: Wed, 30 Jan 2019 22:40:10 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6bbf026a32bf997772907b39fecb278195ab4800bd8475e1d1e1b8de20fbb9ce`  
		Last Modified: Thu, 31 Jan 2019 02:16:08 GMT  
		Size: 3.2 MB (3248155 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6503749db48210ae69b932970321873f3999b8290aff8e4248c9422789a0da0`  
		Last Modified: Thu, 31 Jan 2019 02:16:20 GMT  
		Size: 14.1 MB (14073179 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f2e7d1d0a06d63587844c4c4a718df55ec7e3a17f8ec3b1e85b34c4b4a9c890`  
		Last Modified: Thu, 31 Jan 2019 02:16:15 GMT  
		Size: 182.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `telegraf:1.8-alpine`

```console
$ docker pull telegraf@sha256:59aa366ad801b920d477cc870485a288e7eece67241a1bbba6c9c6a2d72bfa2f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `telegraf:1.8-alpine` - linux; amd64

```console
$ docker pull telegraf@sha256:744b4f5407bd6d8fed5c1cce9241a41f9d63094106095ff9db2d95db97412f40
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **19.5 MB (19528709 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:21aeb1adda9cf9aa50ade79784bf6689dcd901020f58dace781bbe4ee25273d9`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Wed, 30 Jan 2019 22:19:46 GMT
ADD file:91fb97ea3549e52e7b6e22b93a6736cf915c756f3d13348406d8ad5f1a872680 in / 
# Wed, 30 Jan 2019 22:19:47 GMT
CMD ["/bin/sh"]
# Wed, 30 Jan 2019 22:39:26 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf
# Thu, 31 Jan 2019 02:15:10 GMT
RUN apk add --no-cache iputils ca-certificates net-snmp-tools procps lm_sensors &&     update-ca-certificates
# Thu, 31 Jan 2019 02:15:28 GMT
ENV TELEGRAF_VERSION=1.8.3
# Thu, 31 Jan 2019 02:15:35 GMT
RUN set -ex &&     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf-${TELEGRAF_VERSION}-static_linux_amd64.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf-${TELEGRAF_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify telegraf-${TELEGRAF_VERSION}-static_linux_amd64.tar.gz.asc telegraf-${TELEGRAF_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src /etc/telegraf &&     tar -C /usr/src -xzf telegraf-${TELEGRAF_VERSION}-static_linux_amd64.tar.gz &&     mv /usr/src/telegraf*/telegraf.conf /etc/telegraf/ &&     chmod +x /usr/src/telegraf*/* &&     cp -a /usr/src/telegraf*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Thu, 31 Jan 2019 02:15:35 GMT
EXPOSE 8092/udp 8094 8125/udp
# Thu, 31 Jan 2019 02:15:35 GMT
COPY file:a8a66b0d8dac2aee66897c63ce9b7a3d282bb5d7b796ffb12c2cd9227fed341b in /entrypoint.sh 
# Thu, 31 Jan 2019 02:15:35 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 31 Jan 2019 02:15:36 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:169185f82c45a6eb72e0ca4ee66152626e7ace92a0cbc53624fb46d0a553f0bd`  
		Last Modified: Wed, 30 Jan 2019 22:21:04 GMT  
		Size: 2.2 MB (2207038 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5fc741e575cbed81d8f84e8f1f782804230bb1a3dfb0d2765f31b4eb19235dca`  
		Last Modified: Wed, 30 Jan 2019 22:40:10 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6bbf026a32bf997772907b39fecb278195ab4800bd8475e1d1e1b8de20fbb9ce`  
		Last Modified: Thu, 31 Jan 2019 02:16:08 GMT  
		Size: 3.2 MB (3248155 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6503749db48210ae69b932970321873f3999b8290aff8e4248c9422789a0da0`  
		Last Modified: Thu, 31 Jan 2019 02:16:20 GMT  
		Size: 14.1 MB (14073179 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f2e7d1d0a06d63587844c4c4a718df55ec7e3a17f8ec3b1e85b34c4b4a9c890`  
		Last Modified: Thu, 31 Jan 2019 02:16:15 GMT  
		Size: 182.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `telegraf:1.9`

```console
$ docker pull telegraf@sha256:012ec4d93f5c0c9de61ff49496ea4e99a7561ba69204eeb3b2d183b1aa87b948
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `telegraf:1.9` - linux; amd64

```console
$ docker pull telegraf@sha256:419b8fdc0ae266b0748b1ca4eff5f11865fdd72fd3eda39f6105d0cbb815852c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **94.2 MB (94216028 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fab44ca6c8e5536b20d30b307633fa42845eb38ffaf838cfcd7784040abfb4d5`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Tue, 22 Jan 2019 19:30:03 GMT
ADD file:feb9fd29475961253e3449db036bbf56bf6f4d02f2df1202209e393a9e7e95f5 in / 
# Tue, 22 Jan 2019 19:30:04 GMT
CMD ["bash"]
# Tue, 22 Jan 2019 20:05:43 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 22 Jan 2019 20:05:48 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 23 Jan 2019 05:42:28 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends iputils-ping snmp procps lm-sensors &&     rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 05:42:31 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Wed, 30 Jan 2019 03:20:13 GMT
ENV TELEGRAF_VERSION=1.9.3
# Wed, 30 Jan 2019 03:20:17 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     gpg --batch --verify telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     dpkg -i telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     rm -f telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb*
# Wed, 30 Jan 2019 03:20:17 GMT
EXPOSE 8092/udp 8094 8125/udp
# Wed, 30 Jan 2019 03:20:17 GMT
COPY file:7e725b38b34580a28d521266535fcafc651af09f8af8fc6e03ef74768e1b69a2 in /entrypoint.sh 
# Wed, 30 Jan 2019 03:20:17 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 30 Jan 2019 03:20:17 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:ab1fc7e4bf9195e554669fafa47f69befe22053d7100f5f7002cb9254a36f37c`  
		Last Modified: Tue, 22 Jan 2019 19:36:49 GMT  
		Size: 45.3 MB (45344749 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35fba333ff5209042e8925a73f3cbabf00ba725257bdba38ec3b415e5d7e6cc7`  
		Last Modified: Tue, 22 Jan 2019 20:13:11 GMT  
		Size: 10.8 MB (10780995 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0cb1fa13079687d5118e5cd7e3ce3c09dc483fa44f0577eca349de8d76e4e8c`  
		Last Modified: Tue, 22 Jan 2019 20:13:09 GMT  
		Size: 4.3 MB (4340040 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc580a9ccefbc1281206126bbd88e08f3660df6336f99f84e5ea5a47aefed0e1`  
		Last Modified: Wed, 23 Jan 2019 05:43:20 GMT  
		Size: 16.0 MB (15965041 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1b601359fed264243471d23ab1ab8b3a078e8c9756ffe3cfbb446833918d15a`  
		Last Modified: Wed, 23 Jan 2019 05:43:15 GMT  
		Size: 2.8 KB (2776 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad1fbe0c70795c49c5968e1522e07de4e2ffb5b971b4ddf85fea593250b9e272`  
		Last Modified: Wed, 30 Jan 2019 03:20:40 GMT  
		Size: 17.8 MB (17782241 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4689ce385c5a27ca6aa59a0b8931c1eb023482fe826f265d3e48ccc13c00dbeb`  
		Last Modified: Wed, 30 Jan 2019 03:20:36 GMT  
		Size: 186.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `telegraf:1.9` - linux; arm variant v7

```console
$ docker pull telegraf@sha256:9dbe9c07f29e728ed7a4285464f4efd61a2dacb6b185117930d3951fa307e015
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **87.1 MB (87114023 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:64fa8bbba96a1c96ef44707c5348d1dc73e0fa4bf0e6c6fef8e307a840c0a108`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Wed, 23 Jan 2019 13:04:29 GMT
ADD file:f58fcfcac4bd31e03fe733b7c850ff7f67728d2532fc54252c02a91c66445c88 in / 
# Wed, 23 Jan 2019 13:04:29 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 13:44:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 13:44:26 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 23 Jan 2019 18:33:03 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends iputils-ping snmp procps lm-sensors &&     rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 18:33:08 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Wed, 30 Jan 2019 13:01:49 GMT
ENV TELEGRAF_VERSION=1.9.3
# Wed, 30 Jan 2019 13:01:54 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     gpg --batch --verify telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     dpkg -i telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     rm -f telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb*
# Wed, 30 Jan 2019 13:01:55 GMT
EXPOSE 8092/udp 8094 8125/udp
# Wed, 30 Jan 2019 13:01:56 GMT
COPY file:7e725b38b34580a28d521266535fcafc651af09f8af8fc6e03ef74768e1b69a2 in /entrypoint.sh 
# Wed, 30 Jan 2019 13:01:56 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 30 Jan 2019 13:01:57 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:d9d6acb4f2f3e6ab798235f9f094d5e343bad5a702bac8cf38e2569dfec4e284`  
		Last Modified: Wed, 23 Jan 2019 13:12:06 GMT  
		Size: 42.1 MB (42087731 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aaa7b6903fc66574eed3dd94d25c8ee0c27a478c84ff3219c4ce223b0233aeba`  
		Last Modified: Wed, 23 Jan 2019 14:05:44 GMT  
		Size: 9.5 MB (9480423 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2011a5c4d9cbe6e42446717e9f145d3264c681a9a7be23834c6d1989afab2dfc`  
		Last Modified: Wed, 23 Jan 2019 14:05:42 GMT  
		Size: 3.9 MB (3918464 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ed6e0675d10f3a3e3de662eda6f00f7ed2d32a6d5bbd9005b8a3d12b33c13ea`  
		Last Modified: Wed, 23 Jan 2019 18:34:01 GMT  
		Size: 14.8 MB (14835811 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51d3489f897875e156b70c6d2f362ac6251dc1e80e404131c7c154e149240675`  
		Last Modified: Wed, 23 Jan 2019 18:33:56 GMT  
		Size: 2.8 KB (2801 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:907025b1229cb43409502f38bb8604ac9f80768b3849d0dfb5b11b91f01e9afb`  
		Last Modified: Wed, 30 Jan 2019 13:02:15 GMT  
		Size: 16.8 MB (16788608 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd11bce9d6a9f3051d1bc67ed7ce9c07ce809f5ee4784ff777351aa3d3280fb1`  
		Last Modified: Wed, 30 Jan 2019 13:02:08 GMT  
		Size: 185.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `telegraf:1.9` - linux; arm64 variant v8

```console
$ docker pull telegraf@sha256:35c5d2c0270dd4c4cd4ad819c69ed727571827796bb4089df90e5c4d24e98d8b
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **88.7 MB (88728605 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b87b15c1cf88a22de3e88b3ecf9285c337f6368da4159f14cf1b0a167d3745a2`
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
# Wed, 30 Jan 2019 10:47:38 GMT
ENV TELEGRAF_VERSION=1.9.3
# Wed, 30 Jan 2019 10:47:48 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     gpg --batch --verify telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     dpkg -i telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     rm -f telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb*
# Wed, 30 Jan 2019 10:47:49 GMT
EXPOSE 8092/udp 8094 8125/udp
# Wed, 30 Jan 2019 10:47:49 GMT
COPY file:7e725b38b34580a28d521266535fcafc651af09f8af8fc6e03ef74768e1b69a2 in /entrypoint.sh 
# Wed, 30 Jan 2019 10:47:50 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 30 Jan 2019 10:47:51 GMT
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
	-	`sha256:b13e31292731e21a876894ef72d4ea3569df3a112e5e86984fdcecb35f8c67bc`  
		Last Modified: Wed, 30 Jan 2019 10:48:11 GMT  
		Size: 16.3 MB (16261443 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99a1ea371a05a7d86438cdcf0081ed5dc2a6adfa0b77f23dc02e8454c29c74a4`  
		Last Modified: Wed, 30 Jan 2019 10:48:04 GMT  
		Size: 184.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `telegraf:1.9.3`

```console
$ docker pull telegraf@sha256:012ec4d93f5c0c9de61ff49496ea4e99a7561ba69204eeb3b2d183b1aa87b948
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `telegraf:1.9.3` - linux; amd64

```console
$ docker pull telegraf@sha256:419b8fdc0ae266b0748b1ca4eff5f11865fdd72fd3eda39f6105d0cbb815852c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **94.2 MB (94216028 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fab44ca6c8e5536b20d30b307633fa42845eb38ffaf838cfcd7784040abfb4d5`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Tue, 22 Jan 2019 19:30:03 GMT
ADD file:feb9fd29475961253e3449db036bbf56bf6f4d02f2df1202209e393a9e7e95f5 in / 
# Tue, 22 Jan 2019 19:30:04 GMT
CMD ["bash"]
# Tue, 22 Jan 2019 20:05:43 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 22 Jan 2019 20:05:48 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 23 Jan 2019 05:42:28 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends iputils-ping snmp procps lm-sensors &&     rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 05:42:31 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Wed, 30 Jan 2019 03:20:13 GMT
ENV TELEGRAF_VERSION=1.9.3
# Wed, 30 Jan 2019 03:20:17 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     gpg --batch --verify telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     dpkg -i telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     rm -f telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb*
# Wed, 30 Jan 2019 03:20:17 GMT
EXPOSE 8092/udp 8094 8125/udp
# Wed, 30 Jan 2019 03:20:17 GMT
COPY file:7e725b38b34580a28d521266535fcafc651af09f8af8fc6e03ef74768e1b69a2 in /entrypoint.sh 
# Wed, 30 Jan 2019 03:20:17 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 30 Jan 2019 03:20:17 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:ab1fc7e4bf9195e554669fafa47f69befe22053d7100f5f7002cb9254a36f37c`  
		Last Modified: Tue, 22 Jan 2019 19:36:49 GMT  
		Size: 45.3 MB (45344749 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35fba333ff5209042e8925a73f3cbabf00ba725257bdba38ec3b415e5d7e6cc7`  
		Last Modified: Tue, 22 Jan 2019 20:13:11 GMT  
		Size: 10.8 MB (10780995 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0cb1fa13079687d5118e5cd7e3ce3c09dc483fa44f0577eca349de8d76e4e8c`  
		Last Modified: Tue, 22 Jan 2019 20:13:09 GMT  
		Size: 4.3 MB (4340040 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc580a9ccefbc1281206126bbd88e08f3660df6336f99f84e5ea5a47aefed0e1`  
		Last Modified: Wed, 23 Jan 2019 05:43:20 GMT  
		Size: 16.0 MB (15965041 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1b601359fed264243471d23ab1ab8b3a078e8c9756ffe3cfbb446833918d15a`  
		Last Modified: Wed, 23 Jan 2019 05:43:15 GMT  
		Size: 2.8 KB (2776 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad1fbe0c70795c49c5968e1522e07de4e2ffb5b971b4ddf85fea593250b9e272`  
		Last Modified: Wed, 30 Jan 2019 03:20:40 GMT  
		Size: 17.8 MB (17782241 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4689ce385c5a27ca6aa59a0b8931c1eb023482fe826f265d3e48ccc13c00dbeb`  
		Last Modified: Wed, 30 Jan 2019 03:20:36 GMT  
		Size: 186.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `telegraf:1.9.3` - linux; arm variant v7

```console
$ docker pull telegraf@sha256:9dbe9c07f29e728ed7a4285464f4efd61a2dacb6b185117930d3951fa307e015
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **87.1 MB (87114023 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:64fa8bbba96a1c96ef44707c5348d1dc73e0fa4bf0e6c6fef8e307a840c0a108`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Wed, 23 Jan 2019 13:04:29 GMT
ADD file:f58fcfcac4bd31e03fe733b7c850ff7f67728d2532fc54252c02a91c66445c88 in / 
# Wed, 23 Jan 2019 13:04:29 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 13:44:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 13:44:26 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 23 Jan 2019 18:33:03 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends iputils-ping snmp procps lm-sensors &&     rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 18:33:08 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Wed, 30 Jan 2019 13:01:49 GMT
ENV TELEGRAF_VERSION=1.9.3
# Wed, 30 Jan 2019 13:01:54 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     gpg --batch --verify telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     dpkg -i telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     rm -f telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb*
# Wed, 30 Jan 2019 13:01:55 GMT
EXPOSE 8092/udp 8094 8125/udp
# Wed, 30 Jan 2019 13:01:56 GMT
COPY file:7e725b38b34580a28d521266535fcafc651af09f8af8fc6e03ef74768e1b69a2 in /entrypoint.sh 
# Wed, 30 Jan 2019 13:01:56 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 30 Jan 2019 13:01:57 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:d9d6acb4f2f3e6ab798235f9f094d5e343bad5a702bac8cf38e2569dfec4e284`  
		Last Modified: Wed, 23 Jan 2019 13:12:06 GMT  
		Size: 42.1 MB (42087731 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aaa7b6903fc66574eed3dd94d25c8ee0c27a478c84ff3219c4ce223b0233aeba`  
		Last Modified: Wed, 23 Jan 2019 14:05:44 GMT  
		Size: 9.5 MB (9480423 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2011a5c4d9cbe6e42446717e9f145d3264c681a9a7be23834c6d1989afab2dfc`  
		Last Modified: Wed, 23 Jan 2019 14:05:42 GMT  
		Size: 3.9 MB (3918464 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ed6e0675d10f3a3e3de662eda6f00f7ed2d32a6d5bbd9005b8a3d12b33c13ea`  
		Last Modified: Wed, 23 Jan 2019 18:34:01 GMT  
		Size: 14.8 MB (14835811 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51d3489f897875e156b70c6d2f362ac6251dc1e80e404131c7c154e149240675`  
		Last Modified: Wed, 23 Jan 2019 18:33:56 GMT  
		Size: 2.8 KB (2801 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:907025b1229cb43409502f38bb8604ac9f80768b3849d0dfb5b11b91f01e9afb`  
		Last Modified: Wed, 30 Jan 2019 13:02:15 GMT  
		Size: 16.8 MB (16788608 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd11bce9d6a9f3051d1bc67ed7ce9c07ce809f5ee4784ff777351aa3d3280fb1`  
		Last Modified: Wed, 30 Jan 2019 13:02:08 GMT  
		Size: 185.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `telegraf:1.9.3` - linux; arm64 variant v8

```console
$ docker pull telegraf@sha256:35c5d2c0270dd4c4cd4ad819c69ed727571827796bb4089df90e5c4d24e98d8b
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **88.7 MB (88728605 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b87b15c1cf88a22de3e88b3ecf9285c337f6368da4159f14cf1b0a167d3745a2`
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
# Wed, 30 Jan 2019 10:47:38 GMT
ENV TELEGRAF_VERSION=1.9.3
# Wed, 30 Jan 2019 10:47:48 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     gpg --batch --verify telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     dpkg -i telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     rm -f telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb*
# Wed, 30 Jan 2019 10:47:49 GMT
EXPOSE 8092/udp 8094 8125/udp
# Wed, 30 Jan 2019 10:47:49 GMT
COPY file:7e725b38b34580a28d521266535fcafc651af09f8af8fc6e03ef74768e1b69a2 in /entrypoint.sh 
# Wed, 30 Jan 2019 10:47:50 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 30 Jan 2019 10:47:51 GMT
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
	-	`sha256:b13e31292731e21a876894ef72d4ea3569df3a112e5e86984fdcecb35f8c67bc`  
		Last Modified: Wed, 30 Jan 2019 10:48:11 GMT  
		Size: 16.3 MB (16261443 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99a1ea371a05a7d86438cdcf0081ed5dc2a6adfa0b77f23dc02e8454c29c74a4`  
		Last Modified: Wed, 30 Jan 2019 10:48:04 GMT  
		Size: 184.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `telegraf:1.9.3-alpine`

```console
$ docker pull telegraf@sha256:480f69225dad2c0f55844bdc2a8a5a0b6046039fbdc2a1b13094aab43e34c8ce
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `telegraf:1.9.3-alpine` - linux; amd64

```console
$ docker pull telegraf@sha256:0e9ccbec4fb6563fdcd69e2427ebd0abaa176b1fc885328925cf712ba7601f5a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.2 MB (23201396 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c5ae0a6f6fdeee0d7f3b4f83267470dff9accca60fc9c11149ad71d6972db7a8`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Wed, 30 Jan 2019 22:19:46 GMT
ADD file:91fb97ea3549e52e7b6e22b93a6736cf915c756f3d13348406d8ad5f1a872680 in / 
# Wed, 30 Jan 2019 22:19:47 GMT
CMD ["/bin/sh"]
# Wed, 30 Jan 2019 22:39:26 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf
# Thu, 31 Jan 2019 02:15:10 GMT
RUN apk add --no-cache iputils ca-certificates net-snmp-tools procps lm_sensors &&     update-ca-certificates
# Thu, 31 Jan 2019 02:15:44 GMT
ENV TELEGRAF_VERSION=1.9.3
# Thu, 31 Jan 2019 02:15:52 GMT
RUN set -ex &&     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf-${TELEGRAF_VERSION}-static_linux_amd64.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf-${TELEGRAF_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify telegraf-${TELEGRAF_VERSION}-static_linux_amd64.tar.gz.asc telegraf-${TELEGRAF_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src /etc/telegraf &&     tar -C /usr/src -xzf telegraf-${TELEGRAF_VERSION}-static_linux_amd64.tar.gz &&     mv /usr/src/telegraf*/telegraf.conf /etc/telegraf/ &&     chmod +x /usr/src/telegraf*/* &&     cp -a /usr/src/telegraf*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Thu, 31 Jan 2019 02:15:52 GMT
EXPOSE 8092/udp 8094 8125/udp
# Thu, 31 Jan 2019 02:15:53 GMT
COPY file:a8a66b0d8dac2aee66897c63ce9b7a3d282bb5d7b796ffb12c2cd9227fed341b in /entrypoint.sh 
# Thu, 31 Jan 2019 02:15:53 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 31 Jan 2019 02:15:53 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:169185f82c45a6eb72e0ca4ee66152626e7ace92a0cbc53624fb46d0a553f0bd`  
		Last Modified: Wed, 30 Jan 2019 22:21:04 GMT  
		Size: 2.2 MB (2207038 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5fc741e575cbed81d8f84e8f1f782804230bb1a3dfb0d2765f31b4eb19235dca`  
		Last Modified: Wed, 30 Jan 2019 22:40:10 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6bbf026a32bf997772907b39fecb278195ab4800bd8475e1d1e1b8de20fbb9ce`  
		Last Modified: Thu, 31 Jan 2019 02:16:08 GMT  
		Size: 3.2 MB (3248155 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:342e2f2c8e5263d7b527cb852290581d37fa552042c3cf6b99b388feec1a2310`  
		Last Modified: Thu, 31 Jan 2019 02:16:28 GMT  
		Size: 17.7 MB (17745865 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82c4be14c020f4b95f622cd4da5d056ffefa3c56dc920384eed6ba846db28e4e`  
		Last Modified: Thu, 31 Jan 2019 02:16:24 GMT  
		Size: 183.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `telegraf:1.9-alpine`

```console
$ docker pull telegraf@sha256:480f69225dad2c0f55844bdc2a8a5a0b6046039fbdc2a1b13094aab43e34c8ce
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `telegraf:1.9-alpine` - linux; amd64

```console
$ docker pull telegraf@sha256:0e9ccbec4fb6563fdcd69e2427ebd0abaa176b1fc885328925cf712ba7601f5a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.2 MB (23201396 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c5ae0a6f6fdeee0d7f3b4f83267470dff9accca60fc9c11149ad71d6972db7a8`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Wed, 30 Jan 2019 22:19:46 GMT
ADD file:91fb97ea3549e52e7b6e22b93a6736cf915c756f3d13348406d8ad5f1a872680 in / 
# Wed, 30 Jan 2019 22:19:47 GMT
CMD ["/bin/sh"]
# Wed, 30 Jan 2019 22:39:26 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf
# Thu, 31 Jan 2019 02:15:10 GMT
RUN apk add --no-cache iputils ca-certificates net-snmp-tools procps lm_sensors &&     update-ca-certificates
# Thu, 31 Jan 2019 02:15:44 GMT
ENV TELEGRAF_VERSION=1.9.3
# Thu, 31 Jan 2019 02:15:52 GMT
RUN set -ex &&     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf-${TELEGRAF_VERSION}-static_linux_amd64.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf-${TELEGRAF_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify telegraf-${TELEGRAF_VERSION}-static_linux_amd64.tar.gz.asc telegraf-${TELEGRAF_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src /etc/telegraf &&     tar -C /usr/src -xzf telegraf-${TELEGRAF_VERSION}-static_linux_amd64.tar.gz &&     mv /usr/src/telegraf*/telegraf.conf /etc/telegraf/ &&     chmod +x /usr/src/telegraf*/* &&     cp -a /usr/src/telegraf*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Thu, 31 Jan 2019 02:15:52 GMT
EXPOSE 8092/udp 8094 8125/udp
# Thu, 31 Jan 2019 02:15:53 GMT
COPY file:a8a66b0d8dac2aee66897c63ce9b7a3d282bb5d7b796ffb12c2cd9227fed341b in /entrypoint.sh 
# Thu, 31 Jan 2019 02:15:53 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 31 Jan 2019 02:15:53 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:169185f82c45a6eb72e0ca4ee66152626e7ace92a0cbc53624fb46d0a553f0bd`  
		Last Modified: Wed, 30 Jan 2019 22:21:04 GMT  
		Size: 2.2 MB (2207038 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5fc741e575cbed81d8f84e8f1f782804230bb1a3dfb0d2765f31b4eb19235dca`  
		Last Modified: Wed, 30 Jan 2019 22:40:10 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6bbf026a32bf997772907b39fecb278195ab4800bd8475e1d1e1b8de20fbb9ce`  
		Last Modified: Thu, 31 Jan 2019 02:16:08 GMT  
		Size: 3.2 MB (3248155 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:342e2f2c8e5263d7b527cb852290581d37fa552042c3cf6b99b388feec1a2310`  
		Last Modified: Thu, 31 Jan 2019 02:16:28 GMT  
		Size: 17.7 MB (17745865 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82c4be14c020f4b95f622cd4da5d056ffefa3c56dc920384eed6ba846db28e4e`  
		Last Modified: Thu, 31 Jan 2019 02:16:24 GMT  
		Size: 183.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `telegraf:alpine`

```console
$ docker pull telegraf@sha256:480f69225dad2c0f55844bdc2a8a5a0b6046039fbdc2a1b13094aab43e34c8ce
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `telegraf:alpine` - linux; amd64

```console
$ docker pull telegraf@sha256:0e9ccbec4fb6563fdcd69e2427ebd0abaa176b1fc885328925cf712ba7601f5a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.2 MB (23201396 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c5ae0a6f6fdeee0d7f3b4f83267470dff9accca60fc9c11149ad71d6972db7a8`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Wed, 30 Jan 2019 22:19:46 GMT
ADD file:91fb97ea3549e52e7b6e22b93a6736cf915c756f3d13348406d8ad5f1a872680 in / 
# Wed, 30 Jan 2019 22:19:47 GMT
CMD ["/bin/sh"]
# Wed, 30 Jan 2019 22:39:26 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf
# Thu, 31 Jan 2019 02:15:10 GMT
RUN apk add --no-cache iputils ca-certificates net-snmp-tools procps lm_sensors &&     update-ca-certificates
# Thu, 31 Jan 2019 02:15:44 GMT
ENV TELEGRAF_VERSION=1.9.3
# Thu, 31 Jan 2019 02:15:52 GMT
RUN set -ex &&     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf-${TELEGRAF_VERSION}-static_linux_amd64.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf-${TELEGRAF_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify telegraf-${TELEGRAF_VERSION}-static_linux_amd64.tar.gz.asc telegraf-${TELEGRAF_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src /etc/telegraf &&     tar -C /usr/src -xzf telegraf-${TELEGRAF_VERSION}-static_linux_amd64.tar.gz &&     mv /usr/src/telegraf*/telegraf.conf /etc/telegraf/ &&     chmod +x /usr/src/telegraf*/* &&     cp -a /usr/src/telegraf*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Thu, 31 Jan 2019 02:15:52 GMT
EXPOSE 8092/udp 8094 8125/udp
# Thu, 31 Jan 2019 02:15:53 GMT
COPY file:a8a66b0d8dac2aee66897c63ce9b7a3d282bb5d7b796ffb12c2cd9227fed341b in /entrypoint.sh 
# Thu, 31 Jan 2019 02:15:53 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 31 Jan 2019 02:15:53 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:169185f82c45a6eb72e0ca4ee66152626e7ace92a0cbc53624fb46d0a553f0bd`  
		Last Modified: Wed, 30 Jan 2019 22:21:04 GMT  
		Size: 2.2 MB (2207038 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5fc741e575cbed81d8f84e8f1f782804230bb1a3dfb0d2765f31b4eb19235dca`  
		Last Modified: Wed, 30 Jan 2019 22:40:10 GMT  
		Size: 155.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6bbf026a32bf997772907b39fecb278195ab4800bd8475e1d1e1b8de20fbb9ce`  
		Last Modified: Thu, 31 Jan 2019 02:16:08 GMT  
		Size: 3.2 MB (3248155 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:342e2f2c8e5263d7b527cb852290581d37fa552042c3cf6b99b388feec1a2310`  
		Last Modified: Thu, 31 Jan 2019 02:16:28 GMT  
		Size: 17.7 MB (17745865 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82c4be14c020f4b95f622cd4da5d056ffefa3c56dc920384eed6ba846db28e4e`  
		Last Modified: Thu, 31 Jan 2019 02:16:24 GMT  
		Size: 183.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `telegraf:latest`

```console
$ docker pull telegraf@sha256:012ec4d93f5c0c9de61ff49496ea4e99a7561ba69204eeb3b2d183b1aa87b948
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `telegraf:latest` - linux; amd64

```console
$ docker pull telegraf@sha256:419b8fdc0ae266b0748b1ca4eff5f11865fdd72fd3eda39f6105d0cbb815852c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **94.2 MB (94216028 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fab44ca6c8e5536b20d30b307633fa42845eb38ffaf838cfcd7784040abfb4d5`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Tue, 22 Jan 2019 19:30:03 GMT
ADD file:feb9fd29475961253e3449db036bbf56bf6f4d02f2df1202209e393a9e7e95f5 in / 
# Tue, 22 Jan 2019 19:30:04 GMT
CMD ["bash"]
# Tue, 22 Jan 2019 20:05:43 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 22 Jan 2019 20:05:48 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 23 Jan 2019 05:42:28 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends iputils-ping snmp procps lm-sensors &&     rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 05:42:31 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Wed, 30 Jan 2019 03:20:13 GMT
ENV TELEGRAF_VERSION=1.9.3
# Wed, 30 Jan 2019 03:20:17 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     gpg --batch --verify telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     dpkg -i telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     rm -f telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb*
# Wed, 30 Jan 2019 03:20:17 GMT
EXPOSE 8092/udp 8094 8125/udp
# Wed, 30 Jan 2019 03:20:17 GMT
COPY file:7e725b38b34580a28d521266535fcafc651af09f8af8fc6e03ef74768e1b69a2 in /entrypoint.sh 
# Wed, 30 Jan 2019 03:20:17 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 30 Jan 2019 03:20:17 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:ab1fc7e4bf9195e554669fafa47f69befe22053d7100f5f7002cb9254a36f37c`  
		Last Modified: Tue, 22 Jan 2019 19:36:49 GMT  
		Size: 45.3 MB (45344749 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35fba333ff5209042e8925a73f3cbabf00ba725257bdba38ec3b415e5d7e6cc7`  
		Last Modified: Tue, 22 Jan 2019 20:13:11 GMT  
		Size: 10.8 MB (10780995 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0cb1fa13079687d5118e5cd7e3ce3c09dc483fa44f0577eca349de8d76e4e8c`  
		Last Modified: Tue, 22 Jan 2019 20:13:09 GMT  
		Size: 4.3 MB (4340040 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc580a9ccefbc1281206126bbd88e08f3660df6336f99f84e5ea5a47aefed0e1`  
		Last Modified: Wed, 23 Jan 2019 05:43:20 GMT  
		Size: 16.0 MB (15965041 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1b601359fed264243471d23ab1ab8b3a078e8c9756ffe3cfbb446833918d15a`  
		Last Modified: Wed, 23 Jan 2019 05:43:15 GMT  
		Size: 2.8 KB (2776 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad1fbe0c70795c49c5968e1522e07de4e2ffb5b971b4ddf85fea593250b9e272`  
		Last Modified: Wed, 30 Jan 2019 03:20:40 GMT  
		Size: 17.8 MB (17782241 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4689ce385c5a27ca6aa59a0b8931c1eb023482fe826f265d3e48ccc13c00dbeb`  
		Last Modified: Wed, 30 Jan 2019 03:20:36 GMT  
		Size: 186.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `telegraf:latest` - linux; arm variant v7

```console
$ docker pull telegraf@sha256:9dbe9c07f29e728ed7a4285464f4efd61a2dacb6b185117930d3951fa307e015
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **87.1 MB (87114023 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:64fa8bbba96a1c96ef44707c5348d1dc73e0fa4bf0e6c6fef8e307a840c0a108`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Wed, 23 Jan 2019 13:04:29 GMT
ADD file:f58fcfcac4bd31e03fe733b7c850ff7f67728d2532fc54252c02a91c66445c88 in / 
# Wed, 23 Jan 2019 13:04:29 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 13:44:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 13:44:26 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 23 Jan 2019 18:33:03 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends iputils-ping snmp procps lm-sensors &&     rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 18:33:08 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Wed, 30 Jan 2019 13:01:49 GMT
ENV TELEGRAF_VERSION=1.9.3
# Wed, 30 Jan 2019 13:01:54 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     gpg --batch --verify telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     dpkg -i telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     rm -f telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb*
# Wed, 30 Jan 2019 13:01:55 GMT
EXPOSE 8092/udp 8094 8125/udp
# Wed, 30 Jan 2019 13:01:56 GMT
COPY file:7e725b38b34580a28d521266535fcafc651af09f8af8fc6e03ef74768e1b69a2 in /entrypoint.sh 
# Wed, 30 Jan 2019 13:01:56 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 30 Jan 2019 13:01:57 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:d9d6acb4f2f3e6ab798235f9f094d5e343bad5a702bac8cf38e2569dfec4e284`  
		Last Modified: Wed, 23 Jan 2019 13:12:06 GMT  
		Size: 42.1 MB (42087731 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aaa7b6903fc66574eed3dd94d25c8ee0c27a478c84ff3219c4ce223b0233aeba`  
		Last Modified: Wed, 23 Jan 2019 14:05:44 GMT  
		Size: 9.5 MB (9480423 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2011a5c4d9cbe6e42446717e9f145d3264c681a9a7be23834c6d1989afab2dfc`  
		Last Modified: Wed, 23 Jan 2019 14:05:42 GMT  
		Size: 3.9 MB (3918464 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ed6e0675d10f3a3e3de662eda6f00f7ed2d32a6d5bbd9005b8a3d12b33c13ea`  
		Last Modified: Wed, 23 Jan 2019 18:34:01 GMT  
		Size: 14.8 MB (14835811 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51d3489f897875e156b70c6d2f362ac6251dc1e80e404131c7c154e149240675`  
		Last Modified: Wed, 23 Jan 2019 18:33:56 GMT  
		Size: 2.8 KB (2801 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:907025b1229cb43409502f38bb8604ac9f80768b3849d0dfb5b11b91f01e9afb`  
		Last Modified: Wed, 30 Jan 2019 13:02:15 GMT  
		Size: 16.8 MB (16788608 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd11bce9d6a9f3051d1bc67ed7ce9c07ce809f5ee4784ff777351aa3d3280fb1`  
		Last Modified: Wed, 30 Jan 2019 13:02:08 GMT  
		Size: 185.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `telegraf:latest` - linux; arm64 variant v8

```console
$ docker pull telegraf@sha256:35c5d2c0270dd4c4cd4ad819c69ed727571827796bb4089df90e5c4d24e98d8b
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **88.7 MB (88728605 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b87b15c1cf88a22de3e88b3ecf9285c337f6368da4159f14cf1b0a167d3745a2`
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
# Wed, 30 Jan 2019 10:47:38 GMT
ENV TELEGRAF_VERSION=1.9.3
# Wed, 30 Jan 2019 10:47:48 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     gpg --batch --verify telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     dpkg -i telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     rm -f telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb*
# Wed, 30 Jan 2019 10:47:49 GMT
EXPOSE 8092/udp 8094 8125/udp
# Wed, 30 Jan 2019 10:47:49 GMT
COPY file:7e725b38b34580a28d521266535fcafc651af09f8af8fc6e03ef74768e1b69a2 in /entrypoint.sh 
# Wed, 30 Jan 2019 10:47:50 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 30 Jan 2019 10:47:51 GMT
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
	-	`sha256:b13e31292731e21a876894ef72d4ea3569df3a112e5e86984fdcecb35f8c67bc`  
		Last Modified: Wed, 30 Jan 2019 10:48:11 GMT  
		Size: 16.3 MB (16261443 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99a1ea371a05a7d86438cdcf0081ed5dc2a6adfa0b77f23dc02e8454c29c74a4`  
		Last Modified: Wed, 30 Jan 2019 10:48:04 GMT  
		Size: 184.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
