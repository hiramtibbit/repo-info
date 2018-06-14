## `telegraf:latest`

```console
$ docker pull telegraf@sha256:2c92059d9cf45978cb239c9cfd83faa4d2872fe7d6c98d735322dabadb870c42
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `telegraf:latest` - linux; amd64

```console
$ docker pull telegraf@sha256:be3e39c304bd3787059dc05fbc2cd06ed701f8efdc5e46ef2f0c419aec54d7b2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **86.5 MB (86516315 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2061a4d538a2d03b9ec638a5189cff8336b1f45288068d960d62fa4174a693bb`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["telegraf"]`

```dockerfile
# Sat, 28 Apr 2018 07:08:53 GMT
ADD file:9572fdb59dfbb9b032f3331bbc2a08b31e0aef5fbde44c8f2008d22bf5290cf2 in / 
# Sat, 28 Apr 2018 07:08:53 GMT
CMD ["bash"]
# Tue, 05 Jun 2018 23:13:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 05 Jun 2018 23:13:38 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 06 Jun 2018 00:07:45 GMT
RUN DEBIAN_FRONTEND=noninteractive apt-get update &&     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends iputils-ping snmp procps &&     rm -rf /var/lib/apt/lists/*
# Wed, 06 Jun 2018 00:07:49 GMT
RUN set -ex &&     for key in         05CE15085FC09D18E99EFB22684A14CF2582E0C5 ;     do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key" ||         gpg --keyserver pgp.mit.edu --recv-keys "$key" ||         gpg --keyserver keyserver.pgp.com --recv-keys "$key" ;     done
# Thu, 14 Jun 2018 05:31:02 GMT
ENV TELEGRAF_VERSION=1.7.0
# Thu, 14 Jun 2018 05:31:03 GMT
RUN ARCH= && dpkgArch="$(dpkg --print-architecture)" &&     case "${dpkgArch##*-}" in       amd64) ARCH='amd64';;       arm64) ARCH='arm64';;       armhf) ARCH='armhf';;       armel) ARCH='armel';;       *)     echo "Unsupported architecture: ${dpkgArch}"; exit 1;;     esac &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc &&     wget --no-verbose https://dl.influxdata.com/telegraf/releases/telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     gpg --batch --verify telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb.asc telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     dpkg -i telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb &&     rm -f telegraf_${TELEGRAF_VERSION}-1_${ARCH}.deb*
# Thu, 14 Jun 2018 05:31:04 GMT
EXPOSE 8092/udp 8094/tcp 8125/udp
# Thu, 14 Jun 2018 05:31:04 GMT
COPY file:7211de01f296351833389a1a1879d450e2cb727d7e2910d5807937f99983edf7 in /entrypoint.sh 
# Thu, 14 Jun 2018 05:31:04 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 14 Jun 2018 05:31:05 GMT
CMD ["telegraf"]
```

-	Layers:
	-	`sha256:cc1a78bfd46becbfc3abb8a74d9a70a0e0dc7a5809bbd12e814f9382db003707`  
		Last Modified: Sat, 28 Apr 2018 09:27:54 GMT  
		Size: 45.3 MB (45318159 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2c05365ee2a2245bb9f6786bc88aa12bf64da676a52668424437826d0f0cb92`  
		Last Modified: Tue, 05 Jun 2018 23:41:58 GMT  
		Size: 10.8 MB (10774184 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:231cb0e216d30ea48044d44d37fba016eb67eca9b19b29a741d95775359d3533`  
		Last Modified: Tue, 05 Jun 2018 23:41:55 GMT  
		Size: 4.3 MB (4335886 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:828bc74397faea5c4cb8aca0e5ea75f01482c87cac8d78a865f8e880f2e24f1c`  
		Last Modified: Wed, 06 Jun 2018 00:08:49 GMT  
		Size: 15.6 MB (15588032 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:738732bbb65aed60484d7f3a9aaf77709f866da400d5284ac1586ab6680dd9c6`  
		Last Modified: Wed, 06 Jun 2018 00:08:45 GMT  
		Size: 2.9 KB (2885 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4ef284ee7e715db5182f77f0d952685ca387492cb2189075a258286079c086a`  
		Last Modified: Thu, 14 Jun 2018 05:32:30 GMT  
		Size: 10.5 MB (10496984 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d249d329af2e45ab0826284a34cf3d3c8cc42fbe827d0aef7f044f3dce9ad804`  
		Last Modified: Thu, 14 Jun 2018 05:32:28 GMT  
		Size: 185.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
