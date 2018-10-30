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
-	[`telegraf:1.8.2`](#telegraf182)
-	[`telegraf:1.8.2-alpine`](#telegraf182-alpine)
-	[`telegraf:1.8-alpine`](#telegraf18-alpine)
-	[`telegraf:alpine`](#telegrafalpine)
-	[`telegraf:latest`](#telegraflatest)

## `telegraf:1.6`

```console
$ docker pull telegraf@sha256:c5fe9515889652f1298681c9bf9f82c6edb4147af831ffa0936016ab8b3bab27
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `telegraf:1.6` - linux; amd64

```console
$ docker pull telegraf@sha256:a83bbca816667b94bfd061214a6ecaea7855cc930f53951b80b16468db5504e9
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **86.2 MB (86234555 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:11608d8e2d2a1b119cd31a1ed00e93e79b00e57f2f9d0904623671cbddba663b`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Mon, 15 Oct 2018 23:24:20 GMT
ADD file:b3598c18dc395846ab2c5e4e8422c4a5dad7bc3b5b08c09ebceee80989904641 in / 
# Mon, 15 Oct 2018 23:24:21 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 01:00:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 01:00:57 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 16 Oct 2018 08:38:33 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends iputils-ping snmp procps lm-sensors &&     rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 08:38:36 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Tue, 16 Oct 2018 08:38:37 GMT
ENV TELEGRAF_VERSION=1.6.4
# Tue, 16 Oct 2018 08:38:39 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     gpg --batch --verify telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     dpkg -i telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     rm -f telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb*
# Tue, 16 Oct 2018 08:38:40 GMT
EXPOSE 8092/udp 8094/tcp 8125/udp
# Tue, 16 Oct 2018 08:38:40 GMT
COPY file:7211de01f296351833389a1a1879d450e2cb727d7e2910d5807937f99983edf7 in /entrypoint.sh 
# Tue, 16 Oct 2018 08:38:41 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 16 Oct 2018 08:38:41 GMT
CMD ["telegraf"]
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
	-	`sha256:b0353d327a82ea6191e4b9c8bcfb70c0b929e82c23f79561dd30d7322d58d09a`  
		Last Modified: Tue, 16 Oct 2018 08:39:55 GMT  
		Size: 16.0 MB (15963836 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4796920c1464d4d9813741a3b1102f8f37b754de21ddc9d8ef2f15f3b45ce10`  
		Last Modified: Tue, 16 Oct 2018 08:39:50 GMT  
		Size: 2.9 KB (2883 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b546e5a6962fbddc2c58018259d3358c6c5e31d641292baae95bd72d8e7cf1fc`  
		Last Modified: Tue, 16 Oct 2018 08:39:54 GMT  
		Size: 9.9 MB (9881647 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d739b60264b2723999b8ad5be009795d0ae75a240545a1a37911018b565e4053`  
		Last Modified: Tue, 16 Oct 2018 08:39:50 GMT  
		Size: 186.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `telegraf:1.6` - linux; arm variant v7

```console
$ docker pull telegraf@sha256:c9bf85aa699ecb1a930a8e07f1033297e7f7de182cf4cc5f772351a277dd8d14
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **79.6 MB (79550554 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ca9d6e17637502a0851e18aa3d32e8ad85a0807d4fedd1da44776b192eef0218`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Tue, 16 Oct 2018 12:05:35 GMT
ADD file:5a70dc8c5adc5e530a8fc10745a2fba15ee4379cd2e1adba6e1abfc8353c48d9 in / 
# Tue, 16 Oct 2018 12:05:38 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 12:58:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 12:58:52 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 16 Oct 2018 14:30:09 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends iputils-ping snmp procps lm-sensors &&     rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 14:30:13 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Tue, 16 Oct 2018 14:30:13 GMT
ENV TELEGRAF_VERSION=1.6.4
# Tue, 16 Oct 2018 14:30:17 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     gpg --batch --verify telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     dpkg -i telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     rm -f telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb*
# Tue, 16 Oct 2018 14:30:17 GMT
EXPOSE 8092/udp 8094/tcp 8125/udp
# Tue, 16 Oct 2018 14:30:18 GMT
COPY file:7211de01f296351833389a1a1879d450e2cb727d7e2910d5807937f99983edf7 in /entrypoint.sh 
# Tue, 16 Oct 2018 14:30:19 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 16 Oct 2018 14:30:19 GMT
CMD ["telegraf"]
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
	-	`sha256:89a302631e8d5ae0cf04cb21fa4639d00523990e3fde79a7fce604f747084bc8`  
		Last Modified: Tue, 16 Oct 2018 14:31:09 GMT  
		Size: 14.8 MB (14829396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a9d9262dd07da037cf29e536f088bbe07506a63d5076c4266b7f0a02ec4c909`  
		Last Modified: Tue, 16 Oct 2018 14:30:57 GMT  
		Size: 2.9 KB (2911 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a18fca64adc150b847ca661bafbe2084f3fa35e0c7864a34750a912f0c5d5be9`  
		Last Modified: Tue, 16 Oct 2018 14:31:00 GMT  
		Size: 9.3 MB (9301674 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95da722dd29e2536f79c29269d77f06e5fe525c5870fc3ad9649be2c1d790236`  
		Last Modified: Tue, 16 Oct 2018 14:30:57 GMT  
		Size: 186.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `telegraf:1.6` - linux; arm64 variant v8

```console
$ docker pull telegraf@sha256:95ed30b7fabbca960055921f676d32806af0e8ea2b47d7898bbc50bd0121949b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **81.5 MB (81510939 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bc6c6a745371df42574094130ccef9aef2fc2ff74d55f43933f96d0a78917fd0`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Tue, 16 Oct 2018 08:43:08 GMT
ADD file:961d2f24a0cebfcdd333e000ed4488e5c4f4d2a3d11056c45934d647caed5845 in / 
# Tue, 16 Oct 2018 08:43:10 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 12:01:13 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 12:01:39 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 17 Oct 2018 01:36:08 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends iputils-ping snmp procps lm-sensors &&     rm -rf /var/lib/apt/lists/*
# Wed, 17 Oct 2018 01:36:13 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Wed, 17 Oct 2018 01:36:14 GMT
ENV TELEGRAF_VERSION=1.6.4
# Wed, 17 Oct 2018 01:36:34 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     gpg --batch --verify telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     dpkg -i telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     rm -f telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb*
# Wed, 17 Oct 2018 01:36:36 GMT
EXPOSE 8092/udp 8094/tcp 8125/udp
# Wed, 17 Oct 2018 01:36:37 GMT
COPY file:7211de01f296351833389a1a1879d450e2cb727d7e2910d5807937f99983edf7 in /entrypoint.sh 
# Wed, 17 Oct 2018 01:36:38 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 17 Oct 2018 01:36:39 GMT
CMD ["telegraf"]
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
	-	`sha256:85d7deb3d00c9c17ee1f6449f4788f6f2947f2bdd875575e20f212dc0a1efc38`  
		Last Modified: Wed, 17 Oct 2018 01:38:20 GMT  
		Size: 15.5 MB (15525546 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7eb7e734f7b8552bac42cf5b871adb054f838932d4f47492025043acdbbed455`  
		Last Modified: Wed, 17 Oct 2018 01:38:07 GMT  
		Size: 2.9 KB (2888 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ddb1f79fce1de1d9b0273bd12cf58b42e6cef3a13b65bf6aff312d16350299ba`  
		Last Modified: Wed, 17 Oct 2018 01:38:15 GMT  
		Size: 9.1 MB (9079920 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:815052e70c50cdcc000df84df468af7e12e25af6ac2013117f797707f928bd08`  
		Last Modified: Wed, 17 Oct 2018 01:38:07 GMT  
		Size: 185.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `telegraf:1.6.4`

```console
$ docker pull telegraf@sha256:c5fe9515889652f1298681c9bf9f82c6edb4147af831ffa0936016ab8b3bab27
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `telegraf:1.6.4` - linux; amd64

```console
$ docker pull telegraf@sha256:a83bbca816667b94bfd061214a6ecaea7855cc930f53951b80b16468db5504e9
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **86.2 MB (86234555 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:11608d8e2d2a1b119cd31a1ed00e93e79b00e57f2f9d0904623671cbddba663b`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Mon, 15 Oct 2018 23:24:20 GMT
ADD file:b3598c18dc395846ab2c5e4e8422c4a5dad7bc3b5b08c09ebceee80989904641 in / 
# Mon, 15 Oct 2018 23:24:21 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 01:00:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 01:00:57 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 16 Oct 2018 08:38:33 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends iputils-ping snmp procps lm-sensors &&     rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 08:38:36 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Tue, 16 Oct 2018 08:38:37 GMT
ENV TELEGRAF_VERSION=1.6.4
# Tue, 16 Oct 2018 08:38:39 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     gpg --batch --verify telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     dpkg -i telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     rm -f telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb*
# Tue, 16 Oct 2018 08:38:40 GMT
EXPOSE 8092/udp 8094/tcp 8125/udp
# Tue, 16 Oct 2018 08:38:40 GMT
COPY file:7211de01f296351833389a1a1879d450e2cb727d7e2910d5807937f99983edf7 in /entrypoint.sh 
# Tue, 16 Oct 2018 08:38:41 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 16 Oct 2018 08:38:41 GMT
CMD ["telegraf"]
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
	-	`sha256:b0353d327a82ea6191e4b9c8bcfb70c0b929e82c23f79561dd30d7322d58d09a`  
		Last Modified: Tue, 16 Oct 2018 08:39:55 GMT  
		Size: 16.0 MB (15963836 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4796920c1464d4d9813741a3b1102f8f37b754de21ddc9d8ef2f15f3b45ce10`  
		Last Modified: Tue, 16 Oct 2018 08:39:50 GMT  
		Size: 2.9 KB (2883 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b546e5a6962fbddc2c58018259d3358c6c5e31d641292baae95bd72d8e7cf1fc`  
		Last Modified: Tue, 16 Oct 2018 08:39:54 GMT  
		Size: 9.9 MB (9881647 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d739b60264b2723999b8ad5be009795d0ae75a240545a1a37911018b565e4053`  
		Last Modified: Tue, 16 Oct 2018 08:39:50 GMT  
		Size: 186.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `telegraf:1.6.4` - linux; arm variant v7

```console
$ docker pull telegraf@sha256:c9bf85aa699ecb1a930a8e07f1033297e7f7de182cf4cc5f772351a277dd8d14
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **79.6 MB (79550554 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ca9d6e17637502a0851e18aa3d32e8ad85a0807d4fedd1da44776b192eef0218`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Tue, 16 Oct 2018 12:05:35 GMT
ADD file:5a70dc8c5adc5e530a8fc10745a2fba15ee4379cd2e1adba6e1abfc8353c48d9 in / 
# Tue, 16 Oct 2018 12:05:38 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 12:58:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 12:58:52 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 16 Oct 2018 14:30:09 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends iputils-ping snmp procps lm-sensors &&     rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 14:30:13 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Tue, 16 Oct 2018 14:30:13 GMT
ENV TELEGRAF_VERSION=1.6.4
# Tue, 16 Oct 2018 14:30:17 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     gpg --batch --verify telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     dpkg -i telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     rm -f telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb*
# Tue, 16 Oct 2018 14:30:17 GMT
EXPOSE 8092/udp 8094/tcp 8125/udp
# Tue, 16 Oct 2018 14:30:18 GMT
COPY file:7211de01f296351833389a1a1879d450e2cb727d7e2910d5807937f99983edf7 in /entrypoint.sh 
# Tue, 16 Oct 2018 14:30:19 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 16 Oct 2018 14:30:19 GMT
CMD ["telegraf"]
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
	-	`sha256:89a302631e8d5ae0cf04cb21fa4639d00523990e3fde79a7fce604f747084bc8`  
		Last Modified: Tue, 16 Oct 2018 14:31:09 GMT  
		Size: 14.8 MB (14829396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a9d9262dd07da037cf29e536f088bbe07506a63d5076c4266b7f0a02ec4c909`  
		Last Modified: Tue, 16 Oct 2018 14:30:57 GMT  
		Size: 2.9 KB (2911 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a18fca64adc150b847ca661bafbe2084f3fa35e0c7864a34750a912f0c5d5be9`  
		Last Modified: Tue, 16 Oct 2018 14:31:00 GMT  
		Size: 9.3 MB (9301674 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95da722dd29e2536f79c29269d77f06e5fe525c5870fc3ad9649be2c1d790236`  
		Last Modified: Tue, 16 Oct 2018 14:30:57 GMT  
		Size: 186.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `telegraf:1.6.4` - linux; arm64 variant v8

```console
$ docker pull telegraf@sha256:95ed30b7fabbca960055921f676d32806af0e8ea2b47d7898bbc50bd0121949b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **81.5 MB (81510939 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bc6c6a745371df42574094130ccef9aef2fc2ff74d55f43933f96d0a78917fd0`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Tue, 16 Oct 2018 08:43:08 GMT
ADD file:961d2f24a0cebfcdd333e000ed4488e5c4f4d2a3d11056c45934d647caed5845 in / 
# Tue, 16 Oct 2018 08:43:10 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 12:01:13 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 12:01:39 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 17 Oct 2018 01:36:08 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends iputils-ping snmp procps lm-sensors &&     rm -rf /var/lib/apt/lists/*
# Wed, 17 Oct 2018 01:36:13 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Wed, 17 Oct 2018 01:36:14 GMT
ENV TELEGRAF_VERSION=1.6.4
# Wed, 17 Oct 2018 01:36:34 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     gpg --batch --verify telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     dpkg -i telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     rm -f telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb*
# Wed, 17 Oct 2018 01:36:36 GMT
EXPOSE 8092/udp 8094/tcp 8125/udp
# Wed, 17 Oct 2018 01:36:37 GMT
COPY file:7211de01f296351833389a1a1879d450e2cb727d7e2910d5807937f99983edf7 in /entrypoint.sh 
# Wed, 17 Oct 2018 01:36:38 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 17 Oct 2018 01:36:39 GMT
CMD ["telegraf"]
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
	-	`sha256:85d7deb3d00c9c17ee1f6449f4788f6f2947f2bdd875575e20f212dc0a1efc38`  
		Last Modified: Wed, 17 Oct 2018 01:38:20 GMT  
		Size: 15.5 MB (15525546 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7eb7e734f7b8552bac42cf5b871adb054f838932d4f47492025043acdbbed455`  
		Last Modified: Wed, 17 Oct 2018 01:38:07 GMT  
		Size: 2.9 KB (2888 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ddb1f79fce1de1d9b0273bd12cf58b42e6cef3a13b65bf6aff312d16350299ba`  
		Last Modified: Wed, 17 Oct 2018 01:38:15 GMT  
		Size: 9.1 MB (9079920 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:815052e70c50cdcc000df84df468af7e12e25af6ac2013117f797707f928bd08`  
		Last Modified: Wed, 17 Oct 2018 01:38:07 GMT  
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
$ docker pull telegraf@sha256:3840ea975f7ec1429d987d7f6af0c0efff62bf471a80e613d78f3aa56a7e45b0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `telegraf:1.7` - linux; amd64

```console
$ docker pull telegraf@sha256:7ed7984e5b15752fb61ab3a3759af6f8604ab8925f5238e2539365a855438aea
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **86.9 MB (86852359 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:419ed13426cc093e78359b1967aebb4f248036c73b3685ba5c9f3e10f2e75a44`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Mon, 15 Oct 2018 23:24:20 GMT
ADD file:b3598c18dc395846ab2c5e4e8422c4a5dad7bc3b5b08c09ebceee80989904641 in / 
# Mon, 15 Oct 2018 23:24:21 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 01:00:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 01:00:57 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 16 Oct 2018 08:38:33 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends iputils-ping snmp procps lm-sensors &&     rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 08:38:36 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Tue, 16 Oct 2018 08:38:59 GMT
ENV TELEGRAF_VERSION=1.7.4
# Tue, 16 Oct 2018 08:39:01 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     gpg --batch --verify telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     dpkg -i telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     rm -f telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb*
# Tue, 16 Oct 2018 08:39:02 GMT
EXPOSE 8092/udp 8094/tcp 8125/udp
# Tue, 16 Oct 2018 08:39:02 GMT
COPY file:7211de01f296351833389a1a1879d450e2cb727d7e2910d5807937f99983edf7 in /entrypoint.sh 
# Tue, 16 Oct 2018 08:39:03 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 16 Oct 2018 08:39:03 GMT
CMD ["telegraf"]
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
	-	`sha256:b0353d327a82ea6191e4b9c8bcfb70c0b929e82c23f79561dd30d7322d58d09a`  
		Last Modified: Tue, 16 Oct 2018 08:39:55 GMT  
		Size: 16.0 MB (15963836 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4796920c1464d4d9813741a3b1102f8f37b754de21ddc9d8ef2f15f3b45ce10`  
		Last Modified: Tue, 16 Oct 2018 08:39:50 GMT  
		Size: 2.9 KB (2883 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62569fbd113dc4edb693ed43eaa5f8f663aa69bd86628356847d306e8aa5a864`  
		Last Modified: Tue, 16 Oct 2018 08:40:31 GMT  
		Size: 10.5 MB (10499453 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a7f54187c6144038b884591ffd3e876539dbc71c0a81185236fe8f519dd55dc`  
		Last Modified: Tue, 16 Oct 2018 08:40:27 GMT  
		Size: 184.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `telegraf:1.7` - linux; arm variant v7

```console
$ docker pull telegraf@sha256:74af58d04ea912336ef9b52820a160fa2ee93178fd1f7e36bb1df8769c66fa7b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **80.3 MB (80339140 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:abb992a47b366e7fb9ed4abe03e3ddfbfe5f8404a5e698adf6628057b5ef11e6`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Tue, 16 Oct 2018 12:05:35 GMT
ADD file:5a70dc8c5adc5e530a8fc10745a2fba15ee4379cd2e1adba6e1abfc8353c48d9 in / 
# Tue, 16 Oct 2018 12:05:38 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 12:58:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 12:58:52 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 16 Oct 2018 14:30:09 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends iputils-ping snmp procps lm-sensors &&     rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 14:30:13 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Tue, 16 Oct 2018 14:30:26 GMT
ENV TELEGRAF_VERSION=1.7.4
# Tue, 16 Oct 2018 14:30:30 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     gpg --batch --verify telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     dpkg -i telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     rm -f telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb*
# Tue, 16 Oct 2018 14:30:31 GMT
EXPOSE 8092/udp 8094/tcp 8125/udp
# Tue, 16 Oct 2018 14:30:32 GMT
COPY file:7211de01f296351833389a1a1879d450e2cb727d7e2910d5807937f99983edf7 in /entrypoint.sh 
# Tue, 16 Oct 2018 14:30:32 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 16 Oct 2018 14:30:33 GMT
CMD ["telegraf"]
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
	-	`sha256:89a302631e8d5ae0cf04cb21fa4639d00523990e3fde79a7fce604f747084bc8`  
		Last Modified: Tue, 16 Oct 2018 14:31:09 GMT  
		Size: 14.8 MB (14829396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a9d9262dd07da037cf29e536f088bbe07506a63d5076c4266b7f0a02ec4c909`  
		Last Modified: Tue, 16 Oct 2018 14:30:57 GMT  
		Size: 2.9 KB (2911 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd05f949839b4702a286e2db3b93ff00e1f5e11ed82e1a4e031dd5746ab16084`  
		Last Modified: Tue, 16 Oct 2018 14:31:27 GMT  
		Size: 10.1 MB (10090264 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d97d8691c6c89aba4ee842569844415ce55c07827321c0222bb604d4a0f8580f`  
		Last Modified: Tue, 16 Oct 2018 14:31:24 GMT  
		Size: 182.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `telegraf:1.7` - linux; arm64 variant v8

```console
$ docker pull telegraf@sha256:03f206a9d16e1d58f59c1a7bf28e9050f834c265e3008b58a79513b4b9a824da
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **82.3 MB (82298498 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bb60df5e69a0cb958f8f3d520f6946fa779781416f335749195ba90b99a22bfa`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Tue, 16 Oct 2018 08:43:08 GMT
ADD file:961d2f24a0cebfcdd333e000ed4488e5c4f4d2a3d11056c45934d647caed5845 in / 
# Tue, 16 Oct 2018 08:43:10 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 12:01:13 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 12:01:39 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 17 Oct 2018 01:36:08 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends iputils-ping snmp procps lm-sensors &&     rm -rf /var/lib/apt/lists/*
# Wed, 17 Oct 2018 01:36:13 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Wed, 17 Oct 2018 01:36:55 GMT
ENV TELEGRAF_VERSION=1.7.4
# Wed, 17 Oct 2018 01:37:06 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     gpg --batch --verify telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     dpkg -i telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     rm -f telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb*
# Wed, 17 Oct 2018 01:37:07 GMT
EXPOSE 8092/udp 8094/tcp 8125/udp
# Wed, 17 Oct 2018 01:37:09 GMT
COPY file:7211de01f296351833389a1a1879d450e2cb727d7e2910d5807937f99983edf7 in /entrypoint.sh 
# Wed, 17 Oct 2018 01:37:10 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 17 Oct 2018 01:37:11 GMT
CMD ["telegraf"]
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
	-	`sha256:85d7deb3d00c9c17ee1f6449f4788f6f2947f2bdd875575e20f212dc0a1efc38`  
		Last Modified: Wed, 17 Oct 2018 01:38:20 GMT  
		Size: 15.5 MB (15525546 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7eb7e734f7b8552bac42cf5b871adb054f838932d4f47492025043acdbbed455`  
		Last Modified: Wed, 17 Oct 2018 01:38:07 GMT  
		Size: 2.9 KB (2888 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d05d8747925a8e166c523cd0647ab338ddd0cdebf7d697a17228659dfe730cc6`  
		Last Modified: Wed, 17 Oct 2018 01:39:02 GMT  
		Size: 9.9 MB (9867479 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5575a85a1f3ed5bd526a6d763dce1d7d0eb1b0909d2f0aacd8b2100d9d7cd1be`  
		Last Modified: Wed, 17 Oct 2018 01:38:56 GMT  
		Size: 185.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `telegraf:1.7.4`

```console
$ docker pull telegraf@sha256:3840ea975f7ec1429d987d7f6af0c0efff62bf471a80e613d78f3aa56a7e45b0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `telegraf:1.7.4` - linux; amd64

```console
$ docker pull telegraf@sha256:7ed7984e5b15752fb61ab3a3759af6f8604ab8925f5238e2539365a855438aea
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **86.9 MB (86852359 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:419ed13426cc093e78359b1967aebb4f248036c73b3685ba5c9f3e10f2e75a44`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Mon, 15 Oct 2018 23:24:20 GMT
ADD file:b3598c18dc395846ab2c5e4e8422c4a5dad7bc3b5b08c09ebceee80989904641 in / 
# Mon, 15 Oct 2018 23:24:21 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 01:00:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 01:00:57 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 16 Oct 2018 08:38:33 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends iputils-ping snmp procps lm-sensors &&     rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 08:38:36 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Tue, 16 Oct 2018 08:38:59 GMT
ENV TELEGRAF_VERSION=1.7.4
# Tue, 16 Oct 2018 08:39:01 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     gpg --batch --verify telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     dpkg -i telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     rm -f telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb*
# Tue, 16 Oct 2018 08:39:02 GMT
EXPOSE 8092/udp 8094/tcp 8125/udp
# Tue, 16 Oct 2018 08:39:02 GMT
COPY file:7211de01f296351833389a1a1879d450e2cb727d7e2910d5807937f99983edf7 in /entrypoint.sh 
# Tue, 16 Oct 2018 08:39:03 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 16 Oct 2018 08:39:03 GMT
CMD ["telegraf"]
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
	-	`sha256:b0353d327a82ea6191e4b9c8bcfb70c0b929e82c23f79561dd30d7322d58d09a`  
		Last Modified: Tue, 16 Oct 2018 08:39:55 GMT  
		Size: 16.0 MB (15963836 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4796920c1464d4d9813741a3b1102f8f37b754de21ddc9d8ef2f15f3b45ce10`  
		Last Modified: Tue, 16 Oct 2018 08:39:50 GMT  
		Size: 2.9 KB (2883 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62569fbd113dc4edb693ed43eaa5f8f663aa69bd86628356847d306e8aa5a864`  
		Last Modified: Tue, 16 Oct 2018 08:40:31 GMT  
		Size: 10.5 MB (10499453 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a7f54187c6144038b884591ffd3e876539dbc71c0a81185236fe8f519dd55dc`  
		Last Modified: Tue, 16 Oct 2018 08:40:27 GMT  
		Size: 184.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `telegraf:1.7.4` - linux; arm variant v7

```console
$ docker pull telegraf@sha256:74af58d04ea912336ef9b52820a160fa2ee93178fd1f7e36bb1df8769c66fa7b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **80.3 MB (80339140 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:abb992a47b366e7fb9ed4abe03e3ddfbfe5f8404a5e698adf6628057b5ef11e6`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Tue, 16 Oct 2018 12:05:35 GMT
ADD file:5a70dc8c5adc5e530a8fc10745a2fba15ee4379cd2e1adba6e1abfc8353c48d9 in / 
# Tue, 16 Oct 2018 12:05:38 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 12:58:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 12:58:52 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 16 Oct 2018 14:30:09 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends iputils-ping snmp procps lm-sensors &&     rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 14:30:13 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Tue, 16 Oct 2018 14:30:26 GMT
ENV TELEGRAF_VERSION=1.7.4
# Tue, 16 Oct 2018 14:30:30 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     gpg --batch --verify telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     dpkg -i telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     rm -f telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb*
# Tue, 16 Oct 2018 14:30:31 GMT
EXPOSE 8092/udp 8094/tcp 8125/udp
# Tue, 16 Oct 2018 14:30:32 GMT
COPY file:7211de01f296351833389a1a1879d450e2cb727d7e2910d5807937f99983edf7 in /entrypoint.sh 
# Tue, 16 Oct 2018 14:30:32 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 16 Oct 2018 14:30:33 GMT
CMD ["telegraf"]
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
	-	`sha256:89a302631e8d5ae0cf04cb21fa4639d00523990e3fde79a7fce604f747084bc8`  
		Last Modified: Tue, 16 Oct 2018 14:31:09 GMT  
		Size: 14.8 MB (14829396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a9d9262dd07da037cf29e536f088bbe07506a63d5076c4266b7f0a02ec4c909`  
		Last Modified: Tue, 16 Oct 2018 14:30:57 GMT  
		Size: 2.9 KB (2911 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd05f949839b4702a286e2db3b93ff00e1f5e11ed82e1a4e031dd5746ab16084`  
		Last Modified: Tue, 16 Oct 2018 14:31:27 GMT  
		Size: 10.1 MB (10090264 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d97d8691c6c89aba4ee842569844415ce55c07827321c0222bb604d4a0f8580f`  
		Last Modified: Tue, 16 Oct 2018 14:31:24 GMT  
		Size: 182.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `telegraf:1.7.4` - linux; arm64 variant v8

```console
$ docker pull telegraf@sha256:03f206a9d16e1d58f59c1a7bf28e9050f834c265e3008b58a79513b4b9a824da
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **82.3 MB (82298498 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bb60df5e69a0cb958f8f3d520f6946fa779781416f335749195ba90b99a22bfa`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Tue, 16 Oct 2018 08:43:08 GMT
ADD file:961d2f24a0cebfcdd333e000ed4488e5c4f4d2a3d11056c45934d647caed5845 in / 
# Tue, 16 Oct 2018 08:43:10 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 12:01:13 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 12:01:39 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 17 Oct 2018 01:36:08 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends iputils-ping snmp procps lm-sensors &&     rm -rf /var/lib/apt/lists/*
# Wed, 17 Oct 2018 01:36:13 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Wed, 17 Oct 2018 01:36:55 GMT
ENV TELEGRAF_VERSION=1.7.4
# Wed, 17 Oct 2018 01:37:06 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     gpg --batch --verify telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     dpkg -i telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     rm -f telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb*
# Wed, 17 Oct 2018 01:37:07 GMT
EXPOSE 8092/udp 8094/tcp 8125/udp
# Wed, 17 Oct 2018 01:37:09 GMT
COPY file:7211de01f296351833389a1a1879d450e2cb727d7e2910d5807937f99983edf7 in /entrypoint.sh 
# Wed, 17 Oct 2018 01:37:10 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 17 Oct 2018 01:37:11 GMT
CMD ["telegraf"]
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
	-	`sha256:85d7deb3d00c9c17ee1f6449f4788f6f2947f2bdd875575e20f212dc0a1efc38`  
		Last Modified: Wed, 17 Oct 2018 01:38:20 GMT  
		Size: 15.5 MB (15525546 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7eb7e734f7b8552bac42cf5b871adb054f838932d4f47492025043acdbbed455`  
		Last Modified: Wed, 17 Oct 2018 01:38:07 GMT  
		Size: 2.9 KB (2888 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d05d8747925a8e166c523cd0647ab338ddd0cdebf7d697a17228659dfe730cc6`  
		Last Modified: Wed, 17 Oct 2018 01:39:02 GMT  
		Size: 9.9 MB (9867479 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5575a85a1f3ed5bd526a6d763dce1d7d0eb1b0909d2f0aacd8b2100d9d7cd1be`  
		Last Modified: Wed, 17 Oct 2018 01:38:56 GMT  
		Size: 185.0 B  
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
$ docker pull telegraf@sha256:afa0f20e39530e404a8c2fa17d9e9b50900bee19945d3ca8e390dfa3b5d35909
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `telegraf:1.8` - linux; amd64

```console
$ docker pull telegraf@sha256:2d67519d805018cc66758d2183fb57bb0118b13eacaf62d975bc28f7a3bd1ca4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **90.4 MB (90449916 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5bb3171720edef0cbabdc2ce417ee240b765514d6e479654e6c19b820609ebe3`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Mon, 15 Oct 2018 23:24:20 GMT
ADD file:b3598c18dc395846ab2c5e4e8422c4a5dad7bc3b5b08c09ebceee80989904641 in / 
# Mon, 15 Oct 2018 23:24:21 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 01:00:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 01:00:57 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 16 Oct 2018 08:38:33 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends iputils-ping snmp procps lm-sensors &&     rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 08:38:36 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Tue, 16 Oct 2018 08:39:21 GMT
ENV TELEGRAF_VERSION=1.8.1
# Tue, 16 Oct 2018 08:39:24 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     gpg --batch --verify telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     dpkg -i telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     rm -f telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb*
# Tue, 16 Oct 2018 08:39:24 GMT
EXPOSE 8092/udp 8094/tcp 8125/udp
# Tue, 16 Oct 2018 08:39:25 GMT
COPY file:7211de01f296351833389a1a1879d450e2cb727d7e2910d5807937f99983edf7 in /entrypoint.sh 
# Tue, 16 Oct 2018 08:39:25 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 16 Oct 2018 08:39:25 GMT
CMD ["telegraf"]
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
	-	`sha256:b0353d327a82ea6191e4b9c8bcfb70c0b929e82c23f79561dd30d7322d58d09a`  
		Last Modified: Tue, 16 Oct 2018 08:39:55 GMT  
		Size: 16.0 MB (15963836 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4796920c1464d4d9813741a3b1102f8f37b754de21ddc9d8ef2f15f3b45ce10`  
		Last Modified: Tue, 16 Oct 2018 08:39:50 GMT  
		Size: 2.9 KB (2883 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:089984664862684cee72d646efb34ad65004b7b5c72c4a955faffd4888380375`  
		Last Modified: Tue, 16 Oct 2018 08:41:06 GMT  
		Size: 14.1 MB (14097009 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b26b78637203dac950867b55a40b545d3a0d4e5698977f8747690087f8c5886`  
		Last Modified: Tue, 16 Oct 2018 08:41:02 GMT  
		Size: 185.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `telegraf:1.8` - linux; arm variant v7

```console
$ docker pull telegraf@sha256:79fd38a531d53fc7ecf9fabfcd7ce7fb3554ca73512f74a6f49119f63dceff8f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **83.8 MB (83798409 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:705bd80efcaa231329d2eeca5ae88cfab44d6573eaf2480f2e33c879c641cfd1`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Tue, 16 Oct 2018 12:05:35 GMT
ADD file:5a70dc8c5adc5e530a8fc10745a2fba15ee4379cd2e1adba6e1abfc8353c48d9 in / 
# Tue, 16 Oct 2018 12:05:38 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 12:58:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 12:58:52 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 16 Oct 2018 14:30:09 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends iputils-ping snmp procps lm-sensors &&     rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 14:30:13 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Tue, 16 Oct 2018 14:30:39 GMT
ENV TELEGRAF_VERSION=1.8.1
# Tue, 16 Oct 2018 14:30:44 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     gpg --batch --verify telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     dpkg -i telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     rm -f telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb*
# Tue, 16 Oct 2018 14:30:44 GMT
EXPOSE 8092/udp 8094/tcp 8125/udp
# Tue, 16 Oct 2018 14:30:45 GMT
COPY file:7211de01f296351833389a1a1879d450e2cb727d7e2910d5807937f99983edf7 in /entrypoint.sh 
# Tue, 16 Oct 2018 14:30:46 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 16 Oct 2018 14:30:46 GMT
CMD ["telegraf"]
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
	-	`sha256:89a302631e8d5ae0cf04cb21fa4639d00523990e3fde79a7fce604f747084bc8`  
		Last Modified: Tue, 16 Oct 2018 14:31:09 GMT  
		Size: 14.8 MB (14829396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a9d9262dd07da037cf29e536f088bbe07506a63d5076c4266b7f0a02ec4c909`  
		Last Modified: Tue, 16 Oct 2018 14:30:57 GMT  
		Size: 2.9 KB (2911 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2408d853b81e72bf370a37994d174ae818e5ce607c948df7c21ab49c933f37bc`  
		Last Modified: Tue, 16 Oct 2018 14:31:45 GMT  
		Size: 13.5 MB (13549530 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:daec9840a25b80b93e92809276517e0528c3bdf8cd3a9a4dc2ce308863ec733c`  
		Last Modified: Tue, 16 Oct 2018 14:31:41 GMT  
		Size: 185.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `telegraf:1.8` - linux; arm64 variant v8

```console
$ docker pull telegraf@sha256:cb0e29e2d64795dd08180471bb59232744dfd1d0ae6005ac28d6fbd307a04404
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **85.7 MB (85718909 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:89d9c11c00ed59f04e6c03ff946891c189602ca2aa577d94122b1017129ed782`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Tue, 16 Oct 2018 08:43:08 GMT
ADD file:961d2f24a0cebfcdd333e000ed4488e5c4f4d2a3d11056c45934d647caed5845 in / 
# Tue, 16 Oct 2018 08:43:10 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 12:01:13 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 12:01:39 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 17 Oct 2018 01:36:08 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends iputils-ping snmp procps lm-sensors &&     rm -rf /var/lib/apt/lists/*
# Wed, 17 Oct 2018 01:36:13 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Wed, 17 Oct 2018 01:37:26 GMT
ENV TELEGRAF_VERSION=1.8.1
# Wed, 17 Oct 2018 01:37:38 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     gpg --batch --verify telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     dpkg -i telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     rm -f telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb*
# Wed, 17 Oct 2018 01:37:39 GMT
EXPOSE 8092/udp 8094/tcp 8125/udp
# Wed, 17 Oct 2018 01:37:41 GMT
COPY file:7211de01f296351833389a1a1879d450e2cb727d7e2910d5807937f99983edf7 in /entrypoint.sh 
# Wed, 17 Oct 2018 01:37:42 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 17 Oct 2018 01:37:43 GMT
CMD ["telegraf"]
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
	-	`sha256:85d7deb3d00c9c17ee1f6449f4788f6f2947f2bdd875575e20f212dc0a1efc38`  
		Last Modified: Wed, 17 Oct 2018 01:38:20 GMT  
		Size: 15.5 MB (15525546 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7eb7e734f7b8552bac42cf5b871adb054f838932d4f47492025043acdbbed455`  
		Last Modified: Wed, 17 Oct 2018 01:38:07 GMT  
		Size: 2.9 KB (2888 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b27e1132dd81865c356a381ce6b583355e2b8669fc698511ad7f5aeb164612b0`  
		Last Modified: Wed, 17 Oct 2018 01:39:45 GMT  
		Size: 13.3 MB (13287893 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08e9e9b98d87906a8f4d9584146bab0964debd54605d0635ab34956a714eb948`  
		Last Modified: Wed, 17 Oct 2018 01:39:35 GMT  
		Size: 182.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `telegraf:1.8.2`

```console
$ docker pull telegraf@sha256:afa0f20e39530e404a8c2fa17d9e9b50900bee19945d3ca8e390dfa3b5d35909
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `telegraf:1.8.2` - linux; amd64

```console
$ docker pull telegraf@sha256:2d67519d805018cc66758d2183fb57bb0118b13eacaf62d975bc28f7a3bd1ca4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **90.4 MB (90449916 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5bb3171720edef0cbabdc2ce417ee240b765514d6e479654e6c19b820609ebe3`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Mon, 15 Oct 2018 23:24:20 GMT
ADD file:b3598c18dc395846ab2c5e4e8422c4a5dad7bc3b5b08c09ebceee80989904641 in / 
# Mon, 15 Oct 2018 23:24:21 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 01:00:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 01:00:57 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 16 Oct 2018 08:38:33 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends iputils-ping snmp procps lm-sensors &&     rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 08:38:36 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Tue, 16 Oct 2018 08:39:21 GMT
ENV TELEGRAF_VERSION=1.8.1
# Tue, 16 Oct 2018 08:39:24 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     gpg --batch --verify telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     dpkg -i telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     rm -f telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb*
# Tue, 16 Oct 2018 08:39:24 GMT
EXPOSE 8092/udp 8094/tcp 8125/udp
# Tue, 16 Oct 2018 08:39:25 GMT
COPY file:7211de01f296351833389a1a1879d450e2cb727d7e2910d5807937f99983edf7 in /entrypoint.sh 
# Tue, 16 Oct 2018 08:39:25 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 16 Oct 2018 08:39:25 GMT
CMD ["telegraf"]
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
	-	`sha256:b0353d327a82ea6191e4b9c8bcfb70c0b929e82c23f79561dd30d7322d58d09a`  
		Last Modified: Tue, 16 Oct 2018 08:39:55 GMT  
		Size: 16.0 MB (15963836 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4796920c1464d4d9813741a3b1102f8f37b754de21ddc9d8ef2f15f3b45ce10`  
		Last Modified: Tue, 16 Oct 2018 08:39:50 GMT  
		Size: 2.9 KB (2883 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:089984664862684cee72d646efb34ad65004b7b5c72c4a955faffd4888380375`  
		Last Modified: Tue, 16 Oct 2018 08:41:06 GMT  
		Size: 14.1 MB (14097009 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b26b78637203dac950867b55a40b545d3a0d4e5698977f8747690087f8c5886`  
		Last Modified: Tue, 16 Oct 2018 08:41:02 GMT  
		Size: 185.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `telegraf:1.8.2` - linux; arm variant v7

```console
$ docker pull telegraf@sha256:79fd38a531d53fc7ecf9fabfcd7ce7fb3554ca73512f74a6f49119f63dceff8f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **83.8 MB (83798409 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:705bd80efcaa231329d2eeca5ae88cfab44d6573eaf2480f2e33c879c641cfd1`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Tue, 16 Oct 2018 12:05:35 GMT
ADD file:5a70dc8c5adc5e530a8fc10745a2fba15ee4379cd2e1adba6e1abfc8353c48d9 in / 
# Tue, 16 Oct 2018 12:05:38 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 12:58:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 12:58:52 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 16 Oct 2018 14:30:09 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends iputils-ping snmp procps lm-sensors &&     rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 14:30:13 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Tue, 16 Oct 2018 14:30:39 GMT
ENV TELEGRAF_VERSION=1.8.1
# Tue, 16 Oct 2018 14:30:44 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     gpg --batch --verify telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     dpkg -i telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     rm -f telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb*
# Tue, 16 Oct 2018 14:30:44 GMT
EXPOSE 8092/udp 8094/tcp 8125/udp
# Tue, 16 Oct 2018 14:30:45 GMT
COPY file:7211de01f296351833389a1a1879d450e2cb727d7e2910d5807937f99983edf7 in /entrypoint.sh 
# Tue, 16 Oct 2018 14:30:46 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 16 Oct 2018 14:30:46 GMT
CMD ["telegraf"]
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
	-	`sha256:89a302631e8d5ae0cf04cb21fa4639d00523990e3fde79a7fce604f747084bc8`  
		Last Modified: Tue, 16 Oct 2018 14:31:09 GMT  
		Size: 14.8 MB (14829396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a9d9262dd07da037cf29e536f088bbe07506a63d5076c4266b7f0a02ec4c909`  
		Last Modified: Tue, 16 Oct 2018 14:30:57 GMT  
		Size: 2.9 KB (2911 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2408d853b81e72bf370a37994d174ae818e5ce607c948df7c21ab49c933f37bc`  
		Last Modified: Tue, 16 Oct 2018 14:31:45 GMT  
		Size: 13.5 MB (13549530 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:daec9840a25b80b93e92809276517e0528c3bdf8cd3a9a4dc2ce308863ec733c`  
		Last Modified: Tue, 16 Oct 2018 14:31:41 GMT  
		Size: 185.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `telegraf:1.8.2` - linux; arm64 variant v8

```console
$ docker pull telegraf@sha256:cb0e29e2d64795dd08180471bb59232744dfd1d0ae6005ac28d6fbd307a04404
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **85.7 MB (85718909 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:89d9c11c00ed59f04e6c03ff946891c189602ca2aa577d94122b1017129ed782`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Tue, 16 Oct 2018 08:43:08 GMT
ADD file:961d2f24a0cebfcdd333e000ed4488e5c4f4d2a3d11056c45934d647caed5845 in / 
# Tue, 16 Oct 2018 08:43:10 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 12:01:13 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 12:01:39 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 17 Oct 2018 01:36:08 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends iputils-ping snmp procps lm-sensors &&     rm -rf /var/lib/apt/lists/*
# Wed, 17 Oct 2018 01:36:13 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Wed, 17 Oct 2018 01:37:26 GMT
ENV TELEGRAF_VERSION=1.8.1
# Wed, 17 Oct 2018 01:37:38 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     gpg --batch --verify telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     dpkg -i telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     rm -f telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb*
# Wed, 17 Oct 2018 01:37:39 GMT
EXPOSE 8092/udp 8094/tcp 8125/udp
# Wed, 17 Oct 2018 01:37:41 GMT
COPY file:7211de01f296351833389a1a1879d450e2cb727d7e2910d5807937f99983edf7 in /entrypoint.sh 
# Wed, 17 Oct 2018 01:37:42 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 17 Oct 2018 01:37:43 GMT
CMD ["telegraf"]
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
	-	`sha256:85d7deb3d00c9c17ee1f6449f4788f6f2947f2bdd875575e20f212dc0a1efc38`  
		Last Modified: Wed, 17 Oct 2018 01:38:20 GMT  
		Size: 15.5 MB (15525546 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7eb7e734f7b8552bac42cf5b871adb054f838932d4f47492025043acdbbed455`  
		Last Modified: Wed, 17 Oct 2018 01:38:07 GMT  
		Size: 2.9 KB (2888 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b27e1132dd81865c356a381ce6b583355e2b8669fc698511ad7f5aeb164612b0`  
		Last Modified: Wed, 17 Oct 2018 01:39:45 GMT  
		Size: 13.3 MB (13287893 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08e9e9b98d87906a8f4d9584146bab0964debd54605d0635ab34956a714eb948`  
		Last Modified: Wed, 17 Oct 2018 01:39:35 GMT  
		Size: 182.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `telegraf:1.8.2-alpine`

```console
$ docker pull telegraf@sha256:7f6873f5745fe9b4f610c5dcfaaa73d7cd75adb63bd770bb70c26a7e85c94a2a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `telegraf:1.8.2-alpine` - linux; amd64

```console
$ docker pull telegraf@sha256:74a56edd5eb28c8587429ba26632979ed6b5abe6f041f36b8d6ed2c4195ca653
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **19.4 MB (19442319 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:af8a406cd91428e750eae0081f8656bc6c193bf9fea4c71e5b22573f789bf65f`
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
# Mon, 08 Oct 2018 23:31:04 GMT
ENV TELEGRAF_VERSION=1.8.1
# Mon, 08 Oct 2018 23:31:10 GMT
RUN set -ex &&     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf-${TELEGRAF_VERSION}-static_linux_amd64.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf-${TELEGRAF_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify telegraf-${TELEGRAF_VERSION}-static_linux_amd64.tar.gz.asc telegraf-${TELEGRAF_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src /etc/telegraf &&     tar -C /usr/src -xzf telegraf-${TELEGRAF_VERSION}-static_linux_amd64.tar.gz &&     mv /usr/src/telegraf*/telegraf.conf /etc/telegraf/ &&     chmod +x /usr/src/telegraf*/* &&     cp -a /usr/src/telegraf*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Mon, 08 Oct 2018 23:31:10 GMT
EXPOSE 8092/udp 8094/tcp 8125/udp
# Mon, 08 Oct 2018 23:31:10 GMT
COPY file:43e6828e001b57ab465cff8dfd3d30830289afe7ca5944b61641956bfe38cd1c in /entrypoint.sh 
# Mon, 08 Oct 2018 23:31:10 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 08 Oct 2018 23:31:11 GMT
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
	-	`sha256:25b513adc17e38130eed796bb73d4f3ba9f5fd88e87851bf7c89f3317438b887`  
		Last Modified: Mon, 08 Oct 2018 23:31:59 GMT  
		Size: 14.1 MB (14071174 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15e4ef8b67f7a45906c8da9457e001e13cfc5fd66bb4b8bf674e13b61591f53f`  
		Last Modified: Mon, 08 Oct 2018 23:31:55 GMT  
		Size: 185.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `telegraf:1.8-alpine`

```console
$ docker pull telegraf@sha256:7f6873f5745fe9b4f610c5dcfaaa73d7cd75adb63bd770bb70c26a7e85c94a2a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `telegraf:1.8-alpine` - linux; amd64

```console
$ docker pull telegraf@sha256:74a56edd5eb28c8587429ba26632979ed6b5abe6f041f36b8d6ed2c4195ca653
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **19.4 MB (19442319 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:af8a406cd91428e750eae0081f8656bc6c193bf9fea4c71e5b22573f789bf65f`
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
# Mon, 08 Oct 2018 23:31:04 GMT
ENV TELEGRAF_VERSION=1.8.1
# Mon, 08 Oct 2018 23:31:10 GMT
RUN set -ex &&     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf-${TELEGRAF_VERSION}-static_linux_amd64.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf-${TELEGRAF_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify telegraf-${TELEGRAF_VERSION}-static_linux_amd64.tar.gz.asc telegraf-${TELEGRAF_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src /etc/telegraf &&     tar -C /usr/src -xzf telegraf-${TELEGRAF_VERSION}-static_linux_amd64.tar.gz &&     mv /usr/src/telegraf*/telegraf.conf /etc/telegraf/ &&     chmod +x /usr/src/telegraf*/* &&     cp -a /usr/src/telegraf*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Mon, 08 Oct 2018 23:31:10 GMT
EXPOSE 8092/udp 8094/tcp 8125/udp
# Mon, 08 Oct 2018 23:31:10 GMT
COPY file:43e6828e001b57ab465cff8dfd3d30830289afe7ca5944b61641956bfe38cd1c in /entrypoint.sh 
# Mon, 08 Oct 2018 23:31:10 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 08 Oct 2018 23:31:11 GMT
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
	-	`sha256:25b513adc17e38130eed796bb73d4f3ba9f5fd88e87851bf7c89f3317438b887`  
		Last Modified: Mon, 08 Oct 2018 23:31:59 GMT  
		Size: 14.1 MB (14071174 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15e4ef8b67f7a45906c8da9457e001e13cfc5fd66bb4b8bf674e13b61591f53f`  
		Last Modified: Mon, 08 Oct 2018 23:31:55 GMT  
		Size: 185.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `telegraf:alpine`

```console
$ docker pull telegraf@sha256:7f6873f5745fe9b4f610c5dcfaaa73d7cd75adb63bd770bb70c26a7e85c94a2a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `telegraf:alpine` - linux; amd64

```console
$ docker pull telegraf@sha256:74a56edd5eb28c8587429ba26632979ed6b5abe6f041f36b8d6ed2c4195ca653
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **19.4 MB (19442319 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:af8a406cd91428e750eae0081f8656bc6c193bf9fea4c71e5b22573f789bf65f`
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
# Mon, 08 Oct 2018 23:31:04 GMT
ENV TELEGRAF_VERSION=1.8.1
# Mon, 08 Oct 2018 23:31:10 GMT
RUN set -ex &&     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf-${TELEGRAF_VERSION}-static_linux_amd64.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf-${TELEGRAF_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify telegraf-${TELEGRAF_VERSION}-static_linux_amd64.tar.gz.asc telegraf-${TELEGRAF_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src /etc/telegraf &&     tar -C /usr/src -xzf telegraf-${TELEGRAF_VERSION}-static_linux_amd64.tar.gz &&     mv /usr/src/telegraf*/telegraf.conf /etc/telegraf/ &&     chmod +x /usr/src/telegraf*/* &&     cp -a /usr/src/telegraf*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Mon, 08 Oct 2018 23:31:10 GMT
EXPOSE 8092/udp 8094/tcp 8125/udp
# Mon, 08 Oct 2018 23:31:10 GMT
COPY file:43e6828e001b57ab465cff8dfd3d30830289afe7ca5944b61641956bfe38cd1c in /entrypoint.sh 
# Mon, 08 Oct 2018 23:31:10 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 08 Oct 2018 23:31:11 GMT
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
	-	`sha256:25b513adc17e38130eed796bb73d4f3ba9f5fd88e87851bf7c89f3317438b887`  
		Last Modified: Mon, 08 Oct 2018 23:31:59 GMT  
		Size: 14.1 MB (14071174 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15e4ef8b67f7a45906c8da9457e001e13cfc5fd66bb4b8bf674e13b61591f53f`  
		Last Modified: Mon, 08 Oct 2018 23:31:55 GMT  
		Size: 185.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `telegraf:latest`

```console
$ docker pull telegraf@sha256:afa0f20e39530e404a8c2fa17d9e9b50900bee19945d3ca8e390dfa3b5d35909
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `telegraf:latest` - linux; amd64

```console
$ docker pull telegraf@sha256:2d67519d805018cc66758d2183fb57bb0118b13eacaf62d975bc28f7a3bd1ca4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **90.4 MB (90449916 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5bb3171720edef0cbabdc2ce417ee240b765514d6e479654e6c19b820609ebe3`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Mon, 15 Oct 2018 23:24:20 GMT
ADD file:b3598c18dc395846ab2c5e4e8422c4a5dad7bc3b5b08c09ebceee80989904641 in / 
# Mon, 15 Oct 2018 23:24:21 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 01:00:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 01:00:57 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 16 Oct 2018 08:38:33 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends iputils-ping snmp procps lm-sensors &&     rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 08:38:36 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Tue, 16 Oct 2018 08:39:21 GMT
ENV TELEGRAF_VERSION=1.8.1
# Tue, 16 Oct 2018 08:39:24 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     gpg --batch --verify telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     dpkg -i telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     rm -f telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb*
# Tue, 16 Oct 2018 08:39:24 GMT
EXPOSE 8092/udp 8094/tcp 8125/udp
# Tue, 16 Oct 2018 08:39:25 GMT
COPY file:7211de01f296351833389a1a1879d450e2cb727d7e2910d5807937f99983edf7 in /entrypoint.sh 
# Tue, 16 Oct 2018 08:39:25 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 16 Oct 2018 08:39:25 GMT
CMD ["telegraf"]
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
	-	`sha256:b0353d327a82ea6191e4b9c8bcfb70c0b929e82c23f79561dd30d7322d58d09a`  
		Last Modified: Tue, 16 Oct 2018 08:39:55 GMT  
		Size: 16.0 MB (15963836 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4796920c1464d4d9813741a3b1102f8f37b754de21ddc9d8ef2f15f3b45ce10`  
		Last Modified: Tue, 16 Oct 2018 08:39:50 GMT  
		Size: 2.9 KB (2883 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:089984664862684cee72d646efb34ad65004b7b5c72c4a955faffd4888380375`  
		Last Modified: Tue, 16 Oct 2018 08:41:06 GMT  
		Size: 14.1 MB (14097009 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b26b78637203dac950867b55a40b545d3a0d4e5698977f8747690087f8c5886`  
		Last Modified: Tue, 16 Oct 2018 08:41:02 GMT  
		Size: 185.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `telegraf:latest` - linux; arm variant v7

```console
$ docker pull telegraf@sha256:79fd38a531d53fc7ecf9fabfcd7ce7fb3554ca73512f74a6f49119f63dceff8f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **83.8 MB (83798409 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:705bd80efcaa231329d2eeca5ae88cfab44d6573eaf2480f2e33c879c641cfd1`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Tue, 16 Oct 2018 12:05:35 GMT
ADD file:5a70dc8c5adc5e530a8fc10745a2fba15ee4379cd2e1adba6e1abfc8353c48d9 in / 
# Tue, 16 Oct 2018 12:05:38 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 12:58:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 12:58:52 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 16 Oct 2018 14:30:09 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends iputils-ping snmp procps lm-sensors &&     rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 14:30:13 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Tue, 16 Oct 2018 14:30:39 GMT
ENV TELEGRAF_VERSION=1.8.1
# Tue, 16 Oct 2018 14:30:44 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     gpg --batch --verify telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     dpkg -i telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     rm -f telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb*
# Tue, 16 Oct 2018 14:30:44 GMT
EXPOSE 8092/udp 8094/tcp 8125/udp
# Tue, 16 Oct 2018 14:30:45 GMT
COPY file:7211de01f296351833389a1a1879d450e2cb727d7e2910d5807937f99983edf7 in /entrypoint.sh 
# Tue, 16 Oct 2018 14:30:46 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 16 Oct 2018 14:30:46 GMT
CMD ["telegraf"]
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
	-	`sha256:89a302631e8d5ae0cf04cb21fa4639d00523990e3fde79a7fce604f747084bc8`  
		Last Modified: Tue, 16 Oct 2018 14:31:09 GMT  
		Size: 14.8 MB (14829396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a9d9262dd07da037cf29e536f088bbe07506a63d5076c4266b7f0a02ec4c909`  
		Last Modified: Tue, 16 Oct 2018 14:30:57 GMT  
		Size: 2.9 KB (2911 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2408d853b81e72bf370a37994d174ae818e5ce607c948df7c21ab49c933f37bc`  
		Last Modified: Tue, 16 Oct 2018 14:31:45 GMT  
		Size: 13.5 MB (13549530 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:daec9840a25b80b93e92809276517e0528c3bdf8cd3a9a4dc2ce308863ec733c`  
		Last Modified: Tue, 16 Oct 2018 14:31:41 GMT  
		Size: 185.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `telegraf:latest` - linux; arm64 variant v8

```console
$ docker pull telegraf@sha256:cb0e29e2d64795dd08180471bb59232744dfd1d0ae6005ac28d6fbd307a04404
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **85.7 MB (85718909 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:89d9c11c00ed59f04e6c03ff946891c189602ca2aa577d94122b1017129ed782`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Tue, 16 Oct 2018 08:43:08 GMT
ADD file:961d2f24a0cebfcdd333e000ed4488e5c4f4d2a3d11056c45934d647caed5845 in / 
# Tue, 16 Oct 2018 08:43:10 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 12:01:13 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 12:01:39 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 17 Oct 2018 01:36:08 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends iputils-ping snmp procps lm-sensors &&     rm -rf /var/lib/apt/lists/*
# Wed, 17 Oct 2018 01:36:13 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Wed, 17 Oct 2018 01:37:26 GMT
ENV TELEGRAF_VERSION=1.8.1
# Wed, 17 Oct 2018 01:37:38 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     gpg --batch --verify telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     dpkg -i telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     rm -f telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb*
# Wed, 17 Oct 2018 01:37:39 GMT
EXPOSE 8092/udp 8094/tcp 8125/udp
# Wed, 17 Oct 2018 01:37:41 GMT
COPY file:7211de01f296351833389a1a1879d450e2cb727d7e2910d5807937f99983edf7 in /entrypoint.sh 
# Wed, 17 Oct 2018 01:37:42 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 17 Oct 2018 01:37:43 GMT
CMD ["telegraf"]
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
	-	`sha256:85d7deb3d00c9c17ee1f6449f4788f6f2947f2bdd875575e20f212dc0a1efc38`  
		Last Modified: Wed, 17 Oct 2018 01:38:20 GMT  
		Size: 15.5 MB (15525546 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7eb7e734f7b8552bac42cf5b871adb054f838932d4f47492025043acdbbed455`  
		Last Modified: Wed, 17 Oct 2018 01:38:07 GMT  
		Size: 2.9 KB (2888 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b27e1132dd81865c356a381ce6b583355e2b8669fc698511ad7f5aeb164612b0`  
		Last Modified: Wed, 17 Oct 2018 01:39:45 GMT  
		Size: 13.3 MB (13287893 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08e9e9b98d87906a8f4d9584146bab0964debd54605d0635ab34956a714eb948`  
		Last Modified: Wed, 17 Oct 2018 01:39:35 GMT  
		Size: 182.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
