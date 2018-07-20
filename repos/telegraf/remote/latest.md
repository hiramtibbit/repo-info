## `telegraf:latest`

```console
$ docker pull telegraf@sha256:74b41062bea9948181182442b1b3ca2cb5b1f722f69d4edd43ccc364015e3ffa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `telegraf:latest` - linux; amd64

```console
$ docker pull telegraf@sha256:60a35f4dbff17146dd77f988e2f52c96d6a3ad1e7d22026dd167276bad96436e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **86.9 MB (86850586 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:75da471225eb4b79d59b6e5cc699916f383ded2945862981ddfdfb804b76cb8a`
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
# Tue, 17 Jul 2018 23:20:30 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends iputils-ping snmp procps lm-sensors &&     rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 23:20:43 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Thu, 19 Jul 2018 22:22:52 GMT
ENV TELEGRAF_VERSION=1.7.2
# Thu, 19 Jul 2018 22:22:58 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     gpg --batch --verify telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     dpkg -i telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     rm -f telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb*
# Thu, 19 Jul 2018 22:23:09 GMT
EXPOSE 8092/udp 8094/tcp 8125/udp
# Thu, 19 Jul 2018 22:23:10 GMT
COPY file:7211de01f296351833389a1a1879d450e2cb727d7e2910d5807937f99983edf7 in /entrypoint.sh 
# Thu, 19 Jul 2018 22:23:10 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 19 Jul 2018 22:23:10 GMT
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
	-	`sha256:9dbf507f8efacd0094ccabf8ea83afe058a672463c0366caa0004ad1e527c718`  
		Last Modified: Tue, 17 Jul 2018 23:23:54 GMT  
		Size: 16.0 MB (15963861 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7bbc4db97cd33b299b774bd79446ee886409e709de11f424d2f57b764a2c6dd`  
		Last Modified: Tue, 17 Jul 2018 23:23:49 GMT  
		Size: 2.9 KB (2885 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cee06a0cbda664be64396a388bec08f54efcf1a7edb9371f6dad207e71a8f5cb`  
		Last Modified: Thu, 19 Jul 2018 22:24:30 GMT  
		Size: 10.5 MB (10497335 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:900b8155120aa0014bd77e20e9bb6b7b4a4b9dda3850ec88cb1631152a2226cc`  
		Last Modified: Thu, 19 Jul 2018 22:24:26 GMT  
		Size: 186.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `telegraf:latest` - linux; arm variant v7

```console
$ docker pull telegraf@sha256:4093a3100a2fa4a456e11a12a17f2c677dce1a76892a3629f5f9157e9721afff
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **80.3 MB (80335468 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bb5fdd46bb60be9e296e4e668a953e4cb226831f2e8c60c31dfe43705dad03f8`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Tue, 17 Jul 2018 12:05:25 GMT
ADD file:77cbe27c4436cc4c9d81bee6c5ae0fee0c6d1708813d34abd2af2d3ebd7d96a5 in / 
# Tue, 17 Jul 2018 12:05:26 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 13:46:48 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 13:46:56 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 18 Jul 2018 12:02:25 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends iputils-ping snmp procps lm-sensors &&     rm -rf /var/lib/apt/lists/*
# Wed, 18 Jul 2018 12:02:34 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Fri, 20 Jul 2018 12:01:52 GMT
ENV TELEGRAF_VERSION=1.7.2
# Fri, 20 Jul 2018 12:01:55 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     gpg --batch --verify telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     dpkg -i telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     rm -f telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb*
# Fri, 20 Jul 2018 12:01:55 GMT
EXPOSE 8092/udp 8094/tcp 8125/udp
# Fri, 20 Jul 2018 12:01:56 GMT
COPY file:7211de01f296351833389a1a1879d450e2cb727d7e2910d5807937f99983edf7 in /entrypoint.sh 
# Fri, 20 Jul 2018 12:01:56 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 20 Jul 2018 12:01:57 GMT
CMD ["telegraf"]
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
	-	`sha256:bfca25b99093892544b78d98bc67f3229206bf2730a4c1568ce90c6cb3f457ce`  
		Last Modified: Wed, 18 Jul 2018 12:03:44 GMT  
		Size: 14.8 MB (14829122 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:205af81845a2b3066b93028d80c9541fbb4ea29054770b0c98f1d96833df2308`  
		Last Modified: Wed, 18 Jul 2018 12:03:39 GMT  
		Size: 2.9 KB (2922 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99f3beeda1e4dfdb543577b84bfdd3bc6b5a68c3f4f27b39714d01aa75f28558`  
		Last Modified: Fri, 20 Jul 2018 12:02:16 GMT  
		Size: 10.1 MB (10089251 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2cf3e2eeb8b8e45bdc4e55810ace4355fcd27742a6360977fc0102c628f121f1`  
		Last Modified: Fri, 20 Jul 2018 12:02:13 GMT  
		Size: 185.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `telegraf:latest` - linux; arm64 variant v8

```console
$ docker pull telegraf@sha256:b301b97e0aeecc8509c011f92046c51e011e01905560cfb32b83f0931471b47b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **82.3 MB (82297930 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b4cdfb3513e1ea9482d91d054cf6489ed51373a10e2d46f545bdd3ecf71841d3`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Tue, 17 Jul 2018 08:47:22 GMT
ADD file:5e1a1aab339b0b1e3047eeab5d0c6c74ad3f388d0407dc86f41e4a78b99c6fd8 in / 
# Tue, 17 Jul 2018 08:47:23 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 14:51:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 14:52:06 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 18 Jul 2018 02:04:56 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends iputils-ping snmp procps lm-sensors &&     rm -rf /var/lib/apt/lists/*
# Wed, 18 Jul 2018 02:05:02 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Fri, 20 Jul 2018 08:42:48 GMT
ENV TELEGRAF_VERSION=1.7.2
# Fri, 20 Jul 2018 08:42:57 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     gpg --batch --verify telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     dpkg -i telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     rm -f telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb*
# Fri, 20 Jul 2018 08:43:08 GMT
EXPOSE 8092/udp 8094/tcp 8125/udp
# Fri, 20 Jul 2018 08:43:08 GMT
COPY file:7211de01f296351833389a1a1879d450e2cb727d7e2910d5807937f99983edf7 in /entrypoint.sh 
# Fri, 20 Jul 2018 08:43:09 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 20 Jul 2018 08:43:10 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:24e48664c69560cde9534aadde23364122f1feb02b5db0ab3776983a4788ea63`  
		Last Modified: Tue, 17 Jul 2018 08:56:03 GMT  
		Size: 43.1 MB (43123568 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cbcf842c718cc953be45905967fc6a0114f55314ce412b80107e20d8b43fdcdb`  
		Last Modified: Tue, 17 Jul 2018 15:10:44 GMT  
		Size: 9.7 MB (9690273 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:317d79a9c0a5c766d03c1c253fa09f645ed7321dc3a80e0ae33599958677cd1d`  
		Last Modified: Tue, 17 Jul 2018 15:10:41 GMT  
		Size: 4.1 MB (4088491 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:655f4d2161e3b571eaaadd594cb0ff00ec003867e1a191eebef39478b5b0be9d`  
		Last Modified: Wed, 18 Jul 2018 02:06:53 GMT  
		Size: 15.5 MB (15525652 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86a6c22c103a21b4321254ad5f80fef24a1595a17fdfa56164fd4a77368ca8fb`  
		Last Modified: Wed, 18 Jul 2018 02:06:46 GMT  
		Size: 2.9 KB (2886 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3c105d5b3792e531e6dca69b3c1b472f6b68328caba2b9e123de808556ab915`  
		Last Modified: Fri, 20 Jul 2018 08:43:57 GMT  
		Size: 9.9 MB (9866875 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b180251f3a8639956267e68684401e51da242916d874550d78b32a504124adb`  
		Last Modified: Fri, 20 Jul 2018 08:43:53 GMT  
		Size: 185.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
