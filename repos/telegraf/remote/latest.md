## `telegraf:latest`

```console
$ docker pull telegraf@sha256:ebf8161642bfde335bfc7e3c0c3cac5ef4cd22d386257e9ea02234af05eb638d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `telegraf:latest` - linux; amd64

```console
$ docker pull telegraf@sha256:840a9088dcb83d135ecca3ad0e0054e8659815c2ae742aeb3304a14b72534631
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **86.5 MB (86472472 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4d7cb5a113cb6f95f91f776516ea430f653de7988f46d4f1e87077fe985e08ad`
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
# Tue, 17 Jul 2018 15:55:01 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends iputils-ping snmp procps &&     rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 15:55:05 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Tue, 17 Jul 2018 15:55:53 GMT
ENV TELEGRAF_VERSION=1.7.1
# Tue, 17 Jul 2018 15:55:56 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     gpg --batch --verify telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     dpkg -i telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     rm -f telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb*
# Tue, 17 Jul 2018 15:55:56 GMT
EXPOSE 8092/udp 8094/tcp 8125/udp
# Tue, 17 Jul 2018 15:55:56 GMT
COPY file:7211de01f296351833389a1a1879d450e2cb727d7e2910d5807937f99983edf7 in /entrypoint.sh 
# Tue, 17 Jul 2018 15:55:57 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 17 Jul 2018 15:55:57 GMT
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
	-	`sha256:b2cacb81c9b69db5e0e933e10730ce4f129fda781e18cb62ef0d38882c95b538`  
		Last Modified: Tue, 17 Jul 2018 15:56:29 GMT  
		Size: 15.6 MB (15587188 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11da3c20678dfbe8c4bec4ae118a8cd22a3d8080aff701ebe8a1e1072c015397`  
		Last Modified: Tue, 17 Jul 2018 15:56:23 GMT  
		Size: 2.9 KB (2884 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f3872a5f1f16afe642593c98fe0dd6c1181c4c278501b9c49c1a6a54bfd847c`  
		Last Modified: Tue, 17 Jul 2018 15:57:46 GMT  
		Size: 10.5 MB (10495896 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:058e54f710552fcceace4430393a5dfd61821eb9f76b6b2b4dda3c009be133e9`  
		Last Modified: Tue, 17 Jul 2018 15:57:44 GMT  
		Size: 185.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `telegraf:latest` - linux; arm variant v7

```console
$ docker pull telegraf@sha256:a5abf0fd24f1a965d8ee42ad9b91eb287ba761d13c29df992f204dc023283932
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **80.0 MB (80004337 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1754aa522eb1e3cc2ab9b5b55e9c9cac1b30d07b8376ed84353afe83dabb75e7`
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
# Fri, 06 Jul 2018 12:01:45 GMT
ENV TELEGRAF_VERSION=1.7.1
# Fri, 06 Jul 2018 12:01:48 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     gpg --batch --verify telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     dpkg -i telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     rm -f telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb*
# Fri, 06 Jul 2018 12:01:53 GMT
EXPOSE 8092/udp 8094/tcp 8125/udp
# Fri, 06 Jul 2018 12:01:54 GMT
COPY file:7211de01f296351833389a1a1879d450e2cb727d7e2910d5807937f99983edf7 in /entrypoint.sh 
# Fri, 06 Jul 2018 12:01:54 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 06 Jul 2018 12:01:54 GMT
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
	-	`sha256:f0beaa7d8722e3c1a2987743bd35990615ae692279911a538a55d4917a8935ad`  
		Last Modified: Fri, 06 Jul 2018 12:02:12 GMT  
		Size: 10.1 MB (10087513 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d33b7e709a01fc5b736f5d3475185250e64e24163cdd161c04b854b2a394514`  
		Last Modified: Fri, 06 Jul 2018 12:02:10 GMT  
		Size: 186.0 B  
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
