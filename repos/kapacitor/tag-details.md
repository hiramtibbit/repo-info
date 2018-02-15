<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `kapacitor`

-	[`kapacitor:1.3`](#kapacitor13)
-	[`kapacitor:1.3.3`](#kapacitor133)
-	[`kapacitor:1.3.3-alpine`](#kapacitor133-alpine)
-	[`kapacitor:1.3-alpine`](#kapacitor13-alpine)
-	[`kapacitor:1.4`](#kapacitor14)
-	[`kapacitor:1.4.0`](#kapacitor140)
-	[`kapacitor:1.4.0-alpine`](#kapacitor140-alpine)
-	[`kapacitor:1.4-alpine`](#kapacitor14-alpine)
-	[`kapacitor:alpine`](#kapacitoralpine)
-	[`kapacitor:latest`](#kapacitorlatest)

## `kapacitor:1.3`

```console
$ docker pull kapacitor@sha256:33eae3c1b8be33cdca762e8e462e32f9fbea68d1705fe38dd16bb645e174bfaf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `kapacitor:1.3` - linux; amd64

```console
$ docker pull kapacitor@sha256:8d4f94987db44e0adcdfd79815a16a3e7726882fc233bc10f42eda7dd89cc3af
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **94.1 MB (94114023 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:be5d02effa34eb3861357895831823fe54a0d8fc7ebc0124b07dccfc1160af71`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["kapacitord"]`

```dockerfile
# Thu, 15 Feb 2018 01:58:24 GMT
ADD file:7d3b21b18d7bc6d6db1349979cf0e68073647e90c892aebab0da5d679b5550eb in / 
# Thu, 15 Feb 2018 02:01:04 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 03:55:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 03:55:59 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 15 Feb 2018 15:54:07 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y bash-completion &&     awk 'f{if(sub(/^#/,"",$0)==0){f=0}};/^# enable bash completion/{f=1};{print;}' /etc/bash.bashrc > /etc/bash.bashrc.new &&     mv /etc/bash.bashrc.new /etc/bash.bashrc
# Thu, 15 Feb 2018 15:54:11 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Thu, 15 Feb 2018 15:54:11 GMT
ENV KAPACITOR_VERSION=1.3.3
# Thu, 15 Feb 2018 15:54:16 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb &&     gpg --batch --verify kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb.asc kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb &&     dpkg -i kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb &&     rm -f kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb*
# Thu, 15 Feb 2018 15:54:17 GMT
COPY file:4046787774ea4c49703132e9dbc6fb3a19cb54632aa7032dd8379f12b56034d9 in /etc/kapacitor/kapacitor.conf 
# Thu, 15 Feb 2018 15:54:17 GMT
EXPOSE 9092/tcp
# Thu, 15 Feb 2018 15:54:18 GMT
VOLUME [/var/lib/kapacitor]
# Thu, 15 Feb 2018 15:54:18 GMT
COPY file:e5d90b0779cb7845ca3a7981c04a97fd959fea211a2ce19c8da8b949f9d9d04c in /entrypoint.sh 
# Thu, 15 Feb 2018 15:54:19 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 15 Feb 2018 15:54:19 GMT
CMD ["kapacitord"]
```

-	Layers:
	-	`sha256:3e731ddb7fc902c6fc10f00cd7f99f11d63914692bd8c2816a29e6d016353932`  
		Last Modified: Thu, 15 Feb 2018 02:26:01 GMT  
		Size: 45.1 MB (45132625 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47cafa6a79d0be5bd8a64fe52bfc4178072e067e8f5ed5c224d5330107424335`  
		Last Modified: Thu, 15 Feb 2018 04:40:22 GMT  
		Size: 11.1 MB (11107850 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79fcf5a213c7dfb0aa4eeed5922f9c2b6261cf60bb27f2dd9d761d6030689b39`  
		Last Modified: Thu, 15 Feb 2018 04:40:19 GMT  
		Size: 4.3 MB (4335400 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38e549551164401df0ae72d416d7ac1220cdb7cffc2c3c1dba05a0f78d5245ec`  
		Last Modified: Thu, 15 Feb 2018 15:55:30 GMT  
		Size: 12.8 MB (12802430 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28dd7720a4a6faeaaaa45828dea7b3c1f69e68af668fa085439e03ca0e64f90a`  
		Last Modified: Thu, 15 Feb 2018 15:55:26 GMT  
		Size: 2.9 KB (2887 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8db3e47dc762365091d09f5351f7f014f114ecc0e77048380163bbf8232a2e85`  
		Last Modified: Thu, 15 Feb 2018 15:55:34 GMT  
		Size: 20.7 MB (20732378 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec7a0b1b301f3aba647c6f21a74b555026a790e67c75e89d12c16df7af58a0ea`  
		Last Modified: Thu, 15 Feb 2018 15:55:26 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9772a1d99c8b7d1e7353fd59d52f75ea64278e6cb23542a97c51af5f5453dc0a`  
		Last Modified: Thu, 15 Feb 2018 15:55:26 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `kapacitor:1.3` - linux; arm variant v7

```console
$ docker pull kapacitor@sha256:2c51555bfcaf6761c18bcdc0799462df1936ae752d917d198a427b65b7c3029c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **87.5 MB (87502704 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:de2cdcfba955ecd9345942d2453fbcba92af6142a9124f52dcacc1105e286e20`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["kapacitord"]`

```dockerfile
# Tue, 12 Dec 2017 13:32:59 GMT
ADD file:d49e67cdc6ae27f43c5c002d96bff764fd43188dd7e8036f5d5f8c44eb12dcad in / 
# Tue, 12 Dec 2017 13:32:59 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 14:21:12 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 14:21:22 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 12 Dec 2017 16:47:34 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y bash-completion &&     awk 'f{if(sub(/^#/,"",$0)==0){f=0}};/^# enable bash completion/{f=1};{print;}' /etc/bash.bashrc > /etc/bash.bashrc.new &&     mv /etc/bash.bashrc.new /etc/bash.bashrc
# Tue, 12 Dec 2017 16:47:38 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Tue, 12 Dec 2017 16:47:38 GMT
ENV KAPACITOR_VERSION=1.3.3
# Thu, 15 Feb 2018 03:35:34 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb &&     gpg --batch --verify kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb.asc kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb &&     dpkg -i kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb &&     rm -f kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb*
# Thu, 15 Feb 2018 03:35:34 GMT
COPY file:4046787774ea4c49703132e9dbc6fb3a19cb54632aa7032dd8379f12b56034d9 in /etc/kapacitor/kapacitor.conf 
# Thu, 15 Feb 2018 03:35:35 GMT
EXPOSE 9092/tcp
# Thu, 15 Feb 2018 03:35:35 GMT
VOLUME [/var/lib/kapacitor]
# Thu, 15 Feb 2018 03:35:35 GMT
COPY file:e5d90b0779cb7845ca3a7981c04a97fd959fea211a2ce19c8da8b949f9d9d04c in /entrypoint.sh 
# Thu, 15 Feb 2018 03:35:35 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 15 Feb 2018 03:35:36 GMT
CMD ["kapacitord"]
```

-	Layers:
	-	`sha256:0e10ef01c84000f6f5865b480436e689e2d437a4a8b63b01d5ce85532872b636`  
		Last Modified: Tue, 12 Dec 2017 13:44:34 GMT  
		Size: 41.8 MB (41849695 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ed40614ea2a08dbc6237155db97d58d7051efa214bab1fd556c4414db68cb7c`  
		Last Modified: Tue, 12 Dec 2017 14:34:18 GMT  
		Size: 9.8 MB (9824565 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad0ea8727ac09b97803f430b101f4c67cbf9c7bc372a44c190f5a9719f5fb1e9`  
		Last Modified: Tue, 12 Dec 2017 14:34:16 GMT  
		Size: 3.9 MB (3912457 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e1f586cd69572068ee659a03c81307361754a89f97e2f50e876c3bdccb9456e`  
		Last Modified: Tue, 12 Dec 2017 16:48:37 GMT  
		Size: 12.9 MB (12905168 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c44138a0a418c7ab1d12647de165c563b9e3a9983e7b197632d31f5e1b179ea9`  
		Last Modified: Tue, 12 Dec 2017 16:48:36 GMT  
		Size: 2.9 KB (2919 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0214f3cf263f6aa05d86939023fa17f73c1b3e88e018b6e040a11f91f04d9f2b`  
		Last Modified: Thu, 15 Feb 2018 03:36:15 GMT  
		Size: 19.0 MB (19007449 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9742a64b8502b9292033a656ad78a7af1f45ded41fbd78ba8a0586b829a9d415`  
		Last Modified: Thu, 15 Feb 2018 03:36:06 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc058dec0d237a77a495f4a5eb2deb6a909ddbe959236133f792b8f25f259355`  
		Last Modified: Thu, 15 Feb 2018 03:36:06 GMT  
		Size: 230.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `kapacitor:1.3` - linux; arm64 variant v8

```console
$ docker pull kapacitor@sha256:30a5184dfc0f7612708185551a912144c2a6ee9fefdfb1381054d0112e560d98
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **88.5 MB (88531224 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:afca38d32a0279732f0381853a4a764ec373d26d75ac2fe2fc36f2ea02944260`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["kapacitord"]`

```dockerfile
# Tue, 12 Dec 2017 18:33:14 GMT
ADD file:ae07a2e0bd59c986cf9cec3d7ce9a3db8f8034bac7b69938557e472980c70cdc in / 
# Tue, 12 Dec 2017 18:33:14 GMT
CMD ["bash"]
# Fri, 15 Dec 2017 16:14:25 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 15 Dec 2017 16:14:42 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 15 Dec 2017 21:29:33 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y bash-completion &&     awk 'f{if(sub(/^#/,"",$0)==0){f=0}};/^# enable bash completion/{f=1};{print;}' /etc/bash.bashrc > /etc/bash.bashrc.new &&     mv /etc/bash.bashrc.new /etc/bash.bashrc
# Fri, 15 Dec 2017 21:29:37 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Fri, 15 Dec 2017 21:29:38 GMT
ENV KAPACITOR_VERSION=1.3.3
# Thu, 15 Feb 2018 01:38:49 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb &&     gpg --batch --verify kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb.asc kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb &&     dpkg -i kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb &&     rm -f kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb*
# Thu, 15 Feb 2018 01:38:50 GMT
COPY file:4046787774ea4c49703132e9dbc6fb3a19cb54632aa7032dd8379f12b56034d9 in /etc/kapacitor/kapacitor.conf 
# Thu, 15 Feb 2018 01:38:51 GMT
EXPOSE 9092/tcp
# Thu, 15 Feb 2018 01:38:52 GMT
VOLUME [/var/lib/kapacitor]
# Thu, 15 Feb 2018 01:38:53 GMT
COPY file:e5d90b0779cb7845ca3a7981c04a97fd959fea211a2ce19c8da8b949f9d9d04c in /entrypoint.sh 
# Thu, 15 Feb 2018 01:38:54 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 15 Feb 2018 01:38:55 GMT
CMD ["kapacitord"]
```

-	Layers:
	-	`sha256:91ea0aed359111bf5beb30e4bebd50fac25bc40a69e1bb3bf0f8e3c6dcd5fa7f`  
		Last Modified: Tue, 12 Dec 2017 18:47:08 GMT  
		Size: 42.9 MB (42912813 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc2797c29bc6ab5e2ad91b16dea60d7b6f0d4fffb5261f539870b43a7ffca40e`  
		Last Modified: Fri, 15 Dec 2017 17:19:24 GMT  
		Size: 10.1 MB (10066285 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8edcd3d8093caa7ca86f40f4413c1ae7ca97ae1480289f06339fff174a2a7d6a`  
		Last Modified: Fri, 15 Dec 2017 17:19:21 GMT  
		Size: 4.1 MB (4087788 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94a6808d7d7452e42fe73ffc5e3aff5c31446d4c59e8af7eab5bf9b1f01cdc76`  
		Last Modified: Fri, 15 Dec 2017 21:30:30 GMT  
		Size: 12.5 MB (12453666 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6cda4b46aae69d9a90469c4a599a08db52b886b3e6c6ea016b4116d46072fd4`  
		Last Modified: Fri, 15 Dec 2017 21:30:27 GMT  
		Size: 2.9 KB (2887 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da85af8620daee385b4de320b46568fd12e46c79978587d7306a7bcbe2116ab0`  
		Last Modified: Thu, 15 Feb 2018 01:39:51 GMT  
		Size: 19.0 MB (19007330 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44fdd38d65323b5339661f9fdba9426c981b24011f8d5abc9a37835f0a3fe5de`  
		Last Modified: Thu, 15 Feb 2018 01:39:42 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b80d17e5e77baad2818b4325ca802b6e4468a09fa167be09b0597c72baa27e8`  
		Last Modified: Thu, 15 Feb 2018 01:39:43 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kapacitor:1.3.3`

```console
$ docker pull kapacitor@sha256:33eae3c1b8be33cdca762e8e462e32f9fbea68d1705fe38dd16bb645e174bfaf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `kapacitor:1.3.3` - linux; amd64

```console
$ docker pull kapacitor@sha256:8d4f94987db44e0adcdfd79815a16a3e7726882fc233bc10f42eda7dd89cc3af
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **94.1 MB (94114023 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:be5d02effa34eb3861357895831823fe54a0d8fc7ebc0124b07dccfc1160af71`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["kapacitord"]`

```dockerfile
# Thu, 15 Feb 2018 01:58:24 GMT
ADD file:7d3b21b18d7bc6d6db1349979cf0e68073647e90c892aebab0da5d679b5550eb in / 
# Thu, 15 Feb 2018 02:01:04 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 03:55:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 03:55:59 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 15 Feb 2018 15:54:07 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y bash-completion &&     awk 'f{if(sub(/^#/,"",$0)==0){f=0}};/^# enable bash completion/{f=1};{print;}' /etc/bash.bashrc > /etc/bash.bashrc.new &&     mv /etc/bash.bashrc.new /etc/bash.bashrc
# Thu, 15 Feb 2018 15:54:11 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Thu, 15 Feb 2018 15:54:11 GMT
ENV KAPACITOR_VERSION=1.3.3
# Thu, 15 Feb 2018 15:54:16 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb &&     gpg --batch --verify kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb.asc kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb &&     dpkg -i kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb &&     rm -f kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb*
# Thu, 15 Feb 2018 15:54:17 GMT
COPY file:4046787774ea4c49703132e9dbc6fb3a19cb54632aa7032dd8379f12b56034d9 in /etc/kapacitor/kapacitor.conf 
# Thu, 15 Feb 2018 15:54:17 GMT
EXPOSE 9092/tcp
# Thu, 15 Feb 2018 15:54:18 GMT
VOLUME [/var/lib/kapacitor]
# Thu, 15 Feb 2018 15:54:18 GMT
COPY file:e5d90b0779cb7845ca3a7981c04a97fd959fea211a2ce19c8da8b949f9d9d04c in /entrypoint.sh 
# Thu, 15 Feb 2018 15:54:19 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 15 Feb 2018 15:54:19 GMT
CMD ["kapacitord"]
```

-	Layers:
	-	`sha256:3e731ddb7fc902c6fc10f00cd7f99f11d63914692bd8c2816a29e6d016353932`  
		Last Modified: Thu, 15 Feb 2018 02:26:01 GMT  
		Size: 45.1 MB (45132625 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47cafa6a79d0be5bd8a64fe52bfc4178072e067e8f5ed5c224d5330107424335`  
		Last Modified: Thu, 15 Feb 2018 04:40:22 GMT  
		Size: 11.1 MB (11107850 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79fcf5a213c7dfb0aa4eeed5922f9c2b6261cf60bb27f2dd9d761d6030689b39`  
		Last Modified: Thu, 15 Feb 2018 04:40:19 GMT  
		Size: 4.3 MB (4335400 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38e549551164401df0ae72d416d7ac1220cdb7cffc2c3c1dba05a0f78d5245ec`  
		Last Modified: Thu, 15 Feb 2018 15:55:30 GMT  
		Size: 12.8 MB (12802430 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28dd7720a4a6faeaaaa45828dea7b3c1f69e68af668fa085439e03ca0e64f90a`  
		Last Modified: Thu, 15 Feb 2018 15:55:26 GMT  
		Size: 2.9 KB (2887 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8db3e47dc762365091d09f5351f7f014f114ecc0e77048380163bbf8232a2e85`  
		Last Modified: Thu, 15 Feb 2018 15:55:34 GMT  
		Size: 20.7 MB (20732378 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec7a0b1b301f3aba647c6f21a74b555026a790e67c75e89d12c16df7af58a0ea`  
		Last Modified: Thu, 15 Feb 2018 15:55:26 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9772a1d99c8b7d1e7353fd59d52f75ea64278e6cb23542a97c51af5f5453dc0a`  
		Last Modified: Thu, 15 Feb 2018 15:55:26 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `kapacitor:1.3.3` - linux; arm variant v7

```console
$ docker pull kapacitor@sha256:2c51555bfcaf6761c18bcdc0799462df1936ae752d917d198a427b65b7c3029c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **87.5 MB (87502704 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:de2cdcfba955ecd9345942d2453fbcba92af6142a9124f52dcacc1105e286e20`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["kapacitord"]`

```dockerfile
# Tue, 12 Dec 2017 13:32:59 GMT
ADD file:d49e67cdc6ae27f43c5c002d96bff764fd43188dd7e8036f5d5f8c44eb12dcad in / 
# Tue, 12 Dec 2017 13:32:59 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 14:21:12 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 14:21:22 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 12 Dec 2017 16:47:34 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y bash-completion &&     awk 'f{if(sub(/^#/,"",$0)==0){f=0}};/^# enable bash completion/{f=1};{print;}' /etc/bash.bashrc > /etc/bash.bashrc.new &&     mv /etc/bash.bashrc.new /etc/bash.bashrc
# Tue, 12 Dec 2017 16:47:38 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Tue, 12 Dec 2017 16:47:38 GMT
ENV KAPACITOR_VERSION=1.3.3
# Thu, 15 Feb 2018 03:35:34 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb &&     gpg --batch --verify kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb.asc kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb &&     dpkg -i kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb &&     rm -f kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb*
# Thu, 15 Feb 2018 03:35:34 GMT
COPY file:4046787774ea4c49703132e9dbc6fb3a19cb54632aa7032dd8379f12b56034d9 in /etc/kapacitor/kapacitor.conf 
# Thu, 15 Feb 2018 03:35:35 GMT
EXPOSE 9092/tcp
# Thu, 15 Feb 2018 03:35:35 GMT
VOLUME [/var/lib/kapacitor]
# Thu, 15 Feb 2018 03:35:35 GMT
COPY file:e5d90b0779cb7845ca3a7981c04a97fd959fea211a2ce19c8da8b949f9d9d04c in /entrypoint.sh 
# Thu, 15 Feb 2018 03:35:35 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 15 Feb 2018 03:35:36 GMT
CMD ["kapacitord"]
```

-	Layers:
	-	`sha256:0e10ef01c84000f6f5865b480436e689e2d437a4a8b63b01d5ce85532872b636`  
		Last Modified: Tue, 12 Dec 2017 13:44:34 GMT  
		Size: 41.8 MB (41849695 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ed40614ea2a08dbc6237155db97d58d7051efa214bab1fd556c4414db68cb7c`  
		Last Modified: Tue, 12 Dec 2017 14:34:18 GMT  
		Size: 9.8 MB (9824565 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad0ea8727ac09b97803f430b101f4c67cbf9c7bc372a44c190f5a9719f5fb1e9`  
		Last Modified: Tue, 12 Dec 2017 14:34:16 GMT  
		Size: 3.9 MB (3912457 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e1f586cd69572068ee659a03c81307361754a89f97e2f50e876c3bdccb9456e`  
		Last Modified: Tue, 12 Dec 2017 16:48:37 GMT  
		Size: 12.9 MB (12905168 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c44138a0a418c7ab1d12647de165c563b9e3a9983e7b197632d31f5e1b179ea9`  
		Last Modified: Tue, 12 Dec 2017 16:48:36 GMT  
		Size: 2.9 KB (2919 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0214f3cf263f6aa05d86939023fa17f73c1b3e88e018b6e040a11f91f04d9f2b`  
		Last Modified: Thu, 15 Feb 2018 03:36:15 GMT  
		Size: 19.0 MB (19007449 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9742a64b8502b9292033a656ad78a7af1f45ded41fbd78ba8a0586b829a9d415`  
		Last Modified: Thu, 15 Feb 2018 03:36:06 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc058dec0d237a77a495f4a5eb2deb6a909ddbe959236133f792b8f25f259355`  
		Last Modified: Thu, 15 Feb 2018 03:36:06 GMT  
		Size: 230.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `kapacitor:1.3.3` - linux; arm64 variant v8

```console
$ docker pull kapacitor@sha256:30a5184dfc0f7612708185551a912144c2a6ee9fefdfb1381054d0112e560d98
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **88.5 MB (88531224 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:afca38d32a0279732f0381853a4a764ec373d26d75ac2fe2fc36f2ea02944260`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["kapacitord"]`

```dockerfile
# Tue, 12 Dec 2017 18:33:14 GMT
ADD file:ae07a2e0bd59c986cf9cec3d7ce9a3db8f8034bac7b69938557e472980c70cdc in / 
# Tue, 12 Dec 2017 18:33:14 GMT
CMD ["bash"]
# Fri, 15 Dec 2017 16:14:25 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 15 Dec 2017 16:14:42 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 15 Dec 2017 21:29:33 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y bash-completion &&     awk 'f{if(sub(/^#/,"",$0)==0){f=0}};/^# enable bash completion/{f=1};{print;}' /etc/bash.bashrc > /etc/bash.bashrc.new &&     mv /etc/bash.bashrc.new /etc/bash.bashrc
# Fri, 15 Dec 2017 21:29:37 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Fri, 15 Dec 2017 21:29:38 GMT
ENV KAPACITOR_VERSION=1.3.3
# Thu, 15 Feb 2018 01:38:49 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb &&     gpg --batch --verify kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb.asc kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb &&     dpkg -i kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb &&     rm -f kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb*
# Thu, 15 Feb 2018 01:38:50 GMT
COPY file:4046787774ea4c49703132e9dbc6fb3a19cb54632aa7032dd8379f12b56034d9 in /etc/kapacitor/kapacitor.conf 
# Thu, 15 Feb 2018 01:38:51 GMT
EXPOSE 9092/tcp
# Thu, 15 Feb 2018 01:38:52 GMT
VOLUME [/var/lib/kapacitor]
# Thu, 15 Feb 2018 01:38:53 GMT
COPY file:e5d90b0779cb7845ca3a7981c04a97fd959fea211a2ce19c8da8b949f9d9d04c in /entrypoint.sh 
# Thu, 15 Feb 2018 01:38:54 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 15 Feb 2018 01:38:55 GMT
CMD ["kapacitord"]
```

-	Layers:
	-	`sha256:91ea0aed359111bf5beb30e4bebd50fac25bc40a69e1bb3bf0f8e3c6dcd5fa7f`  
		Last Modified: Tue, 12 Dec 2017 18:47:08 GMT  
		Size: 42.9 MB (42912813 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc2797c29bc6ab5e2ad91b16dea60d7b6f0d4fffb5261f539870b43a7ffca40e`  
		Last Modified: Fri, 15 Dec 2017 17:19:24 GMT  
		Size: 10.1 MB (10066285 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8edcd3d8093caa7ca86f40f4413c1ae7ca97ae1480289f06339fff174a2a7d6a`  
		Last Modified: Fri, 15 Dec 2017 17:19:21 GMT  
		Size: 4.1 MB (4087788 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94a6808d7d7452e42fe73ffc5e3aff5c31446d4c59e8af7eab5bf9b1f01cdc76`  
		Last Modified: Fri, 15 Dec 2017 21:30:30 GMT  
		Size: 12.5 MB (12453666 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6cda4b46aae69d9a90469c4a599a08db52b886b3e6c6ea016b4116d46072fd4`  
		Last Modified: Fri, 15 Dec 2017 21:30:27 GMT  
		Size: 2.9 KB (2887 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da85af8620daee385b4de320b46568fd12e46c79978587d7306a7bcbe2116ab0`  
		Last Modified: Thu, 15 Feb 2018 01:39:51 GMT  
		Size: 19.0 MB (19007330 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44fdd38d65323b5339661f9fdba9426c981b24011f8d5abc9a37835f0a3fe5de`  
		Last Modified: Thu, 15 Feb 2018 01:39:42 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b80d17e5e77baad2818b4325ca802b6e4468a09fa167be09b0597c72baa27e8`  
		Last Modified: Thu, 15 Feb 2018 01:39:43 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kapacitor:1.3.3-alpine`

```console
$ docker pull kapacitor@sha256:b92713cdd309f1329bc91bcda54a663f3a8336bb7b461b26105dc953738724d0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `kapacitor:1.3.3-alpine` - linux; amd64

```console
$ docker pull kapacitor@sha256:0d9392054cb691ee0668fa210c4480c3fc45d71142ade506df9c650d3536d5f9
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.9 MB (16897768 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6b0b6263ed69b55036bd0296bbcee590ea4181e8a2624ffa3bd309e1032aa31b`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["kapacitord"]`

```dockerfile
# Tue, 09 Jan 2018 21:10:38 GMT
ADD file:6edc55fb54ec9fc3658c8f5176a70e792103a516154442f94fed8e0290e4960e in / 
# Tue, 09 Jan 2018 21:10:38 GMT
CMD ["/bin/sh"]
# Tue, 09 Jan 2018 21:31:21 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf
# Tue, 09 Jan 2018 23:46:37 GMT
RUN apk add --no-cache ca-certificates &&     update-ca-certificates
# Tue, 09 Jan 2018 23:46:37 GMT
ENV KAPACITOR_VERSION=1.3.3
# Wed, 14 Feb 2018 21:10:50 GMT
RUN set -ex &&     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz.asc kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/kapacitor-*/kapacitor.conf &&     chmod +x /usr/src/kapacitor-*/* &&     cp -a /usr/src/kapacitor-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Wed, 14 Feb 2018 21:10:50 GMT
COPY file:4046787774ea4c49703132e9dbc6fb3a19cb54632aa7032dd8379f12b56034d9 in /etc/kapacitor/kapacitor.conf 
# Wed, 14 Feb 2018 21:10:50 GMT
EXPOSE 9092/tcp
# Wed, 14 Feb 2018 21:10:51 GMT
VOLUME [/var/lib/kapacitor]
# Wed, 14 Feb 2018 21:10:51 GMT
COPY file:440a837280df72a19ed72b91fab9bdcfd268250b241bbc22509699f880fe0d17 in /entrypoint.sh 
# Wed, 14 Feb 2018 21:10:51 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 14 Feb 2018 21:10:51 GMT
CMD ["kapacitord"]
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
	-	`sha256:159493a148803fde2080076c2b2698db62a3a63f40206ae2fcf81ef192f5210a`  
		Last Modified: Tue, 09 Jan 2018 23:48:08 GMT  
		Size: 351.0 KB (351014 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db6679cde0bf4cb86205388bb133cdc5aada3dd2af6cba5d59e4eb1cf0e17d13`  
		Last Modified: Wed, 14 Feb 2018 21:19:41 GMT  
		Size: 14.6 MB (14554401 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1efe87561df244a50c6beca54bb8cebba367e0b0e7f186bb845518ff3dc973dc`  
		Last Modified: Wed, 14 Feb 2018 21:19:37 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63da3222e3d39d2e409edd935c11a7cda25c5d93d2008ee0f2d1b2438bc1ce77`  
		Last Modified: Wed, 14 Feb 2018 21:19:37 GMT  
		Size: 229.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kapacitor:1.3-alpine`

```console
$ docker pull kapacitor@sha256:b92713cdd309f1329bc91bcda54a663f3a8336bb7b461b26105dc953738724d0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `kapacitor:1.3-alpine` - linux; amd64

```console
$ docker pull kapacitor@sha256:0d9392054cb691ee0668fa210c4480c3fc45d71142ade506df9c650d3536d5f9
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.9 MB (16897768 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6b0b6263ed69b55036bd0296bbcee590ea4181e8a2624ffa3bd309e1032aa31b`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["kapacitord"]`

```dockerfile
# Tue, 09 Jan 2018 21:10:38 GMT
ADD file:6edc55fb54ec9fc3658c8f5176a70e792103a516154442f94fed8e0290e4960e in / 
# Tue, 09 Jan 2018 21:10:38 GMT
CMD ["/bin/sh"]
# Tue, 09 Jan 2018 21:31:21 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf
# Tue, 09 Jan 2018 23:46:37 GMT
RUN apk add --no-cache ca-certificates &&     update-ca-certificates
# Tue, 09 Jan 2018 23:46:37 GMT
ENV KAPACITOR_VERSION=1.3.3
# Wed, 14 Feb 2018 21:10:50 GMT
RUN set -ex &&     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz.asc kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/kapacitor-*/kapacitor.conf &&     chmod +x /usr/src/kapacitor-*/* &&     cp -a /usr/src/kapacitor-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Wed, 14 Feb 2018 21:10:50 GMT
COPY file:4046787774ea4c49703132e9dbc6fb3a19cb54632aa7032dd8379f12b56034d9 in /etc/kapacitor/kapacitor.conf 
# Wed, 14 Feb 2018 21:10:50 GMT
EXPOSE 9092/tcp
# Wed, 14 Feb 2018 21:10:51 GMT
VOLUME [/var/lib/kapacitor]
# Wed, 14 Feb 2018 21:10:51 GMT
COPY file:440a837280df72a19ed72b91fab9bdcfd268250b241bbc22509699f880fe0d17 in /entrypoint.sh 
# Wed, 14 Feb 2018 21:10:51 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 14 Feb 2018 21:10:51 GMT
CMD ["kapacitord"]
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
	-	`sha256:159493a148803fde2080076c2b2698db62a3a63f40206ae2fcf81ef192f5210a`  
		Last Modified: Tue, 09 Jan 2018 23:48:08 GMT  
		Size: 351.0 KB (351014 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db6679cde0bf4cb86205388bb133cdc5aada3dd2af6cba5d59e4eb1cf0e17d13`  
		Last Modified: Wed, 14 Feb 2018 21:19:41 GMT  
		Size: 14.6 MB (14554401 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1efe87561df244a50c6beca54bb8cebba367e0b0e7f186bb845518ff3dc973dc`  
		Last Modified: Wed, 14 Feb 2018 21:19:37 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63da3222e3d39d2e409edd935c11a7cda25c5d93d2008ee0f2d1b2438bc1ce77`  
		Last Modified: Wed, 14 Feb 2018 21:19:37 GMT  
		Size: 229.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kapacitor:1.4`

```console
$ docker pull kapacitor@sha256:37aab93de94a635e9b35ff7aa05bf01fa94f1eadbf8cc33364b9bd5753567e5f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `kapacitor:1.4` - linux; amd64

```console
$ docker pull kapacitor@sha256:4c6db1c72193ee7bf3eb777b0c0dbb15d409f2a4b85ae1afbaaf6c858802c80b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **96.1 MB (96078290 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b41e492688e6222396c2e66a800cfcdeaa1b663fb658f5495fbc33a84df43efe`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["kapacitord"]`

```dockerfile
# Thu, 15 Feb 2018 01:58:24 GMT
ADD file:7d3b21b18d7bc6d6db1349979cf0e68073647e90c892aebab0da5d679b5550eb in / 
# Thu, 15 Feb 2018 02:01:04 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 03:55:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 03:55:59 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 15 Feb 2018 15:54:07 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y bash-completion &&     awk 'f{if(sub(/^#/,"",$0)==0){f=0}};/^# enable bash completion/{f=1};{print;}' /etc/bash.bashrc > /etc/bash.bashrc.new &&     mv /etc/bash.bashrc.new /etc/bash.bashrc
# Thu, 15 Feb 2018 15:54:11 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Thu, 15 Feb 2018 15:54:46 GMT
ENV KAPACITOR_VERSION=1.4.0
# Thu, 15 Feb 2018 15:54:51 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb &&     gpg --batch --verify kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb.asc kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb &&     dpkg -i kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb &&     rm -f kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb*
# Thu, 15 Feb 2018 15:54:52 GMT
COPY file:4046787774ea4c49703132e9dbc6fb3a19cb54632aa7032dd8379f12b56034d9 in /etc/kapacitor/kapacitor.conf 
# Thu, 15 Feb 2018 15:54:52 GMT
EXPOSE 9092/tcp
# Thu, 15 Feb 2018 15:54:53 GMT
VOLUME [/var/lib/kapacitor]
# Thu, 15 Feb 2018 15:54:53 GMT
COPY file:e5d90b0779cb7845ca3a7981c04a97fd959fea211a2ce19c8da8b949f9d9d04c in /entrypoint.sh 
# Thu, 15 Feb 2018 15:54:54 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 15 Feb 2018 15:54:54 GMT
CMD ["kapacitord"]
```

-	Layers:
	-	`sha256:3e731ddb7fc902c6fc10f00cd7f99f11d63914692bd8c2816a29e6d016353932`  
		Last Modified: Thu, 15 Feb 2018 02:26:01 GMT  
		Size: 45.1 MB (45132625 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47cafa6a79d0be5bd8a64fe52bfc4178072e067e8f5ed5c224d5330107424335`  
		Last Modified: Thu, 15 Feb 2018 04:40:22 GMT  
		Size: 11.1 MB (11107850 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79fcf5a213c7dfb0aa4eeed5922f9c2b6261cf60bb27f2dd9d761d6030689b39`  
		Last Modified: Thu, 15 Feb 2018 04:40:19 GMT  
		Size: 4.3 MB (4335400 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38e549551164401df0ae72d416d7ac1220cdb7cffc2c3c1dba05a0f78d5245ec`  
		Last Modified: Thu, 15 Feb 2018 15:55:30 GMT  
		Size: 12.8 MB (12802430 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28dd7720a4a6faeaaaa45828dea7b3c1f69e68af668fa085439e03ca0e64f90a`  
		Last Modified: Thu, 15 Feb 2018 15:55:26 GMT  
		Size: 2.9 KB (2887 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c7a3590fa4e537fd619438bf4a5aa51fde071b259c3249f4758052854e7bec9`  
		Last Modified: Thu, 15 Feb 2018 15:56:13 GMT  
		Size: 22.7 MB (22696645 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d23f9c50ed7ec63c06aa4f500d306facd8ba2b6652fd6e1b0b0f299577a9d2f3`  
		Last Modified: Thu, 15 Feb 2018 15:56:09 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d572b314bd87f99370b2f68e6f0a1e8a6a71929d0a8ab5906eb9d589cf20e17a`  
		Last Modified: Thu, 15 Feb 2018 15:56:10 GMT  
		Size: 230.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `kapacitor:1.4` - linux; arm variant v7

```console
$ docker pull kapacitor@sha256:830030305d3361daa3c532660210fee6ef46de029baeb9aaa50fb1e282faf64c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **89.8 MB (89801599 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:60c24c3d14a1691fb2e0decc0b0f13b2bcb80980385ed2a1c8263c0a824112aa`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["kapacitord"]`

```dockerfile
# Tue, 12 Dec 2017 13:32:59 GMT
ADD file:d49e67cdc6ae27f43c5c002d96bff764fd43188dd7e8036f5d5f8c44eb12dcad in / 
# Tue, 12 Dec 2017 13:32:59 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 14:21:12 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 14:21:22 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 12 Dec 2017 16:47:34 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y bash-completion &&     awk 'f{if(sub(/^#/,"",$0)==0){f=0}};/^# enable bash completion/{f=1};{print;}' /etc/bash.bashrc > /etc/bash.bashrc.new &&     mv /etc/bash.bashrc.new /etc/bash.bashrc
# Tue, 12 Dec 2017 16:47:38 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Thu, 14 Dec 2017 03:35:51 GMT
ENV KAPACITOR_VERSION=1.4.0
# Thu, 15 Feb 2018 03:35:51 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb &&     gpg --batch --verify kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb.asc kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb &&     dpkg -i kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb &&     rm -f kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb*
# Thu, 15 Feb 2018 03:35:52 GMT
COPY file:4046787774ea4c49703132e9dbc6fb3a19cb54632aa7032dd8379f12b56034d9 in /etc/kapacitor/kapacitor.conf 
# Thu, 15 Feb 2018 03:35:52 GMT
EXPOSE 9092/tcp
# Thu, 15 Feb 2018 03:35:52 GMT
VOLUME [/var/lib/kapacitor]
# Thu, 15 Feb 2018 03:35:53 GMT
COPY file:e5d90b0779cb7845ca3a7981c04a97fd959fea211a2ce19c8da8b949f9d9d04c in /entrypoint.sh 
# Thu, 15 Feb 2018 03:35:53 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 15 Feb 2018 03:35:53 GMT
CMD ["kapacitord"]
```

-	Layers:
	-	`sha256:0e10ef01c84000f6f5865b480436e689e2d437a4a8b63b01d5ce85532872b636`  
		Last Modified: Tue, 12 Dec 2017 13:44:34 GMT  
		Size: 41.8 MB (41849695 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ed40614ea2a08dbc6237155db97d58d7051efa214bab1fd556c4414db68cb7c`  
		Last Modified: Tue, 12 Dec 2017 14:34:18 GMT  
		Size: 9.8 MB (9824565 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad0ea8727ac09b97803f430b101f4c67cbf9c7bc372a44c190f5a9719f5fb1e9`  
		Last Modified: Tue, 12 Dec 2017 14:34:16 GMT  
		Size: 3.9 MB (3912457 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e1f586cd69572068ee659a03c81307361754a89f97e2f50e876c3bdccb9456e`  
		Last Modified: Tue, 12 Dec 2017 16:48:37 GMT  
		Size: 12.9 MB (12905168 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c44138a0a418c7ab1d12647de165c563b9e3a9983e7b197632d31f5e1b179ea9`  
		Last Modified: Tue, 12 Dec 2017 16:48:36 GMT  
		Size: 2.9 KB (2919 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c070d367124a51eda5c48380246d0cb4cebff7ab41316323a0733ac716a9ec26`  
		Last Modified: Thu, 15 Feb 2018 03:36:40 GMT  
		Size: 21.3 MB (21306342 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:805ef1926c4ee66f152e02b80b34ae7be38a0afe6a6896da512194d49e0cfe24`  
		Last Modified: Thu, 15 Feb 2018 03:36:32 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:286d1b59ba30941b32a0809a0b2e9e89ee961ceb118b8a00680e022aa2a10993`  
		Last Modified: Thu, 15 Feb 2018 03:36:32 GMT  
		Size: 229.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `kapacitor:1.4` - linux; arm64 variant v8

```console
$ docker pull kapacitor@sha256:a4937b89022c8e8b9f099f0402bd94922d0a5a0ae8d31d371b68a6c725a0c843
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **90.8 MB (90830006 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8ffde98d0f5752085208a20a26c68571ff5f3c60f4887b625873bf8d1ea8ccc9`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["kapacitord"]`

```dockerfile
# Tue, 12 Dec 2017 18:33:14 GMT
ADD file:ae07a2e0bd59c986cf9cec3d7ce9a3db8f8034bac7b69938557e472980c70cdc in / 
# Tue, 12 Dec 2017 18:33:14 GMT
CMD ["bash"]
# Fri, 15 Dec 2017 16:14:25 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 15 Dec 2017 16:14:42 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 15 Dec 2017 21:29:33 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y bash-completion &&     awk 'f{if(sub(/^#/,"",$0)==0){f=0}};/^# enable bash completion/{f=1};{print;}' /etc/bash.bashrc > /etc/bash.bashrc.new &&     mv /etc/bash.bashrc.new /etc/bash.bashrc
# Fri, 15 Dec 2017 21:29:37 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Fri, 15 Dec 2017 21:30:00 GMT
ENV KAPACITOR_VERSION=1.4.0
# Thu, 15 Feb 2018 01:39:19 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb &&     gpg --batch --verify kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb.asc kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb &&     dpkg -i kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb &&     rm -f kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb*
# Thu, 15 Feb 2018 01:39:20 GMT
COPY file:4046787774ea4c49703132e9dbc6fb3a19cb54632aa7032dd8379f12b56034d9 in /etc/kapacitor/kapacitor.conf 
# Thu, 15 Feb 2018 01:39:20 GMT
EXPOSE 9092/tcp
# Thu, 15 Feb 2018 01:39:21 GMT
VOLUME [/var/lib/kapacitor]
# Thu, 15 Feb 2018 01:39:22 GMT
COPY file:e5d90b0779cb7845ca3a7981c04a97fd959fea211a2ce19c8da8b949f9d9d04c in /entrypoint.sh 
# Thu, 15 Feb 2018 01:39:24 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 15 Feb 2018 01:39:25 GMT
CMD ["kapacitord"]
```

-	Layers:
	-	`sha256:91ea0aed359111bf5beb30e4bebd50fac25bc40a69e1bb3bf0f8e3c6dcd5fa7f`  
		Last Modified: Tue, 12 Dec 2017 18:47:08 GMT  
		Size: 42.9 MB (42912813 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc2797c29bc6ab5e2ad91b16dea60d7b6f0d4fffb5261f539870b43a7ffca40e`  
		Last Modified: Fri, 15 Dec 2017 17:19:24 GMT  
		Size: 10.1 MB (10066285 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8edcd3d8093caa7ca86f40f4413c1ae7ca97ae1480289f06339fff174a2a7d6a`  
		Last Modified: Fri, 15 Dec 2017 17:19:21 GMT  
		Size: 4.1 MB (4087788 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94a6808d7d7452e42fe73ffc5e3aff5c31446d4c59e8af7eab5bf9b1f01cdc76`  
		Last Modified: Fri, 15 Dec 2017 21:30:30 GMT  
		Size: 12.5 MB (12453666 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6cda4b46aae69d9a90469c4a599a08db52b886b3e6c6ea016b4116d46072fd4`  
		Last Modified: Fri, 15 Dec 2017 21:30:27 GMT  
		Size: 2.9 KB (2887 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee07307c031b9e25e8d49a1ffc89670fd3dda526abe83551d95ae633a04204b8`  
		Last Modified: Thu, 15 Feb 2018 01:40:29 GMT  
		Size: 21.3 MB (21306112 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:510f3d81c7d776fdde1278441cb938e17b870b204d0fb1a48e214a7b8963f6ae`  
		Last Modified: Thu, 15 Feb 2018 01:40:21 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f44ac70c38f7704bc7663f244ea829d4697133f2915be5a9e1c461a50423af3`  
		Last Modified: Thu, 15 Feb 2018 01:40:21 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kapacitor:1.4.0`

```console
$ docker pull kapacitor@sha256:37aab93de94a635e9b35ff7aa05bf01fa94f1eadbf8cc33364b9bd5753567e5f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `kapacitor:1.4.0` - linux; amd64

```console
$ docker pull kapacitor@sha256:4c6db1c72193ee7bf3eb777b0c0dbb15d409f2a4b85ae1afbaaf6c858802c80b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **96.1 MB (96078290 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b41e492688e6222396c2e66a800cfcdeaa1b663fb658f5495fbc33a84df43efe`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["kapacitord"]`

```dockerfile
# Thu, 15 Feb 2018 01:58:24 GMT
ADD file:7d3b21b18d7bc6d6db1349979cf0e68073647e90c892aebab0da5d679b5550eb in / 
# Thu, 15 Feb 2018 02:01:04 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 03:55:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 03:55:59 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 15 Feb 2018 15:54:07 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y bash-completion &&     awk 'f{if(sub(/^#/,"",$0)==0){f=0}};/^# enable bash completion/{f=1};{print;}' /etc/bash.bashrc > /etc/bash.bashrc.new &&     mv /etc/bash.bashrc.new /etc/bash.bashrc
# Thu, 15 Feb 2018 15:54:11 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Thu, 15 Feb 2018 15:54:46 GMT
ENV KAPACITOR_VERSION=1.4.0
# Thu, 15 Feb 2018 15:54:51 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb &&     gpg --batch --verify kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb.asc kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb &&     dpkg -i kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb &&     rm -f kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb*
# Thu, 15 Feb 2018 15:54:52 GMT
COPY file:4046787774ea4c49703132e9dbc6fb3a19cb54632aa7032dd8379f12b56034d9 in /etc/kapacitor/kapacitor.conf 
# Thu, 15 Feb 2018 15:54:52 GMT
EXPOSE 9092/tcp
# Thu, 15 Feb 2018 15:54:53 GMT
VOLUME [/var/lib/kapacitor]
# Thu, 15 Feb 2018 15:54:53 GMT
COPY file:e5d90b0779cb7845ca3a7981c04a97fd959fea211a2ce19c8da8b949f9d9d04c in /entrypoint.sh 
# Thu, 15 Feb 2018 15:54:54 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 15 Feb 2018 15:54:54 GMT
CMD ["kapacitord"]
```

-	Layers:
	-	`sha256:3e731ddb7fc902c6fc10f00cd7f99f11d63914692bd8c2816a29e6d016353932`  
		Last Modified: Thu, 15 Feb 2018 02:26:01 GMT  
		Size: 45.1 MB (45132625 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47cafa6a79d0be5bd8a64fe52bfc4178072e067e8f5ed5c224d5330107424335`  
		Last Modified: Thu, 15 Feb 2018 04:40:22 GMT  
		Size: 11.1 MB (11107850 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79fcf5a213c7dfb0aa4eeed5922f9c2b6261cf60bb27f2dd9d761d6030689b39`  
		Last Modified: Thu, 15 Feb 2018 04:40:19 GMT  
		Size: 4.3 MB (4335400 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38e549551164401df0ae72d416d7ac1220cdb7cffc2c3c1dba05a0f78d5245ec`  
		Last Modified: Thu, 15 Feb 2018 15:55:30 GMT  
		Size: 12.8 MB (12802430 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28dd7720a4a6faeaaaa45828dea7b3c1f69e68af668fa085439e03ca0e64f90a`  
		Last Modified: Thu, 15 Feb 2018 15:55:26 GMT  
		Size: 2.9 KB (2887 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c7a3590fa4e537fd619438bf4a5aa51fde071b259c3249f4758052854e7bec9`  
		Last Modified: Thu, 15 Feb 2018 15:56:13 GMT  
		Size: 22.7 MB (22696645 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d23f9c50ed7ec63c06aa4f500d306facd8ba2b6652fd6e1b0b0f299577a9d2f3`  
		Last Modified: Thu, 15 Feb 2018 15:56:09 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d572b314bd87f99370b2f68e6f0a1e8a6a71929d0a8ab5906eb9d589cf20e17a`  
		Last Modified: Thu, 15 Feb 2018 15:56:10 GMT  
		Size: 230.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `kapacitor:1.4.0` - linux; arm variant v7

```console
$ docker pull kapacitor@sha256:830030305d3361daa3c532660210fee6ef46de029baeb9aaa50fb1e282faf64c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **89.8 MB (89801599 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:60c24c3d14a1691fb2e0decc0b0f13b2bcb80980385ed2a1c8263c0a824112aa`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["kapacitord"]`

```dockerfile
# Tue, 12 Dec 2017 13:32:59 GMT
ADD file:d49e67cdc6ae27f43c5c002d96bff764fd43188dd7e8036f5d5f8c44eb12dcad in / 
# Tue, 12 Dec 2017 13:32:59 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 14:21:12 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 14:21:22 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 12 Dec 2017 16:47:34 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y bash-completion &&     awk 'f{if(sub(/^#/,"",$0)==0){f=0}};/^# enable bash completion/{f=1};{print;}' /etc/bash.bashrc > /etc/bash.bashrc.new &&     mv /etc/bash.bashrc.new /etc/bash.bashrc
# Tue, 12 Dec 2017 16:47:38 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Thu, 14 Dec 2017 03:35:51 GMT
ENV KAPACITOR_VERSION=1.4.0
# Thu, 15 Feb 2018 03:35:51 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb &&     gpg --batch --verify kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb.asc kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb &&     dpkg -i kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb &&     rm -f kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb*
# Thu, 15 Feb 2018 03:35:52 GMT
COPY file:4046787774ea4c49703132e9dbc6fb3a19cb54632aa7032dd8379f12b56034d9 in /etc/kapacitor/kapacitor.conf 
# Thu, 15 Feb 2018 03:35:52 GMT
EXPOSE 9092/tcp
# Thu, 15 Feb 2018 03:35:52 GMT
VOLUME [/var/lib/kapacitor]
# Thu, 15 Feb 2018 03:35:53 GMT
COPY file:e5d90b0779cb7845ca3a7981c04a97fd959fea211a2ce19c8da8b949f9d9d04c in /entrypoint.sh 
# Thu, 15 Feb 2018 03:35:53 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 15 Feb 2018 03:35:53 GMT
CMD ["kapacitord"]
```

-	Layers:
	-	`sha256:0e10ef01c84000f6f5865b480436e689e2d437a4a8b63b01d5ce85532872b636`  
		Last Modified: Tue, 12 Dec 2017 13:44:34 GMT  
		Size: 41.8 MB (41849695 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ed40614ea2a08dbc6237155db97d58d7051efa214bab1fd556c4414db68cb7c`  
		Last Modified: Tue, 12 Dec 2017 14:34:18 GMT  
		Size: 9.8 MB (9824565 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad0ea8727ac09b97803f430b101f4c67cbf9c7bc372a44c190f5a9719f5fb1e9`  
		Last Modified: Tue, 12 Dec 2017 14:34:16 GMT  
		Size: 3.9 MB (3912457 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e1f586cd69572068ee659a03c81307361754a89f97e2f50e876c3bdccb9456e`  
		Last Modified: Tue, 12 Dec 2017 16:48:37 GMT  
		Size: 12.9 MB (12905168 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c44138a0a418c7ab1d12647de165c563b9e3a9983e7b197632d31f5e1b179ea9`  
		Last Modified: Tue, 12 Dec 2017 16:48:36 GMT  
		Size: 2.9 KB (2919 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c070d367124a51eda5c48380246d0cb4cebff7ab41316323a0733ac716a9ec26`  
		Last Modified: Thu, 15 Feb 2018 03:36:40 GMT  
		Size: 21.3 MB (21306342 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:805ef1926c4ee66f152e02b80b34ae7be38a0afe6a6896da512194d49e0cfe24`  
		Last Modified: Thu, 15 Feb 2018 03:36:32 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:286d1b59ba30941b32a0809a0b2e9e89ee961ceb118b8a00680e022aa2a10993`  
		Last Modified: Thu, 15 Feb 2018 03:36:32 GMT  
		Size: 229.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `kapacitor:1.4.0` - linux; arm64 variant v8

```console
$ docker pull kapacitor@sha256:a4937b89022c8e8b9f099f0402bd94922d0a5a0ae8d31d371b68a6c725a0c843
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **90.8 MB (90830006 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8ffde98d0f5752085208a20a26c68571ff5f3c60f4887b625873bf8d1ea8ccc9`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["kapacitord"]`

```dockerfile
# Tue, 12 Dec 2017 18:33:14 GMT
ADD file:ae07a2e0bd59c986cf9cec3d7ce9a3db8f8034bac7b69938557e472980c70cdc in / 
# Tue, 12 Dec 2017 18:33:14 GMT
CMD ["bash"]
# Fri, 15 Dec 2017 16:14:25 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 15 Dec 2017 16:14:42 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 15 Dec 2017 21:29:33 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y bash-completion &&     awk 'f{if(sub(/^#/,"",$0)==0){f=0}};/^# enable bash completion/{f=1};{print;}' /etc/bash.bashrc > /etc/bash.bashrc.new &&     mv /etc/bash.bashrc.new /etc/bash.bashrc
# Fri, 15 Dec 2017 21:29:37 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Fri, 15 Dec 2017 21:30:00 GMT
ENV KAPACITOR_VERSION=1.4.0
# Thu, 15 Feb 2018 01:39:19 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb &&     gpg --batch --verify kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb.asc kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb &&     dpkg -i kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb &&     rm -f kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb*
# Thu, 15 Feb 2018 01:39:20 GMT
COPY file:4046787774ea4c49703132e9dbc6fb3a19cb54632aa7032dd8379f12b56034d9 in /etc/kapacitor/kapacitor.conf 
# Thu, 15 Feb 2018 01:39:20 GMT
EXPOSE 9092/tcp
# Thu, 15 Feb 2018 01:39:21 GMT
VOLUME [/var/lib/kapacitor]
# Thu, 15 Feb 2018 01:39:22 GMT
COPY file:e5d90b0779cb7845ca3a7981c04a97fd959fea211a2ce19c8da8b949f9d9d04c in /entrypoint.sh 
# Thu, 15 Feb 2018 01:39:24 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 15 Feb 2018 01:39:25 GMT
CMD ["kapacitord"]
```

-	Layers:
	-	`sha256:91ea0aed359111bf5beb30e4bebd50fac25bc40a69e1bb3bf0f8e3c6dcd5fa7f`  
		Last Modified: Tue, 12 Dec 2017 18:47:08 GMT  
		Size: 42.9 MB (42912813 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc2797c29bc6ab5e2ad91b16dea60d7b6f0d4fffb5261f539870b43a7ffca40e`  
		Last Modified: Fri, 15 Dec 2017 17:19:24 GMT  
		Size: 10.1 MB (10066285 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8edcd3d8093caa7ca86f40f4413c1ae7ca97ae1480289f06339fff174a2a7d6a`  
		Last Modified: Fri, 15 Dec 2017 17:19:21 GMT  
		Size: 4.1 MB (4087788 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94a6808d7d7452e42fe73ffc5e3aff5c31446d4c59e8af7eab5bf9b1f01cdc76`  
		Last Modified: Fri, 15 Dec 2017 21:30:30 GMT  
		Size: 12.5 MB (12453666 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6cda4b46aae69d9a90469c4a599a08db52b886b3e6c6ea016b4116d46072fd4`  
		Last Modified: Fri, 15 Dec 2017 21:30:27 GMT  
		Size: 2.9 KB (2887 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee07307c031b9e25e8d49a1ffc89670fd3dda526abe83551d95ae633a04204b8`  
		Last Modified: Thu, 15 Feb 2018 01:40:29 GMT  
		Size: 21.3 MB (21306112 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:510f3d81c7d776fdde1278441cb938e17b870b204d0fb1a48e214a7b8963f6ae`  
		Last Modified: Thu, 15 Feb 2018 01:40:21 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f44ac70c38f7704bc7663f244ea829d4697133f2915be5a9e1c461a50423af3`  
		Last Modified: Thu, 15 Feb 2018 01:40:21 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kapacitor:1.4.0-alpine`

```console
$ docker pull kapacitor@sha256:c5253f80a9bc355288a3f3f9fa4971c6271aeeb2d00a6238aab6ee2a84774e90
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `kapacitor:1.4.0-alpine` - linux; amd64

```console
$ docker pull kapacitor@sha256:f8c5eec284259bc20843462e7662e1416d799d01f791c0fe474ea0abf639045e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.9 MB (18940743 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:07146422cacb2748fb11e168b0d6856bb2e507e7c8526b3db81543a45c54833d`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["kapacitord"]`

```dockerfile
# Tue, 09 Jan 2018 21:10:38 GMT
ADD file:6edc55fb54ec9fc3658c8f5176a70e792103a516154442f94fed8e0290e4960e in / 
# Tue, 09 Jan 2018 21:10:38 GMT
CMD ["/bin/sh"]
# Tue, 09 Jan 2018 21:31:21 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf
# Tue, 09 Jan 2018 23:46:37 GMT
RUN apk add --no-cache ca-certificates &&     update-ca-certificates
# Tue, 09 Jan 2018 23:47:23 GMT
ENV KAPACITOR_VERSION=1.4.0
# Wed, 14 Feb 2018 21:12:03 GMT
RUN set -ex &&     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz.asc kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/kapacitor-*/kapacitor.conf &&     chmod +x /usr/src/kapacitor-*/* &&     cp -a /usr/src/kapacitor-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Wed, 14 Feb 2018 21:12:03 GMT
COPY file:4046787774ea4c49703132e9dbc6fb3a19cb54632aa7032dd8379f12b56034d9 in /etc/kapacitor/kapacitor.conf 
# Wed, 14 Feb 2018 21:12:04 GMT
EXPOSE 9092/tcp
# Wed, 14 Feb 2018 21:12:04 GMT
VOLUME [/var/lib/kapacitor]
# Wed, 14 Feb 2018 21:12:05 GMT
COPY file:440a837280df72a19ed72b91fab9bdcfd268250b241bbc22509699f880fe0d17 in /entrypoint.sh 
# Wed, 14 Feb 2018 21:12:05 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 14 Feb 2018 21:12:05 GMT
CMD ["kapacitord"]
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
	-	`sha256:159493a148803fde2080076c2b2698db62a3a63f40206ae2fcf81ef192f5210a`  
		Last Modified: Tue, 09 Jan 2018 23:48:08 GMT  
		Size: 351.0 KB (351014 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cbfa8f01c944528235f7c22f144e1afb92cf0fb233390b17238118e5c410417d`  
		Last Modified: Wed, 14 Feb 2018 21:21:29 GMT  
		Size: 16.6 MB (16597378 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d445d41aae63fa7d7750e17c0a00a4442ddf45ff0daaa4b469f0ae7655b920c`  
		Last Modified: Wed, 14 Feb 2018 21:21:24 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d317d8ddfb7610fbd830ba6c9cf603b73dcb39550a4352ecb8105b7ecc84ea6`  
		Last Modified: Wed, 14 Feb 2018 21:21:24 GMT  
		Size: 228.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kapacitor:1.4-alpine`

```console
$ docker pull kapacitor@sha256:c5253f80a9bc355288a3f3f9fa4971c6271aeeb2d00a6238aab6ee2a84774e90
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `kapacitor:1.4-alpine` - linux; amd64

```console
$ docker pull kapacitor@sha256:f8c5eec284259bc20843462e7662e1416d799d01f791c0fe474ea0abf639045e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.9 MB (18940743 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:07146422cacb2748fb11e168b0d6856bb2e507e7c8526b3db81543a45c54833d`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["kapacitord"]`

```dockerfile
# Tue, 09 Jan 2018 21:10:38 GMT
ADD file:6edc55fb54ec9fc3658c8f5176a70e792103a516154442f94fed8e0290e4960e in / 
# Tue, 09 Jan 2018 21:10:38 GMT
CMD ["/bin/sh"]
# Tue, 09 Jan 2018 21:31:21 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf
# Tue, 09 Jan 2018 23:46:37 GMT
RUN apk add --no-cache ca-certificates &&     update-ca-certificates
# Tue, 09 Jan 2018 23:47:23 GMT
ENV KAPACITOR_VERSION=1.4.0
# Wed, 14 Feb 2018 21:12:03 GMT
RUN set -ex &&     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz.asc kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/kapacitor-*/kapacitor.conf &&     chmod +x /usr/src/kapacitor-*/* &&     cp -a /usr/src/kapacitor-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Wed, 14 Feb 2018 21:12:03 GMT
COPY file:4046787774ea4c49703132e9dbc6fb3a19cb54632aa7032dd8379f12b56034d9 in /etc/kapacitor/kapacitor.conf 
# Wed, 14 Feb 2018 21:12:04 GMT
EXPOSE 9092/tcp
# Wed, 14 Feb 2018 21:12:04 GMT
VOLUME [/var/lib/kapacitor]
# Wed, 14 Feb 2018 21:12:05 GMT
COPY file:440a837280df72a19ed72b91fab9bdcfd268250b241bbc22509699f880fe0d17 in /entrypoint.sh 
# Wed, 14 Feb 2018 21:12:05 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 14 Feb 2018 21:12:05 GMT
CMD ["kapacitord"]
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
	-	`sha256:159493a148803fde2080076c2b2698db62a3a63f40206ae2fcf81ef192f5210a`  
		Last Modified: Tue, 09 Jan 2018 23:48:08 GMT  
		Size: 351.0 KB (351014 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cbfa8f01c944528235f7c22f144e1afb92cf0fb233390b17238118e5c410417d`  
		Last Modified: Wed, 14 Feb 2018 21:21:29 GMT  
		Size: 16.6 MB (16597378 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d445d41aae63fa7d7750e17c0a00a4442ddf45ff0daaa4b469f0ae7655b920c`  
		Last Modified: Wed, 14 Feb 2018 21:21:24 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d317d8ddfb7610fbd830ba6c9cf603b73dcb39550a4352ecb8105b7ecc84ea6`  
		Last Modified: Wed, 14 Feb 2018 21:21:24 GMT  
		Size: 228.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kapacitor:alpine`

```console
$ docker pull kapacitor@sha256:c5253f80a9bc355288a3f3f9fa4971c6271aeeb2d00a6238aab6ee2a84774e90
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `kapacitor:alpine` - linux; amd64

```console
$ docker pull kapacitor@sha256:f8c5eec284259bc20843462e7662e1416d799d01f791c0fe474ea0abf639045e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.9 MB (18940743 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:07146422cacb2748fb11e168b0d6856bb2e507e7c8526b3db81543a45c54833d`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["kapacitord"]`

```dockerfile
# Tue, 09 Jan 2018 21:10:38 GMT
ADD file:6edc55fb54ec9fc3658c8f5176a70e792103a516154442f94fed8e0290e4960e in / 
# Tue, 09 Jan 2018 21:10:38 GMT
CMD ["/bin/sh"]
# Tue, 09 Jan 2018 21:31:21 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf
# Tue, 09 Jan 2018 23:46:37 GMT
RUN apk add --no-cache ca-certificates &&     update-ca-certificates
# Tue, 09 Jan 2018 23:47:23 GMT
ENV KAPACITOR_VERSION=1.4.0
# Wed, 14 Feb 2018 21:12:03 GMT
RUN set -ex &&     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz.asc kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/kapacitor-*/kapacitor.conf &&     chmod +x /usr/src/kapacitor-*/* &&     cp -a /usr/src/kapacitor-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Wed, 14 Feb 2018 21:12:03 GMT
COPY file:4046787774ea4c49703132e9dbc6fb3a19cb54632aa7032dd8379f12b56034d9 in /etc/kapacitor/kapacitor.conf 
# Wed, 14 Feb 2018 21:12:04 GMT
EXPOSE 9092/tcp
# Wed, 14 Feb 2018 21:12:04 GMT
VOLUME [/var/lib/kapacitor]
# Wed, 14 Feb 2018 21:12:05 GMT
COPY file:440a837280df72a19ed72b91fab9bdcfd268250b241bbc22509699f880fe0d17 in /entrypoint.sh 
# Wed, 14 Feb 2018 21:12:05 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 14 Feb 2018 21:12:05 GMT
CMD ["kapacitord"]
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
	-	`sha256:159493a148803fde2080076c2b2698db62a3a63f40206ae2fcf81ef192f5210a`  
		Last Modified: Tue, 09 Jan 2018 23:48:08 GMT  
		Size: 351.0 KB (351014 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cbfa8f01c944528235f7c22f144e1afb92cf0fb233390b17238118e5c410417d`  
		Last Modified: Wed, 14 Feb 2018 21:21:29 GMT  
		Size: 16.6 MB (16597378 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d445d41aae63fa7d7750e17c0a00a4442ddf45ff0daaa4b469f0ae7655b920c`  
		Last Modified: Wed, 14 Feb 2018 21:21:24 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d317d8ddfb7610fbd830ba6c9cf603b73dcb39550a4352ecb8105b7ecc84ea6`  
		Last Modified: Wed, 14 Feb 2018 21:21:24 GMT  
		Size: 228.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kapacitor:latest`

```console
$ docker pull kapacitor@sha256:37aab93de94a635e9b35ff7aa05bf01fa94f1eadbf8cc33364b9bd5753567e5f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `kapacitor:latest` - linux; amd64

```console
$ docker pull kapacitor@sha256:4c6db1c72193ee7bf3eb777b0c0dbb15d409f2a4b85ae1afbaaf6c858802c80b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **96.1 MB (96078290 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b41e492688e6222396c2e66a800cfcdeaa1b663fb658f5495fbc33a84df43efe`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["kapacitord"]`

```dockerfile
# Thu, 15 Feb 2018 01:58:24 GMT
ADD file:7d3b21b18d7bc6d6db1349979cf0e68073647e90c892aebab0da5d679b5550eb in / 
# Thu, 15 Feb 2018 02:01:04 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 03:55:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 03:55:59 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 15 Feb 2018 15:54:07 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y bash-completion &&     awk 'f{if(sub(/^#/,"",$0)==0){f=0}};/^# enable bash completion/{f=1};{print;}' /etc/bash.bashrc > /etc/bash.bashrc.new &&     mv /etc/bash.bashrc.new /etc/bash.bashrc
# Thu, 15 Feb 2018 15:54:11 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Thu, 15 Feb 2018 15:54:46 GMT
ENV KAPACITOR_VERSION=1.4.0
# Thu, 15 Feb 2018 15:54:51 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb &&     gpg --batch --verify kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb.asc kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb &&     dpkg -i kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb &&     rm -f kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb*
# Thu, 15 Feb 2018 15:54:52 GMT
COPY file:4046787774ea4c49703132e9dbc6fb3a19cb54632aa7032dd8379f12b56034d9 in /etc/kapacitor/kapacitor.conf 
# Thu, 15 Feb 2018 15:54:52 GMT
EXPOSE 9092/tcp
# Thu, 15 Feb 2018 15:54:53 GMT
VOLUME [/var/lib/kapacitor]
# Thu, 15 Feb 2018 15:54:53 GMT
COPY file:e5d90b0779cb7845ca3a7981c04a97fd959fea211a2ce19c8da8b949f9d9d04c in /entrypoint.sh 
# Thu, 15 Feb 2018 15:54:54 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 15 Feb 2018 15:54:54 GMT
CMD ["kapacitord"]
```

-	Layers:
	-	`sha256:3e731ddb7fc902c6fc10f00cd7f99f11d63914692bd8c2816a29e6d016353932`  
		Last Modified: Thu, 15 Feb 2018 02:26:01 GMT  
		Size: 45.1 MB (45132625 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47cafa6a79d0be5bd8a64fe52bfc4178072e067e8f5ed5c224d5330107424335`  
		Last Modified: Thu, 15 Feb 2018 04:40:22 GMT  
		Size: 11.1 MB (11107850 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79fcf5a213c7dfb0aa4eeed5922f9c2b6261cf60bb27f2dd9d761d6030689b39`  
		Last Modified: Thu, 15 Feb 2018 04:40:19 GMT  
		Size: 4.3 MB (4335400 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38e549551164401df0ae72d416d7ac1220cdb7cffc2c3c1dba05a0f78d5245ec`  
		Last Modified: Thu, 15 Feb 2018 15:55:30 GMT  
		Size: 12.8 MB (12802430 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28dd7720a4a6faeaaaa45828dea7b3c1f69e68af668fa085439e03ca0e64f90a`  
		Last Modified: Thu, 15 Feb 2018 15:55:26 GMT  
		Size: 2.9 KB (2887 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c7a3590fa4e537fd619438bf4a5aa51fde071b259c3249f4758052854e7bec9`  
		Last Modified: Thu, 15 Feb 2018 15:56:13 GMT  
		Size: 22.7 MB (22696645 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d23f9c50ed7ec63c06aa4f500d306facd8ba2b6652fd6e1b0b0f299577a9d2f3`  
		Last Modified: Thu, 15 Feb 2018 15:56:09 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d572b314bd87f99370b2f68e6f0a1e8a6a71929d0a8ab5906eb9d589cf20e17a`  
		Last Modified: Thu, 15 Feb 2018 15:56:10 GMT  
		Size: 230.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `kapacitor:latest` - linux; arm variant v7

```console
$ docker pull kapacitor@sha256:830030305d3361daa3c532660210fee6ef46de029baeb9aaa50fb1e282faf64c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **89.8 MB (89801599 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:60c24c3d14a1691fb2e0decc0b0f13b2bcb80980385ed2a1c8263c0a824112aa`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["kapacitord"]`

```dockerfile
# Tue, 12 Dec 2017 13:32:59 GMT
ADD file:d49e67cdc6ae27f43c5c002d96bff764fd43188dd7e8036f5d5f8c44eb12dcad in / 
# Tue, 12 Dec 2017 13:32:59 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 14:21:12 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 14:21:22 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 12 Dec 2017 16:47:34 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y bash-completion &&     awk 'f{if(sub(/^#/,"",$0)==0){f=0}};/^# enable bash completion/{f=1};{print;}' /etc/bash.bashrc > /etc/bash.bashrc.new &&     mv /etc/bash.bashrc.new /etc/bash.bashrc
# Tue, 12 Dec 2017 16:47:38 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Thu, 14 Dec 2017 03:35:51 GMT
ENV KAPACITOR_VERSION=1.4.0
# Thu, 15 Feb 2018 03:35:51 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb &&     gpg --batch --verify kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb.asc kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb &&     dpkg -i kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb &&     rm -f kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb*
# Thu, 15 Feb 2018 03:35:52 GMT
COPY file:4046787774ea4c49703132e9dbc6fb3a19cb54632aa7032dd8379f12b56034d9 in /etc/kapacitor/kapacitor.conf 
# Thu, 15 Feb 2018 03:35:52 GMT
EXPOSE 9092/tcp
# Thu, 15 Feb 2018 03:35:52 GMT
VOLUME [/var/lib/kapacitor]
# Thu, 15 Feb 2018 03:35:53 GMT
COPY file:e5d90b0779cb7845ca3a7981c04a97fd959fea211a2ce19c8da8b949f9d9d04c in /entrypoint.sh 
# Thu, 15 Feb 2018 03:35:53 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 15 Feb 2018 03:35:53 GMT
CMD ["kapacitord"]
```

-	Layers:
	-	`sha256:0e10ef01c84000f6f5865b480436e689e2d437a4a8b63b01d5ce85532872b636`  
		Last Modified: Tue, 12 Dec 2017 13:44:34 GMT  
		Size: 41.8 MB (41849695 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ed40614ea2a08dbc6237155db97d58d7051efa214bab1fd556c4414db68cb7c`  
		Last Modified: Tue, 12 Dec 2017 14:34:18 GMT  
		Size: 9.8 MB (9824565 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad0ea8727ac09b97803f430b101f4c67cbf9c7bc372a44c190f5a9719f5fb1e9`  
		Last Modified: Tue, 12 Dec 2017 14:34:16 GMT  
		Size: 3.9 MB (3912457 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e1f586cd69572068ee659a03c81307361754a89f97e2f50e876c3bdccb9456e`  
		Last Modified: Tue, 12 Dec 2017 16:48:37 GMT  
		Size: 12.9 MB (12905168 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c44138a0a418c7ab1d12647de165c563b9e3a9983e7b197632d31f5e1b179ea9`  
		Last Modified: Tue, 12 Dec 2017 16:48:36 GMT  
		Size: 2.9 KB (2919 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c070d367124a51eda5c48380246d0cb4cebff7ab41316323a0733ac716a9ec26`  
		Last Modified: Thu, 15 Feb 2018 03:36:40 GMT  
		Size: 21.3 MB (21306342 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:805ef1926c4ee66f152e02b80b34ae7be38a0afe6a6896da512194d49e0cfe24`  
		Last Modified: Thu, 15 Feb 2018 03:36:32 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:286d1b59ba30941b32a0809a0b2e9e89ee961ceb118b8a00680e022aa2a10993`  
		Last Modified: Thu, 15 Feb 2018 03:36:32 GMT  
		Size: 229.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `kapacitor:latest` - linux; arm64 variant v8

```console
$ docker pull kapacitor@sha256:a4937b89022c8e8b9f099f0402bd94922d0a5a0ae8d31d371b68a6c725a0c843
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **90.8 MB (90830006 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8ffde98d0f5752085208a20a26c68571ff5f3c60f4887b625873bf8d1ea8ccc9`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["kapacitord"]`

```dockerfile
# Tue, 12 Dec 2017 18:33:14 GMT
ADD file:ae07a2e0bd59c986cf9cec3d7ce9a3db8f8034bac7b69938557e472980c70cdc in / 
# Tue, 12 Dec 2017 18:33:14 GMT
CMD ["bash"]
# Fri, 15 Dec 2017 16:14:25 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 15 Dec 2017 16:14:42 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 15 Dec 2017 21:29:33 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y bash-completion &&     awk 'f{if(sub(/^#/,"",$0)==0){f=0}};/^# enable bash completion/{f=1};{print;}' /etc/bash.bashrc > /etc/bash.bashrc.new &&     mv /etc/bash.bashrc.new /etc/bash.bashrc
# Fri, 15 Dec 2017 21:29:37 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Fri, 15 Dec 2017 21:30:00 GMT
ENV KAPACITOR_VERSION=1.4.0
# Thu, 15 Feb 2018 01:39:19 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb &&     gpg --batch --verify kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb.asc kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb &&     dpkg -i kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb &&     rm -f kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb*
# Thu, 15 Feb 2018 01:39:20 GMT
COPY file:4046787774ea4c49703132e9dbc6fb3a19cb54632aa7032dd8379f12b56034d9 in /etc/kapacitor/kapacitor.conf 
# Thu, 15 Feb 2018 01:39:20 GMT
EXPOSE 9092/tcp
# Thu, 15 Feb 2018 01:39:21 GMT
VOLUME [/var/lib/kapacitor]
# Thu, 15 Feb 2018 01:39:22 GMT
COPY file:e5d90b0779cb7845ca3a7981c04a97fd959fea211a2ce19c8da8b949f9d9d04c in /entrypoint.sh 
# Thu, 15 Feb 2018 01:39:24 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 15 Feb 2018 01:39:25 GMT
CMD ["kapacitord"]
```

-	Layers:
	-	`sha256:91ea0aed359111bf5beb30e4bebd50fac25bc40a69e1bb3bf0f8e3c6dcd5fa7f`  
		Last Modified: Tue, 12 Dec 2017 18:47:08 GMT  
		Size: 42.9 MB (42912813 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc2797c29bc6ab5e2ad91b16dea60d7b6f0d4fffb5261f539870b43a7ffca40e`  
		Last Modified: Fri, 15 Dec 2017 17:19:24 GMT  
		Size: 10.1 MB (10066285 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8edcd3d8093caa7ca86f40f4413c1ae7ca97ae1480289f06339fff174a2a7d6a`  
		Last Modified: Fri, 15 Dec 2017 17:19:21 GMT  
		Size: 4.1 MB (4087788 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94a6808d7d7452e42fe73ffc5e3aff5c31446d4c59e8af7eab5bf9b1f01cdc76`  
		Last Modified: Fri, 15 Dec 2017 21:30:30 GMT  
		Size: 12.5 MB (12453666 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6cda4b46aae69d9a90469c4a599a08db52b886b3e6c6ea016b4116d46072fd4`  
		Last Modified: Fri, 15 Dec 2017 21:30:27 GMT  
		Size: 2.9 KB (2887 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee07307c031b9e25e8d49a1ffc89670fd3dda526abe83551d95ae633a04204b8`  
		Last Modified: Thu, 15 Feb 2018 01:40:29 GMT  
		Size: 21.3 MB (21306112 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:510f3d81c7d776fdde1278441cb938e17b870b204d0fb1a48e214a7b8963f6ae`  
		Last Modified: Thu, 15 Feb 2018 01:40:21 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f44ac70c38f7704bc7663f244ea829d4697133f2915be5a9e1c461a50423af3`  
		Last Modified: Thu, 15 Feb 2018 01:40:21 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
