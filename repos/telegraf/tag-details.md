<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `telegraf`

-	[`telegraf:1.4`](#telegraf14)
-	[`telegraf:1.4.5`](#telegraf145)
-	[`telegraf:1.4.5-alpine`](#telegraf145-alpine)
-	[`telegraf:1.4-alpine`](#telegraf14-alpine)
-	[`telegraf:1.5`](#telegraf15)
-	[`telegraf:1.5.3`](#telegraf153)
-	[`telegraf:1.5.3-alpine`](#telegraf153-alpine)
-	[`telegraf:1.5-alpine`](#telegraf15-alpine)
-	[`telegraf:1.6`](#telegraf16)
-	[`telegraf:1.6.1`](#telegraf161)
-	[`telegraf:1.6.1-alpine`](#telegraf161-alpine)
-	[`telegraf:1.6-alpine`](#telegraf16-alpine)
-	[`telegraf:alpine`](#telegrafalpine)
-	[`telegraf:latest`](#telegraflatest)

## `telegraf:1.4`

```console
$ docker pull telegraf@sha256:05a9c5f9eda925d0d258cb260f39d982993864a47edd5aada2c0e37fcba0873f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `telegraf:1.4` - linux; amd64

```console
$ docker pull telegraf@sha256:604ff4ab358d000ee085209caea420330463997499035cd617ab72f6dac577a0
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **85.0 MB (84990435 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0ad3a91119685886f0e49b99a442503765a44cd10f03a91ac8053eedd785dc41`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Sat, 28 Apr 2018 07:08:53 GMT
ADD file:9572fdb59dfbb9b032f3331bbc2a08b31e0aef5fbde44c8f2008d22bf5290cf2 in / 
# Sat, 28 Apr 2018 07:08:53 GMT
CMD ["bash"]
# Fri, 04 May 2018 17:41:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 04 May 2018 17:41:17 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 05 May 2018 07:52:04 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends snmp procps &&     rm -rf /var/lib/apt/lists/*
# Sat, 05 May 2018 07:52:08 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Sat, 05 May 2018 07:52:08 GMT
ENV TELEGRAF_VERSION=1.4.5
# Sat, 05 May 2018 07:52:14 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     gpg --batch --verify telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     dpkg -i telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     rm -f telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb*
# Sat, 05 May 2018 07:52:14 GMT
EXPOSE 8092/udp 8094/tcp 8125/udp
# Sat, 05 May 2018 07:52:14 GMT
COPY file:7211de01f296351833389a1a1879d450e2cb727d7e2910d5807937f99983edf7 in /entrypoint.sh 
# Sat, 05 May 2018 07:52:14 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Sat, 05 May 2018 07:52:14 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:cc1a78bfd46becbfc3abb8a74d9a70a0e0dc7a5809bbd12e814f9382db003707`  
		Last Modified: Sat, 28 Apr 2018 09:27:54 GMT  
		Size: 45.3 MB (45318159 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6861473222a6f5fb6abe08f0cdebf56b5f42758b0a7430bbbf47a3d365198e5e`  
		Last Modified: Fri, 04 May 2018 18:20:41 GMT  
		Size: 10.8 MB (10773612 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e0b9c3b5ae080d11df6df788ce96a45b684d7b050fd017c06b4ea5a40f58545`  
		Last Modified: Fri, 04 May 2018 18:20:39 GMT  
		Size: 4.3 MB (4335883 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a2ec2cdb0a06b9419fa16041ce2aeebf62c1ec75ccfbc235523ae42b4d72bf2`  
		Last Modified: Sat, 05 May 2018 07:53:05 GMT  
		Size: 15.6 MB (15585928 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16fe229710e28b963750708ab296a82543583df158f5de4aae8882a282e07113`  
		Last Modified: Sat, 05 May 2018 07:53:03 GMT  
		Size: 2.9 KB (2896 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89531f1e1b4fd5884d71272b92df0192dcfdce45e26c5755793daadc949a93cc`  
		Last Modified: Sat, 05 May 2018 07:53:05 GMT  
		Size: 9.0 MB (8973774 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01f041f05fc31352c834d1dd8b3d4b4b7f3961f65bee4f0574c0f812a8a3116f`  
		Last Modified: Sat, 05 May 2018 07:53:02 GMT  
		Size: 183.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `telegraf:1.4` - linux; arm variant v7

```console
$ docker pull telegraf@sha256:89bfd3afa6127ba999e426ed30b4e2c656cf5450176f360adb894873aee4c78f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **78.5 MB (78477968 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8d8c2411b1bc2601f862c739b71e9219e106f84d91c766f8831a6c167ec5ca1b`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Sat, 28 Apr 2018 12:04:18 GMT
ADD file:c7fba27b02c4bda63faef7eb30156a55feb4c0e9ecd529a24dd8d62942c2f83c in / 
# Sat, 28 Apr 2018 12:04:19 GMT
CMD ["bash"]
# Sat, 05 May 2018 12:13:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 05 May 2018 12:13:58 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 05 May 2018 15:18:46 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends snmp procps &&     rm -rf /var/lib/apt/lists/*
# Sat, 05 May 2018 15:18:49 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Sat, 05 May 2018 15:18:49 GMT
ENV TELEGRAF_VERSION=1.4.5
# Sat, 05 May 2018 15:18:52 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     gpg --batch --verify telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     dpkg -i telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     rm -f telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb*
# Sat, 05 May 2018 15:18:52 GMT
EXPOSE 8092/udp 8094/tcp 8125/udp
# Sat, 05 May 2018 15:18:52 GMT
COPY file:7211de01f296351833389a1a1879d450e2cb727d7e2910d5807937f99983edf7 in /entrypoint.sh 
# Sat, 05 May 2018 15:18:53 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Sat, 05 May 2018 15:18:53 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:5483105d09166836731e940c850827dd1a4fe16b04d1921eea4d8da7c98e99bc`  
		Last Modified: Sat, 28 Apr 2018 12:15:18 GMT  
		Size: 42.1 MB (42063737 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ed57f83cc7c78757972312a1b5a30524f861523c5390d062845f18c696f48ea`  
		Last Modified: Sat, 05 May 2018 12:35:37 GMT  
		Size: 9.5 MB (9472475 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:859203aede279201e8caf07cf2963456c56bac72a64071079dc9db6fb65ed1a2`  
		Last Modified: Sat, 05 May 2018 12:35:34 GMT  
		Size: 3.9 MB (3912835 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0679748f28b0f873a84ba022aad6272afc67937358ba4ca30f9f14e5d6f30f8`  
		Last Modified: Sat, 05 May 2018 15:20:13 GMT  
		Size: 14.5 MB (14471887 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:096faa8b6b01bc16c09511df4634610c9430d41d9fc8cd2d06145390725411c2`  
		Last Modified: Sat, 05 May 2018 15:20:08 GMT  
		Size: 2.9 KB (2915 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97b4c6af5949c4f5c633d9eb297c4b547961b506b172fa4ff5813ca21bc239cd`  
		Last Modified: Sat, 05 May 2018 15:20:11 GMT  
		Size: 8.6 MB (8553936 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11443af105095486a278df6d1fe6a5558a17336acd946407e9539ee8b3396ef0`  
		Last Modified: Sat, 05 May 2018 15:20:09 GMT  
		Size: 183.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `telegraf:1.4` - linux; arm64 variant v8

```console
$ docker pull telegraf@sha256:92e4e707e7f9b4c006c725b4e10e82d52f77a6733663c10c31948629f8314701
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **80.5 MB (80486029 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:65dc1c9c8842c04ecae07534a32c8390167fe3786b74a5a311828a593bfce065`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Mon, 30 Apr 2018 23:31:58 GMT
ADD file:245a8cfe59ea071e4e215a722e0d4b4b14fa95dd6ffd03739fe048433cfaf523 in / 
# Mon, 30 Apr 2018 23:32:00 GMT
CMD ["bash"]
# Sat, 05 May 2018 09:38:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 05 May 2018 09:39:04 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 05 May 2018 21:05:38 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends snmp procps &&     rm -rf /var/lib/apt/lists/*
# Sat, 05 May 2018 21:05:44 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Sat, 05 May 2018 21:05:45 GMT
ENV TELEGRAF_VERSION=1.4.5
# Sat, 05 May 2018 21:05:52 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     gpg --batch --verify telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     dpkg -i telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     rm -f telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb*
# Sat, 05 May 2018 21:05:54 GMT
EXPOSE 8092/udp 8094/tcp 8125/udp
# Sat, 05 May 2018 21:05:55 GMT
COPY file:7211de01f296351833389a1a1879d450e2cb727d7e2910d5807937f99983edf7 in /entrypoint.sh 
# Sat, 05 May 2018 21:05:56 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Sat, 05 May 2018 21:05:58 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:142bf25d8d1b3ebc9dfbedd586e70a011594690acf48b2695bfce01e3a2cf0d5`  
		Last Modified: Mon, 30 Apr 2018 23:52:13 GMT  
		Size: 43.1 MB (43109349 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1dd3e9bbb1f760ff8cab41817920c5822422ba1eaab36a233c8f43348791e03d`  
		Last Modified: Sat, 05 May 2018 10:29:53 GMT  
		Size: 9.7 MB (9722189 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5534647756e8399143ad6e1639b6433b9a3364809ac4520f62199ea46e638a2e`  
		Last Modified: Sat, 05 May 2018 10:29:50 GMT  
		Size: 4.1 MB (4088086 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:842bfe55532da4246e8ea0d12e04435f85d12773ff6c49d230611596389c30b0`  
		Last Modified: Sat, 05 May 2018 21:07:45 GMT  
		Size: 15.2 MB (15164350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8befbd00cca5bcf5c9e52f9c822bd8a3bad3ecccfc8952afbe922af4a2597f4e`  
		Last Modified: Sat, 05 May 2018 21:07:38 GMT  
		Size: 2.9 KB (2887 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d24947649bd7245f5c84f722a3dd79eed7fca799b41cc117af91c9614fbcad4`  
		Last Modified: Sat, 05 May 2018 21:07:42 GMT  
		Size: 8.4 MB (8398985 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72085db92b7123ed685701e49abf5c4c14bb661272791400840963a961e2d43b`  
		Last Modified: Sat, 05 May 2018 21:07:38 GMT  
		Size: 183.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `telegraf:1.4.5`

```console
$ docker pull telegraf@sha256:05a9c5f9eda925d0d258cb260f39d982993864a47edd5aada2c0e37fcba0873f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `telegraf:1.4.5` - linux; amd64

```console
$ docker pull telegraf@sha256:604ff4ab358d000ee085209caea420330463997499035cd617ab72f6dac577a0
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **85.0 MB (84990435 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0ad3a91119685886f0e49b99a442503765a44cd10f03a91ac8053eedd785dc41`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Sat, 28 Apr 2018 07:08:53 GMT
ADD file:9572fdb59dfbb9b032f3331bbc2a08b31e0aef5fbde44c8f2008d22bf5290cf2 in / 
# Sat, 28 Apr 2018 07:08:53 GMT
CMD ["bash"]
# Fri, 04 May 2018 17:41:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 04 May 2018 17:41:17 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 05 May 2018 07:52:04 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends snmp procps &&     rm -rf /var/lib/apt/lists/*
# Sat, 05 May 2018 07:52:08 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Sat, 05 May 2018 07:52:08 GMT
ENV TELEGRAF_VERSION=1.4.5
# Sat, 05 May 2018 07:52:14 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     gpg --batch --verify telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     dpkg -i telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     rm -f telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb*
# Sat, 05 May 2018 07:52:14 GMT
EXPOSE 8092/udp 8094/tcp 8125/udp
# Sat, 05 May 2018 07:52:14 GMT
COPY file:7211de01f296351833389a1a1879d450e2cb727d7e2910d5807937f99983edf7 in /entrypoint.sh 
# Sat, 05 May 2018 07:52:14 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Sat, 05 May 2018 07:52:14 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:cc1a78bfd46becbfc3abb8a74d9a70a0e0dc7a5809bbd12e814f9382db003707`  
		Last Modified: Sat, 28 Apr 2018 09:27:54 GMT  
		Size: 45.3 MB (45318159 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6861473222a6f5fb6abe08f0cdebf56b5f42758b0a7430bbbf47a3d365198e5e`  
		Last Modified: Fri, 04 May 2018 18:20:41 GMT  
		Size: 10.8 MB (10773612 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e0b9c3b5ae080d11df6df788ce96a45b684d7b050fd017c06b4ea5a40f58545`  
		Last Modified: Fri, 04 May 2018 18:20:39 GMT  
		Size: 4.3 MB (4335883 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a2ec2cdb0a06b9419fa16041ce2aeebf62c1ec75ccfbc235523ae42b4d72bf2`  
		Last Modified: Sat, 05 May 2018 07:53:05 GMT  
		Size: 15.6 MB (15585928 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16fe229710e28b963750708ab296a82543583df158f5de4aae8882a282e07113`  
		Last Modified: Sat, 05 May 2018 07:53:03 GMT  
		Size: 2.9 KB (2896 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89531f1e1b4fd5884d71272b92df0192dcfdce45e26c5755793daadc949a93cc`  
		Last Modified: Sat, 05 May 2018 07:53:05 GMT  
		Size: 9.0 MB (8973774 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01f041f05fc31352c834d1dd8b3d4b4b7f3961f65bee4f0574c0f812a8a3116f`  
		Last Modified: Sat, 05 May 2018 07:53:02 GMT  
		Size: 183.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `telegraf:1.4.5` - linux; arm variant v7

```console
$ docker pull telegraf@sha256:89bfd3afa6127ba999e426ed30b4e2c656cf5450176f360adb894873aee4c78f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **78.5 MB (78477968 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8d8c2411b1bc2601f862c739b71e9219e106f84d91c766f8831a6c167ec5ca1b`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Sat, 28 Apr 2018 12:04:18 GMT
ADD file:c7fba27b02c4bda63faef7eb30156a55feb4c0e9ecd529a24dd8d62942c2f83c in / 
# Sat, 28 Apr 2018 12:04:19 GMT
CMD ["bash"]
# Sat, 05 May 2018 12:13:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 05 May 2018 12:13:58 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 05 May 2018 15:18:46 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends snmp procps &&     rm -rf /var/lib/apt/lists/*
# Sat, 05 May 2018 15:18:49 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Sat, 05 May 2018 15:18:49 GMT
ENV TELEGRAF_VERSION=1.4.5
# Sat, 05 May 2018 15:18:52 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     gpg --batch --verify telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     dpkg -i telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     rm -f telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb*
# Sat, 05 May 2018 15:18:52 GMT
EXPOSE 8092/udp 8094/tcp 8125/udp
# Sat, 05 May 2018 15:18:52 GMT
COPY file:7211de01f296351833389a1a1879d450e2cb727d7e2910d5807937f99983edf7 in /entrypoint.sh 
# Sat, 05 May 2018 15:18:53 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Sat, 05 May 2018 15:18:53 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:5483105d09166836731e940c850827dd1a4fe16b04d1921eea4d8da7c98e99bc`  
		Last Modified: Sat, 28 Apr 2018 12:15:18 GMT  
		Size: 42.1 MB (42063737 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ed57f83cc7c78757972312a1b5a30524f861523c5390d062845f18c696f48ea`  
		Last Modified: Sat, 05 May 2018 12:35:37 GMT  
		Size: 9.5 MB (9472475 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:859203aede279201e8caf07cf2963456c56bac72a64071079dc9db6fb65ed1a2`  
		Last Modified: Sat, 05 May 2018 12:35:34 GMT  
		Size: 3.9 MB (3912835 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0679748f28b0f873a84ba022aad6272afc67937358ba4ca30f9f14e5d6f30f8`  
		Last Modified: Sat, 05 May 2018 15:20:13 GMT  
		Size: 14.5 MB (14471887 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:096faa8b6b01bc16c09511df4634610c9430d41d9fc8cd2d06145390725411c2`  
		Last Modified: Sat, 05 May 2018 15:20:08 GMT  
		Size: 2.9 KB (2915 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97b4c6af5949c4f5c633d9eb297c4b547961b506b172fa4ff5813ca21bc239cd`  
		Last Modified: Sat, 05 May 2018 15:20:11 GMT  
		Size: 8.6 MB (8553936 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11443af105095486a278df6d1fe6a5558a17336acd946407e9539ee8b3396ef0`  
		Last Modified: Sat, 05 May 2018 15:20:09 GMT  
		Size: 183.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `telegraf:1.4.5` - linux; arm64 variant v8

```console
$ docker pull telegraf@sha256:92e4e707e7f9b4c006c725b4e10e82d52f77a6733663c10c31948629f8314701
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **80.5 MB (80486029 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:65dc1c9c8842c04ecae07534a32c8390167fe3786b74a5a311828a593bfce065`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Mon, 30 Apr 2018 23:31:58 GMT
ADD file:245a8cfe59ea071e4e215a722e0d4b4b14fa95dd6ffd03739fe048433cfaf523 in / 
# Mon, 30 Apr 2018 23:32:00 GMT
CMD ["bash"]
# Sat, 05 May 2018 09:38:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 05 May 2018 09:39:04 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 05 May 2018 21:05:38 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends snmp procps &&     rm -rf /var/lib/apt/lists/*
# Sat, 05 May 2018 21:05:44 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Sat, 05 May 2018 21:05:45 GMT
ENV TELEGRAF_VERSION=1.4.5
# Sat, 05 May 2018 21:05:52 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     gpg --batch --verify telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     dpkg -i telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     rm -f telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb*
# Sat, 05 May 2018 21:05:54 GMT
EXPOSE 8092/udp 8094/tcp 8125/udp
# Sat, 05 May 2018 21:05:55 GMT
COPY file:7211de01f296351833389a1a1879d450e2cb727d7e2910d5807937f99983edf7 in /entrypoint.sh 
# Sat, 05 May 2018 21:05:56 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Sat, 05 May 2018 21:05:58 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:142bf25d8d1b3ebc9dfbedd586e70a011594690acf48b2695bfce01e3a2cf0d5`  
		Last Modified: Mon, 30 Apr 2018 23:52:13 GMT  
		Size: 43.1 MB (43109349 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1dd3e9bbb1f760ff8cab41817920c5822422ba1eaab36a233c8f43348791e03d`  
		Last Modified: Sat, 05 May 2018 10:29:53 GMT  
		Size: 9.7 MB (9722189 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5534647756e8399143ad6e1639b6433b9a3364809ac4520f62199ea46e638a2e`  
		Last Modified: Sat, 05 May 2018 10:29:50 GMT  
		Size: 4.1 MB (4088086 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:842bfe55532da4246e8ea0d12e04435f85d12773ff6c49d230611596389c30b0`  
		Last Modified: Sat, 05 May 2018 21:07:45 GMT  
		Size: 15.2 MB (15164350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8befbd00cca5bcf5c9e52f9c822bd8a3bad3ecccfc8952afbe922af4a2597f4e`  
		Last Modified: Sat, 05 May 2018 21:07:38 GMT  
		Size: 2.9 KB (2887 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d24947649bd7245f5c84f722a3dd79eed7fca799b41cc117af91c9614fbcad4`  
		Last Modified: Sat, 05 May 2018 21:07:42 GMT  
		Size: 8.4 MB (8398985 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72085db92b7123ed685701e49abf5c4c14bb661272791400840963a961e2d43b`  
		Last Modified: Sat, 05 May 2018 21:07:38 GMT  
		Size: 183.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `telegraf:1.4.5-alpine`

```console
$ docker pull telegraf@sha256:c3eadb613f7c7f807ca2948dcec8339975b126004964a44352629a795b535f63
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `telegraf:1.4.5-alpine` - linux; amd64

```console
$ docker pull telegraf@sha256:a5afe3c1ee4b5532b6b33fd5a0346a82df314e3df5b8243fc1ad6d76283e269d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.7 MB (13727064 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c420ebd68d8531307a4d33bdb0da708ed42b1a76a148c3b3c5893c1c6e7edd8f`
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
# Wed, 10 Jan 2018 03:04:44 GMT
ENV TELEGRAF_VERSION=1.4.5
# Wed, 14 Feb 2018 22:26:31 GMT
RUN set -ex &&     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf-${TELEGRAF_VERSION}-static_linux_amd64.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf-${TELEGRAF_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify telegraf-${TELEGRAF_VERSION}-static_linux_amd64.tar.gz.asc telegraf-${TELEGRAF_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src /etc/telegraf &&     tar -C /usr/src -xzf telegraf-${TELEGRAF_VERSION}-static_linux_amd64.tar.gz &&     mv /usr/src/telegraf*/telegraf.conf /etc/telegraf/ &&     chmod +x /usr/src/telegraf*/* &&     cp -a /usr/src/telegraf*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Wed, 14 Feb 2018 22:26:31 GMT
EXPOSE 8092/udp 8094/tcp 8125/udp
# Wed, 14 Feb 2018 22:26:31 GMT
COPY file:43e6828e001b57ab465cff8dfd3d30830289afe7ca5944b61641956bfe38cd1c in /entrypoint.sh 
# Wed, 14 Feb 2018 22:26:32 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 14 Feb 2018 22:26:32 GMT
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
	-	`sha256:4f6185ff0ddb08af7599bf3084707d8b3b0f3255b34a294a702e7a0182681555`  
		Last Modified: Wed, 14 Feb 2018 22:28:37 GMT  
		Size: 8.9 MB (8938585 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd1a069ac21f80125b9456bac783a1826b931bb938f977d42496365a12f8af6d`  
		Last Modified: Wed, 14 Feb 2018 22:28:35 GMT  
		Size: 184.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `telegraf:1.4-alpine`

```console
$ docker pull telegraf@sha256:c3eadb613f7c7f807ca2948dcec8339975b126004964a44352629a795b535f63
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `telegraf:1.4-alpine` - linux; amd64

```console
$ docker pull telegraf@sha256:a5afe3c1ee4b5532b6b33fd5a0346a82df314e3df5b8243fc1ad6d76283e269d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.7 MB (13727064 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c420ebd68d8531307a4d33bdb0da708ed42b1a76a148c3b3c5893c1c6e7edd8f`
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
# Wed, 10 Jan 2018 03:04:44 GMT
ENV TELEGRAF_VERSION=1.4.5
# Wed, 14 Feb 2018 22:26:31 GMT
RUN set -ex &&     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf-${TELEGRAF_VERSION}-static_linux_amd64.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf-${TELEGRAF_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify telegraf-${TELEGRAF_VERSION}-static_linux_amd64.tar.gz.asc telegraf-${TELEGRAF_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src /etc/telegraf &&     tar -C /usr/src -xzf telegraf-${TELEGRAF_VERSION}-static_linux_amd64.tar.gz &&     mv /usr/src/telegraf*/telegraf.conf /etc/telegraf/ &&     chmod +x /usr/src/telegraf*/* &&     cp -a /usr/src/telegraf*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Wed, 14 Feb 2018 22:26:31 GMT
EXPOSE 8092/udp 8094/tcp 8125/udp
# Wed, 14 Feb 2018 22:26:31 GMT
COPY file:43e6828e001b57ab465cff8dfd3d30830289afe7ca5944b61641956bfe38cd1c in /entrypoint.sh 
# Wed, 14 Feb 2018 22:26:32 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 14 Feb 2018 22:26:32 GMT
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
	-	`sha256:4f6185ff0ddb08af7599bf3084707d8b3b0f3255b34a294a702e7a0182681555`  
		Last Modified: Wed, 14 Feb 2018 22:28:37 GMT  
		Size: 8.9 MB (8938585 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd1a069ac21f80125b9456bac783a1826b931bb938f977d42496365a12f8af6d`  
		Last Modified: Wed, 14 Feb 2018 22:28:35 GMT  
		Size: 184.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `telegraf:1.5`

```console
$ docker pull telegraf@sha256:384c1c802c59825eafe67a2ae46fdcd7d21a9d858c21e2c6bb43619573a5cded
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `telegraf:1.5` - linux; amd64

```console
$ docker pull telegraf@sha256:4757fdcc324ce8306233b75972e534d671b08113ad9596e5eb708eee07a3b34e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **85.5 MB (85508135 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2dec598100ec48b701a13588a211d3c60d084ac977cafbd2adbdc54306efb7e8`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Sat, 28 Apr 2018 07:08:53 GMT
ADD file:9572fdb59dfbb9b032f3331bbc2a08b31e0aef5fbde44c8f2008d22bf5290cf2 in / 
# Sat, 28 Apr 2018 07:08:53 GMT
CMD ["bash"]
# Fri, 04 May 2018 17:41:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 04 May 2018 17:41:17 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 05 May 2018 07:52:28 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends iputils-ping snmp procps &&     rm -rf /var/lib/apt/lists/*
# Sat, 05 May 2018 07:52:31 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Sat, 05 May 2018 07:52:31 GMT
ENV TELEGRAF_VERSION=1.5.3
# Sat, 05 May 2018 07:52:33 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     gpg --batch --verify telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     dpkg -i telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     rm -f telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb*
# Sat, 05 May 2018 07:52:33 GMT
EXPOSE 8092/udp 8094/tcp 8125/udp
# Sat, 05 May 2018 07:52:34 GMT
COPY file:7211de01f296351833389a1a1879d450e2cb727d7e2910d5807937f99983edf7 in /entrypoint.sh 
# Sat, 05 May 2018 07:52:34 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Sat, 05 May 2018 07:52:34 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:cc1a78bfd46becbfc3abb8a74d9a70a0e0dc7a5809bbd12e814f9382db003707`  
		Last Modified: Sat, 28 Apr 2018 09:27:54 GMT  
		Size: 45.3 MB (45318159 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6861473222a6f5fb6abe08f0cdebf56b5f42758b0a7430bbbf47a3d365198e5e`  
		Last Modified: Fri, 04 May 2018 18:20:41 GMT  
		Size: 10.8 MB (10773612 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e0b9c3b5ae080d11df6df788ce96a45b684d7b050fd017c06b4ea5a40f58545`  
		Last Modified: Fri, 04 May 2018 18:20:39 GMT  
		Size: 4.3 MB (4335883 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd32666cd9df7a8e357ebd94affe0921d53fa404c6390e740f9e711f84aa6ac2`  
		Last Modified: Sat, 05 May 2018 07:53:22 GMT  
		Size: 15.6 MB (15585926 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6051dfec002a798ec9f9c442df8bc4793d38e6f772149d41462c538a42753fe8`  
		Last Modified: Sat, 05 May 2018 07:53:19 GMT  
		Size: 2.9 KB (2887 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d1d4e2119acba530990a5a75c5f0b19fe7b285d8d3e9a01df075b24e7d17a22`  
		Last Modified: Sat, 05 May 2018 07:53:21 GMT  
		Size: 9.5 MB (9491483 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f7ddfdea37b99b562f00cf0c35cc8858c6b15f32e68babfea3be069ce8aacb2`  
		Last Modified: Sat, 05 May 2018 07:53:19 GMT  
		Size: 185.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `telegraf:1.5` - linux; arm variant v7

```console
$ docker pull telegraf@sha256:b61bad080ce27783f7c75e44740eba05f18ffec51bfa396f1667d5a120e1b350
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **78.9 MB (78856981 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3215d68cabfa27e9a934f38af2ea1c484aa3a254e9d83e3ff7b9778d91434571`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Sat, 28 Apr 2018 12:04:18 GMT
ADD file:c7fba27b02c4bda63faef7eb30156a55feb4c0e9ecd529a24dd8d62942c2f83c in / 
# Sat, 28 Apr 2018 12:04:19 GMT
CMD ["bash"]
# Sat, 05 May 2018 12:13:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 05 May 2018 12:13:58 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 05 May 2018 15:19:16 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends iputils-ping snmp procps &&     rm -rf /var/lib/apt/lists/*
# Sat, 05 May 2018 15:19:21 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Sat, 05 May 2018 15:19:29 GMT
ENV TELEGRAF_VERSION=1.5.3
# Sat, 05 May 2018 15:19:33 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     gpg --batch --verify telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     dpkg -i telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     rm -f telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb*
# Sat, 05 May 2018 15:19:33 GMT
EXPOSE 8092/udp 8094/tcp 8125/udp
# Sat, 05 May 2018 15:19:33 GMT
COPY file:7211de01f296351833389a1a1879d450e2cb727d7e2910d5807937f99983edf7 in /entrypoint.sh 
# Sat, 05 May 2018 15:19:33 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Sat, 05 May 2018 15:19:34 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:5483105d09166836731e940c850827dd1a4fe16b04d1921eea4d8da7c98e99bc`  
		Last Modified: Sat, 28 Apr 2018 12:15:18 GMT  
		Size: 42.1 MB (42063737 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ed57f83cc7c78757972312a1b5a30524f861523c5390d062845f18c696f48ea`  
		Last Modified: Sat, 05 May 2018 12:35:37 GMT  
		Size: 9.5 MB (9472475 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:859203aede279201e8caf07cf2963456c56bac72a64071079dc9db6fb65ed1a2`  
		Last Modified: Sat, 05 May 2018 12:35:34 GMT  
		Size: 3.9 MB (3912835 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de7b099a6fc941009db2e46d28cbb77daeec1bfb6fa0f8cec25c6c6f412189a9`  
		Last Modified: Sat, 05 May 2018 15:20:44 GMT  
		Size: 14.5 MB (14471793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02449fdbdc270c97857ad8795cfb81fe59e5f3128309f551c3490e2f277d57c8`  
		Last Modified: Sat, 05 May 2018 15:20:39 GMT  
		Size: 2.9 KB (2921 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2987b5553fa14b5102a498d483495e1dc17d620b7445fa39de51efe9226d6fc`  
		Last Modified: Sat, 05 May 2018 15:20:42 GMT  
		Size: 8.9 MB (8933035 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:233f92fa3720c35b19b47931a504c86a72d6446e6c1e05439c38f2439d32395a`  
		Last Modified: Sat, 05 May 2018 15:20:39 GMT  
		Size: 185.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `telegraf:1.5` - linux; arm64 variant v8

```console
$ docker pull telegraf@sha256:c71895c7463be58cb7f359bc837c01ba6cb854906225d4142fe305659abf5f0d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **80.8 MB (80798022 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:999d3d51e696d1ba8b373269f0b851b961a300d6d5eae23401a5d44e6efca920`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Mon, 30 Apr 2018 23:31:58 GMT
ADD file:245a8cfe59ea071e4e215a722e0d4b4b14fa95dd6ffd03739fe048433cfaf523 in / 
# Mon, 30 Apr 2018 23:32:00 GMT
CMD ["bash"]
# Sat, 05 May 2018 09:38:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 05 May 2018 09:39:04 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 05 May 2018 21:06:40 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends iputils-ping snmp procps &&     rm -rf /var/lib/apt/lists/*
# Sat, 05 May 2018 21:06:46 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Sat, 05 May 2018 21:06:47 GMT
ENV TELEGRAF_VERSION=1.5.3
# Sat, 05 May 2018 21:06:53 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     gpg --batch --verify telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     dpkg -i telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     rm -f telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb*
# Sat, 05 May 2018 21:06:54 GMT
EXPOSE 8092/udp 8094/tcp 8125/udp
# Sat, 05 May 2018 21:06:55 GMT
COPY file:7211de01f296351833389a1a1879d450e2cb727d7e2910d5807937f99983edf7 in /entrypoint.sh 
# Sat, 05 May 2018 21:06:56 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Sat, 05 May 2018 21:06:57 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:142bf25d8d1b3ebc9dfbedd586e70a011594690acf48b2695bfce01e3a2cf0d5`  
		Last Modified: Mon, 30 Apr 2018 23:52:13 GMT  
		Size: 43.1 MB (43109349 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1dd3e9bbb1f760ff8cab41817920c5822422ba1eaab36a233c8f43348791e03d`  
		Last Modified: Sat, 05 May 2018 10:29:53 GMT  
		Size: 9.7 MB (9722189 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5534647756e8399143ad6e1639b6433b9a3364809ac4520f62199ea46e638a2e`  
		Last Modified: Sat, 05 May 2018 10:29:50 GMT  
		Size: 4.1 MB (4088086 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5dd18d5ca5cf825a9c61abf780699ccc59eb91c79ed43c71c108e0e688af7b31`  
		Last Modified: Sat, 05 May 2018 21:08:06 GMT  
		Size: 15.2 MB (15164311 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a046b58699fb617e0b0e41d6dfdc9dd4863f2ad809f53c8dccce0e8c5b4830bb`  
		Last Modified: Sat, 05 May 2018 21:08:01 GMT  
		Size: 2.9 KB (2886 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:924dcc96e367e675db2070757ac5e9392a85512bebe7c51b589895f13b712a20`  
		Last Modified: Sat, 05 May 2018 21:08:03 GMT  
		Size: 8.7 MB (8711016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed505a4115f6ded3edcc86558f8bb26637c7c6e01bd3945e70ea0213ad95ab76`  
		Last Modified: Sat, 05 May 2018 21:08:00 GMT  
		Size: 185.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `telegraf:1.5.3`

```console
$ docker pull telegraf@sha256:384c1c802c59825eafe67a2ae46fdcd7d21a9d858c21e2c6bb43619573a5cded
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `telegraf:1.5.3` - linux; amd64

```console
$ docker pull telegraf@sha256:4757fdcc324ce8306233b75972e534d671b08113ad9596e5eb708eee07a3b34e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **85.5 MB (85508135 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2dec598100ec48b701a13588a211d3c60d084ac977cafbd2adbdc54306efb7e8`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Sat, 28 Apr 2018 07:08:53 GMT
ADD file:9572fdb59dfbb9b032f3331bbc2a08b31e0aef5fbde44c8f2008d22bf5290cf2 in / 
# Sat, 28 Apr 2018 07:08:53 GMT
CMD ["bash"]
# Fri, 04 May 2018 17:41:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 04 May 2018 17:41:17 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 05 May 2018 07:52:28 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends iputils-ping snmp procps &&     rm -rf /var/lib/apt/lists/*
# Sat, 05 May 2018 07:52:31 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Sat, 05 May 2018 07:52:31 GMT
ENV TELEGRAF_VERSION=1.5.3
# Sat, 05 May 2018 07:52:33 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     gpg --batch --verify telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     dpkg -i telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     rm -f telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb*
# Sat, 05 May 2018 07:52:33 GMT
EXPOSE 8092/udp 8094/tcp 8125/udp
# Sat, 05 May 2018 07:52:34 GMT
COPY file:7211de01f296351833389a1a1879d450e2cb727d7e2910d5807937f99983edf7 in /entrypoint.sh 
# Sat, 05 May 2018 07:52:34 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Sat, 05 May 2018 07:52:34 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:cc1a78bfd46becbfc3abb8a74d9a70a0e0dc7a5809bbd12e814f9382db003707`  
		Last Modified: Sat, 28 Apr 2018 09:27:54 GMT  
		Size: 45.3 MB (45318159 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6861473222a6f5fb6abe08f0cdebf56b5f42758b0a7430bbbf47a3d365198e5e`  
		Last Modified: Fri, 04 May 2018 18:20:41 GMT  
		Size: 10.8 MB (10773612 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e0b9c3b5ae080d11df6df788ce96a45b684d7b050fd017c06b4ea5a40f58545`  
		Last Modified: Fri, 04 May 2018 18:20:39 GMT  
		Size: 4.3 MB (4335883 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd32666cd9df7a8e357ebd94affe0921d53fa404c6390e740f9e711f84aa6ac2`  
		Last Modified: Sat, 05 May 2018 07:53:22 GMT  
		Size: 15.6 MB (15585926 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6051dfec002a798ec9f9c442df8bc4793d38e6f772149d41462c538a42753fe8`  
		Last Modified: Sat, 05 May 2018 07:53:19 GMT  
		Size: 2.9 KB (2887 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d1d4e2119acba530990a5a75c5f0b19fe7b285d8d3e9a01df075b24e7d17a22`  
		Last Modified: Sat, 05 May 2018 07:53:21 GMT  
		Size: 9.5 MB (9491483 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f7ddfdea37b99b562f00cf0c35cc8858c6b15f32e68babfea3be069ce8aacb2`  
		Last Modified: Sat, 05 May 2018 07:53:19 GMT  
		Size: 185.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `telegraf:1.5.3` - linux; arm variant v7

```console
$ docker pull telegraf@sha256:b61bad080ce27783f7c75e44740eba05f18ffec51bfa396f1667d5a120e1b350
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **78.9 MB (78856981 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3215d68cabfa27e9a934f38af2ea1c484aa3a254e9d83e3ff7b9778d91434571`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Sat, 28 Apr 2018 12:04:18 GMT
ADD file:c7fba27b02c4bda63faef7eb30156a55feb4c0e9ecd529a24dd8d62942c2f83c in / 
# Sat, 28 Apr 2018 12:04:19 GMT
CMD ["bash"]
# Sat, 05 May 2018 12:13:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 05 May 2018 12:13:58 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 05 May 2018 15:19:16 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends iputils-ping snmp procps &&     rm -rf /var/lib/apt/lists/*
# Sat, 05 May 2018 15:19:21 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Sat, 05 May 2018 15:19:29 GMT
ENV TELEGRAF_VERSION=1.5.3
# Sat, 05 May 2018 15:19:33 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     gpg --batch --verify telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     dpkg -i telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     rm -f telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb*
# Sat, 05 May 2018 15:19:33 GMT
EXPOSE 8092/udp 8094/tcp 8125/udp
# Sat, 05 May 2018 15:19:33 GMT
COPY file:7211de01f296351833389a1a1879d450e2cb727d7e2910d5807937f99983edf7 in /entrypoint.sh 
# Sat, 05 May 2018 15:19:33 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Sat, 05 May 2018 15:19:34 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:5483105d09166836731e940c850827dd1a4fe16b04d1921eea4d8da7c98e99bc`  
		Last Modified: Sat, 28 Apr 2018 12:15:18 GMT  
		Size: 42.1 MB (42063737 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ed57f83cc7c78757972312a1b5a30524f861523c5390d062845f18c696f48ea`  
		Last Modified: Sat, 05 May 2018 12:35:37 GMT  
		Size: 9.5 MB (9472475 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:859203aede279201e8caf07cf2963456c56bac72a64071079dc9db6fb65ed1a2`  
		Last Modified: Sat, 05 May 2018 12:35:34 GMT  
		Size: 3.9 MB (3912835 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de7b099a6fc941009db2e46d28cbb77daeec1bfb6fa0f8cec25c6c6f412189a9`  
		Last Modified: Sat, 05 May 2018 15:20:44 GMT  
		Size: 14.5 MB (14471793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02449fdbdc270c97857ad8795cfb81fe59e5f3128309f551c3490e2f277d57c8`  
		Last Modified: Sat, 05 May 2018 15:20:39 GMT  
		Size: 2.9 KB (2921 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2987b5553fa14b5102a498d483495e1dc17d620b7445fa39de51efe9226d6fc`  
		Last Modified: Sat, 05 May 2018 15:20:42 GMT  
		Size: 8.9 MB (8933035 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:233f92fa3720c35b19b47931a504c86a72d6446e6c1e05439c38f2439d32395a`  
		Last Modified: Sat, 05 May 2018 15:20:39 GMT  
		Size: 185.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `telegraf:1.5.3` - linux; arm64 variant v8

```console
$ docker pull telegraf@sha256:c71895c7463be58cb7f359bc837c01ba6cb854906225d4142fe305659abf5f0d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **80.8 MB (80798022 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:999d3d51e696d1ba8b373269f0b851b961a300d6d5eae23401a5d44e6efca920`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Mon, 30 Apr 2018 23:31:58 GMT
ADD file:245a8cfe59ea071e4e215a722e0d4b4b14fa95dd6ffd03739fe048433cfaf523 in / 
# Mon, 30 Apr 2018 23:32:00 GMT
CMD ["bash"]
# Sat, 05 May 2018 09:38:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 05 May 2018 09:39:04 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 05 May 2018 21:06:40 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends iputils-ping snmp procps &&     rm -rf /var/lib/apt/lists/*
# Sat, 05 May 2018 21:06:46 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Sat, 05 May 2018 21:06:47 GMT
ENV TELEGRAF_VERSION=1.5.3
# Sat, 05 May 2018 21:06:53 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     gpg --batch --verify telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     dpkg -i telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     rm -f telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb*
# Sat, 05 May 2018 21:06:54 GMT
EXPOSE 8092/udp 8094/tcp 8125/udp
# Sat, 05 May 2018 21:06:55 GMT
COPY file:7211de01f296351833389a1a1879d450e2cb727d7e2910d5807937f99983edf7 in /entrypoint.sh 
# Sat, 05 May 2018 21:06:56 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Sat, 05 May 2018 21:06:57 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:142bf25d8d1b3ebc9dfbedd586e70a011594690acf48b2695bfce01e3a2cf0d5`  
		Last Modified: Mon, 30 Apr 2018 23:52:13 GMT  
		Size: 43.1 MB (43109349 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1dd3e9bbb1f760ff8cab41817920c5822422ba1eaab36a233c8f43348791e03d`  
		Last Modified: Sat, 05 May 2018 10:29:53 GMT  
		Size: 9.7 MB (9722189 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5534647756e8399143ad6e1639b6433b9a3364809ac4520f62199ea46e638a2e`  
		Last Modified: Sat, 05 May 2018 10:29:50 GMT  
		Size: 4.1 MB (4088086 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5dd18d5ca5cf825a9c61abf780699ccc59eb91c79ed43c71c108e0e688af7b31`  
		Last Modified: Sat, 05 May 2018 21:08:06 GMT  
		Size: 15.2 MB (15164311 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a046b58699fb617e0b0e41d6dfdc9dd4863f2ad809f53c8dccce0e8c5b4830bb`  
		Last Modified: Sat, 05 May 2018 21:08:01 GMT  
		Size: 2.9 KB (2886 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:924dcc96e367e675db2070757ac5e9392a85512bebe7c51b589895f13b712a20`  
		Last Modified: Sat, 05 May 2018 21:08:03 GMT  
		Size: 8.7 MB (8711016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed505a4115f6ded3edcc86558f8bb26637c7c6e01bd3945e70ea0213ad95ab76`  
		Last Modified: Sat, 05 May 2018 21:08:00 GMT  
		Size: 185.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `telegraf:1.5.3-alpine`

```console
$ docker pull telegraf@sha256:a70ce3dfbbfb1063ac8d7bedad21c4265eeaf46580f8c9f11477b7a9489cf298
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `telegraf:1.5.3-alpine` - linux; amd64

```console
$ docker pull telegraf@sha256:9eb97d28411ecc5c6b7e63a4852c02ef23fded10c22e8e412c7555a5965b5ae2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.2 MB (14247488 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fde82a146818b02adb20355c8f355f74e3cfe1033f888d5408261b53a7573aac`
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
# Fri, 16 Mar 2018 13:47:51 GMT
ENV TELEGRAF_VERSION=1.5.3
# Fri, 16 Mar 2018 13:47:59 GMT
RUN set -ex &&     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf-${TELEGRAF_VERSION}-static_linux_amd64.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf-${TELEGRAF_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify telegraf-${TELEGRAF_VERSION}-static_linux_amd64.tar.gz.asc telegraf-${TELEGRAF_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src /etc/telegraf &&     tar -C /usr/src -xzf telegraf-${TELEGRAF_VERSION}-static_linux_amd64.tar.gz &&     mv /usr/src/telegraf*/telegraf.conf /etc/telegraf/ &&     chmod +x /usr/src/telegraf*/* &&     cp -a /usr/src/telegraf*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Fri, 16 Mar 2018 13:47:59 GMT
EXPOSE 8092/udp 8094/tcp 8125/udp
# Fri, 16 Mar 2018 13:47:59 GMT
COPY file:43e6828e001b57ab465cff8dfd3d30830289afe7ca5944b61641956bfe38cd1c in /entrypoint.sh 
# Fri, 16 Mar 2018 13:48:00 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 16 Mar 2018 13:48:00 GMT
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
	-	`sha256:870fc8f7a153c8bc5615b84bef0f932e297bcdf06a727964f0afaf2ceb5eee1c`  
		Last Modified: Fri, 16 Mar 2018 13:49:23 GMT  
		Size: 9.5 MB (9459011 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07c9fa177bd9af1f9e86481bea47031d837b894c711cdef8569c8e9d796e4f36`  
		Last Modified: Fri, 16 Mar 2018 13:49:21 GMT  
		Size: 182.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `telegraf:1.5-alpine`

```console
$ docker pull telegraf@sha256:a70ce3dfbbfb1063ac8d7bedad21c4265eeaf46580f8c9f11477b7a9489cf298
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `telegraf:1.5-alpine` - linux; amd64

```console
$ docker pull telegraf@sha256:9eb97d28411ecc5c6b7e63a4852c02ef23fded10c22e8e412c7555a5965b5ae2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.2 MB (14247488 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fde82a146818b02adb20355c8f355f74e3cfe1033f888d5408261b53a7573aac`
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
# Fri, 16 Mar 2018 13:47:51 GMT
ENV TELEGRAF_VERSION=1.5.3
# Fri, 16 Mar 2018 13:47:59 GMT
RUN set -ex &&     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf-${TELEGRAF_VERSION}-static_linux_amd64.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf-${TELEGRAF_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify telegraf-${TELEGRAF_VERSION}-static_linux_amd64.tar.gz.asc telegraf-${TELEGRAF_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src /etc/telegraf &&     tar -C /usr/src -xzf telegraf-${TELEGRAF_VERSION}-static_linux_amd64.tar.gz &&     mv /usr/src/telegraf*/telegraf.conf /etc/telegraf/ &&     chmod +x /usr/src/telegraf*/* &&     cp -a /usr/src/telegraf*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Fri, 16 Mar 2018 13:47:59 GMT
EXPOSE 8092/udp 8094/tcp 8125/udp
# Fri, 16 Mar 2018 13:47:59 GMT
COPY file:43e6828e001b57ab465cff8dfd3d30830289afe7ca5944b61641956bfe38cd1c in /entrypoint.sh 
# Fri, 16 Mar 2018 13:48:00 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 16 Mar 2018 13:48:00 GMT
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
	-	`sha256:870fc8f7a153c8bc5615b84bef0f932e297bcdf06a727964f0afaf2ceb5eee1c`  
		Last Modified: Fri, 16 Mar 2018 13:49:23 GMT  
		Size: 9.5 MB (9459011 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07c9fa177bd9af1f9e86481bea47031d837b894c711cdef8569c8e9d796e4f36`  
		Last Modified: Fri, 16 Mar 2018 13:49:21 GMT  
		Size: 182.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `telegraf:1.6`

```console
$ docker pull telegraf@sha256:9ebc7d8a9370e1294f70b6ea8c83e2da115f8136ed9f78c8d68c1ff7ab417ee0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `telegraf:1.6` - linux; amd64

```console
$ docker pull telegraf@sha256:af97d7040b83e30b132c77a8ef21c786fe787208c39a75bdfe902d00837eaeaf
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **85.9 MB (85895012 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8567d929c408928e81fcead69e4e836b1f1c0f476dd3a349ab4abd1e7f4ae082`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Sat, 28 Apr 2018 07:08:53 GMT
ADD file:9572fdb59dfbb9b032f3331bbc2a08b31e0aef5fbde44c8f2008d22bf5290cf2 in / 
# Sat, 28 Apr 2018 07:08:53 GMT
CMD ["bash"]
# Fri, 04 May 2018 17:41:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 04 May 2018 17:41:17 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 05 May 2018 07:52:28 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends iputils-ping snmp procps &&     rm -rf /var/lib/apt/lists/*
# Sat, 05 May 2018 07:52:31 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Sat, 05 May 2018 07:52:42 GMT
ENV TELEGRAF_VERSION=1.6.1
# Sat, 05 May 2018 07:52:47 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     gpg --batch --verify telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     dpkg -i telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     rm -f telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb*
# Sat, 05 May 2018 07:52:47 GMT
EXPOSE 8092/udp 8094/tcp 8125/udp
# Sat, 05 May 2018 07:52:48 GMT
COPY file:7211de01f296351833389a1a1879d450e2cb727d7e2910d5807937f99983edf7 in /entrypoint.sh 
# Sat, 05 May 2018 07:52:48 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Sat, 05 May 2018 07:52:48 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:cc1a78bfd46becbfc3abb8a74d9a70a0e0dc7a5809bbd12e814f9382db003707`  
		Last Modified: Sat, 28 Apr 2018 09:27:54 GMT  
		Size: 45.3 MB (45318159 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6861473222a6f5fb6abe08f0cdebf56b5f42758b0a7430bbbf47a3d365198e5e`  
		Last Modified: Fri, 04 May 2018 18:20:41 GMT  
		Size: 10.8 MB (10773612 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e0b9c3b5ae080d11df6df788ce96a45b684d7b050fd017c06b4ea5a40f58545`  
		Last Modified: Fri, 04 May 2018 18:20:39 GMT  
		Size: 4.3 MB (4335883 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd32666cd9df7a8e357ebd94affe0921d53fa404c6390e740f9e711f84aa6ac2`  
		Last Modified: Sat, 05 May 2018 07:53:22 GMT  
		Size: 15.6 MB (15585926 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6051dfec002a798ec9f9c442df8bc4793d38e6f772149d41462c538a42753fe8`  
		Last Modified: Sat, 05 May 2018 07:53:19 GMT  
		Size: 2.9 KB (2887 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b4229bfb119043e856c49ed943e5031bb7c8d2eda0a36a04528a1d160f7a1eb`  
		Last Modified: Sat, 05 May 2018 07:53:37 GMT  
		Size: 9.9 MB (9878361 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd926017739004bd76288c9dbab77f4bb03907d8461843f032a7f3157192cf8e`  
		Last Modified: Sat, 05 May 2018 07:53:35 GMT  
		Size: 184.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `telegraf:1.6` - linux; arm variant v7

```console
$ docker pull telegraf@sha256:9409e168f76e7af937709e24a17daddf667ef2cf170a6e75a7c2c608c129f1d0
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **79.2 MB (79222848 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0254e1bb447f73e93f87367d48aa3b058394504dd41881eab7ba8fb04097cceb`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Sat, 28 Apr 2018 12:04:18 GMT
ADD file:c7fba27b02c4bda63faef7eb30156a55feb4c0e9ecd529a24dd8d62942c2f83c in / 
# Sat, 28 Apr 2018 12:04:19 GMT
CMD ["bash"]
# Sat, 05 May 2018 12:13:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 05 May 2018 12:13:58 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 05 May 2018 15:19:16 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends iputils-ping snmp procps &&     rm -rf /var/lib/apt/lists/*
# Sat, 05 May 2018 15:19:21 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Sat, 05 May 2018 15:19:48 GMT
ENV TELEGRAF_VERSION=1.6.1
# Sat, 05 May 2018 15:19:51 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     gpg --batch --verify telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     dpkg -i telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     rm -f telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb*
# Sat, 05 May 2018 15:19:51 GMT
EXPOSE 8092/udp 8094/tcp 8125/udp
# Sat, 05 May 2018 15:19:52 GMT
COPY file:7211de01f296351833389a1a1879d450e2cb727d7e2910d5807937f99983edf7 in /entrypoint.sh 
# Sat, 05 May 2018 15:19:52 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Sat, 05 May 2018 15:19:52 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:5483105d09166836731e940c850827dd1a4fe16b04d1921eea4d8da7c98e99bc`  
		Last Modified: Sat, 28 Apr 2018 12:15:18 GMT  
		Size: 42.1 MB (42063737 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ed57f83cc7c78757972312a1b5a30524f861523c5390d062845f18c696f48ea`  
		Last Modified: Sat, 05 May 2018 12:35:37 GMT  
		Size: 9.5 MB (9472475 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:859203aede279201e8caf07cf2963456c56bac72a64071079dc9db6fb65ed1a2`  
		Last Modified: Sat, 05 May 2018 12:35:34 GMT  
		Size: 3.9 MB (3912835 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de7b099a6fc941009db2e46d28cbb77daeec1bfb6fa0f8cec25c6c6f412189a9`  
		Last Modified: Sat, 05 May 2018 15:20:44 GMT  
		Size: 14.5 MB (14471793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02449fdbdc270c97857ad8795cfb81fe59e5f3128309f551c3490e2f277d57c8`  
		Last Modified: Sat, 05 May 2018 15:20:39 GMT  
		Size: 2.9 KB (2921 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94c6271c10eb8ccc7a63265a05e2e39903ad36256528c803f60fd6e9b34bc171`  
		Last Modified: Sat, 05 May 2018 15:21:09 GMT  
		Size: 9.3 MB (9298901 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a8f7199b969825a6f4e2f1e0979257750ebae807346de20ac283d919fb5efb0`  
		Last Modified: Sat, 05 May 2018 15:21:05 GMT  
		Size: 186.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `telegraf:1.6` - linux; arm64 variant v8

```console
$ docker pull telegraf@sha256:99876e48af1ffb43d8c0e85131827d980ea95f146fc105dec554ccb52dac8ede
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **81.2 MB (81161628 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:854ed69a4d845f660ddf8d07782d3132f906d0c95f408b8547862085357f778d`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Mon, 30 Apr 2018 23:31:58 GMT
ADD file:245a8cfe59ea071e4e215a722e0d4b4b14fa95dd6ffd03739fe048433cfaf523 in / 
# Mon, 30 Apr 2018 23:32:00 GMT
CMD ["bash"]
# Sat, 05 May 2018 09:38:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 05 May 2018 09:39:04 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 05 May 2018 21:06:40 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends iputils-ping snmp procps &&     rm -rf /var/lib/apt/lists/*
# Sat, 05 May 2018 21:06:46 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Sat, 05 May 2018 21:07:12 GMT
ENV TELEGRAF_VERSION=1.6.1
# Sat, 05 May 2018 21:07:19 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     gpg --batch --verify telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     dpkg -i telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     rm -f telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb*
# Sat, 05 May 2018 21:07:19 GMT
EXPOSE 8092/udp 8094/tcp 8125/udp
# Sat, 05 May 2018 21:07:21 GMT
COPY file:7211de01f296351833389a1a1879d450e2cb727d7e2910d5807937f99983edf7 in /entrypoint.sh 
# Sat, 05 May 2018 21:07:22 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Sat, 05 May 2018 21:07:23 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:142bf25d8d1b3ebc9dfbedd586e70a011594690acf48b2695bfce01e3a2cf0d5`  
		Last Modified: Mon, 30 Apr 2018 23:52:13 GMT  
		Size: 43.1 MB (43109349 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1dd3e9bbb1f760ff8cab41817920c5822422ba1eaab36a233c8f43348791e03d`  
		Last Modified: Sat, 05 May 2018 10:29:53 GMT  
		Size: 9.7 MB (9722189 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5534647756e8399143ad6e1639b6433b9a3364809ac4520f62199ea46e638a2e`  
		Last Modified: Sat, 05 May 2018 10:29:50 GMT  
		Size: 4.1 MB (4088086 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5dd18d5ca5cf825a9c61abf780699ccc59eb91c79ed43c71c108e0e688af7b31`  
		Last Modified: Sat, 05 May 2018 21:08:06 GMT  
		Size: 15.2 MB (15164311 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a046b58699fb617e0b0e41d6dfdc9dd4863f2ad809f53c8dccce0e8c5b4830bb`  
		Last Modified: Sat, 05 May 2018 21:08:01 GMT  
		Size: 2.9 KB (2886 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0faf1c1b90a1799acdeea1e9c03db973b1f64870606172cf947f047aa8f4fe07`  
		Last Modified: Sat, 05 May 2018 21:08:26 GMT  
		Size: 9.1 MB (9074624 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cab22c388b87b343f84415357d57d60f5e644cb9bcbb623e190959b584c13f79`  
		Last Modified: Sat, 05 May 2018 21:08:22 GMT  
		Size: 183.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `telegraf:1.6.1`

```console
$ docker pull telegraf@sha256:9ebc7d8a9370e1294f70b6ea8c83e2da115f8136ed9f78c8d68c1ff7ab417ee0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `telegraf:1.6.1` - linux; amd64

```console
$ docker pull telegraf@sha256:af97d7040b83e30b132c77a8ef21c786fe787208c39a75bdfe902d00837eaeaf
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **85.9 MB (85895012 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8567d929c408928e81fcead69e4e836b1f1c0f476dd3a349ab4abd1e7f4ae082`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Sat, 28 Apr 2018 07:08:53 GMT
ADD file:9572fdb59dfbb9b032f3331bbc2a08b31e0aef5fbde44c8f2008d22bf5290cf2 in / 
# Sat, 28 Apr 2018 07:08:53 GMT
CMD ["bash"]
# Fri, 04 May 2018 17:41:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 04 May 2018 17:41:17 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 05 May 2018 07:52:28 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends iputils-ping snmp procps &&     rm -rf /var/lib/apt/lists/*
# Sat, 05 May 2018 07:52:31 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Sat, 05 May 2018 07:52:42 GMT
ENV TELEGRAF_VERSION=1.6.1
# Sat, 05 May 2018 07:52:47 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     gpg --batch --verify telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     dpkg -i telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     rm -f telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb*
# Sat, 05 May 2018 07:52:47 GMT
EXPOSE 8092/udp 8094/tcp 8125/udp
# Sat, 05 May 2018 07:52:48 GMT
COPY file:7211de01f296351833389a1a1879d450e2cb727d7e2910d5807937f99983edf7 in /entrypoint.sh 
# Sat, 05 May 2018 07:52:48 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Sat, 05 May 2018 07:52:48 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:cc1a78bfd46becbfc3abb8a74d9a70a0e0dc7a5809bbd12e814f9382db003707`  
		Last Modified: Sat, 28 Apr 2018 09:27:54 GMT  
		Size: 45.3 MB (45318159 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6861473222a6f5fb6abe08f0cdebf56b5f42758b0a7430bbbf47a3d365198e5e`  
		Last Modified: Fri, 04 May 2018 18:20:41 GMT  
		Size: 10.8 MB (10773612 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e0b9c3b5ae080d11df6df788ce96a45b684d7b050fd017c06b4ea5a40f58545`  
		Last Modified: Fri, 04 May 2018 18:20:39 GMT  
		Size: 4.3 MB (4335883 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd32666cd9df7a8e357ebd94affe0921d53fa404c6390e740f9e711f84aa6ac2`  
		Last Modified: Sat, 05 May 2018 07:53:22 GMT  
		Size: 15.6 MB (15585926 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6051dfec002a798ec9f9c442df8bc4793d38e6f772149d41462c538a42753fe8`  
		Last Modified: Sat, 05 May 2018 07:53:19 GMT  
		Size: 2.9 KB (2887 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b4229bfb119043e856c49ed943e5031bb7c8d2eda0a36a04528a1d160f7a1eb`  
		Last Modified: Sat, 05 May 2018 07:53:37 GMT  
		Size: 9.9 MB (9878361 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd926017739004bd76288c9dbab77f4bb03907d8461843f032a7f3157192cf8e`  
		Last Modified: Sat, 05 May 2018 07:53:35 GMT  
		Size: 184.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `telegraf:1.6.1` - linux; arm variant v7

```console
$ docker pull telegraf@sha256:9409e168f76e7af937709e24a17daddf667ef2cf170a6e75a7c2c608c129f1d0
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **79.2 MB (79222848 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0254e1bb447f73e93f87367d48aa3b058394504dd41881eab7ba8fb04097cceb`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Sat, 28 Apr 2018 12:04:18 GMT
ADD file:c7fba27b02c4bda63faef7eb30156a55feb4c0e9ecd529a24dd8d62942c2f83c in / 
# Sat, 28 Apr 2018 12:04:19 GMT
CMD ["bash"]
# Sat, 05 May 2018 12:13:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 05 May 2018 12:13:58 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 05 May 2018 15:19:16 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends iputils-ping snmp procps &&     rm -rf /var/lib/apt/lists/*
# Sat, 05 May 2018 15:19:21 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Sat, 05 May 2018 15:19:48 GMT
ENV TELEGRAF_VERSION=1.6.1
# Sat, 05 May 2018 15:19:51 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     gpg --batch --verify telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     dpkg -i telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     rm -f telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb*
# Sat, 05 May 2018 15:19:51 GMT
EXPOSE 8092/udp 8094/tcp 8125/udp
# Sat, 05 May 2018 15:19:52 GMT
COPY file:7211de01f296351833389a1a1879d450e2cb727d7e2910d5807937f99983edf7 in /entrypoint.sh 
# Sat, 05 May 2018 15:19:52 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Sat, 05 May 2018 15:19:52 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:5483105d09166836731e940c850827dd1a4fe16b04d1921eea4d8da7c98e99bc`  
		Last Modified: Sat, 28 Apr 2018 12:15:18 GMT  
		Size: 42.1 MB (42063737 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ed57f83cc7c78757972312a1b5a30524f861523c5390d062845f18c696f48ea`  
		Last Modified: Sat, 05 May 2018 12:35:37 GMT  
		Size: 9.5 MB (9472475 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:859203aede279201e8caf07cf2963456c56bac72a64071079dc9db6fb65ed1a2`  
		Last Modified: Sat, 05 May 2018 12:35:34 GMT  
		Size: 3.9 MB (3912835 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de7b099a6fc941009db2e46d28cbb77daeec1bfb6fa0f8cec25c6c6f412189a9`  
		Last Modified: Sat, 05 May 2018 15:20:44 GMT  
		Size: 14.5 MB (14471793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02449fdbdc270c97857ad8795cfb81fe59e5f3128309f551c3490e2f277d57c8`  
		Last Modified: Sat, 05 May 2018 15:20:39 GMT  
		Size: 2.9 KB (2921 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94c6271c10eb8ccc7a63265a05e2e39903ad36256528c803f60fd6e9b34bc171`  
		Last Modified: Sat, 05 May 2018 15:21:09 GMT  
		Size: 9.3 MB (9298901 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a8f7199b969825a6f4e2f1e0979257750ebae807346de20ac283d919fb5efb0`  
		Last Modified: Sat, 05 May 2018 15:21:05 GMT  
		Size: 186.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `telegraf:1.6.1` - linux; arm64 variant v8

```console
$ docker pull telegraf@sha256:99876e48af1ffb43d8c0e85131827d980ea95f146fc105dec554ccb52dac8ede
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **81.2 MB (81161628 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:854ed69a4d845f660ddf8d07782d3132f906d0c95f408b8547862085357f778d`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Mon, 30 Apr 2018 23:31:58 GMT
ADD file:245a8cfe59ea071e4e215a722e0d4b4b14fa95dd6ffd03739fe048433cfaf523 in / 
# Mon, 30 Apr 2018 23:32:00 GMT
CMD ["bash"]
# Sat, 05 May 2018 09:38:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 05 May 2018 09:39:04 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 05 May 2018 21:06:40 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends iputils-ping snmp procps &&     rm -rf /var/lib/apt/lists/*
# Sat, 05 May 2018 21:06:46 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Sat, 05 May 2018 21:07:12 GMT
ENV TELEGRAF_VERSION=1.6.1
# Sat, 05 May 2018 21:07:19 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     gpg --batch --verify telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     dpkg -i telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     rm -f telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb*
# Sat, 05 May 2018 21:07:19 GMT
EXPOSE 8092/udp 8094/tcp 8125/udp
# Sat, 05 May 2018 21:07:21 GMT
COPY file:7211de01f296351833389a1a1879d450e2cb727d7e2910d5807937f99983edf7 in /entrypoint.sh 
# Sat, 05 May 2018 21:07:22 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Sat, 05 May 2018 21:07:23 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:142bf25d8d1b3ebc9dfbedd586e70a011594690acf48b2695bfce01e3a2cf0d5`  
		Last Modified: Mon, 30 Apr 2018 23:52:13 GMT  
		Size: 43.1 MB (43109349 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1dd3e9bbb1f760ff8cab41817920c5822422ba1eaab36a233c8f43348791e03d`  
		Last Modified: Sat, 05 May 2018 10:29:53 GMT  
		Size: 9.7 MB (9722189 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5534647756e8399143ad6e1639b6433b9a3364809ac4520f62199ea46e638a2e`  
		Last Modified: Sat, 05 May 2018 10:29:50 GMT  
		Size: 4.1 MB (4088086 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5dd18d5ca5cf825a9c61abf780699ccc59eb91c79ed43c71c108e0e688af7b31`  
		Last Modified: Sat, 05 May 2018 21:08:06 GMT  
		Size: 15.2 MB (15164311 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a046b58699fb617e0b0e41d6dfdc9dd4863f2ad809f53c8dccce0e8c5b4830bb`  
		Last Modified: Sat, 05 May 2018 21:08:01 GMT  
		Size: 2.9 KB (2886 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0faf1c1b90a1799acdeea1e9c03db973b1f64870606172cf947f047aa8f4fe07`  
		Last Modified: Sat, 05 May 2018 21:08:26 GMT  
		Size: 9.1 MB (9074624 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cab22c388b87b343f84415357d57d60f5e644cb9bcbb623e190959b584c13f79`  
		Last Modified: Sat, 05 May 2018 21:08:22 GMT  
		Size: 183.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `telegraf:1.6.1-alpine`

```console
$ docker pull telegraf@sha256:2564e0ad810490963d86c670bbb838ef3e8bacaef2c0669131950416f01aa3a0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `telegraf:1.6.1-alpine` - linux; amd64

```console
$ docker pull telegraf@sha256:eb22565f39daf19eb171f4482def71799199b9c50f516bda3cbc4a805c5ed3b6
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.6 MB (14636001 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5c67a69ef8e5fb71a3ab9eecddf997d1879cfa93bfeefe59275838f0cf6500de`
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
# Wed, 25 Apr 2018 00:57:27 GMT
ENV TELEGRAF_VERSION=1.6.1
# Wed, 25 Apr 2018 00:57:53 GMT
RUN set -ex &&     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf-${TELEGRAF_VERSION}-static_linux_amd64.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf-${TELEGRAF_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify telegraf-${TELEGRAF_VERSION}-static_linux_amd64.tar.gz.asc telegraf-${TELEGRAF_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src /etc/telegraf &&     tar -C /usr/src -xzf telegraf-${TELEGRAF_VERSION}-static_linux_amd64.tar.gz &&     mv /usr/src/telegraf*/telegraf.conf /etc/telegraf/ &&     chmod +x /usr/src/telegraf*/* &&     cp -a /usr/src/telegraf*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Wed, 25 Apr 2018 00:57:53 GMT
EXPOSE 8092/udp 8094/tcp 8125/udp
# Wed, 25 Apr 2018 00:57:54 GMT
COPY file:43e6828e001b57ab465cff8dfd3d30830289afe7ca5944b61641956bfe38cd1c in /entrypoint.sh 
# Wed, 25 Apr 2018 00:57:54 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 25 Apr 2018 00:57:54 GMT
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
	-	`sha256:69bf2b05f679b9a2a783570ead4bfdfc558d47a9f31a30bb19b25d195c44c3cc`  
		Last Modified: Wed, 25 Apr 2018 00:59:37 GMT  
		Size: 9.8 MB (9847522 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5c35ae04afa7bb961f3cc92e469151a239729b0e9000312e85b4b130c165303`  
		Last Modified: Wed, 25 Apr 2018 00:59:33 GMT  
		Size: 184.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `telegraf:1.6-alpine`

```console
$ docker pull telegraf@sha256:2564e0ad810490963d86c670bbb838ef3e8bacaef2c0669131950416f01aa3a0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `telegraf:1.6-alpine` - linux; amd64

```console
$ docker pull telegraf@sha256:eb22565f39daf19eb171f4482def71799199b9c50f516bda3cbc4a805c5ed3b6
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.6 MB (14636001 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5c67a69ef8e5fb71a3ab9eecddf997d1879cfa93bfeefe59275838f0cf6500de`
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
# Wed, 25 Apr 2018 00:57:27 GMT
ENV TELEGRAF_VERSION=1.6.1
# Wed, 25 Apr 2018 00:57:53 GMT
RUN set -ex &&     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf-${TELEGRAF_VERSION}-static_linux_amd64.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf-${TELEGRAF_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify telegraf-${TELEGRAF_VERSION}-static_linux_amd64.tar.gz.asc telegraf-${TELEGRAF_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src /etc/telegraf &&     tar -C /usr/src -xzf telegraf-${TELEGRAF_VERSION}-static_linux_amd64.tar.gz &&     mv /usr/src/telegraf*/telegraf.conf /etc/telegraf/ &&     chmod +x /usr/src/telegraf*/* &&     cp -a /usr/src/telegraf*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Wed, 25 Apr 2018 00:57:53 GMT
EXPOSE 8092/udp 8094/tcp 8125/udp
# Wed, 25 Apr 2018 00:57:54 GMT
COPY file:43e6828e001b57ab465cff8dfd3d30830289afe7ca5944b61641956bfe38cd1c in /entrypoint.sh 
# Wed, 25 Apr 2018 00:57:54 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 25 Apr 2018 00:57:54 GMT
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
	-	`sha256:69bf2b05f679b9a2a783570ead4bfdfc558d47a9f31a30bb19b25d195c44c3cc`  
		Last Modified: Wed, 25 Apr 2018 00:59:37 GMT  
		Size: 9.8 MB (9847522 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5c35ae04afa7bb961f3cc92e469151a239729b0e9000312e85b4b130c165303`  
		Last Modified: Wed, 25 Apr 2018 00:59:33 GMT  
		Size: 184.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `telegraf:alpine`

```console
$ docker pull telegraf@sha256:2564e0ad810490963d86c670bbb838ef3e8bacaef2c0669131950416f01aa3a0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `telegraf:alpine` - linux; amd64

```console
$ docker pull telegraf@sha256:eb22565f39daf19eb171f4482def71799199b9c50f516bda3cbc4a805c5ed3b6
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.6 MB (14636001 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5c67a69ef8e5fb71a3ab9eecddf997d1879cfa93bfeefe59275838f0cf6500de`
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
# Wed, 25 Apr 2018 00:57:27 GMT
ENV TELEGRAF_VERSION=1.6.1
# Wed, 25 Apr 2018 00:57:53 GMT
RUN set -ex &&     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf-${TELEGRAF_VERSION}-static_linux_amd64.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf-${TELEGRAF_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify telegraf-${TELEGRAF_VERSION}-static_linux_amd64.tar.gz.asc telegraf-${TELEGRAF_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src /etc/telegraf &&     tar -C /usr/src -xzf telegraf-${TELEGRAF_VERSION}-static_linux_amd64.tar.gz &&     mv /usr/src/telegraf*/telegraf.conf /etc/telegraf/ &&     chmod +x /usr/src/telegraf*/* &&     cp -a /usr/src/telegraf*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Wed, 25 Apr 2018 00:57:53 GMT
EXPOSE 8092/udp 8094/tcp 8125/udp
# Wed, 25 Apr 2018 00:57:54 GMT
COPY file:43e6828e001b57ab465cff8dfd3d30830289afe7ca5944b61641956bfe38cd1c in /entrypoint.sh 
# Wed, 25 Apr 2018 00:57:54 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 25 Apr 2018 00:57:54 GMT
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
	-	`sha256:69bf2b05f679b9a2a783570ead4bfdfc558d47a9f31a30bb19b25d195c44c3cc`  
		Last Modified: Wed, 25 Apr 2018 00:59:37 GMT  
		Size: 9.8 MB (9847522 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5c35ae04afa7bb961f3cc92e469151a239729b0e9000312e85b4b130c165303`  
		Last Modified: Wed, 25 Apr 2018 00:59:33 GMT  
		Size: 184.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `telegraf:latest`

```console
$ docker pull telegraf@sha256:146fc8b82eb299a3790f822758fcb6fbe03b021cb28f9688810ec5262ef4d9af
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `telegraf:latest` - linux; amd64

```console
$ docker pull telegraf@sha256:af97d7040b83e30b132c77a8ef21c786fe787208c39a75bdfe902d00837eaeaf
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **85.9 MB (85895012 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8567d929c408928e81fcead69e4e836b1f1c0f476dd3a349ab4abd1e7f4ae082`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Sat, 28 Apr 2018 07:08:53 GMT
ADD file:9572fdb59dfbb9b032f3331bbc2a08b31e0aef5fbde44c8f2008d22bf5290cf2 in / 
# Sat, 28 Apr 2018 07:08:53 GMT
CMD ["bash"]
# Fri, 04 May 2018 17:41:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 04 May 2018 17:41:17 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 05 May 2018 07:52:28 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends iputils-ping snmp procps &&     rm -rf /var/lib/apt/lists/*
# Sat, 05 May 2018 07:52:31 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Sat, 05 May 2018 07:52:42 GMT
ENV TELEGRAF_VERSION=1.6.1
# Sat, 05 May 2018 07:52:47 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     gpg --batch --verify telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     dpkg -i telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     rm -f telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb*
# Sat, 05 May 2018 07:52:47 GMT
EXPOSE 8092/udp 8094/tcp 8125/udp
# Sat, 05 May 2018 07:52:48 GMT
COPY file:7211de01f296351833389a1a1879d450e2cb727d7e2910d5807937f99983edf7 in /entrypoint.sh 
# Sat, 05 May 2018 07:52:48 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Sat, 05 May 2018 07:52:48 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:cc1a78bfd46becbfc3abb8a74d9a70a0e0dc7a5809bbd12e814f9382db003707`  
		Last Modified: Sat, 28 Apr 2018 09:27:54 GMT  
		Size: 45.3 MB (45318159 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6861473222a6f5fb6abe08f0cdebf56b5f42758b0a7430bbbf47a3d365198e5e`  
		Last Modified: Fri, 04 May 2018 18:20:41 GMT  
		Size: 10.8 MB (10773612 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e0b9c3b5ae080d11df6df788ce96a45b684d7b050fd017c06b4ea5a40f58545`  
		Last Modified: Fri, 04 May 2018 18:20:39 GMT  
		Size: 4.3 MB (4335883 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd32666cd9df7a8e357ebd94affe0921d53fa404c6390e740f9e711f84aa6ac2`  
		Last Modified: Sat, 05 May 2018 07:53:22 GMT  
		Size: 15.6 MB (15585926 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6051dfec002a798ec9f9c442df8bc4793d38e6f772149d41462c538a42753fe8`  
		Last Modified: Sat, 05 May 2018 07:53:19 GMT  
		Size: 2.9 KB (2887 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b4229bfb119043e856c49ed943e5031bb7c8d2eda0a36a04528a1d160f7a1eb`  
		Last Modified: Sat, 05 May 2018 07:53:37 GMT  
		Size: 9.9 MB (9878361 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd926017739004bd76288c9dbab77f4bb03907d8461843f032a7f3157192cf8e`  
		Last Modified: Sat, 05 May 2018 07:53:35 GMT  
		Size: 184.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `telegraf:latest` - linux; arm variant v7

```console
$ docker pull telegraf@sha256:9409e168f76e7af937709e24a17daddf667ef2cf170a6e75a7c2c608c129f1d0
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **79.2 MB (79222848 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0254e1bb447f73e93f87367d48aa3b058394504dd41881eab7ba8fb04097cceb`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Sat, 28 Apr 2018 12:04:18 GMT
ADD file:c7fba27b02c4bda63faef7eb30156a55feb4c0e9ecd529a24dd8d62942c2f83c in / 
# Sat, 28 Apr 2018 12:04:19 GMT
CMD ["bash"]
# Sat, 05 May 2018 12:13:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 05 May 2018 12:13:58 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 05 May 2018 15:19:16 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends iputils-ping snmp procps &&     rm -rf /var/lib/apt/lists/*
# Sat, 05 May 2018 15:19:21 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Sat, 05 May 2018 15:19:48 GMT
ENV TELEGRAF_VERSION=1.6.1
# Sat, 05 May 2018 15:19:51 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     gpg --batch --verify telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     dpkg -i telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     rm -f telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb*
# Sat, 05 May 2018 15:19:51 GMT
EXPOSE 8092/udp 8094/tcp 8125/udp
# Sat, 05 May 2018 15:19:52 GMT
COPY file:7211de01f296351833389a1a1879d450e2cb727d7e2910d5807937f99983edf7 in /entrypoint.sh 
# Sat, 05 May 2018 15:19:52 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Sat, 05 May 2018 15:19:52 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:5483105d09166836731e940c850827dd1a4fe16b04d1921eea4d8da7c98e99bc`  
		Last Modified: Sat, 28 Apr 2018 12:15:18 GMT  
		Size: 42.1 MB (42063737 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ed57f83cc7c78757972312a1b5a30524f861523c5390d062845f18c696f48ea`  
		Last Modified: Sat, 05 May 2018 12:35:37 GMT  
		Size: 9.5 MB (9472475 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:859203aede279201e8caf07cf2963456c56bac72a64071079dc9db6fb65ed1a2`  
		Last Modified: Sat, 05 May 2018 12:35:34 GMT  
		Size: 3.9 MB (3912835 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de7b099a6fc941009db2e46d28cbb77daeec1bfb6fa0f8cec25c6c6f412189a9`  
		Last Modified: Sat, 05 May 2018 15:20:44 GMT  
		Size: 14.5 MB (14471793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02449fdbdc270c97857ad8795cfb81fe59e5f3128309f551c3490e2f277d57c8`  
		Last Modified: Sat, 05 May 2018 15:20:39 GMT  
		Size: 2.9 KB (2921 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94c6271c10eb8ccc7a63265a05e2e39903ad36256528c803f60fd6e9b34bc171`  
		Last Modified: Sat, 05 May 2018 15:21:09 GMT  
		Size: 9.3 MB (9298901 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a8f7199b969825a6f4e2f1e0979257750ebae807346de20ac283d919fb5efb0`  
		Last Modified: Sat, 05 May 2018 15:21:05 GMT  
		Size: 186.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `telegraf:latest` - linux; arm64 variant v8

```console
$ docker pull telegraf@sha256:fee5f43f5bffeea95baada3f0e11375ccb66e005ebbf0389b4873d7573744fa6
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **81.1 MB (81135398 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:158481156139d43ab6783e820a54f49277c88af2a59634dd10c7b97b579051d2`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Mon, 30 Apr 2018 23:31:58 GMT
ADD file:245a8cfe59ea071e4e215a722e0d4b4b14fa95dd6ffd03739fe048433cfaf523 in / 
# Mon, 30 Apr 2018 23:32:00 GMT
CMD ["bash"]
# Tue, 01 May 2018 08:07:41 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 01 May 2018 08:08:02 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 01 May 2018 21:06:15 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends iputils-ping snmp procps &&     rm -rf /var/lib/apt/lists/*
# Tue, 01 May 2018 21:06:21 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Tue, 01 May 2018 21:06:50 GMT
ENV TELEGRAF_VERSION=1.6.1
# Tue, 01 May 2018 21:06:59 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     gpg --batch --verify telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     dpkg -i telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     rm -f telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb*
# Tue, 01 May 2018 21:07:00 GMT
EXPOSE 8092/udp 8094/tcp 8125/udp
# Tue, 01 May 2018 21:07:02 GMT
COPY file:7211de01f296351833389a1a1879d450e2cb727d7e2910d5807937f99983edf7 in /entrypoint.sh 
# Tue, 01 May 2018 21:07:03 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 01 May 2018 21:07:05 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:142bf25d8d1b3ebc9dfbedd586e70a011594690acf48b2695bfce01e3a2cf0d5`  
		Last Modified: Mon, 30 Apr 2018 23:52:13 GMT  
		Size: 43.1 MB (43109349 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8fe3c77baf3b64937d2b7b343d9b966a08f6b90568acce53ff6effca0fd787fe`  
		Last Modified: Tue, 01 May 2018 08:57:09 GMT  
		Size: 9.7 MB (9697043 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:769a11625fb0ec33902994bfc5463ff53a6754be4cd51b8dc5ca168a05228b09`  
		Last Modified: Tue, 01 May 2018 08:57:06 GMT  
		Size: 4.1 MB (4087722 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1cb4b16282e65cf278bf984ce8fc05f8450496b586764b4c8c66ec75c89aeb59`  
		Last Modified: Tue, 01 May 2018 21:08:15 GMT  
		Size: 15.2 MB (15163919 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec62a63a2e1e4fc5d38b2b0ce5d1640547afb84f03233d6ab2da486d521172b3`  
		Last Modified: Tue, 01 May 2018 21:08:01 GMT  
		Size: 2.9 KB (2886 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab10b57907a41c499e2f5df8bcde13977b935972417cafe3d718fec6ce7ee137`  
		Last Modified: Tue, 01 May 2018 21:08:42 GMT  
		Size: 9.1 MB (9074294 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8fce0ba5b7c34506f90ecbd49e7f6f6046d9bbcdc238af0e6e38191465b816dc`  
		Last Modified: Tue, 01 May 2018 21:08:37 GMT  
		Size: 185.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
