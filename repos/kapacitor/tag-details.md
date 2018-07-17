<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `kapacitor`

-	[`kapacitor:1.4`](#kapacitor14)
-	[`kapacitor:1.4.1`](#kapacitor141)
-	[`kapacitor:1.4.1-alpine`](#kapacitor141-alpine)
-	[`kapacitor:1.4-alpine`](#kapacitor14-alpine)
-	[`kapacitor:1.5`](#kapacitor15)
-	[`kapacitor:1.5.0`](#kapacitor150)
-	[`kapacitor:1.5.0-alpine`](#kapacitor150-alpine)
-	[`kapacitor:1.5-alpine`](#kapacitor15-alpine)
-	[`kapacitor:alpine`](#kapacitoralpine)
-	[`kapacitor:latest`](#kapacitorlatest)

## `kapacitor:1.4`

```console
$ docker pull kapacitor@sha256:a26c2c0107a1dad9663c1c05b0e9fb2ab37b6ea9024b7f0040082767949129cf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `kapacitor:1.4` - linux; amd64

```console
$ docker pull kapacitor@sha256:747aae6a5040647eaae96c11fdceb0da7204a5bde149cc427c3efbd4558b0c96
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **96.0 MB (95961011 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:19fdf0705cc88ff354b49b82b7dfb9805ad3aa999c34bca7c1623ae51a936985`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["kapacitord"]`

```dockerfile
# Tue, 17 Jul 2018 00:27:24 GMT
ADD file:370028dca6e8ca9ed228549d52231cf8139515cc3a14c00aaed75a60b679775f in / 
# Tue, 17 Jul 2018 00:27:24 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 03:12:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 03:13:02 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 17 Jul 2018 12:36:56 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y bash-completion &&     awk 'f{if(sub(/^#/,"",$0)==0){f=0}};/^# enable bash completion/{f=1};{print;}' /etc/bash.bashrc > /etc/bash.bashrc.new &&     mv /etc/bash.bashrc.new /etc/bash.bashrc
# Tue, 17 Jul 2018 12:36:59 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Tue, 17 Jul 2018 12:36:59 GMT
ENV KAPACITOR_VERSION=1.4.1
# Tue, 17 Jul 2018 12:37:09 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb &&     gpg --batch --verify kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb.asc kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb &&     dpkg -i kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb &&     rm -f kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb*
# Tue, 17 Jul 2018 12:37:09 GMT
COPY file:4046787774ea4c49703132e9dbc6fb3a19cb54632aa7032dd8379f12b56034d9 in /etc/kapacitor/kapacitor.conf 
# Tue, 17 Jul 2018 12:37:10 GMT
EXPOSE 9092/tcp
# Tue, 17 Jul 2018 12:37:10 GMT
VOLUME [/var/lib/kapacitor]
# Tue, 17 Jul 2018 12:37:10 GMT
COPY file:e5d90b0779cb7845ca3a7981c04a97fd959fea211a2ce19c8da8b949f9d9d04c in /entrypoint.sh 
# Tue, 17 Jul 2018 12:37:11 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 17 Jul 2018 12:37:11 GMT
CMD ["kapacitord"]
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
	-	`sha256:836f48cd453a3729e177a5a0d447ec81b9e15d912636bfb4d2575b6b153fd02f`  
		Last Modified: Tue, 17 Jul 2018 12:37:56 GMT  
		Size: 12.9 MB (12877196 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b80d6524e68f13d1e8f05ae2e3dae208c38f63dfb32ed80b1cc7301f233719a9`  
		Last Modified: Tue, 17 Jul 2018 12:37:55 GMT  
		Size: 2.9 KB (2887 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46640d5a5076d96331d5e510cb0271d42de7346a42dfc4fd13833034357a6caa`  
		Last Modified: Tue, 17 Jul 2018 12:38:00 GMT  
		Size: 22.7 MB (22694154 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dce50e73a3651fc899cf1d0950c684b1cbe36e0876385c70ee2517e2242acbc5`  
		Last Modified: Tue, 17 Jul 2018 12:37:55 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d2bc34669381b26682a2f66b0c6d2ce13c55db1a87609e46113bb3abc7b38c5`  
		Last Modified: Tue, 17 Jul 2018 12:37:57 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `kapacitor:1.4` - linux; arm variant v7

```console
$ docker pull kapacitor@sha256:3d2898790efa91e53a7c4290e4f94a78f1422b49f522e21d6c40ce124bc77ddb
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **89.8 MB (89774615 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dc8c2c20351b077e602980aa06b1d4efe9d6cb03eff34b8d62d424c5258914c8`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["kapacitord"]`

```dockerfile
# Tue, 17 Jul 2018 12:05:25 GMT
ADD file:77cbe27c4436cc4c9d81bee6c5ae0fee0c6d1708813d34abd2af2d3ebd7d96a5 in / 
# Tue, 17 Jul 2018 12:05:26 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 13:46:48 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 13:46:56 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 17 Jul 2018 18:14:38 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y bash-completion &&     awk 'f{if(sub(/^#/,"",$0)==0){f=0}};/^# enable bash completion/{f=1};{print;}' /etc/bash.bashrc > /etc/bash.bashrc.new &&     mv /etc/bash.bashrc.new /etc/bash.bashrc
# Tue, 17 Jul 2018 18:14:42 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Tue, 17 Jul 2018 18:14:43 GMT
ENV KAPACITOR_VERSION=1.4.1
# Tue, 17 Jul 2018 18:14:56 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb &&     gpg --batch --verify kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb.asc kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb &&     dpkg -i kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb &&     rm -f kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb*
# Tue, 17 Jul 2018 18:14:56 GMT
COPY file:4046787774ea4c49703132e9dbc6fb3a19cb54632aa7032dd8379f12b56034d9 in /etc/kapacitor/kapacitor.conf 
# Tue, 17 Jul 2018 18:14:57 GMT
EXPOSE 9092/tcp
# Tue, 17 Jul 2018 18:14:57 GMT
VOLUME [/var/lib/kapacitor]
# Tue, 17 Jul 2018 18:14:58 GMT
COPY file:e5d90b0779cb7845ca3a7981c04a97fd959fea211a2ce19c8da8b949f9d9d04c in /entrypoint.sh 
# Tue, 17 Jul 2018 18:14:58 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 17 Jul 2018 18:14:58 GMT
CMD ["kapacitord"]
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
	-	`sha256:99159768fc5e85452b01efae88071acfe309ceceaddbe55b2059f792991cd5db`  
		Last Modified: Tue, 17 Jul 2018 18:15:49 GMT  
		Size: 13.0 MB (13049345 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83cf21d590e2bbabb8488f12e6dd076c487118c12927522326a4954a818bc4f5`  
		Last Modified: Tue, 17 Jul 2018 18:15:45 GMT  
		Size: 2.9 KB (2918 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f5a32ae8d8f68920ee1174e7299ad5c6f1203d8e0ab5bb167b5c933fdecd2db`  
		Last Modified: Tue, 17 Jul 2018 18:15:57 GMT  
		Size: 21.3 MB (21307910 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9fb479d08fe5be6eae2e6bbdfb307e49b778d6f906e8ea1c3fcea41a38841ee9`  
		Last Modified: Tue, 17 Jul 2018 18:15:46 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:672564453192347f8f76f37a97bdf9bb91a1d7ae865fb3be74e5c7692b4c3adf`  
		Last Modified: Tue, 17 Jul 2018 18:15:46 GMT  
		Size: 229.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `kapacitor:1.4` - linux; arm64 variant v8

```console
$ docker pull kapacitor@sha256:d597473f207ea4e705f71867406e4302a84c79ec776b560685329e932334905a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **90.8 MB (90840612 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:52381b05c28aa567a3724fb54a574a6c6311b4a5e1ed8ee1ab662ac78f032d84`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["kapacitord"]`

```dockerfile
# Wed, 27 Jun 2018 08:47:01 GMT
ADD file:0f69db95e9a06ee21c38014c8bc6c142be97ec4d5127ba83f1d0ef48806f7415 in / 
# Wed, 27 Jun 2018 08:47:02 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 10:46:58 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 10:47:23 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 27 Jun 2018 19:33:47 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y bash-completion &&     awk 'f{if(sub(/^#/,"",$0)==0){f=0}};/^# enable bash completion/{f=1};{print;}' /etc/bash.bashrc > /etc/bash.bashrc.new &&     mv /etc/bash.bashrc.new /etc/bash.bashrc
# Wed, 27 Jun 2018 19:33:52 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Wed, 27 Jun 2018 19:33:53 GMT
ENV KAPACITOR_VERSION=1.4.1
# Wed, 27 Jun 2018 19:34:07 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb &&     gpg --batch --verify kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb.asc kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb &&     dpkg -i kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb &&     rm -f kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb*
# Wed, 27 Jun 2018 19:34:08 GMT
COPY file:4046787774ea4c49703132e9dbc6fb3a19cb54632aa7032dd8379f12b56034d9 in /etc/kapacitor/kapacitor.conf 
# Wed, 27 Jun 2018 19:34:09 GMT
EXPOSE 9092/tcp
# Wed, 27 Jun 2018 19:34:10 GMT
VOLUME [/var/lib/kapacitor]
# Wed, 27 Jun 2018 19:34:11 GMT
COPY file:e5d90b0779cb7845ca3a7981c04a97fd959fea211a2ce19c8da8b949f9d9d04c in /entrypoint.sh 
# Wed, 27 Jun 2018 19:34:12 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 27 Jun 2018 19:34:13 GMT
CMD ["kapacitord"]
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
	-	`sha256:7c5e21d9efcccb25c99e1041f62bb7db8f74ae3dedab423ba2878e3b4cbd6b3b`  
		Last Modified: Wed, 27 Jun 2018 19:35:09 GMT  
		Size: 12.6 MB (12603098 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9819f68ef7bea0742c6dbeea158f2a2184cc0a22d1ec3d8ea09f20c340bbb931`  
		Last Modified: Wed, 27 Jun 2018 19:35:06 GMT  
		Size: 2.9 KB (2885 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be704746ac0046ec0a3249785fdfe72895f4c3292f51d5e23b6aec7e3c5bb308`  
		Last Modified: Wed, 27 Jun 2018 19:35:16 GMT  
		Size: 21.3 MB (21307668 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ec3d74a28ae7594a7ae934b6bff9c975c603425678f10a35ced7926f590ea98`  
		Last Modified: Wed, 27 Jun 2018 19:35:05 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:755bbc248486343b18c6a9b985ef0978a7739823cc0c69692b071653b408a40b`  
		Last Modified: Wed, 27 Jun 2018 19:35:06 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kapacitor:1.4.1`

```console
$ docker pull kapacitor@sha256:a26c2c0107a1dad9663c1c05b0e9fb2ab37b6ea9024b7f0040082767949129cf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `kapacitor:1.4.1` - linux; amd64

```console
$ docker pull kapacitor@sha256:747aae6a5040647eaae96c11fdceb0da7204a5bde149cc427c3efbd4558b0c96
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **96.0 MB (95961011 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:19fdf0705cc88ff354b49b82b7dfb9805ad3aa999c34bca7c1623ae51a936985`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["kapacitord"]`

```dockerfile
# Tue, 17 Jul 2018 00:27:24 GMT
ADD file:370028dca6e8ca9ed228549d52231cf8139515cc3a14c00aaed75a60b679775f in / 
# Tue, 17 Jul 2018 00:27:24 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 03:12:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 03:13:02 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 17 Jul 2018 12:36:56 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y bash-completion &&     awk 'f{if(sub(/^#/,"",$0)==0){f=0}};/^# enable bash completion/{f=1};{print;}' /etc/bash.bashrc > /etc/bash.bashrc.new &&     mv /etc/bash.bashrc.new /etc/bash.bashrc
# Tue, 17 Jul 2018 12:36:59 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Tue, 17 Jul 2018 12:36:59 GMT
ENV KAPACITOR_VERSION=1.4.1
# Tue, 17 Jul 2018 12:37:09 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb &&     gpg --batch --verify kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb.asc kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb &&     dpkg -i kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb &&     rm -f kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb*
# Tue, 17 Jul 2018 12:37:09 GMT
COPY file:4046787774ea4c49703132e9dbc6fb3a19cb54632aa7032dd8379f12b56034d9 in /etc/kapacitor/kapacitor.conf 
# Tue, 17 Jul 2018 12:37:10 GMT
EXPOSE 9092/tcp
# Tue, 17 Jul 2018 12:37:10 GMT
VOLUME [/var/lib/kapacitor]
# Tue, 17 Jul 2018 12:37:10 GMT
COPY file:e5d90b0779cb7845ca3a7981c04a97fd959fea211a2ce19c8da8b949f9d9d04c in /entrypoint.sh 
# Tue, 17 Jul 2018 12:37:11 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 17 Jul 2018 12:37:11 GMT
CMD ["kapacitord"]
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
	-	`sha256:836f48cd453a3729e177a5a0d447ec81b9e15d912636bfb4d2575b6b153fd02f`  
		Last Modified: Tue, 17 Jul 2018 12:37:56 GMT  
		Size: 12.9 MB (12877196 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b80d6524e68f13d1e8f05ae2e3dae208c38f63dfb32ed80b1cc7301f233719a9`  
		Last Modified: Tue, 17 Jul 2018 12:37:55 GMT  
		Size: 2.9 KB (2887 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46640d5a5076d96331d5e510cb0271d42de7346a42dfc4fd13833034357a6caa`  
		Last Modified: Tue, 17 Jul 2018 12:38:00 GMT  
		Size: 22.7 MB (22694154 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dce50e73a3651fc899cf1d0950c684b1cbe36e0876385c70ee2517e2242acbc5`  
		Last Modified: Tue, 17 Jul 2018 12:37:55 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d2bc34669381b26682a2f66b0c6d2ce13c55db1a87609e46113bb3abc7b38c5`  
		Last Modified: Tue, 17 Jul 2018 12:37:57 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `kapacitor:1.4.1` - linux; arm variant v7

```console
$ docker pull kapacitor@sha256:3d2898790efa91e53a7c4290e4f94a78f1422b49f522e21d6c40ce124bc77ddb
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **89.8 MB (89774615 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dc8c2c20351b077e602980aa06b1d4efe9d6cb03eff34b8d62d424c5258914c8`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["kapacitord"]`

```dockerfile
# Tue, 17 Jul 2018 12:05:25 GMT
ADD file:77cbe27c4436cc4c9d81bee6c5ae0fee0c6d1708813d34abd2af2d3ebd7d96a5 in / 
# Tue, 17 Jul 2018 12:05:26 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 13:46:48 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 13:46:56 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 17 Jul 2018 18:14:38 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y bash-completion &&     awk 'f{if(sub(/^#/,"",$0)==0){f=0}};/^# enable bash completion/{f=1};{print;}' /etc/bash.bashrc > /etc/bash.bashrc.new &&     mv /etc/bash.bashrc.new /etc/bash.bashrc
# Tue, 17 Jul 2018 18:14:42 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Tue, 17 Jul 2018 18:14:43 GMT
ENV KAPACITOR_VERSION=1.4.1
# Tue, 17 Jul 2018 18:14:56 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb &&     gpg --batch --verify kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb.asc kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb &&     dpkg -i kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb &&     rm -f kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb*
# Tue, 17 Jul 2018 18:14:56 GMT
COPY file:4046787774ea4c49703132e9dbc6fb3a19cb54632aa7032dd8379f12b56034d9 in /etc/kapacitor/kapacitor.conf 
# Tue, 17 Jul 2018 18:14:57 GMT
EXPOSE 9092/tcp
# Tue, 17 Jul 2018 18:14:57 GMT
VOLUME [/var/lib/kapacitor]
# Tue, 17 Jul 2018 18:14:58 GMT
COPY file:e5d90b0779cb7845ca3a7981c04a97fd959fea211a2ce19c8da8b949f9d9d04c in /entrypoint.sh 
# Tue, 17 Jul 2018 18:14:58 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 17 Jul 2018 18:14:58 GMT
CMD ["kapacitord"]
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
	-	`sha256:99159768fc5e85452b01efae88071acfe309ceceaddbe55b2059f792991cd5db`  
		Last Modified: Tue, 17 Jul 2018 18:15:49 GMT  
		Size: 13.0 MB (13049345 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83cf21d590e2bbabb8488f12e6dd076c487118c12927522326a4954a818bc4f5`  
		Last Modified: Tue, 17 Jul 2018 18:15:45 GMT  
		Size: 2.9 KB (2918 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f5a32ae8d8f68920ee1174e7299ad5c6f1203d8e0ab5bb167b5c933fdecd2db`  
		Last Modified: Tue, 17 Jul 2018 18:15:57 GMT  
		Size: 21.3 MB (21307910 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9fb479d08fe5be6eae2e6bbdfb307e49b778d6f906e8ea1c3fcea41a38841ee9`  
		Last Modified: Tue, 17 Jul 2018 18:15:46 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:672564453192347f8f76f37a97bdf9bb91a1d7ae865fb3be74e5c7692b4c3adf`  
		Last Modified: Tue, 17 Jul 2018 18:15:46 GMT  
		Size: 229.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `kapacitor:1.4.1` - linux; arm64 variant v8

```console
$ docker pull kapacitor@sha256:d597473f207ea4e705f71867406e4302a84c79ec776b560685329e932334905a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **90.8 MB (90840612 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:52381b05c28aa567a3724fb54a574a6c6311b4a5e1ed8ee1ab662ac78f032d84`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["kapacitord"]`

```dockerfile
# Wed, 27 Jun 2018 08:47:01 GMT
ADD file:0f69db95e9a06ee21c38014c8bc6c142be97ec4d5127ba83f1d0ef48806f7415 in / 
# Wed, 27 Jun 2018 08:47:02 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 10:46:58 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 10:47:23 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 27 Jun 2018 19:33:47 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y bash-completion &&     awk 'f{if(sub(/^#/,"",$0)==0){f=0}};/^# enable bash completion/{f=1};{print;}' /etc/bash.bashrc > /etc/bash.bashrc.new &&     mv /etc/bash.bashrc.new /etc/bash.bashrc
# Wed, 27 Jun 2018 19:33:52 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Wed, 27 Jun 2018 19:33:53 GMT
ENV KAPACITOR_VERSION=1.4.1
# Wed, 27 Jun 2018 19:34:07 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb &&     gpg --batch --verify kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb.asc kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb &&     dpkg -i kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb &&     rm -f kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb*
# Wed, 27 Jun 2018 19:34:08 GMT
COPY file:4046787774ea4c49703132e9dbc6fb3a19cb54632aa7032dd8379f12b56034d9 in /etc/kapacitor/kapacitor.conf 
# Wed, 27 Jun 2018 19:34:09 GMT
EXPOSE 9092/tcp
# Wed, 27 Jun 2018 19:34:10 GMT
VOLUME [/var/lib/kapacitor]
# Wed, 27 Jun 2018 19:34:11 GMT
COPY file:e5d90b0779cb7845ca3a7981c04a97fd959fea211a2ce19c8da8b949f9d9d04c in /entrypoint.sh 
# Wed, 27 Jun 2018 19:34:12 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 27 Jun 2018 19:34:13 GMT
CMD ["kapacitord"]
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
	-	`sha256:7c5e21d9efcccb25c99e1041f62bb7db8f74ae3dedab423ba2878e3b4cbd6b3b`  
		Last Modified: Wed, 27 Jun 2018 19:35:09 GMT  
		Size: 12.6 MB (12603098 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9819f68ef7bea0742c6dbeea158f2a2184cc0a22d1ec3d8ea09f20c340bbb931`  
		Last Modified: Wed, 27 Jun 2018 19:35:06 GMT  
		Size: 2.9 KB (2885 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be704746ac0046ec0a3249785fdfe72895f4c3292f51d5e23b6aec7e3c5bb308`  
		Last Modified: Wed, 27 Jun 2018 19:35:16 GMT  
		Size: 21.3 MB (21307668 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ec3d74a28ae7594a7ae934b6bff9c975c603425678f10a35ced7926f590ea98`  
		Last Modified: Wed, 27 Jun 2018 19:35:05 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:755bbc248486343b18c6a9b985ef0978a7739823cc0c69692b071653b408a40b`  
		Last Modified: Wed, 27 Jun 2018 19:35:06 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kapacitor:1.4.1-alpine`

```console
$ docker pull kapacitor@sha256:2e8d3187cfe4b1b9a8dea623927e1faf0cddfd87315bc3249b3fd10e690d8c30
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `kapacitor:1.4.1-alpine` - linux; amd64

```console
$ docker pull kapacitor@sha256:5a35b1053186a7e422bfb285fe561c2fd032c6e139556761fe1f11671ea68b0b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **19.0 MB (18965267 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:14df1144ffbf8257c59ed5b43289e0c0344e1804339b8dff6da58d8401bf5faa`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["kapacitord"]`

```dockerfile
# Fri, 06 Jul 2018 14:13:25 GMT
ADD file:eceadb32d029164d23db918d14c88df7186b6ee9645fa2f0c0a7e3e046a6a129 in / 
# Fri, 06 Jul 2018 14:13:25 GMT
CMD ["/bin/sh"]
# Fri, 06 Jul 2018 15:20:56 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf
# Fri, 06 Jul 2018 15:20:58 GMT
RUN apk add --no-cache ca-certificates &&     update-ca-certificates
# Fri, 06 Jul 2018 15:20:58 GMT
ENV KAPACITOR_VERSION=1.4.1
# Fri, 06 Jul 2018 15:21:10 GMT
RUN set -ex &&     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz.asc kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/kapacitor-*/kapacitor.conf &&     chmod +x /usr/src/kapacitor-*/* &&     cp -a /usr/src/kapacitor-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Fri, 06 Jul 2018 15:21:10 GMT
COPY file:4046787774ea4c49703132e9dbc6fb3a19cb54632aa7032dd8379f12b56034d9 in /etc/kapacitor/kapacitor.conf 
# Fri, 06 Jul 2018 15:21:11 GMT
EXPOSE 9092/tcp
# Fri, 06 Jul 2018 15:21:11 GMT
VOLUME [/var/lib/kapacitor]
# Fri, 06 Jul 2018 15:21:11 GMT
COPY file:440a837280df72a19ed72b91fab9bdcfd268250b241bbc22509699f880fe0d17 in /entrypoint.sh 
# Fri, 06 Jul 2018 15:21:12 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 06 Jul 2018 15:21:12 GMT
CMD ["kapacitord"]
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
	-	`sha256:75c2416479349969acdd798faedf7940c6f5b5d33f6dda56bdd2753b2c3a499c`  
		Last Modified: Fri, 06 Jul 2018 15:23:05 GMT  
		Size: 351.3 KB (351284 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b8e0833ca8c60e9b36f5cc681bbc66f879155e66f055ed057ef56a454807b5c`  
		Last Modified: Fri, 06 Jul 2018 15:23:13 GMT  
		Size: 16.6 MB (16598719 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8e810f93e3dbc1c458b559e5fbb2fdb6fc71d76046c01bcdadbf085fd1b2f7c`  
		Last Modified: Fri, 06 Jul 2018 15:23:05 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:822060089b631fe73858285539e3d8ccfcf305784495a0baf5354b03bfd6c882`  
		Last Modified: Fri, 06 Jul 2018 15:23:05 GMT  
		Size: 229.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kapacitor:1.4-alpine`

```console
$ docker pull kapacitor@sha256:2e8d3187cfe4b1b9a8dea623927e1faf0cddfd87315bc3249b3fd10e690d8c30
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `kapacitor:1.4-alpine` - linux; amd64

```console
$ docker pull kapacitor@sha256:5a35b1053186a7e422bfb285fe561c2fd032c6e139556761fe1f11671ea68b0b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **19.0 MB (18965267 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:14df1144ffbf8257c59ed5b43289e0c0344e1804339b8dff6da58d8401bf5faa`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["kapacitord"]`

```dockerfile
# Fri, 06 Jul 2018 14:13:25 GMT
ADD file:eceadb32d029164d23db918d14c88df7186b6ee9645fa2f0c0a7e3e046a6a129 in / 
# Fri, 06 Jul 2018 14:13:25 GMT
CMD ["/bin/sh"]
# Fri, 06 Jul 2018 15:20:56 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf
# Fri, 06 Jul 2018 15:20:58 GMT
RUN apk add --no-cache ca-certificates &&     update-ca-certificates
# Fri, 06 Jul 2018 15:20:58 GMT
ENV KAPACITOR_VERSION=1.4.1
# Fri, 06 Jul 2018 15:21:10 GMT
RUN set -ex &&     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz.asc kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/kapacitor-*/kapacitor.conf &&     chmod +x /usr/src/kapacitor-*/* &&     cp -a /usr/src/kapacitor-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Fri, 06 Jul 2018 15:21:10 GMT
COPY file:4046787774ea4c49703132e9dbc6fb3a19cb54632aa7032dd8379f12b56034d9 in /etc/kapacitor/kapacitor.conf 
# Fri, 06 Jul 2018 15:21:11 GMT
EXPOSE 9092/tcp
# Fri, 06 Jul 2018 15:21:11 GMT
VOLUME [/var/lib/kapacitor]
# Fri, 06 Jul 2018 15:21:11 GMT
COPY file:440a837280df72a19ed72b91fab9bdcfd268250b241bbc22509699f880fe0d17 in /entrypoint.sh 
# Fri, 06 Jul 2018 15:21:12 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 06 Jul 2018 15:21:12 GMT
CMD ["kapacitord"]
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
	-	`sha256:75c2416479349969acdd798faedf7940c6f5b5d33f6dda56bdd2753b2c3a499c`  
		Last Modified: Fri, 06 Jul 2018 15:23:05 GMT  
		Size: 351.3 KB (351284 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b8e0833ca8c60e9b36f5cc681bbc66f879155e66f055ed057ef56a454807b5c`  
		Last Modified: Fri, 06 Jul 2018 15:23:13 GMT  
		Size: 16.6 MB (16598719 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8e810f93e3dbc1c458b559e5fbb2fdb6fc71d76046c01bcdadbf085fd1b2f7c`  
		Last Modified: Fri, 06 Jul 2018 15:23:05 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:822060089b631fe73858285539e3d8ccfcf305784495a0baf5354b03bfd6c882`  
		Last Modified: Fri, 06 Jul 2018 15:23:05 GMT  
		Size: 229.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kapacitor:1.5`

```console
$ docker pull kapacitor@sha256:1cde1507fc18ab34d975dd80cb57fc246e25db97eca7a82f24cd115b9250f490
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `kapacitor:1.5` - linux; amd64

```console
$ docker pull kapacitor@sha256:c55c005e7f0199697f59c636f79d2756d7e0b0768d3d9bcee9984f542b8c6180
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **97.4 MB (97370929 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4ff381f009fc20e809126452a5668aba32f7d4897ef81f98a792aa47da2c8367`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["kapacitord"]`

```dockerfile
# Tue, 17 Jul 2018 00:27:24 GMT
ADD file:370028dca6e8ca9ed228549d52231cf8139515cc3a14c00aaed75a60b679775f in / 
# Tue, 17 Jul 2018 00:27:24 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 03:12:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 03:13:02 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 17 Jul 2018 12:36:56 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y bash-completion &&     awk 'f{if(sub(/^#/,"",$0)==0){f=0}};/^# enable bash completion/{f=1};{print;}' /etc/bash.bashrc > /etc/bash.bashrc.new &&     mv /etc/bash.bashrc.new /etc/bash.bashrc
# Tue, 17 Jul 2018 12:36:59 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Tue, 17 Jul 2018 12:37:26 GMT
ENV KAPACITOR_VERSION=1.5.0
# Tue, 17 Jul 2018 12:37:33 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb &&     gpg --batch --verify kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb.asc kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb &&     dpkg -i kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb &&     rm -f kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb*
# Tue, 17 Jul 2018 12:37:33 GMT
COPY file:4046787774ea4c49703132e9dbc6fb3a19cb54632aa7032dd8379f12b56034d9 in /etc/kapacitor/kapacitor.conf 
# Tue, 17 Jul 2018 12:37:33 GMT
EXPOSE 9092/tcp
# Tue, 17 Jul 2018 12:37:34 GMT
VOLUME [/var/lib/kapacitor]
# Tue, 17 Jul 2018 12:37:34 GMT
COPY file:e5d90b0779cb7845ca3a7981c04a97fd959fea211a2ce19c8da8b949f9d9d04c in /entrypoint.sh 
# Tue, 17 Jul 2018 12:37:35 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 17 Jul 2018 12:37:35 GMT
CMD ["kapacitord"]
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
	-	`sha256:836f48cd453a3729e177a5a0d447ec81b9e15d912636bfb4d2575b6b153fd02f`  
		Last Modified: Tue, 17 Jul 2018 12:37:56 GMT  
		Size: 12.9 MB (12877196 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b80d6524e68f13d1e8f05ae2e3dae208c38f63dfb32ed80b1cc7301f233719a9`  
		Last Modified: Tue, 17 Jul 2018 12:37:55 GMT  
		Size: 2.9 KB (2887 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61d25c28c0db81b94d21b11a923e835f350e6641e9025a3dbbefc67895cdbe95`  
		Last Modified: Tue, 17 Jul 2018 12:38:35 GMT  
		Size: 24.1 MB (24104073 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d1f52409e5787a4cee8d08580451c6784d7bba0f669ffdbed9ff411015aad47`  
		Last Modified: Tue, 17 Jul 2018 12:38:29 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf8f071dbe113fa56142f28f868130b096b417f68db3fa0540a834f1a24b378c`  
		Last Modified: Tue, 17 Jul 2018 12:38:29 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `kapacitor:1.5` - linux; arm variant v7

```console
$ docker pull kapacitor@sha256:5cc5fec3c9977ed83cd584548ae2cc1fa2eed6ca2190aa294d948edcdfb60f5c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **91.6 MB (91590528 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5fdca7819376a6a49dbd9390a80690b5de68c5f77ae6a7442ff01ce6ac496935`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["kapacitord"]`

```dockerfile
# Tue, 17 Jul 2018 12:05:25 GMT
ADD file:77cbe27c4436cc4c9d81bee6c5ae0fee0c6d1708813d34abd2af2d3ebd7d96a5 in / 
# Tue, 17 Jul 2018 12:05:26 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 13:46:48 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 13:46:56 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 17 Jul 2018 18:14:38 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y bash-completion &&     awk 'f{if(sub(/^#/,"",$0)==0){f=0}};/^# enable bash completion/{f=1};{print;}' /etc/bash.bashrc > /etc/bash.bashrc.new &&     mv /etc/bash.bashrc.new /etc/bash.bashrc
# Tue, 17 Jul 2018 18:14:42 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Tue, 17 Jul 2018 18:15:16 GMT
ENV KAPACITOR_VERSION=1.5.0
# Tue, 17 Jul 2018 18:15:26 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb &&     gpg --batch --verify kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb.asc kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb &&     dpkg -i kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb &&     rm -f kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb*
# Tue, 17 Jul 2018 18:15:27 GMT
COPY file:4046787774ea4c49703132e9dbc6fb3a19cb54632aa7032dd8379f12b56034d9 in /etc/kapacitor/kapacitor.conf 
# Tue, 17 Jul 2018 18:15:27 GMT
EXPOSE 9092/tcp
# Tue, 17 Jul 2018 18:15:27 GMT
VOLUME [/var/lib/kapacitor]
# Tue, 17 Jul 2018 18:15:28 GMT
COPY file:e5d90b0779cb7845ca3a7981c04a97fd959fea211a2ce19c8da8b949f9d9d04c in /entrypoint.sh 
# Tue, 17 Jul 2018 18:15:28 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 17 Jul 2018 18:15:28 GMT
CMD ["kapacitord"]
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
	-	`sha256:99159768fc5e85452b01efae88071acfe309ceceaddbe55b2059f792991cd5db`  
		Last Modified: Tue, 17 Jul 2018 18:15:49 GMT  
		Size: 13.0 MB (13049345 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83cf21d590e2bbabb8488f12e6dd076c487118c12927522326a4954a818bc4f5`  
		Last Modified: Tue, 17 Jul 2018 18:15:45 GMT  
		Size: 2.9 KB (2918 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c180dd17214cc20c65f4aad01cb8bfe204f893305c5a43f89db50645374d41cd`  
		Last Modified: Tue, 17 Jul 2018 18:16:30 GMT  
		Size: 23.1 MB (23123823 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e3b473578b265ab4a90b9fa4cde87bf24dfee06e4e7c47c7387f1992f800050`  
		Last Modified: Tue, 17 Jul 2018 18:16:21 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9809bd21a40a65455366c07659a5fe3c167ada89b32a55f5192d51c9c152eb61`  
		Last Modified: Tue, 17 Jul 2018 18:16:23 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `kapacitor:1.5` - linux; arm64 variant v8

```console
$ docker pull kapacitor@sha256:6bda410414a8d322c36050cd473cf2b4998c6bbf0d246e26359cfbcc1b88865f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **92.7 MB (92656554 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1728873cec77c14b4a89c3a7512237105b6fc9ae9201c9bc9a3c81baedee9c1a`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["kapacitord"]`

```dockerfile
# Wed, 27 Jun 2018 08:47:01 GMT
ADD file:0f69db95e9a06ee21c38014c8bc6c142be97ec4d5127ba83f1d0ef48806f7415 in / 
# Wed, 27 Jun 2018 08:47:02 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 10:46:58 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 10:47:23 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 27 Jun 2018 19:33:47 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y bash-completion &&     awk 'f{if(sub(/^#/,"",$0)==0){f=0}};/^# enable bash completion/{f=1};{print;}' /etc/bash.bashrc > /etc/bash.bashrc.new &&     mv /etc/bash.bashrc.new /etc/bash.bashrc
# Wed, 27 Jun 2018 19:33:52 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Wed, 27 Jun 2018 19:34:28 GMT
ENV KAPACITOR_VERSION=1.5.0
# Wed, 27 Jun 2018 19:34:40 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb &&     gpg --batch --verify kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb.asc kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb &&     dpkg -i kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb &&     rm -f kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb*
# Wed, 27 Jun 2018 19:34:41 GMT
COPY file:4046787774ea4c49703132e9dbc6fb3a19cb54632aa7032dd8379f12b56034d9 in /etc/kapacitor/kapacitor.conf 
# Wed, 27 Jun 2018 19:34:42 GMT
EXPOSE 9092/tcp
# Wed, 27 Jun 2018 19:34:43 GMT
VOLUME [/var/lib/kapacitor]
# Wed, 27 Jun 2018 19:34:44 GMT
COPY file:e5d90b0779cb7845ca3a7981c04a97fd959fea211a2ce19c8da8b949f9d9d04c in /entrypoint.sh 
# Wed, 27 Jun 2018 19:34:45 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 27 Jun 2018 19:34:46 GMT
CMD ["kapacitord"]
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
	-	`sha256:7c5e21d9efcccb25c99e1041f62bb7db8f74ae3dedab423ba2878e3b4cbd6b3b`  
		Last Modified: Wed, 27 Jun 2018 19:35:09 GMT  
		Size: 12.6 MB (12603098 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9819f68ef7bea0742c6dbeea158f2a2184cc0a22d1ec3d8ea09f20c340bbb931`  
		Last Modified: Wed, 27 Jun 2018 19:35:06 GMT  
		Size: 2.9 KB (2885 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3aeec374c10010f1ecdaf936c6145986e295ef881c77fa3aa1f81e5b6a012409`  
		Last Modified: Wed, 27 Jun 2018 19:35:59 GMT  
		Size: 23.1 MB (23123609 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af32ea1883e4d6ae58e941e9c2f6fa43944977b623fb69321629a36b75880a9a`  
		Last Modified: Wed, 27 Jun 2018 19:35:44 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bde81e9ff33571459003f8238478cec2d368c529e71e9732192f7d4c44f3e7bd`  
		Last Modified: Wed, 27 Jun 2018 19:35:44 GMT  
		Size: 230.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kapacitor:1.5.0`

```console
$ docker pull kapacitor@sha256:1cde1507fc18ab34d975dd80cb57fc246e25db97eca7a82f24cd115b9250f490
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `kapacitor:1.5.0` - linux; amd64

```console
$ docker pull kapacitor@sha256:c55c005e7f0199697f59c636f79d2756d7e0b0768d3d9bcee9984f542b8c6180
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **97.4 MB (97370929 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4ff381f009fc20e809126452a5668aba32f7d4897ef81f98a792aa47da2c8367`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["kapacitord"]`

```dockerfile
# Tue, 17 Jul 2018 00:27:24 GMT
ADD file:370028dca6e8ca9ed228549d52231cf8139515cc3a14c00aaed75a60b679775f in / 
# Tue, 17 Jul 2018 00:27:24 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 03:12:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 03:13:02 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 17 Jul 2018 12:36:56 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y bash-completion &&     awk 'f{if(sub(/^#/,"",$0)==0){f=0}};/^# enable bash completion/{f=1};{print;}' /etc/bash.bashrc > /etc/bash.bashrc.new &&     mv /etc/bash.bashrc.new /etc/bash.bashrc
# Tue, 17 Jul 2018 12:36:59 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Tue, 17 Jul 2018 12:37:26 GMT
ENV KAPACITOR_VERSION=1.5.0
# Tue, 17 Jul 2018 12:37:33 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb &&     gpg --batch --verify kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb.asc kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb &&     dpkg -i kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb &&     rm -f kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb*
# Tue, 17 Jul 2018 12:37:33 GMT
COPY file:4046787774ea4c49703132e9dbc6fb3a19cb54632aa7032dd8379f12b56034d9 in /etc/kapacitor/kapacitor.conf 
# Tue, 17 Jul 2018 12:37:33 GMT
EXPOSE 9092/tcp
# Tue, 17 Jul 2018 12:37:34 GMT
VOLUME [/var/lib/kapacitor]
# Tue, 17 Jul 2018 12:37:34 GMT
COPY file:e5d90b0779cb7845ca3a7981c04a97fd959fea211a2ce19c8da8b949f9d9d04c in /entrypoint.sh 
# Tue, 17 Jul 2018 12:37:35 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 17 Jul 2018 12:37:35 GMT
CMD ["kapacitord"]
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
	-	`sha256:836f48cd453a3729e177a5a0d447ec81b9e15d912636bfb4d2575b6b153fd02f`  
		Last Modified: Tue, 17 Jul 2018 12:37:56 GMT  
		Size: 12.9 MB (12877196 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b80d6524e68f13d1e8f05ae2e3dae208c38f63dfb32ed80b1cc7301f233719a9`  
		Last Modified: Tue, 17 Jul 2018 12:37:55 GMT  
		Size: 2.9 KB (2887 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61d25c28c0db81b94d21b11a923e835f350e6641e9025a3dbbefc67895cdbe95`  
		Last Modified: Tue, 17 Jul 2018 12:38:35 GMT  
		Size: 24.1 MB (24104073 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d1f52409e5787a4cee8d08580451c6784d7bba0f669ffdbed9ff411015aad47`  
		Last Modified: Tue, 17 Jul 2018 12:38:29 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf8f071dbe113fa56142f28f868130b096b417f68db3fa0540a834f1a24b378c`  
		Last Modified: Tue, 17 Jul 2018 12:38:29 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `kapacitor:1.5.0` - linux; arm variant v7

```console
$ docker pull kapacitor@sha256:5cc5fec3c9977ed83cd584548ae2cc1fa2eed6ca2190aa294d948edcdfb60f5c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **91.6 MB (91590528 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5fdca7819376a6a49dbd9390a80690b5de68c5f77ae6a7442ff01ce6ac496935`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["kapacitord"]`

```dockerfile
# Tue, 17 Jul 2018 12:05:25 GMT
ADD file:77cbe27c4436cc4c9d81bee6c5ae0fee0c6d1708813d34abd2af2d3ebd7d96a5 in / 
# Tue, 17 Jul 2018 12:05:26 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 13:46:48 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 13:46:56 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 17 Jul 2018 18:14:38 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y bash-completion &&     awk 'f{if(sub(/^#/,"",$0)==0){f=0}};/^# enable bash completion/{f=1};{print;}' /etc/bash.bashrc > /etc/bash.bashrc.new &&     mv /etc/bash.bashrc.new /etc/bash.bashrc
# Tue, 17 Jul 2018 18:14:42 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Tue, 17 Jul 2018 18:15:16 GMT
ENV KAPACITOR_VERSION=1.5.0
# Tue, 17 Jul 2018 18:15:26 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb &&     gpg --batch --verify kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb.asc kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb &&     dpkg -i kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb &&     rm -f kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb*
# Tue, 17 Jul 2018 18:15:27 GMT
COPY file:4046787774ea4c49703132e9dbc6fb3a19cb54632aa7032dd8379f12b56034d9 in /etc/kapacitor/kapacitor.conf 
# Tue, 17 Jul 2018 18:15:27 GMT
EXPOSE 9092/tcp
# Tue, 17 Jul 2018 18:15:27 GMT
VOLUME [/var/lib/kapacitor]
# Tue, 17 Jul 2018 18:15:28 GMT
COPY file:e5d90b0779cb7845ca3a7981c04a97fd959fea211a2ce19c8da8b949f9d9d04c in /entrypoint.sh 
# Tue, 17 Jul 2018 18:15:28 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 17 Jul 2018 18:15:28 GMT
CMD ["kapacitord"]
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
	-	`sha256:99159768fc5e85452b01efae88071acfe309ceceaddbe55b2059f792991cd5db`  
		Last Modified: Tue, 17 Jul 2018 18:15:49 GMT  
		Size: 13.0 MB (13049345 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83cf21d590e2bbabb8488f12e6dd076c487118c12927522326a4954a818bc4f5`  
		Last Modified: Tue, 17 Jul 2018 18:15:45 GMT  
		Size: 2.9 KB (2918 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c180dd17214cc20c65f4aad01cb8bfe204f893305c5a43f89db50645374d41cd`  
		Last Modified: Tue, 17 Jul 2018 18:16:30 GMT  
		Size: 23.1 MB (23123823 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e3b473578b265ab4a90b9fa4cde87bf24dfee06e4e7c47c7387f1992f800050`  
		Last Modified: Tue, 17 Jul 2018 18:16:21 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9809bd21a40a65455366c07659a5fe3c167ada89b32a55f5192d51c9c152eb61`  
		Last Modified: Tue, 17 Jul 2018 18:16:23 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `kapacitor:1.5.0` - linux; arm64 variant v8

```console
$ docker pull kapacitor@sha256:6bda410414a8d322c36050cd473cf2b4998c6bbf0d246e26359cfbcc1b88865f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **92.7 MB (92656554 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1728873cec77c14b4a89c3a7512237105b6fc9ae9201c9bc9a3c81baedee9c1a`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["kapacitord"]`

```dockerfile
# Wed, 27 Jun 2018 08:47:01 GMT
ADD file:0f69db95e9a06ee21c38014c8bc6c142be97ec4d5127ba83f1d0ef48806f7415 in / 
# Wed, 27 Jun 2018 08:47:02 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 10:46:58 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 10:47:23 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 27 Jun 2018 19:33:47 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y bash-completion &&     awk 'f{if(sub(/^#/,"",$0)==0){f=0}};/^# enable bash completion/{f=1};{print;}' /etc/bash.bashrc > /etc/bash.bashrc.new &&     mv /etc/bash.bashrc.new /etc/bash.bashrc
# Wed, 27 Jun 2018 19:33:52 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Wed, 27 Jun 2018 19:34:28 GMT
ENV KAPACITOR_VERSION=1.5.0
# Wed, 27 Jun 2018 19:34:40 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb &&     gpg --batch --verify kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb.asc kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb &&     dpkg -i kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb &&     rm -f kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb*
# Wed, 27 Jun 2018 19:34:41 GMT
COPY file:4046787774ea4c49703132e9dbc6fb3a19cb54632aa7032dd8379f12b56034d9 in /etc/kapacitor/kapacitor.conf 
# Wed, 27 Jun 2018 19:34:42 GMT
EXPOSE 9092/tcp
# Wed, 27 Jun 2018 19:34:43 GMT
VOLUME [/var/lib/kapacitor]
# Wed, 27 Jun 2018 19:34:44 GMT
COPY file:e5d90b0779cb7845ca3a7981c04a97fd959fea211a2ce19c8da8b949f9d9d04c in /entrypoint.sh 
# Wed, 27 Jun 2018 19:34:45 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 27 Jun 2018 19:34:46 GMT
CMD ["kapacitord"]
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
	-	`sha256:7c5e21d9efcccb25c99e1041f62bb7db8f74ae3dedab423ba2878e3b4cbd6b3b`  
		Last Modified: Wed, 27 Jun 2018 19:35:09 GMT  
		Size: 12.6 MB (12603098 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9819f68ef7bea0742c6dbeea158f2a2184cc0a22d1ec3d8ea09f20c340bbb931`  
		Last Modified: Wed, 27 Jun 2018 19:35:06 GMT  
		Size: 2.9 KB (2885 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3aeec374c10010f1ecdaf936c6145986e295ef881c77fa3aa1f81e5b6a012409`  
		Last Modified: Wed, 27 Jun 2018 19:35:59 GMT  
		Size: 23.1 MB (23123609 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af32ea1883e4d6ae58e941e9c2f6fa43944977b623fb69321629a36b75880a9a`  
		Last Modified: Wed, 27 Jun 2018 19:35:44 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bde81e9ff33571459003f8238478cec2d368c529e71e9732192f7d4c44f3e7bd`  
		Last Modified: Wed, 27 Jun 2018 19:35:44 GMT  
		Size: 230.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kapacitor:1.5.0-alpine`

```console
$ docker pull kapacitor@sha256:50791374e012e819492ed8341fffccf833faca97f03dfdf5b2a27975ae0fa55d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `kapacitor:1.5.0-alpine` - linux; amd64

```console
$ docker pull kapacitor@sha256:478866a7cf9a274eadab85f65ac8429b12332b10290de898b201733ad8ca7930
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **19.0 MB (18957677 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dd5bd020ac3a40f8eb779319d35f1fd2455256993cf4d8623070a26bf59a0282`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["kapacitord"]`

```dockerfile
# Fri, 06 Jul 2018 14:13:25 GMT
ADD file:eceadb32d029164d23db918d14c88df7186b6ee9645fa2f0c0a7e3e046a6a129 in / 
# Fri, 06 Jul 2018 14:13:25 GMT
CMD ["/bin/sh"]
# Fri, 06 Jul 2018 15:20:56 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf
# Fri, 06 Jul 2018 15:20:58 GMT
RUN apk add --no-cache ca-certificates &&     update-ca-certificates
# Fri, 06 Jul 2018 15:21:47 GMT
ENV KAPACITOR_VERSION=1.5.0
# Fri, 06 Jul 2018 15:21:56 GMT
RUN set -ex &&     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz.asc kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/kapacitor-*/kapacitor.conf &&     chmod +x /usr/src/kapacitor-*/* &&     cp -a /usr/src/kapacitor-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Fri, 06 Jul 2018 15:21:57 GMT
COPY file:4046787774ea4c49703132e9dbc6fb3a19cb54632aa7032dd8379f12b56034d9 in /etc/kapacitor/kapacitor.conf 
# Fri, 06 Jul 2018 15:21:57 GMT
EXPOSE 9092/tcp
# Fri, 06 Jul 2018 15:21:57 GMT
VOLUME [/var/lib/kapacitor]
# Fri, 06 Jul 2018 15:22:06 GMT
COPY file:440a837280df72a19ed72b91fab9bdcfd268250b241bbc22509699f880fe0d17 in /entrypoint.sh 
# Fri, 06 Jul 2018 15:22:06 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 06 Jul 2018 15:22:07 GMT
CMD ["kapacitord"]
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
	-	`sha256:75c2416479349969acdd798faedf7940c6f5b5d33f6dda56bdd2753b2c3a499c`  
		Last Modified: Fri, 06 Jul 2018 15:23:05 GMT  
		Size: 351.3 KB (351284 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3108f11bcb947ac890bda5f85c09fc7dfdbd6f35404a64b2fd4a7810b8fbb7d`  
		Last Modified: Fri, 06 Jul 2018 15:24:35 GMT  
		Size: 16.6 MB (16591130 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e453e3bdf2ee14b4f90884ab812bf783b1565582f547f9b2b48c6ddf6b121b31`  
		Last Modified: Fri, 06 Jul 2018 15:24:28 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9605cddeb7c7cd976212ac4f432ab9f3b03530503d0944a763968b1e7b40f1d`  
		Last Modified: Fri, 06 Jul 2018 15:24:28 GMT  
		Size: 229.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kapacitor:1.5-alpine`

```console
$ docker pull kapacitor@sha256:50791374e012e819492ed8341fffccf833faca97f03dfdf5b2a27975ae0fa55d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `kapacitor:1.5-alpine` - linux; amd64

```console
$ docker pull kapacitor@sha256:478866a7cf9a274eadab85f65ac8429b12332b10290de898b201733ad8ca7930
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **19.0 MB (18957677 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dd5bd020ac3a40f8eb779319d35f1fd2455256993cf4d8623070a26bf59a0282`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["kapacitord"]`

```dockerfile
# Fri, 06 Jul 2018 14:13:25 GMT
ADD file:eceadb32d029164d23db918d14c88df7186b6ee9645fa2f0c0a7e3e046a6a129 in / 
# Fri, 06 Jul 2018 14:13:25 GMT
CMD ["/bin/sh"]
# Fri, 06 Jul 2018 15:20:56 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf
# Fri, 06 Jul 2018 15:20:58 GMT
RUN apk add --no-cache ca-certificates &&     update-ca-certificates
# Fri, 06 Jul 2018 15:21:47 GMT
ENV KAPACITOR_VERSION=1.5.0
# Fri, 06 Jul 2018 15:21:56 GMT
RUN set -ex &&     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz.asc kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/kapacitor-*/kapacitor.conf &&     chmod +x /usr/src/kapacitor-*/* &&     cp -a /usr/src/kapacitor-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Fri, 06 Jul 2018 15:21:57 GMT
COPY file:4046787774ea4c49703132e9dbc6fb3a19cb54632aa7032dd8379f12b56034d9 in /etc/kapacitor/kapacitor.conf 
# Fri, 06 Jul 2018 15:21:57 GMT
EXPOSE 9092/tcp
# Fri, 06 Jul 2018 15:21:57 GMT
VOLUME [/var/lib/kapacitor]
# Fri, 06 Jul 2018 15:22:06 GMT
COPY file:440a837280df72a19ed72b91fab9bdcfd268250b241bbc22509699f880fe0d17 in /entrypoint.sh 
# Fri, 06 Jul 2018 15:22:06 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 06 Jul 2018 15:22:07 GMT
CMD ["kapacitord"]
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
	-	`sha256:75c2416479349969acdd798faedf7940c6f5b5d33f6dda56bdd2753b2c3a499c`  
		Last Modified: Fri, 06 Jul 2018 15:23:05 GMT  
		Size: 351.3 KB (351284 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3108f11bcb947ac890bda5f85c09fc7dfdbd6f35404a64b2fd4a7810b8fbb7d`  
		Last Modified: Fri, 06 Jul 2018 15:24:35 GMT  
		Size: 16.6 MB (16591130 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e453e3bdf2ee14b4f90884ab812bf783b1565582f547f9b2b48c6ddf6b121b31`  
		Last Modified: Fri, 06 Jul 2018 15:24:28 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9605cddeb7c7cd976212ac4f432ab9f3b03530503d0944a763968b1e7b40f1d`  
		Last Modified: Fri, 06 Jul 2018 15:24:28 GMT  
		Size: 229.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kapacitor:alpine`

```console
$ docker pull kapacitor@sha256:50791374e012e819492ed8341fffccf833faca97f03dfdf5b2a27975ae0fa55d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `kapacitor:alpine` - linux; amd64

```console
$ docker pull kapacitor@sha256:478866a7cf9a274eadab85f65ac8429b12332b10290de898b201733ad8ca7930
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **19.0 MB (18957677 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dd5bd020ac3a40f8eb779319d35f1fd2455256993cf4d8623070a26bf59a0282`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["kapacitord"]`

```dockerfile
# Fri, 06 Jul 2018 14:13:25 GMT
ADD file:eceadb32d029164d23db918d14c88df7186b6ee9645fa2f0c0a7e3e046a6a129 in / 
# Fri, 06 Jul 2018 14:13:25 GMT
CMD ["/bin/sh"]
# Fri, 06 Jul 2018 15:20:56 GMT
RUN echo 'hosts: files dns' >> /etc/nsswitch.conf
# Fri, 06 Jul 2018 15:20:58 GMT
RUN apk add --no-cache ca-certificates &&     update-ca-certificates
# Fri, 06 Jul 2018 15:21:47 GMT
ENV KAPACITOR_VERSION=1.5.0
# Fri, 06 Jul 2018 15:21:56 GMT
RUN set -ex &&     apk add --no-cache --virtual .build-deps wget gnupg tar &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz.asc &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz &&     gpg --batch --verify kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz.asc kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz &&     mkdir -p /usr/src &&     tar -C /usr/src -xzf kapacitor-${KAPACITOR_VERSION}-static_linux_amd64.tar.gz &&     rm -f /usr/src/kapacitor-*/kapacitor.conf &&     chmod +x /usr/src/kapacitor-*/* &&     cp -a /usr/src/kapacitor-*/* /usr/bin/ &&     rm -rf *.tar.gz* /usr/src /root/.gnupg &&     apk del .build-deps
# Fri, 06 Jul 2018 15:21:57 GMT
COPY file:4046787774ea4c49703132e9dbc6fb3a19cb54632aa7032dd8379f12b56034d9 in /etc/kapacitor/kapacitor.conf 
# Fri, 06 Jul 2018 15:21:57 GMT
EXPOSE 9092/tcp
# Fri, 06 Jul 2018 15:21:57 GMT
VOLUME [/var/lib/kapacitor]
# Fri, 06 Jul 2018 15:22:06 GMT
COPY file:440a837280df72a19ed72b91fab9bdcfd268250b241bbc22509699f880fe0d17 in /entrypoint.sh 
# Fri, 06 Jul 2018 15:22:06 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 06 Jul 2018 15:22:07 GMT
CMD ["kapacitord"]
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
	-	`sha256:75c2416479349969acdd798faedf7940c6f5b5d33f6dda56bdd2753b2c3a499c`  
		Last Modified: Fri, 06 Jul 2018 15:23:05 GMT  
		Size: 351.3 KB (351284 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3108f11bcb947ac890bda5f85c09fc7dfdbd6f35404a64b2fd4a7810b8fbb7d`  
		Last Modified: Fri, 06 Jul 2018 15:24:35 GMT  
		Size: 16.6 MB (16591130 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e453e3bdf2ee14b4f90884ab812bf783b1565582f547f9b2b48c6ddf6b121b31`  
		Last Modified: Fri, 06 Jul 2018 15:24:28 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9605cddeb7c7cd976212ac4f432ab9f3b03530503d0944a763968b1e7b40f1d`  
		Last Modified: Fri, 06 Jul 2018 15:24:28 GMT  
		Size: 229.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kapacitor:latest`

```console
$ docker pull kapacitor@sha256:1cde1507fc18ab34d975dd80cb57fc246e25db97eca7a82f24cd115b9250f490
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `kapacitor:latest` - linux; amd64

```console
$ docker pull kapacitor@sha256:c55c005e7f0199697f59c636f79d2756d7e0b0768d3d9bcee9984f542b8c6180
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **97.4 MB (97370929 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4ff381f009fc20e809126452a5668aba32f7d4897ef81f98a792aa47da2c8367`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["kapacitord"]`

```dockerfile
# Tue, 17 Jul 2018 00:27:24 GMT
ADD file:370028dca6e8ca9ed228549d52231cf8139515cc3a14c00aaed75a60b679775f in / 
# Tue, 17 Jul 2018 00:27:24 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 03:12:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 03:13:02 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 17 Jul 2018 12:36:56 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y bash-completion &&     awk 'f{if(sub(/^#/,"",$0)==0){f=0}};/^# enable bash completion/{f=1};{print;}' /etc/bash.bashrc > /etc/bash.bashrc.new &&     mv /etc/bash.bashrc.new /etc/bash.bashrc
# Tue, 17 Jul 2018 12:36:59 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Tue, 17 Jul 2018 12:37:26 GMT
ENV KAPACITOR_VERSION=1.5.0
# Tue, 17 Jul 2018 12:37:33 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb &&     gpg --batch --verify kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb.asc kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb &&     dpkg -i kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb &&     rm -f kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb*
# Tue, 17 Jul 2018 12:37:33 GMT
COPY file:4046787774ea4c49703132e9dbc6fb3a19cb54632aa7032dd8379f12b56034d9 in /etc/kapacitor/kapacitor.conf 
# Tue, 17 Jul 2018 12:37:33 GMT
EXPOSE 9092/tcp
# Tue, 17 Jul 2018 12:37:34 GMT
VOLUME [/var/lib/kapacitor]
# Tue, 17 Jul 2018 12:37:34 GMT
COPY file:e5d90b0779cb7845ca3a7981c04a97fd959fea211a2ce19c8da8b949f9d9d04c in /entrypoint.sh 
# Tue, 17 Jul 2018 12:37:35 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 17 Jul 2018 12:37:35 GMT
CMD ["kapacitord"]
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
	-	`sha256:836f48cd453a3729e177a5a0d447ec81b9e15d912636bfb4d2575b6b153fd02f`  
		Last Modified: Tue, 17 Jul 2018 12:37:56 GMT  
		Size: 12.9 MB (12877196 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b80d6524e68f13d1e8f05ae2e3dae208c38f63dfb32ed80b1cc7301f233719a9`  
		Last Modified: Tue, 17 Jul 2018 12:37:55 GMT  
		Size: 2.9 KB (2887 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61d25c28c0db81b94d21b11a923e835f350e6641e9025a3dbbefc67895cdbe95`  
		Last Modified: Tue, 17 Jul 2018 12:38:35 GMT  
		Size: 24.1 MB (24104073 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d1f52409e5787a4cee8d08580451c6784d7bba0f669ffdbed9ff411015aad47`  
		Last Modified: Tue, 17 Jul 2018 12:38:29 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf8f071dbe113fa56142f28f868130b096b417f68db3fa0540a834f1a24b378c`  
		Last Modified: Tue, 17 Jul 2018 12:38:29 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `kapacitor:latest` - linux; arm variant v7

```console
$ docker pull kapacitor@sha256:5cc5fec3c9977ed83cd584548ae2cc1fa2eed6ca2190aa294d948edcdfb60f5c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **91.6 MB (91590528 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5fdca7819376a6a49dbd9390a80690b5de68c5f77ae6a7442ff01ce6ac496935`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["kapacitord"]`

```dockerfile
# Tue, 17 Jul 2018 12:05:25 GMT
ADD file:77cbe27c4436cc4c9d81bee6c5ae0fee0c6d1708813d34abd2af2d3ebd7d96a5 in / 
# Tue, 17 Jul 2018 12:05:26 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 13:46:48 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 13:46:56 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 17 Jul 2018 18:14:38 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y bash-completion &&     awk 'f{if(sub(/^#/,"",$0)==0){f=0}};/^# enable bash completion/{f=1};{print;}' /etc/bash.bashrc > /etc/bash.bashrc.new &&     mv /etc/bash.bashrc.new /etc/bash.bashrc
# Tue, 17 Jul 2018 18:14:42 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Tue, 17 Jul 2018 18:15:16 GMT
ENV KAPACITOR_VERSION=1.5.0
# Tue, 17 Jul 2018 18:15:26 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb &&     gpg --batch --verify kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb.asc kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb &&     dpkg -i kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb &&     rm -f kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb*
# Tue, 17 Jul 2018 18:15:27 GMT
COPY file:4046787774ea4c49703132e9dbc6fb3a19cb54632aa7032dd8379f12b56034d9 in /etc/kapacitor/kapacitor.conf 
# Tue, 17 Jul 2018 18:15:27 GMT
EXPOSE 9092/tcp
# Tue, 17 Jul 2018 18:15:27 GMT
VOLUME [/var/lib/kapacitor]
# Tue, 17 Jul 2018 18:15:28 GMT
COPY file:e5d90b0779cb7845ca3a7981c04a97fd959fea211a2ce19c8da8b949f9d9d04c in /entrypoint.sh 
# Tue, 17 Jul 2018 18:15:28 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 17 Jul 2018 18:15:28 GMT
CMD ["kapacitord"]
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
	-	`sha256:99159768fc5e85452b01efae88071acfe309ceceaddbe55b2059f792991cd5db`  
		Last Modified: Tue, 17 Jul 2018 18:15:49 GMT  
		Size: 13.0 MB (13049345 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83cf21d590e2bbabb8488f12e6dd076c487118c12927522326a4954a818bc4f5`  
		Last Modified: Tue, 17 Jul 2018 18:15:45 GMT  
		Size: 2.9 KB (2918 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c180dd17214cc20c65f4aad01cb8bfe204f893305c5a43f89db50645374d41cd`  
		Last Modified: Tue, 17 Jul 2018 18:16:30 GMT  
		Size: 23.1 MB (23123823 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e3b473578b265ab4a90b9fa4cde87bf24dfee06e4e7c47c7387f1992f800050`  
		Last Modified: Tue, 17 Jul 2018 18:16:21 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9809bd21a40a65455366c07659a5fe3c167ada89b32a55f5192d51c9c152eb61`  
		Last Modified: Tue, 17 Jul 2018 18:16:23 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `kapacitor:latest` - linux; arm64 variant v8

```console
$ docker pull kapacitor@sha256:6bda410414a8d322c36050cd473cf2b4998c6bbf0d246e26359cfbcc1b88865f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **92.7 MB (92656554 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1728873cec77c14b4a89c3a7512237105b6fc9ae9201c9bc9a3c81baedee9c1a`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["kapacitord"]`

```dockerfile
# Wed, 27 Jun 2018 08:47:01 GMT
ADD file:0f69db95e9a06ee21c38014c8bc6c142be97ec4d5127ba83f1d0ef48806f7415 in / 
# Wed, 27 Jun 2018 08:47:02 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 10:46:58 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 10:47:23 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 27 Jun 2018 19:33:47 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y bash-completion &&     awk 'f{if(sub(/^#/,"",$0)==0){f=0}};/^# enable bash completion/{f=1};{print;}' /etc/bash.bashrc > /etc/bash.bashrc.new &&     mv /etc/bash.bashrc.new /etc/bash.bashrc
# Wed, 27 Jun 2018 19:33:52 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Wed, 27 Jun 2018 19:34:28 GMT
ENV KAPACITOR_VERSION=1.5.0
# Wed, 27 Jun 2018 19:34:40 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/kapacitor/releases/kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb &&     gpg --batch --verify kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb.asc kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb &&     dpkg -i kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb &&     rm -f kapacitor_${KAPACITOR_VERSION}_${ARCH}.deb*
# Wed, 27 Jun 2018 19:34:41 GMT
COPY file:4046787774ea4c49703132e9dbc6fb3a19cb54632aa7032dd8379f12b56034d9 in /etc/kapacitor/kapacitor.conf 
# Wed, 27 Jun 2018 19:34:42 GMT
EXPOSE 9092/tcp
# Wed, 27 Jun 2018 19:34:43 GMT
VOLUME [/var/lib/kapacitor]
# Wed, 27 Jun 2018 19:34:44 GMT
COPY file:e5d90b0779cb7845ca3a7981c04a97fd959fea211a2ce19c8da8b949f9d9d04c in /entrypoint.sh 
# Wed, 27 Jun 2018 19:34:45 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 27 Jun 2018 19:34:46 GMT
CMD ["kapacitord"]
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
	-	`sha256:7c5e21d9efcccb25c99e1041f62bb7db8f74ae3dedab423ba2878e3b4cbd6b3b`  
		Last Modified: Wed, 27 Jun 2018 19:35:09 GMT  
		Size: 12.6 MB (12603098 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9819f68ef7bea0742c6dbeea158f2a2184cc0a22d1ec3d8ea09f20c340bbb931`  
		Last Modified: Wed, 27 Jun 2018 19:35:06 GMT  
		Size: 2.9 KB (2885 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3aeec374c10010f1ecdaf936c6145986e295ef881c77fa3aa1f81e5b6a012409`  
		Last Modified: Wed, 27 Jun 2018 19:35:59 GMT  
		Size: 23.1 MB (23123609 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af32ea1883e4d6ae58e941e9c2f6fa43944977b623fb69321629a36b75880a9a`  
		Last Modified: Wed, 27 Jun 2018 19:35:44 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bde81e9ff33571459003f8238478cec2d368c529e71e9732192f7d4c44f3e7bd`  
		Last Modified: Wed, 27 Jun 2018 19:35:44 GMT  
		Size: 230.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
