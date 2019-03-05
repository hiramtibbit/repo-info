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
-	[`telegraf:1.9.5`](#telegraf195)
-	[`telegraf:1.9.5-alpine`](#telegraf195-alpine)
-	[`telegraf:1.9-alpine`](#telegraf19-alpine)
-	[`telegraf:alpine`](#telegrafalpine)
-	[`telegraf:latest`](#telegraflatest)

## `telegraf:1.7`

```console
$ docker pull telegraf@sha256:6fae87cd4b64919991f168ed2f60dcc764b3a25de0796d7d04eb37b05fc7f7e7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `telegraf:1.7` - linux; amd64

```console
$ docker pull telegraf@sha256:05150a6ad2badbb300aabcab11024f1036fe4c812f86206c3e687d09b3e00134
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **86.9 MB (86932183 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e58ff0b8f73cda267a19f6ed54616eb8163ac7d544bbe6a669cbe98142b129e7`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Mon, 04 Mar 2019 23:22:10 GMT
ADD file:e4bdc12117ee95eaa94b89f258164dd42f9828c7c5c4332a608707187ccb470a in / 
# Mon, 04 Mar 2019 23:22:10 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 02:35:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 02:35:27 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 05 Mar 2019 08:21:57 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends iputils-ping snmp procps lm-sensors &&     rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 08:22:01 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Tue, 05 Mar 2019 08:22:02 GMT
ENV TELEGRAF_VERSION=1.7.4
# Tue, 05 Mar 2019 08:22:05 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     gpg --batch --verify telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     dpkg -i telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     rm -f telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb*
# Tue, 05 Mar 2019 08:22:05 GMT
EXPOSE 8092/udp 8094 8125/udp
# Tue, 05 Mar 2019 08:22:06 GMT
COPY file:7e725b38b34580a28d521266535fcafc651af09f8af8fc6e03ef74768e1b69a2 in /entrypoint.sh 
# Tue, 05 Mar 2019 08:22:07 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 05 Mar 2019 08:22:07 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:22dbe790f71562dfd3d49406b1dfd1e85e50f3dd7cb2e97b3918376ca39cae4e`  
		Last Modified: Mon, 04 Mar 2019 23:26:18 GMT  
		Size: 45.3 MB (45342528 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0250231711a047a6e54e7107d7a3bfb0afd807f5f408d00be0d407c5b8395219`  
		Last Modified: Tue, 05 Mar 2019 02:43:42 GMT  
		Size: 10.8 MB (10781993 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fba9447437b5ee1da9b33b2e2d18add55a33d0b763075202e17cad7efd3ff8f`  
		Last Modified: Tue, 05 Mar 2019 02:43:41 GMT  
		Size: 4.3 MB (4340113 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:337027777a42212a8d7a41cf511e4d9fb52ab6c0f47a5df93948b4c219c5bfc8`  
		Last Modified: Tue, 05 Mar 2019 08:22:45 GMT  
		Size: 16.0 MB (15965139 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d64cd8a787428cb20be5eb7477cd1dad464c09783400143498659a579473cfd`  
		Last Modified: Tue, 05 Mar 2019 08:22:41 GMT  
		Size: 2.8 KB (2775 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd9e693097f84503fa4b78264a8e767070e4d8327e620fd9b50da0890fd4d28f`  
		Last Modified: Tue, 05 Mar 2019 08:22:44 GMT  
		Size: 10.5 MB (10499449 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86256e6ce9da5f5738ac66df7b5e59004f3ee0ae23f72fd7fc1836c6bfcbcce4`  
		Last Modified: Tue, 05 Mar 2019 08:22:41 GMT  
		Size: 186.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `telegraf:1.7` - linux; arm variant v7

```console
$ docker pull telegraf@sha256:a86f7532fc4088415c82a59318de18b3082a0219d210144f9654a5530730b2ae
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **80.4 MB (80415089 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6b49b2cf6bdc5de19d5ae2b0bd54781cf00f85fc7518283b9436d4cf3291a0d9`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Thu, 07 Feb 2019 13:03:09 GMT
ADD file:5fd4dfb0a59a763b52fd5588a8f4c35f596b133e00275b1cc485a71cf088b31a in / 
# Thu, 07 Feb 2019 13:03:10 GMT
CMD ["bash"]
# Thu, 07 Feb 2019 15:37:43 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 07 Feb 2019 15:37:52 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 07 Feb 2019 18:44:34 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends iputils-ping snmp procps lm-sensors &&     rm -rf /var/lib/apt/lists/*
# Thu, 07 Feb 2019 18:44:38 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Thu, 07 Feb 2019 18:44:38 GMT
ENV TELEGRAF_VERSION=1.7.4
# Thu, 07 Feb 2019 18:44:42 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     gpg --batch --verify telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     dpkg -i telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     rm -f telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb*
# Thu, 07 Feb 2019 18:44:42 GMT
EXPOSE 8092/udp 8094 8125/udp
# Thu, 07 Feb 2019 18:44:43 GMT
COPY file:7e725b38b34580a28d521266535fcafc651af09f8af8fc6e03ef74768e1b69a2 in /entrypoint.sh 
# Thu, 07 Feb 2019 18:44:43 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 07 Feb 2019 18:44:43 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:54d7f221ed1ab7644f6a88a953847270cd864b5ebc4f343bfa28876a2715031f`  
		Last Modified: Thu, 07 Feb 2019 02:04:53 GMT  
		Size: 42.1 MB (42086927 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2fea5bcc599e31c6fb6e38ce89618c27f24be54ed9ac9b53f4fcbed58f9d619d`  
		Last Modified: Thu, 07 Feb 2019 15:52:17 GMT  
		Size: 9.5 MB (9480760 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:586ac22707ead8a14ad6ae745a4c231538e6215c7a702ccad147b5251b3ea66c`  
		Last Modified: Thu, 07 Feb 2019 15:52:16 GMT  
		Size: 3.9 MB (3918458 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8aa4bb624871e73ee526e795152dc4f0206d7d820838996582d7a124bb39abe1`  
		Last Modified: Thu, 07 Feb 2019 18:45:27 GMT  
		Size: 14.8 MB (14835741 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41eb18c7fbbb6aa5603c3bf8445565cf8334f6db17e8f40cae2bc55d15d3af8a`  
		Last Modified: Thu, 07 Feb 2019 18:45:22 GMT  
		Size: 2.8 KB (2800 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a89304b497f0a055e2b8cdc8e0836987f37d8f759f25a922e70fcacba34eedb9`  
		Last Modified: Thu, 07 Feb 2019 18:45:26 GMT  
		Size: 10.1 MB (10090218 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5541b2c068962e2b5c00bcb02d134c294fed7d7890c6dc5872443e5115938736`  
		Last Modified: Thu, 07 Feb 2019 18:45:22 GMT  
		Size: 185.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `telegraf:1.7` - linux; arm64 variant v8

```console
$ docker pull telegraf@sha256:605491dd966ce44f854ebde14da88e82cf031704ef1c2b0cca26902d0f417ff4
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **82.3 MB (82343128 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3884cc4f876c0bc9c4c0bfc5d3aacbe1a55c32bb1caf03227ee05c094a76f25e`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Wed, 06 Feb 2019 10:08:56 GMT
ADD file:4c7b5bcb5c347fb36236917e364936a9762b8bd6e8585c33379120f01c3a8d85 in / 
# Wed, 06 Feb 2019 10:08:58 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 10:37:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 10:38:20 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 06 Feb 2019 20:36:11 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends iputils-ping snmp procps lm-sensors &&     rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 20:36:16 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Wed, 06 Feb 2019 20:36:16 GMT
ENV TELEGRAF_VERSION=1.7.4
# Wed, 06 Feb 2019 20:36:27 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     gpg --batch --verify telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     dpkg -i telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     rm -f telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb*
# Wed, 06 Feb 2019 20:36:28 GMT
EXPOSE 8092/udp 8094 8125/udp
# Wed, 06 Feb 2019 20:36:28 GMT
COPY file:7e725b38b34580a28d521266535fcafc651af09f8af8fc6e03ef74768e1b69a2 in /entrypoint.sh 
# Wed, 06 Feb 2019 20:36:29 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 06 Feb 2019 20:36:29 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:12bb1c82b086301ca1c22eabf3add7cd229f27b63ca4b0924e2356051d9e7194`  
		Last Modified: Wed, 06 Feb 2019 10:14:28 GMT  
		Size: 43.1 MB (43124977 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:730f6528b47c72f6dd5aabc947e8db01aa470adc3fdb4bbbcf052f9c3ad6ae8e`  
		Last Modified: Wed, 06 Feb 2019 10:52:36 GMT  
		Size: 9.7 MB (9728878 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63b5f3607713f2dab247e619fafcffd7c9edf4aaffc9e701660a76ccf324b742`  
		Last Modified: Wed, 06 Feb 2019 10:52:28 GMT  
		Size: 4.1 MB (4093098 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6f00c9844b30dac42c73fd26123cffb3df2a3198270be55b6442e6aeed03436`  
		Last Modified: Wed, 06 Feb 2019 20:37:28 GMT  
		Size: 15.5 MB (15525733 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c272984cbf280ac5fd1a4387eeeee5ff0dc0140415b9d2177073668a2bb9c607`  
		Last Modified: Wed, 06 Feb 2019 20:37:20 GMT  
		Size: 2.8 KB (2776 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25859eb66b72ad5ba36b9cd8135b290971a7e50e99f3fbf3e14c5b45fc0aed27`  
		Last Modified: Wed, 06 Feb 2019 20:37:25 GMT  
		Size: 9.9 MB (9867480 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:766a1b15ab156c9d8ef760077a2fbaac9f917b8328dcb17f5c3e4c9cf8bb9aa6`  
		Last Modified: Wed, 06 Feb 2019 20:37:20 GMT  
		Size: 186.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `telegraf:1.7.4`

```console
$ docker pull telegraf@sha256:6fae87cd4b64919991f168ed2f60dcc764b3a25de0796d7d04eb37b05fc7f7e7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `telegraf:1.7.4` - linux; amd64

```console
$ docker pull telegraf@sha256:05150a6ad2badbb300aabcab11024f1036fe4c812f86206c3e687d09b3e00134
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **86.9 MB (86932183 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e58ff0b8f73cda267a19f6ed54616eb8163ac7d544bbe6a669cbe98142b129e7`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Mon, 04 Mar 2019 23:22:10 GMT
ADD file:e4bdc12117ee95eaa94b89f258164dd42f9828c7c5c4332a608707187ccb470a in / 
# Mon, 04 Mar 2019 23:22:10 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 02:35:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 02:35:27 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 05 Mar 2019 08:21:57 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends iputils-ping snmp procps lm-sensors &&     rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 08:22:01 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Tue, 05 Mar 2019 08:22:02 GMT
ENV TELEGRAF_VERSION=1.7.4
# Tue, 05 Mar 2019 08:22:05 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     gpg --batch --verify telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     dpkg -i telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     rm -f telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb*
# Tue, 05 Mar 2019 08:22:05 GMT
EXPOSE 8092/udp 8094 8125/udp
# Tue, 05 Mar 2019 08:22:06 GMT
COPY file:7e725b38b34580a28d521266535fcafc651af09f8af8fc6e03ef74768e1b69a2 in /entrypoint.sh 
# Tue, 05 Mar 2019 08:22:07 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 05 Mar 2019 08:22:07 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:22dbe790f71562dfd3d49406b1dfd1e85e50f3dd7cb2e97b3918376ca39cae4e`  
		Last Modified: Mon, 04 Mar 2019 23:26:18 GMT  
		Size: 45.3 MB (45342528 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0250231711a047a6e54e7107d7a3bfb0afd807f5f408d00be0d407c5b8395219`  
		Last Modified: Tue, 05 Mar 2019 02:43:42 GMT  
		Size: 10.8 MB (10781993 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fba9447437b5ee1da9b33b2e2d18add55a33d0b763075202e17cad7efd3ff8f`  
		Last Modified: Tue, 05 Mar 2019 02:43:41 GMT  
		Size: 4.3 MB (4340113 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:337027777a42212a8d7a41cf511e4d9fb52ab6c0f47a5df93948b4c219c5bfc8`  
		Last Modified: Tue, 05 Mar 2019 08:22:45 GMT  
		Size: 16.0 MB (15965139 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d64cd8a787428cb20be5eb7477cd1dad464c09783400143498659a579473cfd`  
		Last Modified: Tue, 05 Mar 2019 08:22:41 GMT  
		Size: 2.8 KB (2775 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd9e693097f84503fa4b78264a8e767070e4d8327e620fd9b50da0890fd4d28f`  
		Last Modified: Tue, 05 Mar 2019 08:22:44 GMT  
		Size: 10.5 MB (10499449 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86256e6ce9da5f5738ac66df7b5e59004f3ee0ae23f72fd7fc1836c6bfcbcce4`  
		Last Modified: Tue, 05 Mar 2019 08:22:41 GMT  
		Size: 186.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `telegraf:1.7.4` - linux; arm variant v7

```console
$ docker pull telegraf@sha256:a86f7532fc4088415c82a59318de18b3082a0219d210144f9654a5530730b2ae
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **80.4 MB (80415089 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6b49b2cf6bdc5de19d5ae2b0bd54781cf00f85fc7518283b9436d4cf3291a0d9`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Thu, 07 Feb 2019 13:03:09 GMT
ADD file:5fd4dfb0a59a763b52fd5588a8f4c35f596b133e00275b1cc485a71cf088b31a in / 
# Thu, 07 Feb 2019 13:03:10 GMT
CMD ["bash"]
# Thu, 07 Feb 2019 15:37:43 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 07 Feb 2019 15:37:52 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 07 Feb 2019 18:44:34 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends iputils-ping snmp procps lm-sensors &&     rm -rf /var/lib/apt/lists/*
# Thu, 07 Feb 2019 18:44:38 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Thu, 07 Feb 2019 18:44:38 GMT
ENV TELEGRAF_VERSION=1.7.4
# Thu, 07 Feb 2019 18:44:42 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     gpg --batch --verify telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     dpkg -i telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     rm -f telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb*
# Thu, 07 Feb 2019 18:44:42 GMT
EXPOSE 8092/udp 8094 8125/udp
# Thu, 07 Feb 2019 18:44:43 GMT
COPY file:7e725b38b34580a28d521266535fcafc651af09f8af8fc6e03ef74768e1b69a2 in /entrypoint.sh 
# Thu, 07 Feb 2019 18:44:43 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 07 Feb 2019 18:44:43 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:54d7f221ed1ab7644f6a88a953847270cd864b5ebc4f343bfa28876a2715031f`  
		Last Modified: Thu, 07 Feb 2019 02:04:53 GMT  
		Size: 42.1 MB (42086927 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2fea5bcc599e31c6fb6e38ce89618c27f24be54ed9ac9b53f4fcbed58f9d619d`  
		Last Modified: Thu, 07 Feb 2019 15:52:17 GMT  
		Size: 9.5 MB (9480760 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:586ac22707ead8a14ad6ae745a4c231538e6215c7a702ccad147b5251b3ea66c`  
		Last Modified: Thu, 07 Feb 2019 15:52:16 GMT  
		Size: 3.9 MB (3918458 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8aa4bb624871e73ee526e795152dc4f0206d7d820838996582d7a124bb39abe1`  
		Last Modified: Thu, 07 Feb 2019 18:45:27 GMT  
		Size: 14.8 MB (14835741 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41eb18c7fbbb6aa5603c3bf8445565cf8334f6db17e8f40cae2bc55d15d3af8a`  
		Last Modified: Thu, 07 Feb 2019 18:45:22 GMT  
		Size: 2.8 KB (2800 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a89304b497f0a055e2b8cdc8e0836987f37d8f759f25a922e70fcacba34eedb9`  
		Last Modified: Thu, 07 Feb 2019 18:45:26 GMT  
		Size: 10.1 MB (10090218 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5541b2c068962e2b5c00bcb02d134c294fed7d7890c6dc5872443e5115938736`  
		Last Modified: Thu, 07 Feb 2019 18:45:22 GMT  
		Size: 185.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `telegraf:1.7.4` - linux; arm64 variant v8

```console
$ docker pull telegraf@sha256:605491dd966ce44f854ebde14da88e82cf031704ef1c2b0cca26902d0f417ff4
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **82.3 MB (82343128 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3884cc4f876c0bc9c4c0bfc5d3aacbe1a55c32bb1caf03227ee05c094a76f25e`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Wed, 06 Feb 2019 10:08:56 GMT
ADD file:4c7b5bcb5c347fb36236917e364936a9762b8bd6e8585c33379120f01c3a8d85 in / 
# Wed, 06 Feb 2019 10:08:58 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 10:37:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 10:38:20 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 06 Feb 2019 20:36:11 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends iputils-ping snmp procps lm-sensors &&     rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 20:36:16 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Wed, 06 Feb 2019 20:36:16 GMT
ENV TELEGRAF_VERSION=1.7.4
# Wed, 06 Feb 2019 20:36:27 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     gpg --batch --verify telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     dpkg -i telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     rm -f telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb*
# Wed, 06 Feb 2019 20:36:28 GMT
EXPOSE 8092/udp 8094 8125/udp
# Wed, 06 Feb 2019 20:36:28 GMT
COPY file:7e725b38b34580a28d521266535fcafc651af09f8af8fc6e03ef74768e1b69a2 in /entrypoint.sh 
# Wed, 06 Feb 2019 20:36:29 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 06 Feb 2019 20:36:29 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:12bb1c82b086301ca1c22eabf3add7cd229f27b63ca4b0924e2356051d9e7194`  
		Last Modified: Wed, 06 Feb 2019 10:14:28 GMT  
		Size: 43.1 MB (43124977 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:730f6528b47c72f6dd5aabc947e8db01aa470adc3fdb4bbbcf052f9c3ad6ae8e`  
		Last Modified: Wed, 06 Feb 2019 10:52:36 GMT  
		Size: 9.7 MB (9728878 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63b5f3607713f2dab247e619fafcffd7c9edf4aaffc9e701660a76ccf324b742`  
		Last Modified: Wed, 06 Feb 2019 10:52:28 GMT  
		Size: 4.1 MB (4093098 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6f00c9844b30dac42c73fd26123cffb3df2a3198270be55b6442e6aeed03436`  
		Last Modified: Wed, 06 Feb 2019 20:37:28 GMT  
		Size: 15.5 MB (15525733 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c272984cbf280ac5fd1a4387eeeee5ff0dc0140415b9d2177073668a2bb9c607`  
		Last Modified: Wed, 06 Feb 2019 20:37:20 GMT  
		Size: 2.8 KB (2776 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25859eb66b72ad5ba36b9cd8135b290971a7e50e99f3fbf3e14c5b45fc0aed27`  
		Last Modified: Wed, 06 Feb 2019 20:37:25 GMT  
		Size: 9.9 MB (9867480 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:766a1b15ab156c9d8ef760077a2fbaac9f917b8328dcb17f5c3e4c9cf8bb9aa6`  
		Last Modified: Wed, 06 Feb 2019 20:37:20 GMT  
		Size: 186.0 B  
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
$ docker pull telegraf@sha256:b859a229a05b32445495ab8acc3eead32b95a12af34891da2ebc930108e12573
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `telegraf:1.8` - linux; amd64

```console
$ docker pull telegraf@sha256:5dac13650fbd7a3874e73160789b741028395d515961295955c85e0930d4c1ca
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **90.5 MB (90534388 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2818b86e8d660975a18b81501ae4126ccf5355216f613907b5befffeafe53517`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Mon, 04 Mar 2019 23:22:10 GMT
ADD file:e4bdc12117ee95eaa94b89f258164dd42f9828c7c5c4332a608707187ccb470a in / 
# Mon, 04 Mar 2019 23:22:10 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 02:35:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 02:35:27 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 05 Mar 2019 08:21:57 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends iputils-ping snmp procps lm-sensors &&     rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 08:22:01 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Tue, 05 Mar 2019 08:22:12 GMT
ENV TELEGRAF_VERSION=1.8.3
# Tue, 05 Mar 2019 08:22:15 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     gpg --batch --verify telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     dpkg -i telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     rm -f telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb*
# Tue, 05 Mar 2019 08:22:16 GMT
EXPOSE 8092/udp 8094 8125/udp
# Tue, 05 Mar 2019 08:22:16 GMT
COPY file:7e725b38b34580a28d521266535fcafc651af09f8af8fc6e03ef74768e1b69a2 in /entrypoint.sh 
# Tue, 05 Mar 2019 08:22:17 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 05 Mar 2019 08:22:17 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:22dbe790f71562dfd3d49406b1dfd1e85e50f3dd7cb2e97b3918376ca39cae4e`  
		Last Modified: Mon, 04 Mar 2019 23:26:18 GMT  
		Size: 45.3 MB (45342528 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0250231711a047a6e54e7107d7a3bfb0afd807f5f408d00be0d407c5b8395219`  
		Last Modified: Tue, 05 Mar 2019 02:43:42 GMT  
		Size: 10.8 MB (10781993 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fba9447437b5ee1da9b33b2e2d18add55a33d0b763075202e17cad7efd3ff8f`  
		Last Modified: Tue, 05 Mar 2019 02:43:41 GMT  
		Size: 4.3 MB (4340113 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:337027777a42212a8d7a41cf511e4d9fb52ab6c0f47a5df93948b4c219c5bfc8`  
		Last Modified: Tue, 05 Mar 2019 08:22:45 GMT  
		Size: 16.0 MB (15965139 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d64cd8a787428cb20be5eb7477cd1dad464c09783400143498659a579473cfd`  
		Last Modified: Tue, 05 Mar 2019 08:22:41 GMT  
		Size: 2.8 KB (2775 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:195895080ae94b572cb5ebbc2e3bb6bb5a55ee9e50b2a8b70f00070e2486228b`  
		Last Modified: Tue, 05 Mar 2019 08:22:54 GMT  
		Size: 14.1 MB (14101656 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74685e4706c8afdc726bce418599cc505b4b28816419732d53ad440a72e4e11a`  
		Last Modified: Tue, 05 Mar 2019 08:22:48 GMT  
		Size: 184.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `telegraf:1.8` - linux; arm variant v7

```console
$ docker pull telegraf@sha256:27744e54deec2deeb6d04835e04d6f133b341f83b5beeb1d552cb2cafbb60bd1
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **83.9 MB (83876024 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bca7091799305401eefe78f2bf6fc5f958a259f830f0944ad6836b2a1b3e5beb`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Thu, 07 Feb 2019 13:03:09 GMT
ADD file:5fd4dfb0a59a763b52fd5588a8f4c35f596b133e00275b1cc485a71cf088b31a in / 
# Thu, 07 Feb 2019 13:03:10 GMT
CMD ["bash"]
# Thu, 07 Feb 2019 15:37:43 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 07 Feb 2019 15:37:52 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 07 Feb 2019 18:44:34 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends iputils-ping snmp procps lm-sensors &&     rm -rf /var/lib/apt/lists/*
# Thu, 07 Feb 2019 18:44:38 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Thu, 07 Feb 2019 18:44:49 GMT
ENV TELEGRAF_VERSION=1.8.3
# Thu, 07 Feb 2019 18:44:54 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     gpg --batch --verify telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     dpkg -i telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     rm -f telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb*
# Thu, 07 Feb 2019 18:44:56 GMT
EXPOSE 8092/udp 8094 8125/udp
# Thu, 07 Feb 2019 18:44:56 GMT
COPY file:7e725b38b34580a28d521266535fcafc651af09f8af8fc6e03ef74768e1b69a2 in /entrypoint.sh 
# Thu, 07 Feb 2019 18:44:57 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 07 Feb 2019 18:44:58 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:54d7f221ed1ab7644f6a88a953847270cd864b5ebc4f343bfa28876a2715031f`  
		Last Modified: Thu, 07 Feb 2019 02:04:53 GMT  
		Size: 42.1 MB (42086927 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2fea5bcc599e31c6fb6e38ce89618c27f24be54ed9ac9b53f4fcbed58f9d619d`  
		Last Modified: Thu, 07 Feb 2019 15:52:17 GMT  
		Size: 9.5 MB (9480760 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:586ac22707ead8a14ad6ae745a4c231538e6215c7a702ccad147b5251b3ea66c`  
		Last Modified: Thu, 07 Feb 2019 15:52:16 GMT  
		Size: 3.9 MB (3918458 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8aa4bb624871e73ee526e795152dc4f0206d7d820838996582d7a124bb39abe1`  
		Last Modified: Thu, 07 Feb 2019 18:45:27 GMT  
		Size: 14.8 MB (14835741 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41eb18c7fbbb6aa5603c3bf8445565cf8334f6db17e8f40cae2bc55d15d3af8a`  
		Last Modified: Thu, 07 Feb 2019 18:45:22 GMT  
		Size: 2.8 KB (2800 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d557ca8314b35786e9c5910a55e7f59f4f0f3e562bc75b99b5e4225dd22d5510`  
		Last Modified: Thu, 07 Feb 2019 18:45:41 GMT  
		Size: 13.6 MB (13551153 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2af3cf8cf1f9e8765e63003b9acbe7c8c252c0ce7cfb3adede648f704712480`  
		Last Modified: Thu, 07 Feb 2019 18:45:36 GMT  
		Size: 185.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `telegraf:1.8` - linux; arm64 variant v8

```console
$ docker pull telegraf@sha256:18e3324a9185a2d317ac956039188993cdb12672e1967da241d5840903194d70
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **85.8 MB (85763784 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c2e122b99528f3bfa2d19d4d4107796cbd9f0f0ce3a283cde095e9fd3eb6975d`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Wed, 06 Feb 2019 10:08:56 GMT
ADD file:4c7b5bcb5c347fb36236917e364936a9762b8bd6e8585c33379120f01c3a8d85 in / 
# Wed, 06 Feb 2019 10:08:58 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 10:37:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 10:38:20 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 06 Feb 2019 20:36:11 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends iputils-ping snmp procps lm-sensors &&     rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 20:36:16 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Wed, 06 Feb 2019 20:36:39 GMT
ENV TELEGRAF_VERSION=1.8.3
# Wed, 06 Feb 2019 20:36:47 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     gpg --batch --verify telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     dpkg -i telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     rm -f telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb*
# Wed, 06 Feb 2019 20:36:47 GMT
EXPOSE 8092/udp 8094 8125/udp
# Wed, 06 Feb 2019 20:36:48 GMT
COPY file:7e725b38b34580a28d521266535fcafc651af09f8af8fc6e03ef74768e1b69a2 in /entrypoint.sh 
# Wed, 06 Feb 2019 20:36:49 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 06 Feb 2019 20:36:49 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:12bb1c82b086301ca1c22eabf3add7cd229f27b63ca4b0924e2356051d9e7194`  
		Last Modified: Wed, 06 Feb 2019 10:14:28 GMT  
		Size: 43.1 MB (43124977 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:730f6528b47c72f6dd5aabc947e8db01aa470adc3fdb4bbbcf052f9c3ad6ae8e`  
		Last Modified: Wed, 06 Feb 2019 10:52:36 GMT  
		Size: 9.7 MB (9728878 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63b5f3607713f2dab247e619fafcffd7c9edf4aaffc9e701660a76ccf324b742`  
		Last Modified: Wed, 06 Feb 2019 10:52:28 GMT  
		Size: 4.1 MB (4093098 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6f00c9844b30dac42c73fd26123cffb3df2a3198270be55b6442e6aeed03436`  
		Last Modified: Wed, 06 Feb 2019 20:37:28 GMT  
		Size: 15.5 MB (15525733 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c272984cbf280ac5fd1a4387eeeee5ff0dc0140415b9d2177073668a2bb9c607`  
		Last Modified: Wed, 06 Feb 2019 20:37:20 GMT  
		Size: 2.8 KB (2776 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c8ecee0394e340d306e83274f9c2a52458017d1ba1e7d9e1906dc101d21eae0`  
		Last Modified: Wed, 06 Feb 2019 20:37:43 GMT  
		Size: 13.3 MB (13288135 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f46e84f38a9e8311c641a61cb01c14fbac11588e88622c2848c36caa54e342b7`  
		Last Modified: Wed, 06 Feb 2019 20:37:37 GMT  
		Size: 187.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `telegraf:1.8.3`

```console
$ docker pull telegraf@sha256:b859a229a05b32445495ab8acc3eead32b95a12af34891da2ebc930108e12573
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `telegraf:1.8.3` - linux; amd64

```console
$ docker pull telegraf@sha256:5dac13650fbd7a3874e73160789b741028395d515961295955c85e0930d4c1ca
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **90.5 MB (90534388 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2818b86e8d660975a18b81501ae4126ccf5355216f613907b5befffeafe53517`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Mon, 04 Mar 2019 23:22:10 GMT
ADD file:e4bdc12117ee95eaa94b89f258164dd42f9828c7c5c4332a608707187ccb470a in / 
# Mon, 04 Mar 2019 23:22:10 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 02:35:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 02:35:27 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 05 Mar 2019 08:21:57 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends iputils-ping snmp procps lm-sensors &&     rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 08:22:01 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Tue, 05 Mar 2019 08:22:12 GMT
ENV TELEGRAF_VERSION=1.8.3
# Tue, 05 Mar 2019 08:22:15 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     gpg --batch --verify telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     dpkg -i telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     rm -f telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb*
# Tue, 05 Mar 2019 08:22:16 GMT
EXPOSE 8092/udp 8094 8125/udp
# Tue, 05 Mar 2019 08:22:16 GMT
COPY file:7e725b38b34580a28d521266535fcafc651af09f8af8fc6e03ef74768e1b69a2 in /entrypoint.sh 
# Tue, 05 Mar 2019 08:22:17 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 05 Mar 2019 08:22:17 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:22dbe790f71562dfd3d49406b1dfd1e85e50f3dd7cb2e97b3918376ca39cae4e`  
		Last Modified: Mon, 04 Mar 2019 23:26:18 GMT  
		Size: 45.3 MB (45342528 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0250231711a047a6e54e7107d7a3bfb0afd807f5f408d00be0d407c5b8395219`  
		Last Modified: Tue, 05 Mar 2019 02:43:42 GMT  
		Size: 10.8 MB (10781993 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fba9447437b5ee1da9b33b2e2d18add55a33d0b763075202e17cad7efd3ff8f`  
		Last Modified: Tue, 05 Mar 2019 02:43:41 GMT  
		Size: 4.3 MB (4340113 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:337027777a42212a8d7a41cf511e4d9fb52ab6c0f47a5df93948b4c219c5bfc8`  
		Last Modified: Tue, 05 Mar 2019 08:22:45 GMT  
		Size: 16.0 MB (15965139 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d64cd8a787428cb20be5eb7477cd1dad464c09783400143498659a579473cfd`  
		Last Modified: Tue, 05 Mar 2019 08:22:41 GMT  
		Size: 2.8 KB (2775 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:195895080ae94b572cb5ebbc2e3bb6bb5a55ee9e50b2a8b70f00070e2486228b`  
		Last Modified: Tue, 05 Mar 2019 08:22:54 GMT  
		Size: 14.1 MB (14101656 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74685e4706c8afdc726bce418599cc505b4b28816419732d53ad440a72e4e11a`  
		Last Modified: Tue, 05 Mar 2019 08:22:48 GMT  
		Size: 184.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `telegraf:1.8.3` - linux; arm variant v7

```console
$ docker pull telegraf@sha256:27744e54deec2deeb6d04835e04d6f133b341f83b5beeb1d552cb2cafbb60bd1
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **83.9 MB (83876024 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bca7091799305401eefe78f2bf6fc5f958a259f830f0944ad6836b2a1b3e5beb`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Thu, 07 Feb 2019 13:03:09 GMT
ADD file:5fd4dfb0a59a763b52fd5588a8f4c35f596b133e00275b1cc485a71cf088b31a in / 
# Thu, 07 Feb 2019 13:03:10 GMT
CMD ["bash"]
# Thu, 07 Feb 2019 15:37:43 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 07 Feb 2019 15:37:52 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 07 Feb 2019 18:44:34 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends iputils-ping snmp procps lm-sensors &&     rm -rf /var/lib/apt/lists/*
# Thu, 07 Feb 2019 18:44:38 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Thu, 07 Feb 2019 18:44:49 GMT
ENV TELEGRAF_VERSION=1.8.3
# Thu, 07 Feb 2019 18:44:54 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     gpg --batch --verify telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     dpkg -i telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     rm -f telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb*
# Thu, 07 Feb 2019 18:44:56 GMT
EXPOSE 8092/udp 8094 8125/udp
# Thu, 07 Feb 2019 18:44:56 GMT
COPY file:7e725b38b34580a28d521266535fcafc651af09f8af8fc6e03ef74768e1b69a2 in /entrypoint.sh 
# Thu, 07 Feb 2019 18:44:57 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 07 Feb 2019 18:44:58 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:54d7f221ed1ab7644f6a88a953847270cd864b5ebc4f343bfa28876a2715031f`  
		Last Modified: Thu, 07 Feb 2019 02:04:53 GMT  
		Size: 42.1 MB (42086927 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2fea5bcc599e31c6fb6e38ce89618c27f24be54ed9ac9b53f4fcbed58f9d619d`  
		Last Modified: Thu, 07 Feb 2019 15:52:17 GMT  
		Size: 9.5 MB (9480760 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:586ac22707ead8a14ad6ae745a4c231538e6215c7a702ccad147b5251b3ea66c`  
		Last Modified: Thu, 07 Feb 2019 15:52:16 GMT  
		Size: 3.9 MB (3918458 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8aa4bb624871e73ee526e795152dc4f0206d7d820838996582d7a124bb39abe1`  
		Last Modified: Thu, 07 Feb 2019 18:45:27 GMT  
		Size: 14.8 MB (14835741 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41eb18c7fbbb6aa5603c3bf8445565cf8334f6db17e8f40cae2bc55d15d3af8a`  
		Last Modified: Thu, 07 Feb 2019 18:45:22 GMT  
		Size: 2.8 KB (2800 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d557ca8314b35786e9c5910a55e7f59f4f0f3e562bc75b99b5e4225dd22d5510`  
		Last Modified: Thu, 07 Feb 2019 18:45:41 GMT  
		Size: 13.6 MB (13551153 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2af3cf8cf1f9e8765e63003b9acbe7c8c252c0ce7cfb3adede648f704712480`  
		Last Modified: Thu, 07 Feb 2019 18:45:36 GMT  
		Size: 185.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `telegraf:1.8.3` - linux; arm64 variant v8

```console
$ docker pull telegraf@sha256:18e3324a9185a2d317ac956039188993cdb12672e1967da241d5840903194d70
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **85.8 MB (85763784 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c2e122b99528f3bfa2d19d4d4107796cbd9f0f0ce3a283cde095e9fd3eb6975d`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Wed, 06 Feb 2019 10:08:56 GMT
ADD file:4c7b5bcb5c347fb36236917e364936a9762b8bd6e8585c33379120f01c3a8d85 in / 
# Wed, 06 Feb 2019 10:08:58 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 10:37:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 10:38:20 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 06 Feb 2019 20:36:11 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends iputils-ping snmp procps lm-sensors &&     rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 20:36:16 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Wed, 06 Feb 2019 20:36:39 GMT
ENV TELEGRAF_VERSION=1.8.3
# Wed, 06 Feb 2019 20:36:47 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     gpg --batch --verify telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     dpkg -i telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     rm -f telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb*
# Wed, 06 Feb 2019 20:36:47 GMT
EXPOSE 8092/udp 8094 8125/udp
# Wed, 06 Feb 2019 20:36:48 GMT
COPY file:7e725b38b34580a28d521266535fcafc651af09f8af8fc6e03ef74768e1b69a2 in /entrypoint.sh 
# Wed, 06 Feb 2019 20:36:49 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 06 Feb 2019 20:36:49 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:12bb1c82b086301ca1c22eabf3add7cd229f27b63ca4b0924e2356051d9e7194`  
		Last Modified: Wed, 06 Feb 2019 10:14:28 GMT  
		Size: 43.1 MB (43124977 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:730f6528b47c72f6dd5aabc947e8db01aa470adc3fdb4bbbcf052f9c3ad6ae8e`  
		Last Modified: Wed, 06 Feb 2019 10:52:36 GMT  
		Size: 9.7 MB (9728878 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63b5f3607713f2dab247e619fafcffd7c9edf4aaffc9e701660a76ccf324b742`  
		Last Modified: Wed, 06 Feb 2019 10:52:28 GMT  
		Size: 4.1 MB (4093098 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6f00c9844b30dac42c73fd26123cffb3df2a3198270be55b6442e6aeed03436`  
		Last Modified: Wed, 06 Feb 2019 20:37:28 GMT  
		Size: 15.5 MB (15525733 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c272984cbf280ac5fd1a4387eeeee5ff0dc0140415b9d2177073668a2bb9c607`  
		Last Modified: Wed, 06 Feb 2019 20:37:20 GMT  
		Size: 2.8 KB (2776 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c8ecee0394e340d306e83274f9c2a52458017d1ba1e7d9e1906dc101d21eae0`  
		Last Modified: Wed, 06 Feb 2019 20:37:43 GMT  
		Size: 13.3 MB (13288135 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f46e84f38a9e8311c641a61cb01c14fbac11588e88622c2848c36caa54e342b7`  
		Last Modified: Wed, 06 Feb 2019 20:37:37 GMT  
		Size: 187.0 B  
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
$ docker pull telegraf@sha256:cf43c9cb0ac67974dcd79cb6e9f355debde9bd39c690aabab26a798b0e610177
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `telegraf:1.9` - linux; amd64

```console
$ docker pull telegraf@sha256:9bc93c430c33685485f29ee9fc5c67af3b0a2871e57a1cfed5f97ac4c074a704
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **94.2 MB (94215368 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5d3492739856e6067ed20744f6e5b197e0e6a0eb2932dcb76ba9e04b96b979a8`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Mon, 04 Mar 2019 23:22:10 GMT
ADD file:e4bdc12117ee95eaa94b89f258164dd42f9828c7c5c4332a608707187ccb470a in / 
# Mon, 04 Mar 2019 23:22:10 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 02:35:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 02:35:27 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 05 Mar 2019 08:21:57 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends iputils-ping snmp procps lm-sensors &&     rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 08:22:01 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Tue, 05 Mar 2019 08:22:24 GMT
ENV TELEGRAF_VERSION=1.9.5
# Tue, 05 Mar 2019 08:22:27 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     gpg --batch --verify telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     dpkg -i telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     rm -f telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb*
# Tue, 05 Mar 2019 08:22:27 GMT
EXPOSE 8092/udp 8094 8125/udp
# Tue, 05 Mar 2019 08:22:27 GMT
COPY file:7e725b38b34580a28d521266535fcafc651af09f8af8fc6e03ef74768e1b69a2 in /entrypoint.sh 
# Tue, 05 Mar 2019 08:22:28 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 05 Mar 2019 08:22:28 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:22dbe790f71562dfd3d49406b1dfd1e85e50f3dd7cb2e97b3918376ca39cae4e`  
		Last Modified: Mon, 04 Mar 2019 23:26:18 GMT  
		Size: 45.3 MB (45342528 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0250231711a047a6e54e7107d7a3bfb0afd807f5f408d00be0d407c5b8395219`  
		Last Modified: Tue, 05 Mar 2019 02:43:42 GMT  
		Size: 10.8 MB (10781993 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fba9447437b5ee1da9b33b2e2d18add55a33d0b763075202e17cad7efd3ff8f`  
		Last Modified: Tue, 05 Mar 2019 02:43:41 GMT  
		Size: 4.3 MB (4340113 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:337027777a42212a8d7a41cf511e4d9fb52ab6c0f47a5df93948b4c219c5bfc8`  
		Last Modified: Tue, 05 Mar 2019 08:22:45 GMT  
		Size: 16.0 MB (15965139 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d64cd8a787428cb20be5eb7477cd1dad464c09783400143498659a579473cfd`  
		Last Modified: Tue, 05 Mar 2019 08:22:41 GMT  
		Size: 2.8 KB (2775 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6ccb82b40ab9eb526cfb606c13a3e2171c90e8c6b8d68dc416ae72243ecc391`  
		Last Modified: Tue, 05 Mar 2019 08:23:01 GMT  
		Size: 17.8 MB (17782635 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24b2adf81be17174809f9bb26da706436c622597bd03ff3c1072d39255ddcfb1`  
		Last Modified: Tue, 05 Mar 2019 08:22:57 GMT  
		Size: 185.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `telegraf:1.9` - linux; arm variant v7

```console
$ docker pull telegraf@sha256:1cf5eb6339244bc57a184a60d2f4e2e09b50896fc3fc98b041c1e19946daade6
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **87.1 MB (87114781 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:791eb7468ed2b60a8a838cc7641d129fcbcfad2123c81a80e6ced4390314f0ef`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Thu, 07 Feb 2019 13:03:09 GMT
ADD file:5fd4dfb0a59a763b52fd5588a8f4c35f596b133e00275b1cc485a71cf088b31a in / 
# Thu, 07 Feb 2019 13:03:10 GMT
CMD ["bash"]
# Thu, 07 Feb 2019 15:37:43 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 07 Feb 2019 15:37:52 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 07 Feb 2019 18:44:34 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends iputils-ping snmp procps lm-sensors &&     rm -rf /var/lib/apt/lists/*
# Thu, 07 Feb 2019 18:44:38 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Thu, 28 Feb 2019 13:20:12 GMT
ENV TELEGRAF_VERSION=1.9.5
# Thu, 28 Feb 2019 13:20:17 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     gpg --batch --verify telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     dpkg -i telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     rm -f telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb*
# Thu, 28 Feb 2019 13:20:17 GMT
EXPOSE 8092/udp 8094 8125/udp
# Thu, 28 Feb 2019 13:20:18 GMT
COPY file:7e725b38b34580a28d521266535fcafc651af09f8af8fc6e03ef74768e1b69a2 in /entrypoint.sh 
# Thu, 28 Feb 2019 13:20:18 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 28 Feb 2019 13:20:19 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:54d7f221ed1ab7644f6a88a953847270cd864b5ebc4f343bfa28876a2715031f`  
		Last Modified: Thu, 07 Feb 2019 02:04:53 GMT  
		Size: 42.1 MB (42086927 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2fea5bcc599e31c6fb6e38ce89618c27f24be54ed9ac9b53f4fcbed58f9d619d`  
		Last Modified: Thu, 07 Feb 2019 15:52:17 GMT  
		Size: 9.5 MB (9480760 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:586ac22707ead8a14ad6ae745a4c231538e6215c7a702ccad147b5251b3ea66c`  
		Last Modified: Thu, 07 Feb 2019 15:52:16 GMT  
		Size: 3.9 MB (3918458 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8aa4bb624871e73ee526e795152dc4f0206d7d820838996582d7a124bb39abe1`  
		Last Modified: Thu, 07 Feb 2019 18:45:27 GMT  
		Size: 14.8 MB (14835741 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41eb18c7fbbb6aa5603c3bf8445565cf8334f6db17e8f40cae2bc55d15d3af8a`  
		Last Modified: Thu, 07 Feb 2019 18:45:22 GMT  
		Size: 2.8 KB (2800 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9fdbea91cb70010eee52f9296f9a97b752d4125355944d0c13bbec0bccd7aa3`  
		Last Modified: Thu, 28 Feb 2019 13:20:36 GMT  
		Size: 16.8 MB (16789909 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da335a2c170e93f76ac7d4ca8a4f000720170c16678d8fe57126819d75aa2839`  
		Last Modified: Thu, 28 Feb 2019 13:20:29 GMT  
		Size: 186.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `telegraf:1.9` - linux; arm64 variant v8

```console
$ docker pull telegraf@sha256:c3dd7130343a04abbc35564ec8d73963a7955e54124f91d194aa3cf0ab77db01
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **88.7 MB (88742007 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:57d7e648a31305124424806527c6d387ef39c092d586f6ec8d1f345a57f967dd`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Wed, 06 Feb 2019 10:08:56 GMT
ADD file:4c7b5bcb5c347fb36236917e364936a9762b8bd6e8585c33379120f01c3a8d85 in / 
# Wed, 06 Feb 2019 10:08:58 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 10:37:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 10:38:20 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 06 Feb 2019 20:36:11 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends iputils-ping snmp procps lm-sensors &&     rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 20:36:16 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Thu, 28 Feb 2019 11:43:28 GMT
ENV TELEGRAF_VERSION=1.9.5
# Thu, 28 Feb 2019 11:43:37 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     gpg --batch --verify telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     dpkg -i telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     rm -f telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb*
# Thu, 28 Feb 2019 11:43:38 GMT
EXPOSE 8092/udp 8094 8125/udp
# Thu, 28 Feb 2019 11:43:39 GMT
COPY file:7e725b38b34580a28d521266535fcafc651af09f8af8fc6e03ef74768e1b69a2 in /entrypoint.sh 
# Thu, 28 Feb 2019 11:43:40 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 28 Feb 2019 11:43:41 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:12bb1c82b086301ca1c22eabf3add7cd229f27b63ca4b0924e2356051d9e7194`  
		Last Modified: Wed, 06 Feb 2019 10:14:28 GMT  
		Size: 43.1 MB (43124977 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:730f6528b47c72f6dd5aabc947e8db01aa470adc3fdb4bbbcf052f9c3ad6ae8e`  
		Last Modified: Wed, 06 Feb 2019 10:52:36 GMT  
		Size: 9.7 MB (9728878 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63b5f3607713f2dab247e619fafcffd7c9edf4aaffc9e701660a76ccf324b742`  
		Last Modified: Wed, 06 Feb 2019 10:52:28 GMT  
		Size: 4.1 MB (4093098 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6f00c9844b30dac42c73fd26123cffb3df2a3198270be55b6442e6aeed03436`  
		Last Modified: Wed, 06 Feb 2019 20:37:28 GMT  
		Size: 15.5 MB (15525733 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c272984cbf280ac5fd1a4387eeeee5ff0dc0140415b9d2177073668a2bb9c607`  
		Last Modified: Wed, 06 Feb 2019 20:37:20 GMT  
		Size: 2.8 KB (2776 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e1b5c2c9d9fe52e4f50a959e5abce37d5d4deff4b27a314842ce5e0dbc44dc0`  
		Last Modified: Thu, 28 Feb 2019 11:44:07 GMT  
		Size: 16.3 MB (16266361 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ccc2f541b1b7f3543aced39a6f5854958f238d34ca48d76b5858e849b68a1a9`  
		Last Modified: Thu, 28 Feb 2019 11:44:00 GMT  
		Size: 184.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `telegraf:1.9.5`

```console
$ docker pull telegraf@sha256:cf43c9cb0ac67974dcd79cb6e9f355debde9bd39c690aabab26a798b0e610177
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `telegraf:1.9.5` - linux; amd64

```console
$ docker pull telegraf@sha256:9bc93c430c33685485f29ee9fc5c67af3b0a2871e57a1cfed5f97ac4c074a704
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **94.2 MB (94215368 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5d3492739856e6067ed20744f6e5b197e0e6a0eb2932dcb76ba9e04b96b979a8`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Mon, 04 Mar 2019 23:22:10 GMT
ADD file:e4bdc12117ee95eaa94b89f258164dd42f9828c7c5c4332a608707187ccb470a in / 
# Mon, 04 Mar 2019 23:22:10 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 02:35:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 02:35:27 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 05 Mar 2019 08:21:57 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends iputils-ping snmp procps lm-sensors &&     rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 08:22:01 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Tue, 05 Mar 2019 08:22:24 GMT
ENV TELEGRAF_VERSION=1.9.5
# Tue, 05 Mar 2019 08:22:27 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     gpg --batch --verify telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     dpkg -i telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     rm -f telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb*
# Tue, 05 Mar 2019 08:22:27 GMT
EXPOSE 8092/udp 8094 8125/udp
# Tue, 05 Mar 2019 08:22:27 GMT
COPY file:7e725b38b34580a28d521266535fcafc651af09f8af8fc6e03ef74768e1b69a2 in /entrypoint.sh 
# Tue, 05 Mar 2019 08:22:28 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 05 Mar 2019 08:22:28 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:22dbe790f71562dfd3d49406b1dfd1e85e50f3dd7cb2e97b3918376ca39cae4e`  
		Last Modified: Mon, 04 Mar 2019 23:26:18 GMT  
		Size: 45.3 MB (45342528 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0250231711a047a6e54e7107d7a3bfb0afd807f5f408d00be0d407c5b8395219`  
		Last Modified: Tue, 05 Mar 2019 02:43:42 GMT  
		Size: 10.8 MB (10781993 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fba9447437b5ee1da9b33b2e2d18add55a33d0b763075202e17cad7efd3ff8f`  
		Last Modified: Tue, 05 Mar 2019 02:43:41 GMT  
		Size: 4.3 MB (4340113 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:337027777a42212a8d7a41cf511e4d9fb52ab6c0f47a5df93948b4c219c5bfc8`  
		Last Modified: Tue, 05 Mar 2019 08:22:45 GMT  
		Size: 16.0 MB (15965139 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d64cd8a787428cb20be5eb7477cd1dad464c09783400143498659a579473cfd`  
		Last Modified: Tue, 05 Mar 2019 08:22:41 GMT  
		Size: 2.8 KB (2775 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6ccb82b40ab9eb526cfb606c13a3e2171c90e8c6b8d68dc416ae72243ecc391`  
		Last Modified: Tue, 05 Mar 2019 08:23:01 GMT  
		Size: 17.8 MB (17782635 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24b2adf81be17174809f9bb26da706436c622597bd03ff3c1072d39255ddcfb1`  
		Last Modified: Tue, 05 Mar 2019 08:22:57 GMT  
		Size: 185.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `telegraf:1.9.5` - linux; arm variant v7

```console
$ docker pull telegraf@sha256:1cf5eb6339244bc57a184a60d2f4e2e09b50896fc3fc98b041c1e19946daade6
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **87.1 MB (87114781 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:791eb7468ed2b60a8a838cc7641d129fcbcfad2123c81a80e6ced4390314f0ef`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Thu, 07 Feb 2019 13:03:09 GMT
ADD file:5fd4dfb0a59a763b52fd5588a8f4c35f596b133e00275b1cc485a71cf088b31a in / 
# Thu, 07 Feb 2019 13:03:10 GMT
CMD ["bash"]
# Thu, 07 Feb 2019 15:37:43 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 07 Feb 2019 15:37:52 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 07 Feb 2019 18:44:34 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends iputils-ping snmp procps lm-sensors &&     rm -rf /var/lib/apt/lists/*
# Thu, 07 Feb 2019 18:44:38 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Thu, 28 Feb 2019 13:20:12 GMT
ENV TELEGRAF_VERSION=1.9.5
# Thu, 28 Feb 2019 13:20:17 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     gpg --batch --verify telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     dpkg -i telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     rm -f telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb*
# Thu, 28 Feb 2019 13:20:17 GMT
EXPOSE 8092/udp 8094 8125/udp
# Thu, 28 Feb 2019 13:20:18 GMT
COPY file:7e725b38b34580a28d521266535fcafc651af09f8af8fc6e03ef74768e1b69a2 in /entrypoint.sh 
# Thu, 28 Feb 2019 13:20:18 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 28 Feb 2019 13:20:19 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:54d7f221ed1ab7644f6a88a953847270cd864b5ebc4f343bfa28876a2715031f`  
		Last Modified: Thu, 07 Feb 2019 02:04:53 GMT  
		Size: 42.1 MB (42086927 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2fea5bcc599e31c6fb6e38ce89618c27f24be54ed9ac9b53f4fcbed58f9d619d`  
		Last Modified: Thu, 07 Feb 2019 15:52:17 GMT  
		Size: 9.5 MB (9480760 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:586ac22707ead8a14ad6ae745a4c231538e6215c7a702ccad147b5251b3ea66c`  
		Last Modified: Thu, 07 Feb 2019 15:52:16 GMT  
		Size: 3.9 MB (3918458 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8aa4bb624871e73ee526e795152dc4f0206d7d820838996582d7a124bb39abe1`  
		Last Modified: Thu, 07 Feb 2019 18:45:27 GMT  
		Size: 14.8 MB (14835741 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41eb18c7fbbb6aa5603c3bf8445565cf8334f6db17e8f40cae2bc55d15d3af8a`  
		Last Modified: Thu, 07 Feb 2019 18:45:22 GMT  
		Size: 2.8 KB (2800 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9fdbea91cb70010eee52f9296f9a97b752d4125355944d0c13bbec0bccd7aa3`  
		Last Modified: Thu, 28 Feb 2019 13:20:36 GMT  
		Size: 16.8 MB (16789909 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da335a2c170e93f76ac7d4ca8a4f000720170c16678d8fe57126819d75aa2839`  
		Last Modified: Thu, 28 Feb 2019 13:20:29 GMT  
		Size: 186.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `telegraf:1.9.5` - linux; arm64 variant v8

```console
$ docker pull telegraf@sha256:c3dd7130343a04abbc35564ec8d73963a7955e54124f91d194aa3cf0ab77db01
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **88.7 MB (88742007 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:57d7e648a31305124424806527c6d387ef39c092d586f6ec8d1f345a57f967dd`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Wed, 06 Feb 2019 10:08:56 GMT
ADD file:4c7b5bcb5c347fb36236917e364936a9762b8bd6e8585c33379120f01c3a8d85 in / 
# Wed, 06 Feb 2019 10:08:58 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 10:37:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 10:38:20 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 06 Feb 2019 20:36:11 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends iputils-ping snmp procps lm-sensors &&     rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 20:36:16 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Thu, 28 Feb 2019 11:43:28 GMT
ENV TELEGRAF_VERSION=1.9.5
# Thu, 28 Feb 2019 11:43:37 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     gpg --batch --verify telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     dpkg -i telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     rm -f telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb*
# Thu, 28 Feb 2019 11:43:38 GMT
EXPOSE 8092/udp 8094 8125/udp
# Thu, 28 Feb 2019 11:43:39 GMT
COPY file:7e725b38b34580a28d521266535fcafc651af09f8af8fc6e03ef74768e1b69a2 in /entrypoint.sh 
# Thu, 28 Feb 2019 11:43:40 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 28 Feb 2019 11:43:41 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:12bb1c82b086301ca1c22eabf3add7cd229f27b63ca4b0924e2356051d9e7194`  
		Last Modified: Wed, 06 Feb 2019 10:14:28 GMT  
		Size: 43.1 MB (43124977 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:730f6528b47c72f6dd5aabc947e8db01aa470adc3fdb4bbbcf052f9c3ad6ae8e`  
		Last Modified: Wed, 06 Feb 2019 10:52:36 GMT  
		Size: 9.7 MB (9728878 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63b5f3607713f2dab247e619fafcffd7c9edf4aaffc9e701660a76ccf324b742`  
		Last Modified: Wed, 06 Feb 2019 10:52:28 GMT  
		Size: 4.1 MB (4093098 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6f00c9844b30dac42c73fd26123cffb3df2a3198270be55b6442e6aeed03436`  
		Last Modified: Wed, 06 Feb 2019 20:37:28 GMT  
		Size: 15.5 MB (15525733 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c272984cbf280ac5fd1a4387eeeee5ff0dc0140415b9d2177073668a2bb9c607`  
		Last Modified: Wed, 06 Feb 2019 20:37:20 GMT  
		Size: 2.8 KB (2776 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e1b5c2c9d9fe52e4f50a959e5abce37d5d4deff4b27a314842ce5e0dbc44dc0`  
		Last Modified: Thu, 28 Feb 2019 11:44:07 GMT  
		Size: 16.3 MB (16266361 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ccc2f541b1b7f3543aced39a6f5854958f238d34ca48d76b5858e849b68a1a9`  
		Last Modified: Thu, 28 Feb 2019 11:44:00 GMT  
		Size: 184.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `telegraf:1.9.5-alpine`

```console
$ docker pull telegraf@sha256:0ce9093f0ee1ad16f2bba8c84bf6a7b32954fda798a1933ef8f579ce40f7b093
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `telegraf:1.9.5-alpine` - linux; amd64

```console
$ docker pull telegraf@sha256:fbc41fe33c6230764d5d1802c1ab93380c822bd172eca83cd1d366a15691edf3
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.2 MB (23204083 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4460b53d200ff76cf56ad4c0ea1fc72306cd54af6593a856e97081a4361b8c51`
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
# Wed, 27 Feb 2019 23:28:06 GMT
ENV TELEGRAF_VERSION=1.9.5
# Wed, 27 Feb 2019 23:28:11 GMT
RUN set -ex &&     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf-${TELEGRAF_VERSION}-static_linux_amd64.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf-${TELEGRAF_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify telegraf-${TELEGRAF_VERSION}-static_linux_amd64.tar.gz.asc telegraf-${TELEGRAF_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src /etc/telegraf &&     tar -C /usr/src -xzf telegraf-${TELEGRAF_VERSION}-static_linux_amd64.tar.gz &&     mv /usr/src/telegraf*/telegraf.conf /etc/telegraf/ &&     chmod +x /usr/src/telegraf*/* &&     cp -a /usr/src/telegraf*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Wed, 27 Feb 2019 23:28:11 GMT
EXPOSE 8092/udp 8094 8125/udp
# Wed, 27 Feb 2019 23:28:12 GMT
COPY file:a8a66b0d8dac2aee66897c63ce9b7a3d282bb5d7b796ffb12c2cd9227fed341b in /entrypoint.sh 
# Wed, 27 Feb 2019 23:28:12 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 27 Feb 2019 23:28:12 GMT
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
	-	`sha256:55e254c05aad417dfd5a122a98b3bd176361658e0a8ccb05c39fc8bea682d45c`  
		Last Modified: Wed, 27 Feb 2019 23:28:37 GMT  
		Size: 17.7 MB (17748551 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4fd630655fb9ec5dc90bc021f880c36679cfae2410c3c14baa45fd1a776755d4`  
		Last Modified: Wed, 27 Feb 2019 23:28:33 GMT  
		Size: 184.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `telegraf:1.9-alpine`

```console
$ docker pull telegraf@sha256:0ce9093f0ee1ad16f2bba8c84bf6a7b32954fda798a1933ef8f579ce40f7b093
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `telegraf:1.9-alpine` - linux; amd64

```console
$ docker pull telegraf@sha256:fbc41fe33c6230764d5d1802c1ab93380c822bd172eca83cd1d366a15691edf3
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.2 MB (23204083 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4460b53d200ff76cf56ad4c0ea1fc72306cd54af6593a856e97081a4361b8c51`
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
# Wed, 27 Feb 2019 23:28:06 GMT
ENV TELEGRAF_VERSION=1.9.5
# Wed, 27 Feb 2019 23:28:11 GMT
RUN set -ex &&     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf-${TELEGRAF_VERSION}-static_linux_amd64.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf-${TELEGRAF_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify telegraf-${TELEGRAF_VERSION}-static_linux_amd64.tar.gz.asc telegraf-${TELEGRAF_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src /etc/telegraf &&     tar -C /usr/src -xzf telegraf-${TELEGRAF_VERSION}-static_linux_amd64.tar.gz &&     mv /usr/src/telegraf*/telegraf.conf /etc/telegraf/ &&     chmod +x /usr/src/telegraf*/* &&     cp -a /usr/src/telegraf*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Wed, 27 Feb 2019 23:28:11 GMT
EXPOSE 8092/udp 8094 8125/udp
# Wed, 27 Feb 2019 23:28:12 GMT
COPY file:a8a66b0d8dac2aee66897c63ce9b7a3d282bb5d7b796ffb12c2cd9227fed341b in /entrypoint.sh 
# Wed, 27 Feb 2019 23:28:12 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 27 Feb 2019 23:28:12 GMT
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
	-	`sha256:55e254c05aad417dfd5a122a98b3bd176361658e0a8ccb05c39fc8bea682d45c`  
		Last Modified: Wed, 27 Feb 2019 23:28:37 GMT  
		Size: 17.7 MB (17748551 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4fd630655fb9ec5dc90bc021f880c36679cfae2410c3c14baa45fd1a776755d4`  
		Last Modified: Wed, 27 Feb 2019 23:28:33 GMT  
		Size: 184.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `telegraf:alpine`

```console
$ docker pull telegraf@sha256:0ce9093f0ee1ad16f2bba8c84bf6a7b32954fda798a1933ef8f579ce40f7b093
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `telegraf:alpine` - linux; amd64

```console
$ docker pull telegraf@sha256:fbc41fe33c6230764d5d1802c1ab93380c822bd172eca83cd1d366a15691edf3
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.2 MB (23204083 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4460b53d200ff76cf56ad4c0ea1fc72306cd54af6593a856e97081a4361b8c51`
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
# Wed, 27 Feb 2019 23:28:06 GMT
ENV TELEGRAF_VERSION=1.9.5
# Wed, 27 Feb 2019 23:28:11 GMT
RUN set -ex &&     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf-${TELEGRAF_VERSION}-static_linux_amd64.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf-${TELEGRAF_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify telegraf-${TELEGRAF_VERSION}-static_linux_amd64.tar.gz.asc telegraf-${TELEGRAF_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src /etc/telegraf &&     tar -C /usr/src -xzf telegraf-${TELEGRAF_VERSION}-static_linux_amd64.tar.gz &&     mv /usr/src/telegraf*/telegraf.conf /etc/telegraf/ &&     chmod +x /usr/src/telegraf*/* &&     cp -a /usr/src/telegraf*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Wed, 27 Feb 2019 23:28:11 GMT
EXPOSE 8092/udp 8094 8125/udp
# Wed, 27 Feb 2019 23:28:12 GMT
COPY file:a8a66b0d8dac2aee66897c63ce9b7a3d282bb5d7b796ffb12c2cd9227fed341b in /entrypoint.sh 
# Wed, 27 Feb 2019 23:28:12 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 27 Feb 2019 23:28:12 GMT
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
	-	`sha256:55e254c05aad417dfd5a122a98b3bd176361658e0a8ccb05c39fc8bea682d45c`  
		Last Modified: Wed, 27 Feb 2019 23:28:37 GMT  
		Size: 17.7 MB (17748551 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4fd630655fb9ec5dc90bc021f880c36679cfae2410c3c14baa45fd1a776755d4`  
		Last Modified: Wed, 27 Feb 2019 23:28:33 GMT  
		Size: 184.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `telegraf:latest`

```console
$ docker pull telegraf@sha256:e98e022ef78fbd3fbf61e09cffd627b5faa5eb97e44acbfb696e47b8c6365de3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `telegraf:latest` - linux; amd64

```console
$ docker pull telegraf@sha256:3c9debc31392350f65ae6c9b386657418e4e4d3da26387af0b2189b739471b81
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **94.2 MB (94216123 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0a7985a1039af208fc33d482752af91d60fbee8a93f9e952af0c642100f0ee4d`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Wed, 06 Feb 2019 03:30:01 GMT
ADD file:4fec879fdca802d6920b8981b409b19ded75aff693eaaba1ba4cf5ecb7594fdb in / 
# Wed, 06 Feb 2019 03:30:02 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 05:51:03 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 05:51:14 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 06 Feb 2019 14:34:53 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends iputils-ping snmp procps lm-sensors &&     rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 14:34:57 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Wed, 27 Feb 2019 23:28:00 GMT
ENV TELEGRAF_VERSION=1.9.5
# Wed, 27 Feb 2019 23:28:02 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     gpg --batch --verify telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     dpkg -i telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     rm -f telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb*
# Wed, 27 Feb 2019 23:28:02 GMT
EXPOSE 8092/udp 8094 8125/udp
# Wed, 27 Feb 2019 23:28:03 GMT
COPY file:7e725b38b34580a28d521266535fcafc651af09f8af8fc6e03ef74768e1b69a2 in /entrypoint.sh 
# Wed, 27 Feb 2019 23:28:03 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 27 Feb 2019 23:28:03 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:741437d97401b83849ccbfe4ed8964049b752081647d7f1ea8aea29d989f8968`  
		Last Modified: Wed, 06 Feb 2019 03:35:41 GMT  
		Size: 45.3 MB (45344292 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34d8874714d74b636739b8a52204650a664fca8ff9741dd66810f30196f103e2`  
		Last Modified: Wed, 06 Feb 2019 06:01:57 GMT  
		Size: 10.8 MB (10781099 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a108aa2667933b852b8d003f97b344d014fcd7e06a0c0e6e04f2d6906738388`  
		Last Modified: Wed, 06 Feb 2019 06:01:56 GMT  
		Size: 4.3 MB (4340044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e676c6bd16b483c33d6f1f7c534146955618c56b26531807601d9c68dc7c8e2`  
		Last Modified: Wed, 06 Feb 2019 14:35:59 GMT  
		Size: 16.0 MB (15965060 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47a0e781201782e70adc04a46653ce9f3a6e83d3294ac84217dc2c3f8a49ac15`  
		Last Modified: Wed, 06 Feb 2019 14:35:52 GMT  
		Size: 2.8 KB (2776 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50f3d5f6669c33b7f6331d53ff42e24fdf686d4b5467643dfe556ad570eec600`  
		Last Modified: Wed, 27 Feb 2019 23:28:26 GMT  
		Size: 17.8 MB (17782667 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2fe27cb9bae9b71eeb6c1ae7809ecfedc8a054123776ac306eca9ac1965b1e99`  
		Last Modified: Wed, 27 Feb 2019 23:28:22 GMT  
		Size: 185.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `telegraf:latest` - linux; arm variant v7

```console
$ docker pull telegraf@sha256:1cf5eb6339244bc57a184a60d2f4e2e09b50896fc3fc98b041c1e19946daade6
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **87.1 MB (87114781 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:791eb7468ed2b60a8a838cc7641d129fcbcfad2123c81a80e6ced4390314f0ef`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Thu, 07 Feb 2019 13:03:09 GMT
ADD file:5fd4dfb0a59a763b52fd5588a8f4c35f596b133e00275b1cc485a71cf088b31a in / 
# Thu, 07 Feb 2019 13:03:10 GMT
CMD ["bash"]
# Thu, 07 Feb 2019 15:37:43 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 07 Feb 2019 15:37:52 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 07 Feb 2019 18:44:34 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends iputils-ping snmp procps lm-sensors &&     rm -rf /var/lib/apt/lists/*
# Thu, 07 Feb 2019 18:44:38 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Thu, 28 Feb 2019 13:20:12 GMT
ENV TELEGRAF_VERSION=1.9.5
# Thu, 28 Feb 2019 13:20:17 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     gpg --batch --verify telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     dpkg -i telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     rm -f telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb*
# Thu, 28 Feb 2019 13:20:17 GMT
EXPOSE 8092/udp 8094 8125/udp
# Thu, 28 Feb 2019 13:20:18 GMT
COPY file:7e725b38b34580a28d521266535fcafc651af09f8af8fc6e03ef74768e1b69a2 in /entrypoint.sh 
# Thu, 28 Feb 2019 13:20:18 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 28 Feb 2019 13:20:19 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:54d7f221ed1ab7644f6a88a953847270cd864b5ebc4f343bfa28876a2715031f`  
		Last Modified: Thu, 07 Feb 2019 02:04:53 GMT  
		Size: 42.1 MB (42086927 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2fea5bcc599e31c6fb6e38ce89618c27f24be54ed9ac9b53f4fcbed58f9d619d`  
		Last Modified: Thu, 07 Feb 2019 15:52:17 GMT  
		Size: 9.5 MB (9480760 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:586ac22707ead8a14ad6ae745a4c231538e6215c7a702ccad147b5251b3ea66c`  
		Last Modified: Thu, 07 Feb 2019 15:52:16 GMT  
		Size: 3.9 MB (3918458 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8aa4bb624871e73ee526e795152dc4f0206d7d820838996582d7a124bb39abe1`  
		Last Modified: Thu, 07 Feb 2019 18:45:27 GMT  
		Size: 14.8 MB (14835741 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41eb18c7fbbb6aa5603c3bf8445565cf8334f6db17e8f40cae2bc55d15d3af8a`  
		Last Modified: Thu, 07 Feb 2019 18:45:22 GMT  
		Size: 2.8 KB (2800 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9fdbea91cb70010eee52f9296f9a97b752d4125355944d0c13bbec0bccd7aa3`  
		Last Modified: Thu, 28 Feb 2019 13:20:36 GMT  
		Size: 16.8 MB (16789909 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da335a2c170e93f76ac7d4ca8a4f000720170c16678d8fe57126819d75aa2839`  
		Last Modified: Thu, 28 Feb 2019 13:20:29 GMT  
		Size: 186.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `telegraf:latest` - linux; arm64 variant v8

```console
$ docker pull telegraf@sha256:c3dd7130343a04abbc35564ec8d73963a7955e54124f91d194aa3cf0ab77db01
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **88.7 MB (88742007 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:57d7e648a31305124424806527c6d387ef39c092d586f6ec8d1f345a57f967dd`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Wed, 06 Feb 2019 10:08:56 GMT
ADD file:4c7b5bcb5c347fb36236917e364936a9762b8bd6e8585c33379120f01c3a8d85 in / 
# Wed, 06 Feb 2019 10:08:58 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 10:37:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 10:38:20 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 06 Feb 2019 20:36:11 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends iputils-ping snmp procps lm-sensors &&     rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 20:36:16 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Thu, 28 Feb 2019 11:43:28 GMT
ENV TELEGRAF_VERSION=1.9.5
# Thu, 28 Feb 2019 11:43:37 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     gpg --batch --verify telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     dpkg -i telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     rm -f telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb*
# Thu, 28 Feb 2019 11:43:38 GMT
EXPOSE 8092/udp 8094 8125/udp
# Thu, 28 Feb 2019 11:43:39 GMT
COPY file:7e725b38b34580a28d521266535fcafc651af09f8af8fc6e03ef74768e1b69a2 in /entrypoint.sh 
# Thu, 28 Feb 2019 11:43:40 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 28 Feb 2019 11:43:41 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:12bb1c82b086301ca1c22eabf3add7cd229f27b63ca4b0924e2356051d9e7194`  
		Last Modified: Wed, 06 Feb 2019 10:14:28 GMT  
		Size: 43.1 MB (43124977 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:730f6528b47c72f6dd5aabc947e8db01aa470adc3fdb4bbbcf052f9c3ad6ae8e`  
		Last Modified: Wed, 06 Feb 2019 10:52:36 GMT  
		Size: 9.7 MB (9728878 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63b5f3607713f2dab247e619fafcffd7c9edf4aaffc9e701660a76ccf324b742`  
		Last Modified: Wed, 06 Feb 2019 10:52:28 GMT  
		Size: 4.1 MB (4093098 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6f00c9844b30dac42c73fd26123cffb3df2a3198270be55b6442e6aeed03436`  
		Last Modified: Wed, 06 Feb 2019 20:37:28 GMT  
		Size: 15.5 MB (15525733 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c272984cbf280ac5fd1a4387eeeee5ff0dc0140415b9d2177073668a2bb9c607`  
		Last Modified: Wed, 06 Feb 2019 20:37:20 GMT  
		Size: 2.8 KB (2776 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e1b5c2c9d9fe52e4f50a959e5abce37d5d4deff4b27a314842ce5e0dbc44dc0`  
		Last Modified: Thu, 28 Feb 2019 11:44:07 GMT  
		Size: 16.3 MB (16266361 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ccc2f541b1b7f3543aced39a6f5854958f238d34ca48d76b5858e849b68a1a9`  
		Last Modified: Thu, 28 Feb 2019 11:44:00 GMT  
		Size: 184.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
