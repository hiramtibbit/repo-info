<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `lightstreamer`

-	[`lightstreamer:6`](#lightstreamer6)
-	[`lightstreamer:6.0`](#lightstreamer60)
-	[`lightstreamer:6.0.3`](#lightstreamer603)
-	[`lightstreamer:6.1`](#lightstreamer61)
-	[`lightstreamer:6.1.0`](#lightstreamer610)
-	[`lightstreamer:7`](#lightstreamer7)
-	[`lightstreamer:7.0`](#lightstreamer70)
-	[`lightstreamer:7.0.3`](#lightstreamer703)
-	[`lightstreamer:7.0.3-alpine`](#lightstreamer703-alpine)
-	[`lightstreamer:7.0.3-jre11`](#lightstreamer703-jre11)
-	[`lightstreamer:7.0.3-jre8`](#lightstreamer703-jre8)
-	[`lightstreamer:7.0.3-jre8-alpine`](#lightstreamer703-jre8-alpine)
-	[`lightstreamer:7.0-alpine`](#lightstreamer70-alpine)
-	[`lightstreamer:7.0-jre11`](#lightstreamer70-jre11)
-	[`lightstreamer:7.0-jre8`](#lightstreamer70-jre8)
-	[`lightstreamer:7.0-jre8-alpine`](#lightstreamer70-jre8-alpine)
-	[`lightstreamer:7-alpine`](#lightstreamer7-alpine)
-	[`lightstreamer:7-jre11`](#lightstreamer7-jre11)
-	[`lightstreamer:7-jre8`](#lightstreamer7-jre8)
-	[`lightstreamer:7-jre8-alpine`](#lightstreamer7-jre8-alpine)
-	[`lightstreamer:latest`](#lightstreamerlatest)

## `lightstreamer:6`

```console
$ docker pull lightstreamer@sha256:4e4b4ebe3fd99a25e18cdd0eb883989ae5d9599a66b3ad37af292002545563ba
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `lightstreamer:6` - linux; amd64

```console
$ docker pull lightstreamer@sha256:85f56917ac7f093618d87cc83bbb8d8b22cec53ed734bb6882c8eb4ba5cf6973
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **142.2 MB (142219470 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b52547dedd468d5e7ba9b2131693e4dfb2080693935ce42466c83616601984d3`
-	Default Command: `[".\/LS.sh","run"]`

```dockerfile
# Wed, 08 May 2019 00:33:09 GMT
ADD file:caf91edab64f988bc24766c58ee66c00311c7c921296b8e5b51d7023422a1485 in / 
# Wed, 08 May 2019 00:33:10 GMT
CMD ["bash"]
# Wed, 08 May 2019 01:40:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 01:40:12 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 29 May 2019 21:22:25 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 				ca-certificates p11-kit 				fontconfig libfreetype6 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 29 May 2019 21:22:25 GMT
ENV LANG=C.UTF-8
# Wed, 29 May 2019 21:22:26 GMT
ENV JAVA_HOME=/usr/local/openjdk-8
# Wed, 29 May 2019 21:22:26 GMT
ENV PATH=/usr/local/openjdk-8/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 29 May 2019 21:22:26 GMT
RUN { echo '#/bin/sh'; echo 'echo "$JAVA_HOME"'; } > /usr/local/bin/docker-java-home && chmod +x /usr/local/bin/docker-java-home && [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 29 May 2019 21:22:27 GMT
ENV JAVA_VERSION=8u212-b04
# Wed, 29 May 2019 21:22:27 GMT
ENV JAVA_BASE_URL=https://github.com/AdoptOpenJDK/openjdk8-upstream-binaries/releases/download/jdk8u212-b04/OpenJDK8U-jre_
# Wed, 29 May 2019 21:22:27 GMT
ENV JAVA_URL_VERSION=8u212b04
# Wed, 05 Jun 2019 22:26:18 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64) upstreamArch='x64' ;; 		arm64) upstreamArch='aarch64' ;; 		*) echo >&2 "error: unsupported architecture: $dpkgArch" ;; 	esac; 		wget -O openjdk.tgz.asc "${JAVA_BASE_URL}${upstreamArch}_linux_${JAVA_URL_VERSION}.tar.gz.sign"; 	wget -O openjdk.tgz "${JAVA_BASE_URL}${upstreamArch}_linux_${JAVA_URL_VERSION}.tar.gz" --progress=dot:giga; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys CA5F11C6CE22644D42C6AC4492EF8D39DC13168F; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys EAC843EBD3EFDB98CC772FADA5CD6035332FA671; 	gpg --batch --list-sigs --keyid-format 0xLONG CA5F11C6CE22644D42C6AC4492EF8D39DC13168F | grep '0xA5CD6035332FA671' | grep 'Andrew Haley'; 	gpg --batch --verify openjdk.tgz.asc openjdk.tgz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 			{ 		echo '#!/usr/bin/env bash'; 		echo 'set -Eeuo pipefail'; 		echo 'if ! [ -d "$JAVA_HOME" ]; then echo >&2 "error: missing JAVA_HOME environment variable"; exit 1; fi'; 		echo 'cacertsFile=; for f in "$JAVA_HOME/lib/security/cacerts" "$JAVA_HOME/jre/lib/security/cacerts"; do if [ -e "$f" ]; then cacertsFile="$f"; break; fi; done'; 		echo 'if [ -z "$cacertsFile" ] || ! [ -f "$cacertsFile" ]; then echo >&2 "error: failed to find cacerts file in $JAVA_HOME"; exit 1; fi'; 		echo 'trust extract --overwrite --format=java-cacerts --filter=ca-anchors --purpose=server-auth "$cacertsFile"'; 	} > /etc/ca-certificates/update.d/docker-openjdk; 	chmod +x /etc/ca-certificates/update.d/docker-openjdk; 	/etc/ca-certificates/update.d/docker-openjdk; 		find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf; 	ldconfig; 		java -version
# Wed, 05 Jun 2019 23:15:28 GMT
MAINTAINER Lightstreamer Server Development Team <support@lightstreamer.com>
# Wed, 05 Jun 2019 23:15:30 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 9B90BFD14309C7DA5EF58D7D4A8C08966F29B4D2
# Wed, 05 Jun 2019 23:15:31 GMT
ENV LIGHSTREAMER_EDITION=Allegro-Presto-Vivace
# Wed, 05 Jun 2019 23:15:44 GMT
ENV LIGHSTREAMER_VERSION=6_1_0_20170123
# Wed, 05 Jun 2019 23:15:45 GMT
ENV LIGHSTREAMER_URL_DOWNLOAD=http://www.lightstreamer.com/repo/distros/Lightstreamer_Allegro-Presto-Vivace_6_1_0_20170123.tar.gz
# Wed, 05 Jun 2019 23:15:45 GMT
WORKDIR /lightstreamer
# Wed, 05 Jun 2019 23:15:53 GMT
RUN set -x         && curl -fSL -o Lightstreamer.tar.gz ${LIGHSTREAMER_URL_DOWNLOAD}         && curl -fSL -o Lightstreamer.tar.gz.asc ${LIGHSTREAMER_URL_DOWNLOAD}.asc         && gpg --batch --verify Lightstreamer.tar.gz.asc Lightstreamer.tar.gz         && tar -xvf Lightstreamer.tar.gz --strip-components=1         && rm Lightstreamer.tar.gz Lightstreamer.tar.gz.asc         && sed -i -- 's/\/usr\/jdk1.8.0/$JAVA_HOME/' bin/unix-like/LS.sh         && sed -i -e '123,$s/<appender-ref ref="LSDailyRolling" \/>/<appender-ref ref="LSConsole" \/>/'                   -e '/<appender-ref ref="LSDailyRolling" \/>/ d' conf/lightstreamer_log_conf.xml
# Wed, 05 Jun 2019 23:15:54 GMT
EXPOSE 8080
# Wed, 05 Jun 2019 23:15:54 GMT
WORKDIR /lightstreamer/bin/unix-like
# Wed, 05 Jun 2019 23:15:54 GMT
CMD ["./LS.sh" "run"]
```

-	Layers:
	-	`sha256:c5e155d5a1d130a7f8a3e24cee0d9e1349bff13f90ec6a941478e558fde53c14`  
		Last Modified: Wed, 08 May 2019 00:37:42 GMT  
		Size: 45.3 MB (45339314 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:221d80d00ae9675aad24913aacbadfac1ce8b7084f9765a6c0813486082c5c69`  
		Last Modified: Wed, 08 May 2019 01:45:42 GMT  
		Size: 10.8 MB (10784878 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4250b3117dca5e14edc32ebf1366cd54e4cda91f17610b76c504a86917ff8b95`  
		Last Modified: Wed, 08 May 2019 01:45:41 GMT  
		Size: 4.3 MB (4340094 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84d5a83c37cab1b4e3581d9738d290681fd8ce13cde68954a5baeef12128e9ae`  
		Last Modified: Wed, 29 May 2019 21:26:37 GMT  
		Size: 5.1 MB (5123210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ca1d40853ad108aee04ac7b66996b467ca6cd20319bd8b11a7965e00e8750fa`  
		Last Modified: Wed, 29 May 2019 21:26:39 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26161197356e5acc9f03bd438a4a5f497fd9a7f9879f88485c01a484988363e0`  
		Last Modified: Wed, 05 Jun 2019 22:28:57 GMT  
		Size: 40.1 MB (40113119 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77f62d650637077c51ad520f6759db3b15ae5dbe21761b007947660ac2dbbcd3`  
		Last Modified: Wed, 05 Jun 2019 23:16:35 GMT  
		Size: 2.0 KB (2012 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1dace95dfdaf98c9320efb4d8005d62adcb4458ccd85909bdbadc3fee02b106f`  
		Last Modified: Wed, 05 Jun 2019 23:16:44 GMT  
		Size: 102.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8a67e6fb138bde9291ee91bb97ce84fcc80b27aadb637548f9ff5c91e2b0c84`  
		Last Modified: Wed, 05 Jun 2019 23:16:48 GMT  
		Size: 36.5 MB (36516519 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `lightstreamer:6` - linux; arm64 variant v8

```console
$ docker pull lightstreamer@sha256:dede6089bdf2681cce9d8371cfdcc047e9df1a852d14cb740563935e1d2d2aab
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **207.4 MB (207404936 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:085b938d096813f77a9dc391314cfa6571451805426829a7552e52da95d05e04`
-	Default Command: `[".\/LS.sh","run"]`

```dockerfile
# Wed, 08 May 2019 08:48:25 GMT
ADD file:153045f4fe6532d8c2ff273bb249a7a3a4cba913c26a4103ba5ddce1af02c1e5 in / 
# Wed, 08 May 2019 08:48:26 GMT
CMD ["bash"]
# Wed, 08 May 2019 11:51:12 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 11:51:50 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 08 May 2019 16:06:35 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 16:20:20 GMT
ENV LANG=C.UTF-8
# Wed, 08 May 2019 16:20:22 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 08 May 2019 16:20:24 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 08 May 2019 16:20:25 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Wed, 08 May 2019 16:20:25 GMT
ENV JAVA_VERSION=8u212
# Wed, 08 May 2019 16:20:26 GMT
ENV JAVA_DEBIAN_VERSION=8u212-b01-1~deb9u1
# Wed, 08 May 2019 16:26:07 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Thu, 09 May 2019 07:13:53 GMT
MAINTAINER Lightstreamer Server Development Team <support@lightstreamer.com>
# Thu, 09 May 2019 07:14:02 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 9B90BFD14309C7DA5EF58D7D4A8C08966F29B4D2
# Thu, 09 May 2019 07:14:02 GMT
ENV LIGHSTREAMER_EDITION=Allegro-Presto-Vivace
# Thu, 09 May 2019 07:14:31 GMT
ENV LIGHSTREAMER_VERSION=6_1_0_20170123
# Thu, 09 May 2019 07:14:32 GMT
ENV LIGHSTREAMER_URL_DOWNLOAD=http://www.lightstreamer.com/repo/distros/Lightstreamer_Allegro-Presto-Vivace_6_1_0_20170123.tar.gz
# Thu, 09 May 2019 07:14:32 GMT
WORKDIR /lightstreamer
# Thu, 09 May 2019 07:14:46 GMT
RUN set -x         && curl -fSL -o Lightstreamer.tar.gz ${LIGHSTREAMER_URL_DOWNLOAD}         && curl -fSL -o Lightstreamer.tar.gz.asc ${LIGHSTREAMER_URL_DOWNLOAD}.asc         && gpg --batch --verify Lightstreamer.tar.gz.asc Lightstreamer.tar.gz         && tar -xvf Lightstreamer.tar.gz --strip-components=1         && rm Lightstreamer.tar.gz Lightstreamer.tar.gz.asc         && sed -i -- 's/\/usr\/jdk1.8.0/$JAVA_HOME/' bin/unix-like/LS.sh         && sed -i -e '123,$s/<appender-ref ref="LSDailyRolling" \/>/<appender-ref ref="LSConsole" \/>/'                   -e '/<appender-ref ref="LSDailyRolling" \/>/ d' conf/lightstreamer_log_conf.xml
# Thu, 09 May 2019 07:14:47 GMT
EXPOSE 8080
# Thu, 09 May 2019 07:14:48 GMT
WORKDIR /lightstreamer/bin/unix-like
# Thu, 09 May 2019 07:14:49 GMT
CMD ["./LS.sh" "run"]
```

-	Layers:
	-	`sha256:5894e28291972e44f5c3eba2779a85979bae6f95ed4f3e43ea5c98a132f06c48`  
		Last Modified: Wed, 08 May 2019 08:54:43 GMT  
		Size: 43.1 MB (43141955 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a8e6888cee6fef7c223eeaf2ca4c51bc0c21b4631971f416eb6a529a05e96cb`  
		Last Modified: Wed, 08 May 2019 12:07:05 GMT  
		Size: 9.7 MB (9733078 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8bf90e854779f4c5edab378626d847fd0ab7aa9441b63a7db31a7db55d2b255b`  
		Last Modified: Wed, 08 May 2019 12:07:03 GMT  
		Size: 4.1 MB (4094187 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:266e07372d3cf38feb8825ddae8cb9f335282ad809bba6aeaac01c34a13b9394`  
		Last Modified: Wed, 08 May 2019 16:31:36 GMT  
		Size: 839.5 KB (839462 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a659800b4725d142bb026865f3fe7c0783f10d06c59d098da99786f2d1651351`  
		Last Modified: Wed, 08 May 2019 16:35:05 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b72fcad374b58026407e0d656f469140e3725eb1baa7468dfaba55fc642503d`  
		Last Modified: Wed, 08 May 2019 16:35:05 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f06f957e19b2a1bce1a9143c3ec174bda06b3a5d74ef7122a0b81a3a730deae6`  
		Last Modified: Wed, 08 May 2019 16:35:55 GMT  
		Size: 113.1 MB (113077224 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09d0d0ba5d39f95475016cb932a0baebe7ff94ebe88f24a499fdd7264c4f28a7`  
		Last Modified: Thu, 09 May 2019 07:16:32 GMT  
		Size: 2.0 KB (2013 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2524b8c33ffad9cd8406875dcedab3db5f969b2dac3332a6fd68cbf37ea775c9`  
		Last Modified: Thu, 09 May 2019 07:16:53 GMT  
		Size: 102.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89b37c48fc76e24750bbb32b6b2f0e012598eb53a71ed7237c4ba659f69c4836`  
		Last Modified: Thu, 09 May 2019 07:17:01 GMT  
		Size: 36.5 MB (36516537 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `lightstreamer:6.0`

```console
$ docker pull lightstreamer@sha256:1d9c842fbff74a72250e34bd9d02d87ab795f3755ae1203efc92f2cfac808bc9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `lightstreamer:6.0` - linux; amd64

```console
$ docker pull lightstreamer@sha256:faf83dd3e14c96e629c15cf3390c9c92785a5b1c1d75af09e5303ab5be45a041
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **143.5 MB (143497985 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9ae1489a09c5c2f72602158f0a865ddf1071d30c88e6308a6041b80a4463bf14`
-	Default Command: `[".\/LS.sh","run"]`

```dockerfile
# Wed, 08 May 2019 00:33:09 GMT
ADD file:caf91edab64f988bc24766c58ee66c00311c7c921296b8e5b51d7023422a1485 in / 
# Wed, 08 May 2019 00:33:10 GMT
CMD ["bash"]
# Wed, 08 May 2019 01:40:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 01:40:12 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 29 May 2019 21:22:25 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 				ca-certificates p11-kit 				fontconfig libfreetype6 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 29 May 2019 21:22:25 GMT
ENV LANG=C.UTF-8
# Wed, 29 May 2019 21:22:26 GMT
ENV JAVA_HOME=/usr/local/openjdk-8
# Wed, 29 May 2019 21:22:26 GMT
ENV PATH=/usr/local/openjdk-8/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 29 May 2019 21:22:26 GMT
RUN { echo '#/bin/sh'; echo 'echo "$JAVA_HOME"'; } > /usr/local/bin/docker-java-home && chmod +x /usr/local/bin/docker-java-home && [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 29 May 2019 21:22:27 GMT
ENV JAVA_VERSION=8u212-b04
# Wed, 29 May 2019 21:22:27 GMT
ENV JAVA_BASE_URL=https://github.com/AdoptOpenJDK/openjdk8-upstream-binaries/releases/download/jdk8u212-b04/OpenJDK8U-jre_
# Wed, 29 May 2019 21:22:27 GMT
ENV JAVA_URL_VERSION=8u212b04
# Wed, 05 Jun 2019 22:26:18 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64) upstreamArch='x64' ;; 		arm64) upstreamArch='aarch64' ;; 		*) echo >&2 "error: unsupported architecture: $dpkgArch" ;; 	esac; 		wget -O openjdk.tgz.asc "${JAVA_BASE_URL}${upstreamArch}_linux_${JAVA_URL_VERSION}.tar.gz.sign"; 	wget -O openjdk.tgz "${JAVA_BASE_URL}${upstreamArch}_linux_${JAVA_URL_VERSION}.tar.gz" --progress=dot:giga; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys CA5F11C6CE22644D42C6AC4492EF8D39DC13168F; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys EAC843EBD3EFDB98CC772FADA5CD6035332FA671; 	gpg --batch --list-sigs --keyid-format 0xLONG CA5F11C6CE22644D42C6AC4492EF8D39DC13168F | grep '0xA5CD6035332FA671' | grep 'Andrew Haley'; 	gpg --batch --verify openjdk.tgz.asc openjdk.tgz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 			{ 		echo '#!/usr/bin/env bash'; 		echo 'set -Eeuo pipefail'; 		echo 'if ! [ -d "$JAVA_HOME" ]; then echo >&2 "error: missing JAVA_HOME environment variable"; exit 1; fi'; 		echo 'cacertsFile=; for f in "$JAVA_HOME/lib/security/cacerts" "$JAVA_HOME/jre/lib/security/cacerts"; do if [ -e "$f" ]; then cacertsFile="$f"; break; fi; done'; 		echo 'if [ -z "$cacertsFile" ] || ! [ -f "$cacertsFile" ]; then echo >&2 "error: failed to find cacerts file in $JAVA_HOME"; exit 1; fi'; 		echo 'trust extract --overwrite --format=java-cacerts --filter=ca-anchors --purpose=server-auth "$cacertsFile"'; 	} > /etc/ca-certificates/update.d/docker-openjdk; 	chmod +x /etc/ca-certificates/update.d/docker-openjdk; 	/etc/ca-certificates/update.d/docker-openjdk; 		find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf; 	ldconfig; 		java -version
# Wed, 05 Jun 2019 23:15:28 GMT
MAINTAINER Lightstreamer Server Development Team <support@lightstreamer.com>
# Wed, 05 Jun 2019 23:15:30 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 9B90BFD14309C7DA5EF58D7D4A8C08966F29B4D2
# Wed, 05 Jun 2019 23:15:31 GMT
ENV LIGHSTREAMER_EDITION=Allegro-Presto-Vivace
# Wed, 05 Jun 2019 23:15:31 GMT
ENV LIGHSTREAMER_VERSION=6_0_3_20160905
# Wed, 05 Jun 2019 23:15:31 GMT
ENV LIGHSTREAMER_URL_DOWNLOAD=http://www.lightstreamer.com/repo/distros/Lightstreamer_Allegro-Presto-Vivace_6_0_3_20160905.tar.gz
# Wed, 05 Jun 2019 23:15:31 GMT
WORKDIR /lightstreamer
# Wed, 05 Jun 2019 23:15:40 GMT
RUN set -x         && curl -fSL -o Lightstreamer.tar.gz ${LIGHSTREAMER_URL_DOWNLOAD}         && curl -fSL -o Lightstreamer.tar.gz.asc ${LIGHSTREAMER_URL_DOWNLOAD}.asc         && gpg --batch --verify Lightstreamer.tar.gz.asc Lightstreamer.tar.gz         && tar -xvf Lightstreamer.tar.gz --strip-components=1         && rm Lightstreamer.tar.gz Lightstreamer.tar.gz.asc         && sed -i -- 's/\/usr\/jdk1.8.0/$JAVA_HOME/' bin/unix-like/LS.sh         && sed -i -e '123,$s/<appender-ref ref="LSDailyRolling" \/>/<appender-ref ref="LSConsole" \/>/'                   -e '/<appender-ref ref="LSDailyRolling" \/>/ d' conf/lightstreamer_log_conf.xml
# Wed, 05 Jun 2019 23:15:40 GMT
EXPOSE 8080
# Wed, 05 Jun 2019 23:15:40 GMT
WORKDIR /lightstreamer/bin/unix-like
# Wed, 05 Jun 2019 23:15:41 GMT
CMD ["./LS.sh" "run"]
```

-	Layers:
	-	`sha256:c5e155d5a1d130a7f8a3e24cee0d9e1349bff13f90ec6a941478e558fde53c14`  
		Last Modified: Wed, 08 May 2019 00:37:42 GMT  
		Size: 45.3 MB (45339314 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:221d80d00ae9675aad24913aacbadfac1ce8b7084f9765a6c0813486082c5c69`  
		Last Modified: Wed, 08 May 2019 01:45:42 GMT  
		Size: 10.8 MB (10784878 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4250b3117dca5e14edc32ebf1366cd54e4cda91f17610b76c504a86917ff8b95`  
		Last Modified: Wed, 08 May 2019 01:45:41 GMT  
		Size: 4.3 MB (4340094 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84d5a83c37cab1b4e3581d9738d290681fd8ce13cde68954a5baeef12128e9ae`  
		Last Modified: Wed, 29 May 2019 21:26:37 GMT  
		Size: 5.1 MB (5123210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ca1d40853ad108aee04ac7b66996b467ca6cd20319bd8b11a7965e00e8750fa`  
		Last Modified: Wed, 29 May 2019 21:26:39 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26161197356e5acc9f03bd438a4a5f497fd9a7f9879f88485c01a484988363e0`  
		Last Modified: Wed, 05 Jun 2019 22:28:57 GMT  
		Size: 40.1 MB (40113119 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77f62d650637077c51ad520f6759db3b15ae5dbe21761b007947660ac2dbbcd3`  
		Last Modified: Wed, 05 Jun 2019 23:16:35 GMT  
		Size: 2.0 KB (2012 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4861d6cb583f34004cea2a0345f09c53e46e89dc375a2f5441ac6481890edacc`  
		Last Modified: Wed, 05 Jun 2019 23:16:34 GMT  
		Size: 102.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f4ee74542182d6f2df68ac84ffb901f7aef4f5d23d69ce6c78a86df7b5e2adc`  
		Last Modified: Wed, 05 Jun 2019 23:16:40 GMT  
		Size: 37.8 MB (37795034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `lightstreamer:6.0` - linux; arm64 variant v8

```console
$ docker pull lightstreamer@sha256:5e5acccd75ebedf7f454cf681a9cb9f864bd19fac666d47c0413b8c9156cd5df
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **208.7 MB (208683511 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c059b755cc40e25ac6f2489b4b0832e4242a53484e1304a988284c5807f6d0cf`
-	Default Command: `[".\/LS.sh","run"]`

```dockerfile
# Wed, 08 May 2019 08:48:25 GMT
ADD file:153045f4fe6532d8c2ff273bb249a7a3a4cba913c26a4103ba5ddce1af02c1e5 in / 
# Wed, 08 May 2019 08:48:26 GMT
CMD ["bash"]
# Wed, 08 May 2019 11:51:12 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 11:51:50 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 08 May 2019 16:06:35 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 16:20:20 GMT
ENV LANG=C.UTF-8
# Wed, 08 May 2019 16:20:22 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 08 May 2019 16:20:24 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 08 May 2019 16:20:25 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Wed, 08 May 2019 16:20:25 GMT
ENV JAVA_VERSION=8u212
# Wed, 08 May 2019 16:20:26 GMT
ENV JAVA_DEBIAN_VERSION=8u212-b01-1~deb9u1
# Wed, 08 May 2019 16:26:07 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Thu, 09 May 2019 07:13:53 GMT
MAINTAINER Lightstreamer Server Development Team <support@lightstreamer.com>
# Thu, 09 May 2019 07:14:02 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 9B90BFD14309C7DA5EF58D7D4A8C08966F29B4D2
# Thu, 09 May 2019 07:14:02 GMT
ENV LIGHSTREAMER_EDITION=Allegro-Presto-Vivace
# Thu, 09 May 2019 07:14:03 GMT
ENV LIGHSTREAMER_VERSION=6_0_3_20160905
# Thu, 09 May 2019 07:14:04 GMT
ENV LIGHSTREAMER_URL_DOWNLOAD=http://www.lightstreamer.com/repo/distros/Lightstreamer_Allegro-Presto-Vivace_6_0_3_20160905.tar.gz
# Thu, 09 May 2019 07:14:05 GMT
WORKDIR /lightstreamer
# Thu, 09 May 2019 07:14:20 GMT
RUN set -x         && curl -fSL -o Lightstreamer.tar.gz ${LIGHSTREAMER_URL_DOWNLOAD}         && curl -fSL -o Lightstreamer.tar.gz.asc ${LIGHSTREAMER_URL_DOWNLOAD}.asc         && gpg --batch --verify Lightstreamer.tar.gz.asc Lightstreamer.tar.gz         && tar -xvf Lightstreamer.tar.gz --strip-components=1         && rm Lightstreamer.tar.gz Lightstreamer.tar.gz.asc         && sed -i -- 's/\/usr\/jdk1.8.0/$JAVA_HOME/' bin/unix-like/LS.sh         && sed -i -e '123,$s/<appender-ref ref="LSDailyRolling" \/>/<appender-ref ref="LSConsole" \/>/'                   -e '/<appender-ref ref="LSDailyRolling" \/>/ d' conf/lightstreamer_log_conf.xml
# Thu, 09 May 2019 07:14:21 GMT
EXPOSE 8080
# Thu, 09 May 2019 07:14:22 GMT
WORKDIR /lightstreamer/bin/unix-like
# Thu, 09 May 2019 07:14:23 GMT
CMD ["./LS.sh" "run"]
```

-	Layers:
	-	`sha256:5894e28291972e44f5c3eba2779a85979bae6f95ed4f3e43ea5c98a132f06c48`  
		Last Modified: Wed, 08 May 2019 08:54:43 GMT  
		Size: 43.1 MB (43141955 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a8e6888cee6fef7c223eeaf2ca4c51bc0c21b4631971f416eb6a529a05e96cb`  
		Last Modified: Wed, 08 May 2019 12:07:05 GMT  
		Size: 9.7 MB (9733078 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8bf90e854779f4c5edab378626d847fd0ab7aa9441b63a7db31a7db55d2b255b`  
		Last Modified: Wed, 08 May 2019 12:07:03 GMT  
		Size: 4.1 MB (4094187 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:266e07372d3cf38feb8825ddae8cb9f335282ad809bba6aeaac01c34a13b9394`  
		Last Modified: Wed, 08 May 2019 16:31:36 GMT  
		Size: 839.5 KB (839462 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a659800b4725d142bb026865f3fe7c0783f10d06c59d098da99786f2d1651351`  
		Last Modified: Wed, 08 May 2019 16:35:05 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b72fcad374b58026407e0d656f469140e3725eb1baa7468dfaba55fc642503d`  
		Last Modified: Wed, 08 May 2019 16:35:05 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f06f957e19b2a1bce1a9143c3ec174bda06b3a5d74ef7122a0b81a3a730deae6`  
		Last Modified: Wed, 08 May 2019 16:35:55 GMT  
		Size: 113.1 MB (113077224 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09d0d0ba5d39f95475016cb932a0baebe7ff94ebe88f24a499fdd7264c4f28a7`  
		Last Modified: Thu, 09 May 2019 07:16:32 GMT  
		Size: 2.0 KB (2013 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:044cf84042b641187b39741e6fa0c53ad54bbdad084596907958dec3a5aa6a26`  
		Last Modified: Thu, 09 May 2019 07:16:32 GMT  
		Size: 102.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea6ee3b231c36bace14df026ea9e15671f98c61359c52dde98555f8d84277ef4`  
		Last Modified: Thu, 09 May 2019 07:16:42 GMT  
		Size: 37.8 MB (37795112 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `lightstreamer:6.0.3`

```console
$ docker pull lightstreamer@sha256:1d9c842fbff74a72250e34bd9d02d87ab795f3755ae1203efc92f2cfac808bc9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `lightstreamer:6.0.3` - linux; amd64

```console
$ docker pull lightstreamer@sha256:faf83dd3e14c96e629c15cf3390c9c92785a5b1c1d75af09e5303ab5be45a041
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **143.5 MB (143497985 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9ae1489a09c5c2f72602158f0a865ddf1071d30c88e6308a6041b80a4463bf14`
-	Default Command: `[".\/LS.sh","run"]`

```dockerfile
# Wed, 08 May 2019 00:33:09 GMT
ADD file:caf91edab64f988bc24766c58ee66c00311c7c921296b8e5b51d7023422a1485 in / 
# Wed, 08 May 2019 00:33:10 GMT
CMD ["bash"]
# Wed, 08 May 2019 01:40:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 01:40:12 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 29 May 2019 21:22:25 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 				ca-certificates p11-kit 				fontconfig libfreetype6 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 29 May 2019 21:22:25 GMT
ENV LANG=C.UTF-8
# Wed, 29 May 2019 21:22:26 GMT
ENV JAVA_HOME=/usr/local/openjdk-8
# Wed, 29 May 2019 21:22:26 GMT
ENV PATH=/usr/local/openjdk-8/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 29 May 2019 21:22:26 GMT
RUN { echo '#/bin/sh'; echo 'echo "$JAVA_HOME"'; } > /usr/local/bin/docker-java-home && chmod +x /usr/local/bin/docker-java-home && [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 29 May 2019 21:22:27 GMT
ENV JAVA_VERSION=8u212-b04
# Wed, 29 May 2019 21:22:27 GMT
ENV JAVA_BASE_URL=https://github.com/AdoptOpenJDK/openjdk8-upstream-binaries/releases/download/jdk8u212-b04/OpenJDK8U-jre_
# Wed, 29 May 2019 21:22:27 GMT
ENV JAVA_URL_VERSION=8u212b04
# Wed, 05 Jun 2019 22:26:18 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64) upstreamArch='x64' ;; 		arm64) upstreamArch='aarch64' ;; 		*) echo >&2 "error: unsupported architecture: $dpkgArch" ;; 	esac; 		wget -O openjdk.tgz.asc "${JAVA_BASE_URL}${upstreamArch}_linux_${JAVA_URL_VERSION}.tar.gz.sign"; 	wget -O openjdk.tgz "${JAVA_BASE_URL}${upstreamArch}_linux_${JAVA_URL_VERSION}.tar.gz" --progress=dot:giga; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys CA5F11C6CE22644D42C6AC4492EF8D39DC13168F; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys EAC843EBD3EFDB98CC772FADA5CD6035332FA671; 	gpg --batch --list-sigs --keyid-format 0xLONG CA5F11C6CE22644D42C6AC4492EF8D39DC13168F | grep '0xA5CD6035332FA671' | grep 'Andrew Haley'; 	gpg --batch --verify openjdk.tgz.asc openjdk.tgz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 			{ 		echo '#!/usr/bin/env bash'; 		echo 'set -Eeuo pipefail'; 		echo 'if ! [ -d "$JAVA_HOME" ]; then echo >&2 "error: missing JAVA_HOME environment variable"; exit 1; fi'; 		echo 'cacertsFile=; for f in "$JAVA_HOME/lib/security/cacerts" "$JAVA_HOME/jre/lib/security/cacerts"; do if [ -e "$f" ]; then cacertsFile="$f"; break; fi; done'; 		echo 'if [ -z "$cacertsFile" ] || ! [ -f "$cacertsFile" ]; then echo >&2 "error: failed to find cacerts file in $JAVA_HOME"; exit 1; fi'; 		echo 'trust extract --overwrite --format=java-cacerts --filter=ca-anchors --purpose=server-auth "$cacertsFile"'; 	} > /etc/ca-certificates/update.d/docker-openjdk; 	chmod +x /etc/ca-certificates/update.d/docker-openjdk; 	/etc/ca-certificates/update.d/docker-openjdk; 		find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf; 	ldconfig; 		java -version
# Wed, 05 Jun 2019 23:15:28 GMT
MAINTAINER Lightstreamer Server Development Team <support@lightstreamer.com>
# Wed, 05 Jun 2019 23:15:30 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 9B90BFD14309C7DA5EF58D7D4A8C08966F29B4D2
# Wed, 05 Jun 2019 23:15:31 GMT
ENV LIGHSTREAMER_EDITION=Allegro-Presto-Vivace
# Wed, 05 Jun 2019 23:15:31 GMT
ENV LIGHSTREAMER_VERSION=6_0_3_20160905
# Wed, 05 Jun 2019 23:15:31 GMT
ENV LIGHSTREAMER_URL_DOWNLOAD=http://www.lightstreamer.com/repo/distros/Lightstreamer_Allegro-Presto-Vivace_6_0_3_20160905.tar.gz
# Wed, 05 Jun 2019 23:15:31 GMT
WORKDIR /lightstreamer
# Wed, 05 Jun 2019 23:15:40 GMT
RUN set -x         && curl -fSL -o Lightstreamer.tar.gz ${LIGHSTREAMER_URL_DOWNLOAD}         && curl -fSL -o Lightstreamer.tar.gz.asc ${LIGHSTREAMER_URL_DOWNLOAD}.asc         && gpg --batch --verify Lightstreamer.tar.gz.asc Lightstreamer.tar.gz         && tar -xvf Lightstreamer.tar.gz --strip-components=1         && rm Lightstreamer.tar.gz Lightstreamer.tar.gz.asc         && sed -i -- 's/\/usr\/jdk1.8.0/$JAVA_HOME/' bin/unix-like/LS.sh         && sed -i -e '123,$s/<appender-ref ref="LSDailyRolling" \/>/<appender-ref ref="LSConsole" \/>/'                   -e '/<appender-ref ref="LSDailyRolling" \/>/ d' conf/lightstreamer_log_conf.xml
# Wed, 05 Jun 2019 23:15:40 GMT
EXPOSE 8080
# Wed, 05 Jun 2019 23:15:40 GMT
WORKDIR /lightstreamer/bin/unix-like
# Wed, 05 Jun 2019 23:15:41 GMT
CMD ["./LS.sh" "run"]
```

-	Layers:
	-	`sha256:c5e155d5a1d130a7f8a3e24cee0d9e1349bff13f90ec6a941478e558fde53c14`  
		Last Modified: Wed, 08 May 2019 00:37:42 GMT  
		Size: 45.3 MB (45339314 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:221d80d00ae9675aad24913aacbadfac1ce8b7084f9765a6c0813486082c5c69`  
		Last Modified: Wed, 08 May 2019 01:45:42 GMT  
		Size: 10.8 MB (10784878 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4250b3117dca5e14edc32ebf1366cd54e4cda91f17610b76c504a86917ff8b95`  
		Last Modified: Wed, 08 May 2019 01:45:41 GMT  
		Size: 4.3 MB (4340094 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84d5a83c37cab1b4e3581d9738d290681fd8ce13cde68954a5baeef12128e9ae`  
		Last Modified: Wed, 29 May 2019 21:26:37 GMT  
		Size: 5.1 MB (5123210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ca1d40853ad108aee04ac7b66996b467ca6cd20319bd8b11a7965e00e8750fa`  
		Last Modified: Wed, 29 May 2019 21:26:39 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26161197356e5acc9f03bd438a4a5f497fd9a7f9879f88485c01a484988363e0`  
		Last Modified: Wed, 05 Jun 2019 22:28:57 GMT  
		Size: 40.1 MB (40113119 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77f62d650637077c51ad520f6759db3b15ae5dbe21761b007947660ac2dbbcd3`  
		Last Modified: Wed, 05 Jun 2019 23:16:35 GMT  
		Size: 2.0 KB (2012 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4861d6cb583f34004cea2a0345f09c53e46e89dc375a2f5441ac6481890edacc`  
		Last Modified: Wed, 05 Jun 2019 23:16:34 GMT  
		Size: 102.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f4ee74542182d6f2df68ac84ffb901f7aef4f5d23d69ce6c78a86df7b5e2adc`  
		Last Modified: Wed, 05 Jun 2019 23:16:40 GMT  
		Size: 37.8 MB (37795034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `lightstreamer:6.0.3` - linux; arm64 variant v8

```console
$ docker pull lightstreamer@sha256:5e5acccd75ebedf7f454cf681a9cb9f864bd19fac666d47c0413b8c9156cd5df
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **208.7 MB (208683511 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c059b755cc40e25ac6f2489b4b0832e4242a53484e1304a988284c5807f6d0cf`
-	Default Command: `[".\/LS.sh","run"]`

```dockerfile
# Wed, 08 May 2019 08:48:25 GMT
ADD file:153045f4fe6532d8c2ff273bb249a7a3a4cba913c26a4103ba5ddce1af02c1e5 in / 
# Wed, 08 May 2019 08:48:26 GMT
CMD ["bash"]
# Wed, 08 May 2019 11:51:12 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 11:51:50 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 08 May 2019 16:06:35 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 16:20:20 GMT
ENV LANG=C.UTF-8
# Wed, 08 May 2019 16:20:22 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 08 May 2019 16:20:24 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 08 May 2019 16:20:25 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Wed, 08 May 2019 16:20:25 GMT
ENV JAVA_VERSION=8u212
# Wed, 08 May 2019 16:20:26 GMT
ENV JAVA_DEBIAN_VERSION=8u212-b01-1~deb9u1
# Wed, 08 May 2019 16:26:07 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Thu, 09 May 2019 07:13:53 GMT
MAINTAINER Lightstreamer Server Development Team <support@lightstreamer.com>
# Thu, 09 May 2019 07:14:02 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 9B90BFD14309C7DA5EF58D7D4A8C08966F29B4D2
# Thu, 09 May 2019 07:14:02 GMT
ENV LIGHSTREAMER_EDITION=Allegro-Presto-Vivace
# Thu, 09 May 2019 07:14:03 GMT
ENV LIGHSTREAMER_VERSION=6_0_3_20160905
# Thu, 09 May 2019 07:14:04 GMT
ENV LIGHSTREAMER_URL_DOWNLOAD=http://www.lightstreamer.com/repo/distros/Lightstreamer_Allegro-Presto-Vivace_6_0_3_20160905.tar.gz
# Thu, 09 May 2019 07:14:05 GMT
WORKDIR /lightstreamer
# Thu, 09 May 2019 07:14:20 GMT
RUN set -x         && curl -fSL -o Lightstreamer.tar.gz ${LIGHSTREAMER_URL_DOWNLOAD}         && curl -fSL -o Lightstreamer.tar.gz.asc ${LIGHSTREAMER_URL_DOWNLOAD}.asc         && gpg --batch --verify Lightstreamer.tar.gz.asc Lightstreamer.tar.gz         && tar -xvf Lightstreamer.tar.gz --strip-components=1         && rm Lightstreamer.tar.gz Lightstreamer.tar.gz.asc         && sed -i -- 's/\/usr\/jdk1.8.0/$JAVA_HOME/' bin/unix-like/LS.sh         && sed -i -e '123,$s/<appender-ref ref="LSDailyRolling" \/>/<appender-ref ref="LSConsole" \/>/'                   -e '/<appender-ref ref="LSDailyRolling" \/>/ d' conf/lightstreamer_log_conf.xml
# Thu, 09 May 2019 07:14:21 GMT
EXPOSE 8080
# Thu, 09 May 2019 07:14:22 GMT
WORKDIR /lightstreamer/bin/unix-like
# Thu, 09 May 2019 07:14:23 GMT
CMD ["./LS.sh" "run"]
```

-	Layers:
	-	`sha256:5894e28291972e44f5c3eba2779a85979bae6f95ed4f3e43ea5c98a132f06c48`  
		Last Modified: Wed, 08 May 2019 08:54:43 GMT  
		Size: 43.1 MB (43141955 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a8e6888cee6fef7c223eeaf2ca4c51bc0c21b4631971f416eb6a529a05e96cb`  
		Last Modified: Wed, 08 May 2019 12:07:05 GMT  
		Size: 9.7 MB (9733078 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8bf90e854779f4c5edab378626d847fd0ab7aa9441b63a7db31a7db55d2b255b`  
		Last Modified: Wed, 08 May 2019 12:07:03 GMT  
		Size: 4.1 MB (4094187 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:266e07372d3cf38feb8825ddae8cb9f335282ad809bba6aeaac01c34a13b9394`  
		Last Modified: Wed, 08 May 2019 16:31:36 GMT  
		Size: 839.5 KB (839462 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a659800b4725d142bb026865f3fe7c0783f10d06c59d098da99786f2d1651351`  
		Last Modified: Wed, 08 May 2019 16:35:05 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b72fcad374b58026407e0d656f469140e3725eb1baa7468dfaba55fc642503d`  
		Last Modified: Wed, 08 May 2019 16:35:05 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f06f957e19b2a1bce1a9143c3ec174bda06b3a5d74ef7122a0b81a3a730deae6`  
		Last Modified: Wed, 08 May 2019 16:35:55 GMT  
		Size: 113.1 MB (113077224 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09d0d0ba5d39f95475016cb932a0baebe7ff94ebe88f24a499fdd7264c4f28a7`  
		Last Modified: Thu, 09 May 2019 07:16:32 GMT  
		Size: 2.0 KB (2013 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:044cf84042b641187b39741e6fa0c53ad54bbdad084596907958dec3a5aa6a26`  
		Last Modified: Thu, 09 May 2019 07:16:32 GMT  
		Size: 102.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea6ee3b231c36bace14df026ea9e15671f98c61359c52dde98555f8d84277ef4`  
		Last Modified: Thu, 09 May 2019 07:16:42 GMT  
		Size: 37.8 MB (37795112 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `lightstreamer:6.1`

```console
$ docker pull lightstreamer@sha256:4e4b4ebe3fd99a25e18cdd0eb883989ae5d9599a66b3ad37af292002545563ba
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `lightstreamer:6.1` - linux; amd64

```console
$ docker pull lightstreamer@sha256:85f56917ac7f093618d87cc83bbb8d8b22cec53ed734bb6882c8eb4ba5cf6973
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **142.2 MB (142219470 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b52547dedd468d5e7ba9b2131693e4dfb2080693935ce42466c83616601984d3`
-	Default Command: `[".\/LS.sh","run"]`

```dockerfile
# Wed, 08 May 2019 00:33:09 GMT
ADD file:caf91edab64f988bc24766c58ee66c00311c7c921296b8e5b51d7023422a1485 in / 
# Wed, 08 May 2019 00:33:10 GMT
CMD ["bash"]
# Wed, 08 May 2019 01:40:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 01:40:12 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 29 May 2019 21:22:25 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 				ca-certificates p11-kit 				fontconfig libfreetype6 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 29 May 2019 21:22:25 GMT
ENV LANG=C.UTF-8
# Wed, 29 May 2019 21:22:26 GMT
ENV JAVA_HOME=/usr/local/openjdk-8
# Wed, 29 May 2019 21:22:26 GMT
ENV PATH=/usr/local/openjdk-8/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 29 May 2019 21:22:26 GMT
RUN { echo '#/bin/sh'; echo 'echo "$JAVA_HOME"'; } > /usr/local/bin/docker-java-home && chmod +x /usr/local/bin/docker-java-home && [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 29 May 2019 21:22:27 GMT
ENV JAVA_VERSION=8u212-b04
# Wed, 29 May 2019 21:22:27 GMT
ENV JAVA_BASE_URL=https://github.com/AdoptOpenJDK/openjdk8-upstream-binaries/releases/download/jdk8u212-b04/OpenJDK8U-jre_
# Wed, 29 May 2019 21:22:27 GMT
ENV JAVA_URL_VERSION=8u212b04
# Wed, 05 Jun 2019 22:26:18 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64) upstreamArch='x64' ;; 		arm64) upstreamArch='aarch64' ;; 		*) echo >&2 "error: unsupported architecture: $dpkgArch" ;; 	esac; 		wget -O openjdk.tgz.asc "${JAVA_BASE_URL}${upstreamArch}_linux_${JAVA_URL_VERSION}.tar.gz.sign"; 	wget -O openjdk.tgz "${JAVA_BASE_URL}${upstreamArch}_linux_${JAVA_URL_VERSION}.tar.gz" --progress=dot:giga; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys CA5F11C6CE22644D42C6AC4492EF8D39DC13168F; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys EAC843EBD3EFDB98CC772FADA5CD6035332FA671; 	gpg --batch --list-sigs --keyid-format 0xLONG CA5F11C6CE22644D42C6AC4492EF8D39DC13168F | grep '0xA5CD6035332FA671' | grep 'Andrew Haley'; 	gpg --batch --verify openjdk.tgz.asc openjdk.tgz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 			{ 		echo '#!/usr/bin/env bash'; 		echo 'set -Eeuo pipefail'; 		echo 'if ! [ -d "$JAVA_HOME" ]; then echo >&2 "error: missing JAVA_HOME environment variable"; exit 1; fi'; 		echo 'cacertsFile=; for f in "$JAVA_HOME/lib/security/cacerts" "$JAVA_HOME/jre/lib/security/cacerts"; do if [ -e "$f" ]; then cacertsFile="$f"; break; fi; done'; 		echo 'if [ -z "$cacertsFile" ] || ! [ -f "$cacertsFile" ]; then echo >&2 "error: failed to find cacerts file in $JAVA_HOME"; exit 1; fi'; 		echo 'trust extract --overwrite --format=java-cacerts --filter=ca-anchors --purpose=server-auth "$cacertsFile"'; 	} > /etc/ca-certificates/update.d/docker-openjdk; 	chmod +x /etc/ca-certificates/update.d/docker-openjdk; 	/etc/ca-certificates/update.d/docker-openjdk; 		find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf; 	ldconfig; 		java -version
# Wed, 05 Jun 2019 23:15:28 GMT
MAINTAINER Lightstreamer Server Development Team <support@lightstreamer.com>
# Wed, 05 Jun 2019 23:15:30 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 9B90BFD14309C7DA5EF58D7D4A8C08966F29B4D2
# Wed, 05 Jun 2019 23:15:31 GMT
ENV LIGHSTREAMER_EDITION=Allegro-Presto-Vivace
# Wed, 05 Jun 2019 23:15:44 GMT
ENV LIGHSTREAMER_VERSION=6_1_0_20170123
# Wed, 05 Jun 2019 23:15:45 GMT
ENV LIGHSTREAMER_URL_DOWNLOAD=http://www.lightstreamer.com/repo/distros/Lightstreamer_Allegro-Presto-Vivace_6_1_0_20170123.tar.gz
# Wed, 05 Jun 2019 23:15:45 GMT
WORKDIR /lightstreamer
# Wed, 05 Jun 2019 23:15:53 GMT
RUN set -x         && curl -fSL -o Lightstreamer.tar.gz ${LIGHSTREAMER_URL_DOWNLOAD}         && curl -fSL -o Lightstreamer.tar.gz.asc ${LIGHSTREAMER_URL_DOWNLOAD}.asc         && gpg --batch --verify Lightstreamer.tar.gz.asc Lightstreamer.tar.gz         && tar -xvf Lightstreamer.tar.gz --strip-components=1         && rm Lightstreamer.tar.gz Lightstreamer.tar.gz.asc         && sed -i -- 's/\/usr\/jdk1.8.0/$JAVA_HOME/' bin/unix-like/LS.sh         && sed -i -e '123,$s/<appender-ref ref="LSDailyRolling" \/>/<appender-ref ref="LSConsole" \/>/'                   -e '/<appender-ref ref="LSDailyRolling" \/>/ d' conf/lightstreamer_log_conf.xml
# Wed, 05 Jun 2019 23:15:54 GMT
EXPOSE 8080
# Wed, 05 Jun 2019 23:15:54 GMT
WORKDIR /lightstreamer/bin/unix-like
# Wed, 05 Jun 2019 23:15:54 GMT
CMD ["./LS.sh" "run"]
```

-	Layers:
	-	`sha256:c5e155d5a1d130a7f8a3e24cee0d9e1349bff13f90ec6a941478e558fde53c14`  
		Last Modified: Wed, 08 May 2019 00:37:42 GMT  
		Size: 45.3 MB (45339314 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:221d80d00ae9675aad24913aacbadfac1ce8b7084f9765a6c0813486082c5c69`  
		Last Modified: Wed, 08 May 2019 01:45:42 GMT  
		Size: 10.8 MB (10784878 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4250b3117dca5e14edc32ebf1366cd54e4cda91f17610b76c504a86917ff8b95`  
		Last Modified: Wed, 08 May 2019 01:45:41 GMT  
		Size: 4.3 MB (4340094 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84d5a83c37cab1b4e3581d9738d290681fd8ce13cde68954a5baeef12128e9ae`  
		Last Modified: Wed, 29 May 2019 21:26:37 GMT  
		Size: 5.1 MB (5123210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ca1d40853ad108aee04ac7b66996b467ca6cd20319bd8b11a7965e00e8750fa`  
		Last Modified: Wed, 29 May 2019 21:26:39 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26161197356e5acc9f03bd438a4a5f497fd9a7f9879f88485c01a484988363e0`  
		Last Modified: Wed, 05 Jun 2019 22:28:57 GMT  
		Size: 40.1 MB (40113119 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77f62d650637077c51ad520f6759db3b15ae5dbe21761b007947660ac2dbbcd3`  
		Last Modified: Wed, 05 Jun 2019 23:16:35 GMT  
		Size: 2.0 KB (2012 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1dace95dfdaf98c9320efb4d8005d62adcb4458ccd85909bdbadc3fee02b106f`  
		Last Modified: Wed, 05 Jun 2019 23:16:44 GMT  
		Size: 102.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8a67e6fb138bde9291ee91bb97ce84fcc80b27aadb637548f9ff5c91e2b0c84`  
		Last Modified: Wed, 05 Jun 2019 23:16:48 GMT  
		Size: 36.5 MB (36516519 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `lightstreamer:6.1` - linux; arm64 variant v8

```console
$ docker pull lightstreamer@sha256:dede6089bdf2681cce9d8371cfdcc047e9df1a852d14cb740563935e1d2d2aab
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **207.4 MB (207404936 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:085b938d096813f77a9dc391314cfa6571451805426829a7552e52da95d05e04`
-	Default Command: `[".\/LS.sh","run"]`

```dockerfile
# Wed, 08 May 2019 08:48:25 GMT
ADD file:153045f4fe6532d8c2ff273bb249a7a3a4cba913c26a4103ba5ddce1af02c1e5 in / 
# Wed, 08 May 2019 08:48:26 GMT
CMD ["bash"]
# Wed, 08 May 2019 11:51:12 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 11:51:50 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 08 May 2019 16:06:35 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 16:20:20 GMT
ENV LANG=C.UTF-8
# Wed, 08 May 2019 16:20:22 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 08 May 2019 16:20:24 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 08 May 2019 16:20:25 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Wed, 08 May 2019 16:20:25 GMT
ENV JAVA_VERSION=8u212
# Wed, 08 May 2019 16:20:26 GMT
ENV JAVA_DEBIAN_VERSION=8u212-b01-1~deb9u1
# Wed, 08 May 2019 16:26:07 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Thu, 09 May 2019 07:13:53 GMT
MAINTAINER Lightstreamer Server Development Team <support@lightstreamer.com>
# Thu, 09 May 2019 07:14:02 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 9B90BFD14309C7DA5EF58D7D4A8C08966F29B4D2
# Thu, 09 May 2019 07:14:02 GMT
ENV LIGHSTREAMER_EDITION=Allegro-Presto-Vivace
# Thu, 09 May 2019 07:14:31 GMT
ENV LIGHSTREAMER_VERSION=6_1_0_20170123
# Thu, 09 May 2019 07:14:32 GMT
ENV LIGHSTREAMER_URL_DOWNLOAD=http://www.lightstreamer.com/repo/distros/Lightstreamer_Allegro-Presto-Vivace_6_1_0_20170123.tar.gz
# Thu, 09 May 2019 07:14:32 GMT
WORKDIR /lightstreamer
# Thu, 09 May 2019 07:14:46 GMT
RUN set -x         && curl -fSL -o Lightstreamer.tar.gz ${LIGHSTREAMER_URL_DOWNLOAD}         && curl -fSL -o Lightstreamer.tar.gz.asc ${LIGHSTREAMER_URL_DOWNLOAD}.asc         && gpg --batch --verify Lightstreamer.tar.gz.asc Lightstreamer.tar.gz         && tar -xvf Lightstreamer.tar.gz --strip-components=1         && rm Lightstreamer.tar.gz Lightstreamer.tar.gz.asc         && sed -i -- 's/\/usr\/jdk1.8.0/$JAVA_HOME/' bin/unix-like/LS.sh         && sed -i -e '123,$s/<appender-ref ref="LSDailyRolling" \/>/<appender-ref ref="LSConsole" \/>/'                   -e '/<appender-ref ref="LSDailyRolling" \/>/ d' conf/lightstreamer_log_conf.xml
# Thu, 09 May 2019 07:14:47 GMT
EXPOSE 8080
# Thu, 09 May 2019 07:14:48 GMT
WORKDIR /lightstreamer/bin/unix-like
# Thu, 09 May 2019 07:14:49 GMT
CMD ["./LS.sh" "run"]
```

-	Layers:
	-	`sha256:5894e28291972e44f5c3eba2779a85979bae6f95ed4f3e43ea5c98a132f06c48`  
		Last Modified: Wed, 08 May 2019 08:54:43 GMT  
		Size: 43.1 MB (43141955 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a8e6888cee6fef7c223eeaf2ca4c51bc0c21b4631971f416eb6a529a05e96cb`  
		Last Modified: Wed, 08 May 2019 12:07:05 GMT  
		Size: 9.7 MB (9733078 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8bf90e854779f4c5edab378626d847fd0ab7aa9441b63a7db31a7db55d2b255b`  
		Last Modified: Wed, 08 May 2019 12:07:03 GMT  
		Size: 4.1 MB (4094187 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:266e07372d3cf38feb8825ddae8cb9f335282ad809bba6aeaac01c34a13b9394`  
		Last Modified: Wed, 08 May 2019 16:31:36 GMT  
		Size: 839.5 KB (839462 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a659800b4725d142bb026865f3fe7c0783f10d06c59d098da99786f2d1651351`  
		Last Modified: Wed, 08 May 2019 16:35:05 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b72fcad374b58026407e0d656f469140e3725eb1baa7468dfaba55fc642503d`  
		Last Modified: Wed, 08 May 2019 16:35:05 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f06f957e19b2a1bce1a9143c3ec174bda06b3a5d74ef7122a0b81a3a730deae6`  
		Last Modified: Wed, 08 May 2019 16:35:55 GMT  
		Size: 113.1 MB (113077224 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09d0d0ba5d39f95475016cb932a0baebe7ff94ebe88f24a499fdd7264c4f28a7`  
		Last Modified: Thu, 09 May 2019 07:16:32 GMT  
		Size: 2.0 KB (2013 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2524b8c33ffad9cd8406875dcedab3db5f969b2dac3332a6fd68cbf37ea775c9`  
		Last Modified: Thu, 09 May 2019 07:16:53 GMT  
		Size: 102.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89b37c48fc76e24750bbb32b6b2f0e012598eb53a71ed7237c4ba659f69c4836`  
		Last Modified: Thu, 09 May 2019 07:17:01 GMT  
		Size: 36.5 MB (36516537 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `lightstreamer:6.1.0`

```console
$ docker pull lightstreamer@sha256:4e4b4ebe3fd99a25e18cdd0eb883989ae5d9599a66b3ad37af292002545563ba
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `lightstreamer:6.1.0` - linux; amd64

```console
$ docker pull lightstreamer@sha256:85f56917ac7f093618d87cc83bbb8d8b22cec53ed734bb6882c8eb4ba5cf6973
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **142.2 MB (142219470 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b52547dedd468d5e7ba9b2131693e4dfb2080693935ce42466c83616601984d3`
-	Default Command: `[".\/LS.sh","run"]`

```dockerfile
# Wed, 08 May 2019 00:33:09 GMT
ADD file:caf91edab64f988bc24766c58ee66c00311c7c921296b8e5b51d7023422a1485 in / 
# Wed, 08 May 2019 00:33:10 GMT
CMD ["bash"]
# Wed, 08 May 2019 01:40:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 01:40:12 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 29 May 2019 21:22:25 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 				ca-certificates p11-kit 				fontconfig libfreetype6 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 29 May 2019 21:22:25 GMT
ENV LANG=C.UTF-8
# Wed, 29 May 2019 21:22:26 GMT
ENV JAVA_HOME=/usr/local/openjdk-8
# Wed, 29 May 2019 21:22:26 GMT
ENV PATH=/usr/local/openjdk-8/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 29 May 2019 21:22:26 GMT
RUN { echo '#/bin/sh'; echo 'echo "$JAVA_HOME"'; } > /usr/local/bin/docker-java-home && chmod +x /usr/local/bin/docker-java-home && [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 29 May 2019 21:22:27 GMT
ENV JAVA_VERSION=8u212-b04
# Wed, 29 May 2019 21:22:27 GMT
ENV JAVA_BASE_URL=https://github.com/AdoptOpenJDK/openjdk8-upstream-binaries/releases/download/jdk8u212-b04/OpenJDK8U-jre_
# Wed, 29 May 2019 21:22:27 GMT
ENV JAVA_URL_VERSION=8u212b04
# Wed, 05 Jun 2019 22:26:18 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64) upstreamArch='x64' ;; 		arm64) upstreamArch='aarch64' ;; 		*) echo >&2 "error: unsupported architecture: $dpkgArch" ;; 	esac; 		wget -O openjdk.tgz.asc "${JAVA_BASE_URL}${upstreamArch}_linux_${JAVA_URL_VERSION}.tar.gz.sign"; 	wget -O openjdk.tgz "${JAVA_BASE_URL}${upstreamArch}_linux_${JAVA_URL_VERSION}.tar.gz" --progress=dot:giga; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys CA5F11C6CE22644D42C6AC4492EF8D39DC13168F; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys EAC843EBD3EFDB98CC772FADA5CD6035332FA671; 	gpg --batch --list-sigs --keyid-format 0xLONG CA5F11C6CE22644D42C6AC4492EF8D39DC13168F | grep '0xA5CD6035332FA671' | grep 'Andrew Haley'; 	gpg --batch --verify openjdk.tgz.asc openjdk.tgz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 			{ 		echo '#!/usr/bin/env bash'; 		echo 'set -Eeuo pipefail'; 		echo 'if ! [ -d "$JAVA_HOME" ]; then echo >&2 "error: missing JAVA_HOME environment variable"; exit 1; fi'; 		echo 'cacertsFile=; for f in "$JAVA_HOME/lib/security/cacerts" "$JAVA_HOME/jre/lib/security/cacerts"; do if [ -e "$f" ]; then cacertsFile="$f"; break; fi; done'; 		echo 'if [ -z "$cacertsFile" ] || ! [ -f "$cacertsFile" ]; then echo >&2 "error: failed to find cacerts file in $JAVA_HOME"; exit 1; fi'; 		echo 'trust extract --overwrite --format=java-cacerts --filter=ca-anchors --purpose=server-auth "$cacertsFile"'; 	} > /etc/ca-certificates/update.d/docker-openjdk; 	chmod +x /etc/ca-certificates/update.d/docker-openjdk; 	/etc/ca-certificates/update.d/docker-openjdk; 		find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf; 	ldconfig; 		java -version
# Wed, 05 Jun 2019 23:15:28 GMT
MAINTAINER Lightstreamer Server Development Team <support@lightstreamer.com>
# Wed, 05 Jun 2019 23:15:30 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 9B90BFD14309C7DA5EF58D7D4A8C08966F29B4D2
# Wed, 05 Jun 2019 23:15:31 GMT
ENV LIGHSTREAMER_EDITION=Allegro-Presto-Vivace
# Wed, 05 Jun 2019 23:15:44 GMT
ENV LIGHSTREAMER_VERSION=6_1_0_20170123
# Wed, 05 Jun 2019 23:15:45 GMT
ENV LIGHSTREAMER_URL_DOWNLOAD=http://www.lightstreamer.com/repo/distros/Lightstreamer_Allegro-Presto-Vivace_6_1_0_20170123.tar.gz
# Wed, 05 Jun 2019 23:15:45 GMT
WORKDIR /lightstreamer
# Wed, 05 Jun 2019 23:15:53 GMT
RUN set -x         && curl -fSL -o Lightstreamer.tar.gz ${LIGHSTREAMER_URL_DOWNLOAD}         && curl -fSL -o Lightstreamer.tar.gz.asc ${LIGHSTREAMER_URL_DOWNLOAD}.asc         && gpg --batch --verify Lightstreamer.tar.gz.asc Lightstreamer.tar.gz         && tar -xvf Lightstreamer.tar.gz --strip-components=1         && rm Lightstreamer.tar.gz Lightstreamer.tar.gz.asc         && sed -i -- 's/\/usr\/jdk1.8.0/$JAVA_HOME/' bin/unix-like/LS.sh         && sed -i -e '123,$s/<appender-ref ref="LSDailyRolling" \/>/<appender-ref ref="LSConsole" \/>/'                   -e '/<appender-ref ref="LSDailyRolling" \/>/ d' conf/lightstreamer_log_conf.xml
# Wed, 05 Jun 2019 23:15:54 GMT
EXPOSE 8080
# Wed, 05 Jun 2019 23:15:54 GMT
WORKDIR /lightstreamer/bin/unix-like
# Wed, 05 Jun 2019 23:15:54 GMT
CMD ["./LS.sh" "run"]
```

-	Layers:
	-	`sha256:c5e155d5a1d130a7f8a3e24cee0d9e1349bff13f90ec6a941478e558fde53c14`  
		Last Modified: Wed, 08 May 2019 00:37:42 GMT  
		Size: 45.3 MB (45339314 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:221d80d00ae9675aad24913aacbadfac1ce8b7084f9765a6c0813486082c5c69`  
		Last Modified: Wed, 08 May 2019 01:45:42 GMT  
		Size: 10.8 MB (10784878 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4250b3117dca5e14edc32ebf1366cd54e4cda91f17610b76c504a86917ff8b95`  
		Last Modified: Wed, 08 May 2019 01:45:41 GMT  
		Size: 4.3 MB (4340094 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84d5a83c37cab1b4e3581d9738d290681fd8ce13cde68954a5baeef12128e9ae`  
		Last Modified: Wed, 29 May 2019 21:26:37 GMT  
		Size: 5.1 MB (5123210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ca1d40853ad108aee04ac7b66996b467ca6cd20319bd8b11a7965e00e8750fa`  
		Last Modified: Wed, 29 May 2019 21:26:39 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26161197356e5acc9f03bd438a4a5f497fd9a7f9879f88485c01a484988363e0`  
		Last Modified: Wed, 05 Jun 2019 22:28:57 GMT  
		Size: 40.1 MB (40113119 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77f62d650637077c51ad520f6759db3b15ae5dbe21761b007947660ac2dbbcd3`  
		Last Modified: Wed, 05 Jun 2019 23:16:35 GMT  
		Size: 2.0 KB (2012 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1dace95dfdaf98c9320efb4d8005d62adcb4458ccd85909bdbadc3fee02b106f`  
		Last Modified: Wed, 05 Jun 2019 23:16:44 GMT  
		Size: 102.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8a67e6fb138bde9291ee91bb97ce84fcc80b27aadb637548f9ff5c91e2b0c84`  
		Last Modified: Wed, 05 Jun 2019 23:16:48 GMT  
		Size: 36.5 MB (36516519 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `lightstreamer:6.1.0` - linux; arm64 variant v8

```console
$ docker pull lightstreamer@sha256:dede6089bdf2681cce9d8371cfdcc047e9df1a852d14cb740563935e1d2d2aab
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **207.4 MB (207404936 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:085b938d096813f77a9dc391314cfa6571451805426829a7552e52da95d05e04`
-	Default Command: `[".\/LS.sh","run"]`

```dockerfile
# Wed, 08 May 2019 08:48:25 GMT
ADD file:153045f4fe6532d8c2ff273bb249a7a3a4cba913c26a4103ba5ddce1af02c1e5 in / 
# Wed, 08 May 2019 08:48:26 GMT
CMD ["bash"]
# Wed, 08 May 2019 11:51:12 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 11:51:50 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 08 May 2019 16:06:35 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 16:20:20 GMT
ENV LANG=C.UTF-8
# Wed, 08 May 2019 16:20:22 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 08 May 2019 16:20:24 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 08 May 2019 16:20:25 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Wed, 08 May 2019 16:20:25 GMT
ENV JAVA_VERSION=8u212
# Wed, 08 May 2019 16:20:26 GMT
ENV JAVA_DEBIAN_VERSION=8u212-b01-1~deb9u1
# Wed, 08 May 2019 16:26:07 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Thu, 09 May 2019 07:13:53 GMT
MAINTAINER Lightstreamer Server Development Team <support@lightstreamer.com>
# Thu, 09 May 2019 07:14:02 GMT
RUN gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 9B90BFD14309C7DA5EF58D7D4A8C08966F29B4D2
# Thu, 09 May 2019 07:14:02 GMT
ENV LIGHSTREAMER_EDITION=Allegro-Presto-Vivace
# Thu, 09 May 2019 07:14:31 GMT
ENV LIGHSTREAMER_VERSION=6_1_0_20170123
# Thu, 09 May 2019 07:14:32 GMT
ENV LIGHSTREAMER_URL_DOWNLOAD=http://www.lightstreamer.com/repo/distros/Lightstreamer_Allegro-Presto-Vivace_6_1_0_20170123.tar.gz
# Thu, 09 May 2019 07:14:32 GMT
WORKDIR /lightstreamer
# Thu, 09 May 2019 07:14:46 GMT
RUN set -x         && curl -fSL -o Lightstreamer.tar.gz ${LIGHSTREAMER_URL_DOWNLOAD}         && curl -fSL -o Lightstreamer.tar.gz.asc ${LIGHSTREAMER_URL_DOWNLOAD}.asc         && gpg --batch --verify Lightstreamer.tar.gz.asc Lightstreamer.tar.gz         && tar -xvf Lightstreamer.tar.gz --strip-components=1         && rm Lightstreamer.tar.gz Lightstreamer.tar.gz.asc         && sed -i -- 's/\/usr\/jdk1.8.0/$JAVA_HOME/' bin/unix-like/LS.sh         && sed -i -e '123,$s/<appender-ref ref="LSDailyRolling" \/>/<appender-ref ref="LSConsole" \/>/'                   -e '/<appender-ref ref="LSDailyRolling" \/>/ d' conf/lightstreamer_log_conf.xml
# Thu, 09 May 2019 07:14:47 GMT
EXPOSE 8080
# Thu, 09 May 2019 07:14:48 GMT
WORKDIR /lightstreamer/bin/unix-like
# Thu, 09 May 2019 07:14:49 GMT
CMD ["./LS.sh" "run"]
```

-	Layers:
	-	`sha256:5894e28291972e44f5c3eba2779a85979bae6f95ed4f3e43ea5c98a132f06c48`  
		Last Modified: Wed, 08 May 2019 08:54:43 GMT  
		Size: 43.1 MB (43141955 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a8e6888cee6fef7c223eeaf2ca4c51bc0c21b4631971f416eb6a529a05e96cb`  
		Last Modified: Wed, 08 May 2019 12:07:05 GMT  
		Size: 9.7 MB (9733078 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8bf90e854779f4c5edab378626d847fd0ab7aa9441b63a7db31a7db55d2b255b`  
		Last Modified: Wed, 08 May 2019 12:07:03 GMT  
		Size: 4.1 MB (4094187 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:266e07372d3cf38feb8825ddae8cb9f335282ad809bba6aeaac01c34a13b9394`  
		Last Modified: Wed, 08 May 2019 16:31:36 GMT  
		Size: 839.5 KB (839462 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a659800b4725d142bb026865f3fe7c0783f10d06c59d098da99786f2d1651351`  
		Last Modified: Wed, 08 May 2019 16:35:05 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b72fcad374b58026407e0d656f469140e3725eb1baa7468dfaba55fc642503d`  
		Last Modified: Wed, 08 May 2019 16:35:05 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f06f957e19b2a1bce1a9143c3ec174bda06b3a5d74ef7122a0b81a3a730deae6`  
		Last Modified: Wed, 08 May 2019 16:35:55 GMT  
		Size: 113.1 MB (113077224 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09d0d0ba5d39f95475016cb932a0baebe7ff94ebe88f24a499fdd7264c4f28a7`  
		Last Modified: Thu, 09 May 2019 07:16:32 GMT  
		Size: 2.0 KB (2013 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2524b8c33ffad9cd8406875dcedab3db5f969b2dac3332a6fd68cbf37ea775c9`  
		Last Modified: Thu, 09 May 2019 07:16:53 GMT  
		Size: 102.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89b37c48fc76e24750bbb32b6b2f0e012598eb53a71ed7237c4ba659f69c4836`  
		Last Modified: Thu, 09 May 2019 07:17:01 GMT  
		Size: 36.5 MB (36516537 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `lightstreamer:7`

```console
$ docker pull lightstreamer@sha256:64b43b5c4f861dca16d67a0aa1cfcce694b3abe8f5d8e1e57cc03ba95158186e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `lightstreamer:7` - linux; amd64

```console
$ docker pull lightstreamer@sha256:641446274998a2eccd40217a345e1ea8678bc90a9a69d2a171cf3f16e8de48b5
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **232.5 MB (232529301 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ba4bcd5390bfc18621d4beb7770d4cf229edd156c3bbd4e66b2b905efe94e526`
-	Default Command: `[".\/LS.sh","run"]`

```dockerfile
# Wed, 08 May 2019 00:33:09 GMT
ADD file:caf91edab64f988bc24766c58ee66c00311c7c921296b8e5b51d7023422a1485 in / 
# Wed, 08 May 2019 00:33:10 GMT
CMD ["bash"]
# Wed, 08 May 2019 01:40:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 01:40:12 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 08 May 2019 05:05:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 05:05:23 GMT
RUN echo 'deb http://deb.debian.org/debian stretch-backports main' > /etc/apt/sources.list.d/stretch-backports.list
# Wed, 08 May 2019 05:05:23 GMT
ENV LANG=C.UTF-8
# Wed, 08 May 2019 05:05:24 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 08 May 2019 05:05:25 GMT
RUN ln -svT "/usr/lib/jvm/java-11-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 08 May 2019 05:05:25 GMT
ENV JAVA_HOME=/docker-java-home
# Wed, 08 May 2019 05:05:25 GMT
ENV JAVA_VERSION=11.0.3
# Wed, 08 May 2019 05:05:25 GMT
ENV JAVA_DEBIAN_VERSION=11.0.3+1-1~bpo9+1
# Wed, 08 May 2019 05:06:14 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		ln -svT /docker-java-home/bin/java /usr/local/bin/java; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-11-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		rm -v /usr/local/bin/java; 		keytool -importkeystore -srckeystore /etc/ssl/certs/java/cacerts -destkeystore /etc/ssl/certs/java/cacerts.jks -deststoretype JKS -srcstorepass changeit -deststorepass changeit -noprompt; 	mv /etc/ssl/certs/java/cacerts.jks /etc/ssl/certs/java/cacerts; 	/var/lib/dpkg/info/ca-certificates-java.postinst configure; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 08 May 2019 12:28:04 GMT
LABEL maintainer=Lightstreamer Server Development Team <support@lightstreamer.com>
# Wed, 08 May 2019 12:28:07 GMT
RUN gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys 9B90BFD14309C7DA5EF58D7D4A8C08966F29B4D2
# Wed, 08 May 2019 12:28:08 GMT
ENV LIGHTSTREAMER_VERSION=7_0_3_20190107
# Wed, 08 May 2019 12:28:08 GMT
ENV LIGHTSTREAMER_URL_DOWNLOAD=http://www.lightstreamer.com/repo/distros/Lightstreamer_7_0_3_20190107.tar.gz
# Wed, 08 May 2019 12:28:08 GMT
WORKDIR /lightstreamer
# Wed, 08 May 2019 12:28:16 GMT
RUN set -ex;         curl -fSL -o Lightstreamer.tar.gz ${LIGHTSTREAMER_URL_DOWNLOAD}         && curl -fSL -o Lightstreamer.tar.gz.asc ${LIGHTSTREAMER_URL_DOWNLOAD}.asc         && gpg --batch --verify Lightstreamer.tar.gz.asc Lightstreamer.tar.gz         && tar -xvf Lightstreamer.tar.gz --strip-components=1         && sed -i -- 's/\/usr\/jdk1.8.0/$JAVA_HOME/' bin/unix-like/LS.sh         && sed -i -e '164,$s/<appender-ref ref="LSConsole" \/>/<!--<appender-ref ref="LSConsole" \/>-->/'                   -e '116,$s/<appender-ref ref="LSDailyRolling" \/>/<appender-ref ref="LSConsole" \/>/'                   -e '/<!--<appender-ref ref="LSConsole" \/>-->/ d' conf/lightstreamer_log_conf.xml         && rm Lightstreamer.tar.gz Lightstreamer.tar.gz.asc
# Wed, 08 May 2019 12:28:17 GMT
EXPOSE 8080
# Wed, 08 May 2019 12:28:17 GMT
WORKDIR /lightstreamer/bin/unix-like
# Wed, 08 May 2019 12:28:17 GMT
CMD ["./LS.sh" "run"]
```

-	Layers:
	-	`sha256:c5e155d5a1d130a7f8a3e24cee0d9e1349bff13f90ec6a941478e558fde53c14`  
		Last Modified: Wed, 08 May 2019 00:37:42 GMT  
		Size: 45.3 MB (45339314 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:221d80d00ae9675aad24913aacbadfac1ce8b7084f9765a6c0813486082c5c69`  
		Last Modified: Wed, 08 May 2019 01:45:42 GMT  
		Size: 10.8 MB (10784878 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4250b3117dca5e14edc32ebf1366cd54e4cda91f17610b76c504a86917ff8b95`  
		Last Modified: Wed, 08 May 2019 01:45:41 GMT  
		Size: 4.3 MB (4340094 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1370422ab933b954a9eb1084c61cbc809a78cfd4b44b29c7655838be35a89ee`  
		Last Modified: Wed, 08 May 2019 05:28:01 GMT  
		Size: 853.2 KB (853185 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:887ef4b1893c59ebbb466a5f639477e1dec6f0420af812a9d96b5fe032bc8842`  
		Last Modified: Wed, 08 May 2019 05:28:01 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5815d21e2da849018c85fac6b991965cbebdb3d4bf75e685159eb7baa8b0ff5`  
		Last Modified: Wed, 08 May 2019 05:28:01 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bca5be5493ced138104ab694f97ee1678173e82fc9c10d928836a3eedf7b8ef2`  
		Last Modified: Wed, 08 May 2019 05:28:01 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:852fbda3c856796ea1b7f725175d646daba0a68806eff95f7aa8cb4b890e3b83`  
		Last Modified: Wed, 08 May 2019 05:28:35 GMT  
		Size: 131.3 MB (131329458 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e59affe89ecf38110547e6624671cec104cd92cf73e8a60fa98915a17168b252`  
		Last Modified: Wed, 08 May 2019 12:29:31 GMT  
		Size: 2.0 KB (2011 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de79cc96d847c4f955ea77a10a43bb66b59b22ddd085a104e355cf6ab745f7f0`  
		Last Modified: Wed, 08 May 2019 12:29:31 GMT  
		Size: 102.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c342dec1fd5126e89e2ffc507a8a7779fe0e14825850bd92b9b1eb56d676e194`  
		Last Modified: Wed, 08 May 2019 12:29:37 GMT  
		Size: 39.9 MB (39879659 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `lightstreamer:7` - linux; arm64 variant v8

```console
$ docker pull lightstreamer@sha256:5ca26d79785d678b30de71e8999e6016903ac0dd8c200e80af668d6b19e4e0d0
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **219.6 MB (219594374 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:17975e9464ca44bd81964ff7a68ece919c9399383d2f8665a9285f2a68aae6a0`
-	Default Command: `[".\/LS.sh","run"]`

```dockerfile
# Wed, 08 May 2019 08:48:25 GMT
ADD file:153045f4fe6532d8c2ff273bb249a7a3a4cba913c26a4103ba5ddce1af02c1e5 in / 
# Wed, 08 May 2019 08:48:26 GMT
CMD ["bash"]
# Wed, 08 May 2019 11:51:12 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 11:51:50 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 08 May 2019 16:06:35 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 16:06:37 GMT
RUN echo 'deb http://deb.debian.org/debian stretch-backports main' > /etc/apt/sources.list.d/stretch-backports.list
# Wed, 08 May 2019 16:06:38 GMT
ENV LANG=C.UTF-8
# Wed, 08 May 2019 16:06:40 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 08 May 2019 16:06:43 GMT
RUN ln -svT "/usr/lib/jvm/java-11-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 08 May 2019 16:06:44 GMT
ENV JAVA_HOME=/docker-java-home
# Wed, 08 May 2019 16:06:44 GMT
ENV JAVA_VERSION=11.0.3
# Wed, 08 May 2019 16:06:45 GMT
ENV JAVA_DEBIAN_VERSION=11.0.3+1-1~bpo9+1
# Wed, 08 May 2019 16:11:14 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		ln -svT /docker-java-home/bin/java /usr/local/bin/java; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-11-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		rm -v /usr/local/bin/java; 		keytool -importkeystore -srckeystore /etc/ssl/certs/java/cacerts -destkeystore /etc/ssl/certs/java/cacerts.jks -deststoretype JKS -srcstorepass changeit -deststorepass changeit -noprompt; 	mv /etc/ssl/certs/java/cacerts.jks /etc/ssl/certs/java/cacerts; 	/var/lib/dpkg/info/ca-certificates-java.postinst configure; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Thu, 09 May 2019 07:15:41 GMT
LABEL maintainer=Lightstreamer Server Development Team <support@lightstreamer.com>
# Thu, 09 May 2019 07:15:46 GMT
RUN gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys 9B90BFD14309C7DA5EF58D7D4A8C08966F29B4D2
# Thu, 09 May 2019 07:15:47 GMT
ENV LIGHTSTREAMER_VERSION=7_0_3_20190107
# Thu, 09 May 2019 07:15:48 GMT
ENV LIGHTSTREAMER_URL_DOWNLOAD=http://www.lightstreamer.com/repo/distros/Lightstreamer_7_0_3_20190107.tar.gz
# Thu, 09 May 2019 07:15:49 GMT
WORKDIR /lightstreamer
# Thu, 09 May 2019 07:16:01 GMT
RUN set -ex;         curl -fSL -o Lightstreamer.tar.gz ${LIGHTSTREAMER_URL_DOWNLOAD}         && curl -fSL -o Lightstreamer.tar.gz.asc ${LIGHTSTREAMER_URL_DOWNLOAD}.asc         && gpg --batch --verify Lightstreamer.tar.gz.asc Lightstreamer.tar.gz         && tar -xvf Lightstreamer.tar.gz --strip-components=1         && sed -i -- 's/\/usr\/jdk1.8.0/$JAVA_HOME/' bin/unix-like/LS.sh         && sed -i -e '164,$s/<appender-ref ref="LSConsole" \/>/<!--<appender-ref ref="LSConsole" \/>-->/'                   -e '116,$s/<appender-ref ref="LSDailyRolling" \/>/<appender-ref ref="LSConsole" \/>/'                   -e '/<!--<appender-ref ref="LSConsole" \/>-->/ d' conf/lightstreamer_log_conf.xml         && rm Lightstreamer.tar.gz Lightstreamer.tar.gz.asc
# Thu, 09 May 2019 07:16:03 GMT
EXPOSE 8080
# Thu, 09 May 2019 07:16:04 GMT
WORKDIR /lightstreamer/bin/unix-like
# Thu, 09 May 2019 07:16:04 GMT
CMD ["./LS.sh" "run"]
```

-	Layers:
	-	`sha256:5894e28291972e44f5c3eba2779a85979bae6f95ed4f3e43ea5c98a132f06c48`  
		Last Modified: Wed, 08 May 2019 08:54:43 GMT  
		Size: 43.1 MB (43141955 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a8e6888cee6fef7c223eeaf2ca4c51bc0c21b4631971f416eb6a529a05e96cb`  
		Last Modified: Wed, 08 May 2019 12:07:05 GMT  
		Size: 9.7 MB (9733078 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8bf90e854779f4c5edab378626d847fd0ab7aa9441b63a7db31a7db55d2b255b`  
		Last Modified: Wed, 08 May 2019 12:07:03 GMT  
		Size: 4.1 MB (4094187 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:266e07372d3cf38feb8825ddae8cb9f335282ad809bba6aeaac01c34a13b9394`  
		Last Modified: Wed, 08 May 2019 16:31:36 GMT  
		Size: 839.5 KB (839462 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33620d64e6d1b0246724757776edb615dc49afd758f8173998353070b31a27c7`  
		Last Modified: Wed, 08 May 2019 16:31:36 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a76d1d13c2cdf744d3639f9807db1ee1b921ae954abf02315f64031068f6b01`  
		Last Modified: Wed, 08 May 2019 16:31:35 GMT  
		Size: 246.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7149891f17ac733bc8744c0d2c116737d9cd43460d2da579963d669cd3e48f98`  
		Last Modified: Wed, 08 May 2019 16:31:36 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed630e01fd86e330bd89d5ab7d00b0a051051da858ec14d7289213a615c49896`  
		Last Modified: Wed, 08 May 2019 16:32:15 GMT  
		Size: 121.9 MB (121903240 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a43414214a5cd6f8cdc9842eeda5504a72776544ddcdd680d47e2ac24378eb32`  
		Last Modified: Thu, 09 May 2019 07:17:35 GMT  
		Size: 2.0 KB (2013 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ec2d975510b0407fb9bf3a188ff2d32074e6fa5da44c58a5a8a137abbeeb655`  
		Last Modified: Thu, 09 May 2019 07:17:35 GMT  
		Size: 102.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17d76be6881ad4f5017fb8fb91b27eef17d379a61aa900aa80c4ba7428051ab6`  
		Last Modified: Thu, 09 May 2019 07:17:43 GMT  
		Size: 39.9 MB (39879735 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `lightstreamer:7.0`

```console
$ docker pull lightstreamer@sha256:64b43b5c4f861dca16d67a0aa1cfcce694b3abe8f5d8e1e57cc03ba95158186e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `lightstreamer:7.0` - linux; amd64

```console
$ docker pull lightstreamer@sha256:641446274998a2eccd40217a345e1ea8678bc90a9a69d2a171cf3f16e8de48b5
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **232.5 MB (232529301 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ba4bcd5390bfc18621d4beb7770d4cf229edd156c3bbd4e66b2b905efe94e526`
-	Default Command: `[".\/LS.sh","run"]`

```dockerfile
# Wed, 08 May 2019 00:33:09 GMT
ADD file:caf91edab64f988bc24766c58ee66c00311c7c921296b8e5b51d7023422a1485 in / 
# Wed, 08 May 2019 00:33:10 GMT
CMD ["bash"]
# Wed, 08 May 2019 01:40:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 01:40:12 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 08 May 2019 05:05:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 05:05:23 GMT
RUN echo 'deb http://deb.debian.org/debian stretch-backports main' > /etc/apt/sources.list.d/stretch-backports.list
# Wed, 08 May 2019 05:05:23 GMT
ENV LANG=C.UTF-8
# Wed, 08 May 2019 05:05:24 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 08 May 2019 05:05:25 GMT
RUN ln -svT "/usr/lib/jvm/java-11-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 08 May 2019 05:05:25 GMT
ENV JAVA_HOME=/docker-java-home
# Wed, 08 May 2019 05:05:25 GMT
ENV JAVA_VERSION=11.0.3
# Wed, 08 May 2019 05:05:25 GMT
ENV JAVA_DEBIAN_VERSION=11.0.3+1-1~bpo9+1
# Wed, 08 May 2019 05:06:14 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		ln -svT /docker-java-home/bin/java /usr/local/bin/java; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-11-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		rm -v /usr/local/bin/java; 		keytool -importkeystore -srckeystore /etc/ssl/certs/java/cacerts -destkeystore /etc/ssl/certs/java/cacerts.jks -deststoretype JKS -srcstorepass changeit -deststorepass changeit -noprompt; 	mv /etc/ssl/certs/java/cacerts.jks /etc/ssl/certs/java/cacerts; 	/var/lib/dpkg/info/ca-certificates-java.postinst configure; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 08 May 2019 12:28:04 GMT
LABEL maintainer=Lightstreamer Server Development Team <support@lightstreamer.com>
# Wed, 08 May 2019 12:28:07 GMT
RUN gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys 9B90BFD14309C7DA5EF58D7D4A8C08966F29B4D2
# Wed, 08 May 2019 12:28:08 GMT
ENV LIGHTSTREAMER_VERSION=7_0_3_20190107
# Wed, 08 May 2019 12:28:08 GMT
ENV LIGHTSTREAMER_URL_DOWNLOAD=http://www.lightstreamer.com/repo/distros/Lightstreamer_7_0_3_20190107.tar.gz
# Wed, 08 May 2019 12:28:08 GMT
WORKDIR /lightstreamer
# Wed, 08 May 2019 12:28:16 GMT
RUN set -ex;         curl -fSL -o Lightstreamer.tar.gz ${LIGHTSTREAMER_URL_DOWNLOAD}         && curl -fSL -o Lightstreamer.tar.gz.asc ${LIGHTSTREAMER_URL_DOWNLOAD}.asc         && gpg --batch --verify Lightstreamer.tar.gz.asc Lightstreamer.tar.gz         && tar -xvf Lightstreamer.tar.gz --strip-components=1         && sed -i -- 's/\/usr\/jdk1.8.0/$JAVA_HOME/' bin/unix-like/LS.sh         && sed -i -e '164,$s/<appender-ref ref="LSConsole" \/>/<!--<appender-ref ref="LSConsole" \/>-->/'                   -e '116,$s/<appender-ref ref="LSDailyRolling" \/>/<appender-ref ref="LSConsole" \/>/'                   -e '/<!--<appender-ref ref="LSConsole" \/>-->/ d' conf/lightstreamer_log_conf.xml         && rm Lightstreamer.tar.gz Lightstreamer.tar.gz.asc
# Wed, 08 May 2019 12:28:17 GMT
EXPOSE 8080
# Wed, 08 May 2019 12:28:17 GMT
WORKDIR /lightstreamer/bin/unix-like
# Wed, 08 May 2019 12:28:17 GMT
CMD ["./LS.sh" "run"]
```

-	Layers:
	-	`sha256:c5e155d5a1d130a7f8a3e24cee0d9e1349bff13f90ec6a941478e558fde53c14`  
		Last Modified: Wed, 08 May 2019 00:37:42 GMT  
		Size: 45.3 MB (45339314 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:221d80d00ae9675aad24913aacbadfac1ce8b7084f9765a6c0813486082c5c69`  
		Last Modified: Wed, 08 May 2019 01:45:42 GMT  
		Size: 10.8 MB (10784878 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4250b3117dca5e14edc32ebf1366cd54e4cda91f17610b76c504a86917ff8b95`  
		Last Modified: Wed, 08 May 2019 01:45:41 GMT  
		Size: 4.3 MB (4340094 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1370422ab933b954a9eb1084c61cbc809a78cfd4b44b29c7655838be35a89ee`  
		Last Modified: Wed, 08 May 2019 05:28:01 GMT  
		Size: 853.2 KB (853185 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:887ef4b1893c59ebbb466a5f639477e1dec6f0420af812a9d96b5fe032bc8842`  
		Last Modified: Wed, 08 May 2019 05:28:01 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5815d21e2da849018c85fac6b991965cbebdb3d4bf75e685159eb7baa8b0ff5`  
		Last Modified: Wed, 08 May 2019 05:28:01 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bca5be5493ced138104ab694f97ee1678173e82fc9c10d928836a3eedf7b8ef2`  
		Last Modified: Wed, 08 May 2019 05:28:01 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:852fbda3c856796ea1b7f725175d646daba0a68806eff95f7aa8cb4b890e3b83`  
		Last Modified: Wed, 08 May 2019 05:28:35 GMT  
		Size: 131.3 MB (131329458 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e59affe89ecf38110547e6624671cec104cd92cf73e8a60fa98915a17168b252`  
		Last Modified: Wed, 08 May 2019 12:29:31 GMT  
		Size: 2.0 KB (2011 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de79cc96d847c4f955ea77a10a43bb66b59b22ddd085a104e355cf6ab745f7f0`  
		Last Modified: Wed, 08 May 2019 12:29:31 GMT  
		Size: 102.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c342dec1fd5126e89e2ffc507a8a7779fe0e14825850bd92b9b1eb56d676e194`  
		Last Modified: Wed, 08 May 2019 12:29:37 GMT  
		Size: 39.9 MB (39879659 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `lightstreamer:7.0` - linux; arm64 variant v8

```console
$ docker pull lightstreamer@sha256:5ca26d79785d678b30de71e8999e6016903ac0dd8c200e80af668d6b19e4e0d0
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **219.6 MB (219594374 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:17975e9464ca44bd81964ff7a68ece919c9399383d2f8665a9285f2a68aae6a0`
-	Default Command: `[".\/LS.sh","run"]`

```dockerfile
# Wed, 08 May 2019 08:48:25 GMT
ADD file:153045f4fe6532d8c2ff273bb249a7a3a4cba913c26a4103ba5ddce1af02c1e5 in / 
# Wed, 08 May 2019 08:48:26 GMT
CMD ["bash"]
# Wed, 08 May 2019 11:51:12 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 11:51:50 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 08 May 2019 16:06:35 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 16:06:37 GMT
RUN echo 'deb http://deb.debian.org/debian stretch-backports main' > /etc/apt/sources.list.d/stretch-backports.list
# Wed, 08 May 2019 16:06:38 GMT
ENV LANG=C.UTF-8
# Wed, 08 May 2019 16:06:40 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 08 May 2019 16:06:43 GMT
RUN ln -svT "/usr/lib/jvm/java-11-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 08 May 2019 16:06:44 GMT
ENV JAVA_HOME=/docker-java-home
# Wed, 08 May 2019 16:06:44 GMT
ENV JAVA_VERSION=11.0.3
# Wed, 08 May 2019 16:06:45 GMT
ENV JAVA_DEBIAN_VERSION=11.0.3+1-1~bpo9+1
# Wed, 08 May 2019 16:11:14 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		ln -svT /docker-java-home/bin/java /usr/local/bin/java; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-11-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		rm -v /usr/local/bin/java; 		keytool -importkeystore -srckeystore /etc/ssl/certs/java/cacerts -destkeystore /etc/ssl/certs/java/cacerts.jks -deststoretype JKS -srcstorepass changeit -deststorepass changeit -noprompt; 	mv /etc/ssl/certs/java/cacerts.jks /etc/ssl/certs/java/cacerts; 	/var/lib/dpkg/info/ca-certificates-java.postinst configure; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Thu, 09 May 2019 07:15:41 GMT
LABEL maintainer=Lightstreamer Server Development Team <support@lightstreamer.com>
# Thu, 09 May 2019 07:15:46 GMT
RUN gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys 9B90BFD14309C7DA5EF58D7D4A8C08966F29B4D2
# Thu, 09 May 2019 07:15:47 GMT
ENV LIGHTSTREAMER_VERSION=7_0_3_20190107
# Thu, 09 May 2019 07:15:48 GMT
ENV LIGHTSTREAMER_URL_DOWNLOAD=http://www.lightstreamer.com/repo/distros/Lightstreamer_7_0_3_20190107.tar.gz
# Thu, 09 May 2019 07:15:49 GMT
WORKDIR /lightstreamer
# Thu, 09 May 2019 07:16:01 GMT
RUN set -ex;         curl -fSL -o Lightstreamer.tar.gz ${LIGHTSTREAMER_URL_DOWNLOAD}         && curl -fSL -o Lightstreamer.tar.gz.asc ${LIGHTSTREAMER_URL_DOWNLOAD}.asc         && gpg --batch --verify Lightstreamer.tar.gz.asc Lightstreamer.tar.gz         && tar -xvf Lightstreamer.tar.gz --strip-components=1         && sed -i -- 's/\/usr\/jdk1.8.0/$JAVA_HOME/' bin/unix-like/LS.sh         && sed -i -e '164,$s/<appender-ref ref="LSConsole" \/>/<!--<appender-ref ref="LSConsole" \/>-->/'                   -e '116,$s/<appender-ref ref="LSDailyRolling" \/>/<appender-ref ref="LSConsole" \/>/'                   -e '/<!--<appender-ref ref="LSConsole" \/>-->/ d' conf/lightstreamer_log_conf.xml         && rm Lightstreamer.tar.gz Lightstreamer.tar.gz.asc
# Thu, 09 May 2019 07:16:03 GMT
EXPOSE 8080
# Thu, 09 May 2019 07:16:04 GMT
WORKDIR /lightstreamer/bin/unix-like
# Thu, 09 May 2019 07:16:04 GMT
CMD ["./LS.sh" "run"]
```

-	Layers:
	-	`sha256:5894e28291972e44f5c3eba2779a85979bae6f95ed4f3e43ea5c98a132f06c48`  
		Last Modified: Wed, 08 May 2019 08:54:43 GMT  
		Size: 43.1 MB (43141955 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a8e6888cee6fef7c223eeaf2ca4c51bc0c21b4631971f416eb6a529a05e96cb`  
		Last Modified: Wed, 08 May 2019 12:07:05 GMT  
		Size: 9.7 MB (9733078 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8bf90e854779f4c5edab378626d847fd0ab7aa9441b63a7db31a7db55d2b255b`  
		Last Modified: Wed, 08 May 2019 12:07:03 GMT  
		Size: 4.1 MB (4094187 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:266e07372d3cf38feb8825ddae8cb9f335282ad809bba6aeaac01c34a13b9394`  
		Last Modified: Wed, 08 May 2019 16:31:36 GMT  
		Size: 839.5 KB (839462 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33620d64e6d1b0246724757776edb615dc49afd758f8173998353070b31a27c7`  
		Last Modified: Wed, 08 May 2019 16:31:36 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a76d1d13c2cdf744d3639f9807db1ee1b921ae954abf02315f64031068f6b01`  
		Last Modified: Wed, 08 May 2019 16:31:35 GMT  
		Size: 246.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7149891f17ac733bc8744c0d2c116737d9cd43460d2da579963d669cd3e48f98`  
		Last Modified: Wed, 08 May 2019 16:31:36 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed630e01fd86e330bd89d5ab7d00b0a051051da858ec14d7289213a615c49896`  
		Last Modified: Wed, 08 May 2019 16:32:15 GMT  
		Size: 121.9 MB (121903240 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a43414214a5cd6f8cdc9842eeda5504a72776544ddcdd680d47e2ac24378eb32`  
		Last Modified: Thu, 09 May 2019 07:17:35 GMT  
		Size: 2.0 KB (2013 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ec2d975510b0407fb9bf3a188ff2d32074e6fa5da44c58a5a8a137abbeeb655`  
		Last Modified: Thu, 09 May 2019 07:17:35 GMT  
		Size: 102.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17d76be6881ad4f5017fb8fb91b27eef17d379a61aa900aa80c4ba7428051ab6`  
		Last Modified: Thu, 09 May 2019 07:17:43 GMT  
		Size: 39.9 MB (39879735 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `lightstreamer:7.0.3`

```console
$ docker pull lightstreamer@sha256:64b43b5c4f861dca16d67a0aa1cfcce694b3abe8f5d8e1e57cc03ba95158186e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `lightstreamer:7.0.3` - linux; amd64

```console
$ docker pull lightstreamer@sha256:641446274998a2eccd40217a345e1ea8678bc90a9a69d2a171cf3f16e8de48b5
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **232.5 MB (232529301 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ba4bcd5390bfc18621d4beb7770d4cf229edd156c3bbd4e66b2b905efe94e526`
-	Default Command: `[".\/LS.sh","run"]`

```dockerfile
# Wed, 08 May 2019 00:33:09 GMT
ADD file:caf91edab64f988bc24766c58ee66c00311c7c921296b8e5b51d7023422a1485 in / 
# Wed, 08 May 2019 00:33:10 GMT
CMD ["bash"]
# Wed, 08 May 2019 01:40:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 01:40:12 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 08 May 2019 05:05:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 05:05:23 GMT
RUN echo 'deb http://deb.debian.org/debian stretch-backports main' > /etc/apt/sources.list.d/stretch-backports.list
# Wed, 08 May 2019 05:05:23 GMT
ENV LANG=C.UTF-8
# Wed, 08 May 2019 05:05:24 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 08 May 2019 05:05:25 GMT
RUN ln -svT "/usr/lib/jvm/java-11-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 08 May 2019 05:05:25 GMT
ENV JAVA_HOME=/docker-java-home
# Wed, 08 May 2019 05:05:25 GMT
ENV JAVA_VERSION=11.0.3
# Wed, 08 May 2019 05:05:25 GMT
ENV JAVA_DEBIAN_VERSION=11.0.3+1-1~bpo9+1
# Wed, 08 May 2019 05:06:14 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		ln -svT /docker-java-home/bin/java /usr/local/bin/java; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-11-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		rm -v /usr/local/bin/java; 		keytool -importkeystore -srckeystore /etc/ssl/certs/java/cacerts -destkeystore /etc/ssl/certs/java/cacerts.jks -deststoretype JKS -srcstorepass changeit -deststorepass changeit -noprompt; 	mv /etc/ssl/certs/java/cacerts.jks /etc/ssl/certs/java/cacerts; 	/var/lib/dpkg/info/ca-certificates-java.postinst configure; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 08 May 2019 12:28:04 GMT
LABEL maintainer=Lightstreamer Server Development Team <support@lightstreamer.com>
# Wed, 08 May 2019 12:28:07 GMT
RUN gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys 9B90BFD14309C7DA5EF58D7D4A8C08966F29B4D2
# Wed, 08 May 2019 12:28:08 GMT
ENV LIGHTSTREAMER_VERSION=7_0_3_20190107
# Wed, 08 May 2019 12:28:08 GMT
ENV LIGHTSTREAMER_URL_DOWNLOAD=http://www.lightstreamer.com/repo/distros/Lightstreamer_7_0_3_20190107.tar.gz
# Wed, 08 May 2019 12:28:08 GMT
WORKDIR /lightstreamer
# Wed, 08 May 2019 12:28:16 GMT
RUN set -ex;         curl -fSL -o Lightstreamer.tar.gz ${LIGHTSTREAMER_URL_DOWNLOAD}         && curl -fSL -o Lightstreamer.tar.gz.asc ${LIGHTSTREAMER_URL_DOWNLOAD}.asc         && gpg --batch --verify Lightstreamer.tar.gz.asc Lightstreamer.tar.gz         && tar -xvf Lightstreamer.tar.gz --strip-components=1         && sed -i -- 's/\/usr\/jdk1.8.0/$JAVA_HOME/' bin/unix-like/LS.sh         && sed -i -e '164,$s/<appender-ref ref="LSConsole" \/>/<!--<appender-ref ref="LSConsole" \/>-->/'                   -e '116,$s/<appender-ref ref="LSDailyRolling" \/>/<appender-ref ref="LSConsole" \/>/'                   -e '/<!--<appender-ref ref="LSConsole" \/>-->/ d' conf/lightstreamer_log_conf.xml         && rm Lightstreamer.tar.gz Lightstreamer.tar.gz.asc
# Wed, 08 May 2019 12:28:17 GMT
EXPOSE 8080
# Wed, 08 May 2019 12:28:17 GMT
WORKDIR /lightstreamer/bin/unix-like
# Wed, 08 May 2019 12:28:17 GMT
CMD ["./LS.sh" "run"]
```

-	Layers:
	-	`sha256:c5e155d5a1d130a7f8a3e24cee0d9e1349bff13f90ec6a941478e558fde53c14`  
		Last Modified: Wed, 08 May 2019 00:37:42 GMT  
		Size: 45.3 MB (45339314 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:221d80d00ae9675aad24913aacbadfac1ce8b7084f9765a6c0813486082c5c69`  
		Last Modified: Wed, 08 May 2019 01:45:42 GMT  
		Size: 10.8 MB (10784878 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4250b3117dca5e14edc32ebf1366cd54e4cda91f17610b76c504a86917ff8b95`  
		Last Modified: Wed, 08 May 2019 01:45:41 GMT  
		Size: 4.3 MB (4340094 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1370422ab933b954a9eb1084c61cbc809a78cfd4b44b29c7655838be35a89ee`  
		Last Modified: Wed, 08 May 2019 05:28:01 GMT  
		Size: 853.2 KB (853185 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:887ef4b1893c59ebbb466a5f639477e1dec6f0420af812a9d96b5fe032bc8842`  
		Last Modified: Wed, 08 May 2019 05:28:01 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5815d21e2da849018c85fac6b991965cbebdb3d4bf75e685159eb7baa8b0ff5`  
		Last Modified: Wed, 08 May 2019 05:28:01 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bca5be5493ced138104ab694f97ee1678173e82fc9c10d928836a3eedf7b8ef2`  
		Last Modified: Wed, 08 May 2019 05:28:01 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:852fbda3c856796ea1b7f725175d646daba0a68806eff95f7aa8cb4b890e3b83`  
		Last Modified: Wed, 08 May 2019 05:28:35 GMT  
		Size: 131.3 MB (131329458 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e59affe89ecf38110547e6624671cec104cd92cf73e8a60fa98915a17168b252`  
		Last Modified: Wed, 08 May 2019 12:29:31 GMT  
		Size: 2.0 KB (2011 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de79cc96d847c4f955ea77a10a43bb66b59b22ddd085a104e355cf6ab745f7f0`  
		Last Modified: Wed, 08 May 2019 12:29:31 GMT  
		Size: 102.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c342dec1fd5126e89e2ffc507a8a7779fe0e14825850bd92b9b1eb56d676e194`  
		Last Modified: Wed, 08 May 2019 12:29:37 GMT  
		Size: 39.9 MB (39879659 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `lightstreamer:7.0.3` - linux; arm64 variant v8

```console
$ docker pull lightstreamer@sha256:5ca26d79785d678b30de71e8999e6016903ac0dd8c200e80af668d6b19e4e0d0
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **219.6 MB (219594374 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:17975e9464ca44bd81964ff7a68ece919c9399383d2f8665a9285f2a68aae6a0`
-	Default Command: `[".\/LS.sh","run"]`

```dockerfile
# Wed, 08 May 2019 08:48:25 GMT
ADD file:153045f4fe6532d8c2ff273bb249a7a3a4cba913c26a4103ba5ddce1af02c1e5 in / 
# Wed, 08 May 2019 08:48:26 GMT
CMD ["bash"]
# Wed, 08 May 2019 11:51:12 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 11:51:50 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 08 May 2019 16:06:35 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 16:06:37 GMT
RUN echo 'deb http://deb.debian.org/debian stretch-backports main' > /etc/apt/sources.list.d/stretch-backports.list
# Wed, 08 May 2019 16:06:38 GMT
ENV LANG=C.UTF-8
# Wed, 08 May 2019 16:06:40 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 08 May 2019 16:06:43 GMT
RUN ln -svT "/usr/lib/jvm/java-11-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 08 May 2019 16:06:44 GMT
ENV JAVA_HOME=/docker-java-home
# Wed, 08 May 2019 16:06:44 GMT
ENV JAVA_VERSION=11.0.3
# Wed, 08 May 2019 16:06:45 GMT
ENV JAVA_DEBIAN_VERSION=11.0.3+1-1~bpo9+1
# Wed, 08 May 2019 16:11:14 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		ln -svT /docker-java-home/bin/java /usr/local/bin/java; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-11-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		rm -v /usr/local/bin/java; 		keytool -importkeystore -srckeystore /etc/ssl/certs/java/cacerts -destkeystore /etc/ssl/certs/java/cacerts.jks -deststoretype JKS -srcstorepass changeit -deststorepass changeit -noprompt; 	mv /etc/ssl/certs/java/cacerts.jks /etc/ssl/certs/java/cacerts; 	/var/lib/dpkg/info/ca-certificates-java.postinst configure; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Thu, 09 May 2019 07:15:41 GMT
LABEL maintainer=Lightstreamer Server Development Team <support@lightstreamer.com>
# Thu, 09 May 2019 07:15:46 GMT
RUN gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys 9B90BFD14309C7DA5EF58D7D4A8C08966F29B4D2
# Thu, 09 May 2019 07:15:47 GMT
ENV LIGHTSTREAMER_VERSION=7_0_3_20190107
# Thu, 09 May 2019 07:15:48 GMT
ENV LIGHTSTREAMER_URL_DOWNLOAD=http://www.lightstreamer.com/repo/distros/Lightstreamer_7_0_3_20190107.tar.gz
# Thu, 09 May 2019 07:15:49 GMT
WORKDIR /lightstreamer
# Thu, 09 May 2019 07:16:01 GMT
RUN set -ex;         curl -fSL -o Lightstreamer.tar.gz ${LIGHTSTREAMER_URL_DOWNLOAD}         && curl -fSL -o Lightstreamer.tar.gz.asc ${LIGHTSTREAMER_URL_DOWNLOAD}.asc         && gpg --batch --verify Lightstreamer.tar.gz.asc Lightstreamer.tar.gz         && tar -xvf Lightstreamer.tar.gz --strip-components=1         && sed -i -- 's/\/usr\/jdk1.8.0/$JAVA_HOME/' bin/unix-like/LS.sh         && sed -i -e '164,$s/<appender-ref ref="LSConsole" \/>/<!--<appender-ref ref="LSConsole" \/>-->/'                   -e '116,$s/<appender-ref ref="LSDailyRolling" \/>/<appender-ref ref="LSConsole" \/>/'                   -e '/<!--<appender-ref ref="LSConsole" \/>-->/ d' conf/lightstreamer_log_conf.xml         && rm Lightstreamer.tar.gz Lightstreamer.tar.gz.asc
# Thu, 09 May 2019 07:16:03 GMT
EXPOSE 8080
# Thu, 09 May 2019 07:16:04 GMT
WORKDIR /lightstreamer/bin/unix-like
# Thu, 09 May 2019 07:16:04 GMT
CMD ["./LS.sh" "run"]
```

-	Layers:
	-	`sha256:5894e28291972e44f5c3eba2779a85979bae6f95ed4f3e43ea5c98a132f06c48`  
		Last Modified: Wed, 08 May 2019 08:54:43 GMT  
		Size: 43.1 MB (43141955 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a8e6888cee6fef7c223eeaf2ca4c51bc0c21b4631971f416eb6a529a05e96cb`  
		Last Modified: Wed, 08 May 2019 12:07:05 GMT  
		Size: 9.7 MB (9733078 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8bf90e854779f4c5edab378626d847fd0ab7aa9441b63a7db31a7db55d2b255b`  
		Last Modified: Wed, 08 May 2019 12:07:03 GMT  
		Size: 4.1 MB (4094187 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:266e07372d3cf38feb8825ddae8cb9f335282ad809bba6aeaac01c34a13b9394`  
		Last Modified: Wed, 08 May 2019 16:31:36 GMT  
		Size: 839.5 KB (839462 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33620d64e6d1b0246724757776edb615dc49afd758f8173998353070b31a27c7`  
		Last Modified: Wed, 08 May 2019 16:31:36 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a76d1d13c2cdf744d3639f9807db1ee1b921ae954abf02315f64031068f6b01`  
		Last Modified: Wed, 08 May 2019 16:31:35 GMT  
		Size: 246.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7149891f17ac733bc8744c0d2c116737d9cd43460d2da579963d669cd3e48f98`  
		Last Modified: Wed, 08 May 2019 16:31:36 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed630e01fd86e330bd89d5ab7d00b0a051051da858ec14d7289213a615c49896`  
		Last Modified: Wed, 08 May 2019 16:32:15 GMT  
		Size: 121.9 MB (121903240 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a43414214a5cd6f8cdc9842eeda5504a72776544ddcdd680d47e2ac24378eb32`  
		Last Modified: Thu, 09 May 2019 07:17:35 GMT  
		Size: 2.0 KB (2013 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ec2d975510b0407fb9bf3a188ff2d32074e6fa5da44c58a5a8a137abbeeb655`  
		Last Modified: Thu, 09 May 2019 07:17:35 GMT  
		Size: 102.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17d76be6881ad4f5017fb8fb91b27eef17d379a61aa900aa80c4ba7428051ab6`  
		Last Modified: Thu, 09 May 2019 07:17:43 GMT  
		Size: 39.9 MB (39879735 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `lightstreamer:7.0.3-alpine`

```console
$ docker pull lightstreamer@sha256:723fc37fd9d02c8230fe35eda696670a9b36403d6655e312e2e0fbca9b92df23
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `lightstreamer:7.0.3-alpine` - linux; amd64

```console
$ docker pull lightstreamer@sha256:aabfd6167e76fc3254b9f7dcbabc22690914c1f94003f7483b8810dbb5adf6db
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **97.6 MB (97612162 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c7380a5886e9d0ecee16923e1614bc3739557ec6d1d35d4691fd9ba17e96acc4`
-	Default Command: `[".\/LS.sh","run"]`

```dockerfile
# Sat, 11 May 2019 00:07:03 GMT
ADD file:a86aea1f3a7d68f6ae03397b99ea77f2e9ee901c5c59e59f76f93adbb4035913 in / 
# Sat, 11 May 2019 00:07:03 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 01:32:11 GMT
ENV LANG=C.UTF-8
# Sat, 11 May 2019 01:32:12 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 11 May 2019 01:32:31 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Sat, 11 May 2019 01:32:32 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Sat, 11 May 2019 01:32:32 GMT
ENV JAVA_VERSION=8u212
# Sat, 11 May 2019 01:32:32 GMT
ENV JAVA_ALPINE_VERSION=8.212.04-r0
# Sat, 11 May 2019 01:32:36 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Sat, 11 May 2019 04:19:28 GMT
LABEL maintainer=Lightstreamer Server Development Team <support@lightstreamer.com>
# Sat, 11 May 2019 04:19:28 GMT
ENV LIGHTSTREAMER_VERSION=7_0_3_20190107
# Sat, 11 May 2019 04:19:28 GMT
ENV LIGHTSTREAMER_URL_DOWNLOAD=http://www.lightstreamer.com/repo/distros/Lightstreamer_7_0_3_20190107.tar.gz
# Sat, 11 May 2019 04:19:28 GMT
WORKDIR /lightstreamer
# Sat, 11 May 2019 04:19:40 GMT
RUN set -ex;         apk add --no-cache --virtual .deps                    gnupg                    tar                    curl         && gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys 9B90BFD14309C7DA5EF58D7D4A8C08966F29B4D2         &&  set -ex;                curl -fSL -o Lightstreamer.tar.gz ${LIGHTSTREAMER_URL_DOWNLOAD}                && curl -fSL -o Lightstreamer.tar.gz.asc ${LIGHTSTREAMER_URL_DOWNLOAD}.asc                && gpg --batch --verify Lightstreamer.tar.gz.asc Lightstreamer.tar.gz                && tar -xvf Lightstreamer.tar.gz --strip-components=1                && sed -i -- 's/\/usr\/jdk1.8.0/$JAVA_HOME/' bin/unix-like/LS.sh                && sed -i -e '164,$s/<appender-ref ref="LSConsole" \/>/<!--<appender-ref ref="LSConsole" \/>-->/'                          -e '116,$s/<appender-ref ref="LSDailyRolling" \/>/<appender-ref ref="LSConsole" \/>/'                          -e '/<!--<appender-ref ref="LSConsole" \/>-->/ d' conf/lightstreamer_log_conf.xml                && apk del .deps                && rm Lightstreamer.tar.gz Lightstreamer.tar.gz.asc
# Sat, 11 May 2019 04:19:40 GMT
EXPOSE 8080
# Sat, 11 May 2019 04:19:41 GMT
WORKDIR /lightstreamer/bin/unix-like
# Sat, 11 May 2019 04:19:41 GMT
CMD ["./LS.sh" "run"]
```

-	Layers:
	-	`sha256:e7c96db7181be991f19a9fb6975cdbbd73c65f4a2681348e63a141a2192a5f10`  
		Last Modified: Sat, 11 May 2019 00:07:31 GMT  
		Size: 2.8 MB (2757034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f910a506b6cb1dbec766725d70356f695ae2bf2bea6224dbe8c7c6ad4f3664a2`  
		Last Modified: Sat, 11 May 2019 01:36:58 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6abafe80f63b02535fc111df2ed6b3c728469679ab654e03e482b6f347c9639`  
		Last Modified: Sat, 11 May 2019 01:37:30 GMT  
		Size: 54.9 MB (54935634 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5cf264f2bb4e097a545c6bce790e986bbe3b814f686213e74f80341a38419f2`  
		Last Modified: Sat, 11 May 2019 04:19:58 GMT  
		Size: 102.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4d74a7da598dc91cdf3f3cab30cec9eea97ea7d3100398b4df193711cb34acf`  
		Last Modified: Sat, 11 May 2019 04:20:01 GMT  
		Size: 39.9 MB (39919154 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `lightstreamer:7.0.3-alpine` - linux; arm64 variant v8

```console
$ docker pull lightstreamer@sha256:cb5a3e2dc1cec0425cc6498de8dac480eb0113771a3fa58c3162fe2ee814385b
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **97.6 MB (97550989 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:591583f7d45ad5e50bc605da1b7ed1bd89ee18f53ebe6e27fbb29ebbb2d9489b`
-	Default Command: `[".\/LS.sh","run"]`

```dockerfile
# Sat, 11 May 2019 08:43:24 GMT
ADD file:66f49017dd7ba295602526dbf210046e47fd097298c17a3f268a47487b5b6379 in / 
# Sat, 11 May 2019 08:43:25 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 09:18:27 GMT
ENV LANG=C.UTF-8
# Sat, 11 May 2019 09:18:29 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 11 May 2019 09:18:55 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Sat, 11 May 2019 09:18:56 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Sat, 11 May 2019 09:18:56 GMT
ENV JAVA_VERSION=8u212
# Sat, 11 May 2019 09:18:57 GMT
ENV JAVA_ALPINE_VERSION=8.212.04-r0
# Sat, 11 May 2019 09:19:04 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Sat, 11 May 2019 17:00:04 GMT
LABEL maintainer=Lightstreamer Server Development Team <support@lightstreamer.com>
# Sat, 11 May 2019 17:00:04 GMT
ENV LIGHTSTREAMER_VERSION=7_0_3_20190107
# Sat, 11 May 2019 17:00:05 GMT
ENV LIGHTSTREAMER_URL_DOWNLOAD=http://www.lightstreamer.com/repo/distros/Lightstreamer_7_0_3_20190107.tar.gz
# Sat, 11 May 2019 17:00:06 GMT
WORKDIR /lightstreamer
# Sat, 11 May 2019 17:00:19 GMT
RUN set -ex;         apk add --no-cache --virtual .deps                    gnupg                    tar                    curl         && gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys 9B90BFD14309C7DA5EF58D7D4A8C08966F29B4D2         &&  set -ex;                curl -fSL -o Lightstreamer.tar.gz ${LIGHTSTREAMER_URL_DOWNLOAD}                && curl -fSL -o Lightstreamer.tar.gz.asc ${LIGHTSTREAMER_URL_DOWNLOAD}.asc                && gpg --batch --verify Lightstreamer.tar.gz.asc Lightstreamer.tar.gz                && tar -xvf Lightstreamer.tar.gz --strip-components=1                && sed -i -- 's/\/usr\/jdk1.8.0/$JAVA_HOME/' bin/unix-like/LS.sh                && sed -i -e '164,$s/<appender-ref ref="LSConsole" \/>/<!--<appender-ref ref="LSConsole" \/>-->/'                          -e '116,$s/<appender-ref ref="LSDailyRolling" \/>/<appender-ref ref="LSConsole" \/>/'                          -e '/<!--<appender-ref ref="LSConsole" \/>-->/ d' conf/lightstreamer_log_conf.xml                && apk del .deps                && rm Lightstreamer.tar.gz Lightstreamer.tar.gz.asc
# Sat, 11 May 2019 17:00:20 GMT
EXPOSE 8080
# Sat, 11 May 2019 17:00:20 GMT
WORKDIR /lightstreamer/bin/unix-like
# Sat, 11 May 2019 17:00:21 GMT
CMD ["./LS.sh" "run"]
```

-	Layers:
	-	`sha256:0362ad1dd800a9d92f8982fa28f173f9120266153830f990f7486f44b068968a`  
		Last Modified: Sat, 11 May 2019 08:44:25 GMT  
		Size: 2.7 MB (2688779 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ca2cc770c6ebbe90978672d360accf2434f83f9f0339ecd592224d794d5e35e`  
		Last Modified: Sat, 11 May 2019 09:21:04 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9072aa1a230005b2e358809d99ea667b32e1404f13e626b9bf5f3f5eb9f8dd1`  
		Last Modified: Sat, 11 May 2019 09:21:55 GMT  
		Size: 54.9 MB (54942530 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a87f58a0d57ca15c9f49e42b3ee84e0c61a5dd8fc9cbaee0bc4b3bb946ab76e1`  
		Last Modified: Sat, 11 May 2019 17:00:53 GMT  
		Size: 102.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ce634123aa5dce21717915ad1bc83ccebd0554ca700c306bc6546476e16cf80`  
		Last Modified: Sat, 11 May 2019 17:01:02 GMT  
		Size: 39.9 MB (39919341 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `lightstreamer:7.0.3-jre11`

```console
$ docker pull lightstreamer@sha256:64b43b5c4f861dca16d67a0aa1cfcce694b3abe8f5d8e1e57cc03ba95158186e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `lightstreamer:7.0.3-jre11` - linux; amd64

```console
$ docker pull lightstreamer@sha256:641446274998a2eccd40217a345e1ea8678bc90a9a69d2a171cf3f16e8de48b5
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **232.5 MB (232529301 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ba4bcd5390bfc18621d4beb7770d4cf229edd156c3bbd4e66b2b905efe94e526`
-	Default Command: `[".\/LS.sh","run"]`

```dockerfile
# Wed, 08 May 2019 00:33:09 GMT
ADD file:caf91edab64f988bc24766c58ee66c00311c7c921296b8e5b51d7023422a1485 in / 
# Wed, 08 May 2019 00:33:10 GMT
CMD ["bash"]
# Wed, 08 May 2019 01:40:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 01:40:12 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 08 May 2019 05:05:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 05:05:23 GMT
RUN echo 'deb http://deb.debian.org/debian stretch-backports main' > /etc/apt/sources.list.d/stretch-backports.list
# Wed, 08 May 2019 05:05:23 GMT
ENV LANG=C.UTF-8
# Wed, 08 May 2019 05:05:24 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 08 May 2019 05:05:25 GMT
RUN ln -svT "/usr/lib/jvm/java-11-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 08 May 2019 05:05:25 GMT
ENV JAVA_HOME=/docker-java-home
# Wed, 08 May 2019 05:05:25 GMT
ENV JAVA_VERSION=11.0.3
# Wed, 08 May 2019 05:05:25 GMT
ENV JAVA_DEBIAN_VERSION=11.0.3+1-1~bpo9+1
# Wed, 08 May 2019 05:06:14 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		ln -svT /docker-java-home/bin/java /usr/local/bin/java; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-11-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		rm -v /usr/local/bin/java; 		keytool -importkeystore -srckeystore /etc/ssl/certs/java/cacerts -destkeystore /etc/ssl/certs/java/cacerts.jks -deststoretype JKS -srcstorepass changeit -deststorepass changeit -noprompt; 	mv /etc/ssl/certs/java/cacerts.jks /etc/ssl/certs/java/cacerts; 	/var/lib/dpkg/info/ca-certificates-java.postinst configure; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 08 May 2019 12:28:04 GMT
LABEL maintainer=Lightstreamer Server Development Team <support@lightstreamer.com>
# Wed, 08 May 2019 12:28:07 GMT
RUN gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys 9B90BFD14309C7DA5EF58D7D4A8C08966F29B4D2
# Wed, 08 May 2019 12:28:08 GMT
ENV LIGHTSTREAMER_VERSION=7_0_3_20190107
# Wed, 08 May 2019 12:28:08 GMT
ENV LIGHTSTREAMER_URL_DOWNLOAD=http://www.lightstreamer.com/repo/distros/Lightstreamer_7_0_3_20190107.tar.gz
# Wed, 08 May 2019 12:28:08 GMT
WORKDIR /lightstreamer
# Wed, 08 May 2019 12:28:16 GMT
RUN set -ex;         curl -fSL -o Lightstreamer.tar.gz ${LIGHTSTREAMER_URL_DOWNLOAD}         && curl -fSL -o Lightstreamer.tar.gz.asc ${LIGHTSTREAMER_URL_DOWNLOAD}.asc         && gpg --batch --verify Lightstreamer.tar.gz.asc Lightstreamer.tar.gz         && tar -xvf Lightstreamer.tar.gz --strip-components=1         && sed -i -- 's/\/usr\/jdk1.8.0/$JAVA_HOME/' bin/unix-like/LS.sh         && sed -i -e '164,$s/<appender-ref ref="LSConsole" \/>/<!--<appender-ref ref="LSConsole" \/>-->/'                   -e '116,$s/<appender-ref ref="LSDailyRolling" \/>/<appender-ref ref="LSConsole" \/>/'                   -e '/<!--<appender-ref ref="LSConsole" \/>-->/ d' conf/lightstreamer_log_conf.xml         && rm Lightstreamer.tar.gz Lightstreamer.tar.gz.asc
# Wed, 08 May 2019 12:28:17 GMT
EXPOSE 8080
# Wed, 08 May 2019 12:28:17 GMT
WORKDIR /lightstreamer/bin/unix-like
# Wed, 08 May 2019 12:28:17 GMT
CMD ["./LS.sh" "run"]
```

-	Layers:
	-	`sha256:c5e155d5a1d130a7f8a3e24cee0d9e1349bff13f90ec6a941478e558fde53c14`  
		Last Modified: Wed, 08 May 2019 00:37:42 GMT  
		Size: 45.3 MB (45339314 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:221d80d00ae9675aad24913aacbadfac1ce8b7084f9765a6c0813486082c5c69`  
		Last Modified: Wed, 08 May 2019 01:45:42 GMT  
		Size: 10.8 MB (10784878 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4250b3117dca5e14edc32ebf1366cd54e4cda91f17610b76c504a86917ff8b95`  
		Last Modified: Wed, 08 May 2019 01:45:41 GMT  
		Size: 4.3 MB (4340094 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1370422ab933b954a9eb1084c61cbc809a78cfd4b44b29c7655838be35a89ee`  
		Last Modified: Wed, 08 May 2019 05:28:01 GMT  
		Size: 853.2 KB (853185 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:887ef4b1893c59ebbb466a5f639477e1dec6f0420af812a9d96b5fe032bc8842`  
		Last Modified: Wed, 08 May 2019 05:28:01 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5815d21e2da849018c85fac6b991965cbebdb3d4bf75e685159eb7baa8b0ff5`  
		Last Modified: Wed, 08 May 2019 05:28:01 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bca5be5493ced138104ab694f97ee1678173e82fc9c10d928836a3eedf7b8ef2`  
		Last Modified: Wed, 08 May 2019 05:28:01 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:852fbda3c856796ea1b7f725175d646daba0a68806eff95f7aa8cb4b890e3b83`  
		Last Modified: Wed, 08 May 2019 05:28:35 GMT  
		Size: 131.3 MB (131329458 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e59affe89ecf38110547e6624671cec104cd92cf73e8a60fa98915a17168b252`  
		Last Modified: Wed, 08 May 2019 12:29:31 GMT  
		Size: 2.0 KB (2011 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de79cc96d847c4f955ea77a10a43bb66b59b22ddd085a104e355cf6ab745f7f0`  
		Last Modified: Wed, 08 May 2019 12:29:31 GMT  
		Size: 102.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c342dec1fd5126e89e2ffc507a8a7779fe0e14825850bd92b9b1eb56d676e194`  
		Last Modified: Wed, 08 May 2019 12:29:37 GMT  
		Size: 39.9 MB (39879659 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `lightstreamer:7.0.3-jre11` - linux; arm64 variant v8

```console
$ docker pull lightstreamer@sha256:5ca26d79785d678b30de71e8999e6016903ac0dd8c200e80af668d6b19e4e0d0
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **219.6 MB (219594374 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:17975e9464ca44bd81964ff7a68ece919c9399383d2f8665a9285f2a68aae6a0`
-	Default Command: `[".\/LS.sh","run"]`

```dockerfile
# Wed, 08 May 2019 08:48:25 GMT
ADD file:153045f4fe6532d8c2ff273bb249a7a3a4cba913c26a4103ba5ddce1af02c1e5 in / 
# Wed, 08 May 2019 08:48:26 GMT
CMD ["bash"]
# Wed, 08 May 2019 11:51:12 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 11:51:50 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 08 May 2019 16:06:35 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 16:06:37 GMT
RUN echo 'deb http://deb.debian.org/debian stretch-backports main' > /etc/apt/sources.list.d/stretch-backports.list
# Wed, 08 May 2019 16:06:38 GMT
ENV LANG=C.UTF-8
# Wed, 08 May 2019 16:06:40 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 08 May 2019 16:06:43 GMT
RUN ln -svT "/usr/lib/jvm/java-11-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 08 May 2019 16:06:44 GMT
ENV JAVA_HOME=/docker-java-home
# Wed, 08 May 2019 16:06:44 GMT
ENV JAVA_VERSION=11.0.3
# Wed, 08 May 2019 16:06:45 GMT
ENV JAVA_DEBIAN_VERSION=11.0.3+1-1~bpo9+1
# Wed, 08 May 2019 16:11:14 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		ln -svT /docker-java-home/bin/java /usr/local/bin/java; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-11-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		rm -v /usr/local/bin/java; 		keytool -importkeystore -srckeystore /etc/ssl/certs/java/cacerts -destkeystore /etc/ssl/certs/java/cacerts.jks -deststoretype JKS -srcstorepass changeit -deststorepass changeit -noprompt; 	mv /etc/ssl/certs/java/cacerts.jks /etc/ssl/certs/java/cacerts; 	/var/lib/dpkg/info/ca-certificates-java.postinst configure; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Thu, 09 May 2019 07:15:41 GMT
LABEL maintainer=Lightstreamer Server Development Team <support@lightstreamer.com>
# Thu, 09 May 2019 07:15:46 GMT
RUN gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys 9B90BFD14309C7DA5EF58D7D4A8C08966F29B4D2
# Thu, 09 May 2019 07:15:47 GMT
ENV LIGHTSTREAMER_VERSION=7_0_3_20190107
# Thu, 09 May 2019 07:15:48 GMT
ENV LIGHTSTREAMER_URL_DOWNLOAD=http://www.lightstreamer.com/repo/distros/Lightstreamer_7_0_3_20190107.tar.gz
# Thu, 09 May 2019 07:15:49 GMT
WORKDIR /lightstreamer
# Thu, 09 May 2019 07:16:01 GMT
RUN set -ex;         curl -fSL -o Lightstreamer.tar.gz ${LIGHTSTREAMER_URL_DOWNLOAD}         && curl -fSL -o Lightstreamer.tar.gz.asc ${LIGHTSTREAMER_URL_DOWNLOAD}.asc         && gpg --batch --verify Lightstreamer.tar.gz.asc Lightstreamer.tar.gz         && tar -xvf Lightstreamer.tar.gz --strip-components=1         && sed -i -- 's/\/usr\/jdk1.8.0/$JAVA_HOME/' bin/unix-like/LS.sh         && sed -i -e '164,$s/<appender-ref ref="LSConsole" \/>/<!--<appender-ref ref="LSConsole" \/>-->/'                   -e '116,$s/<appender-ref ref="LSDailyRolling" \/>/<appender-ref ref="LSConsole" \/>/'                   -e '/<!--<appender-ref ref="LSConsole" \/>-->/ d' conf/lightstreamer_log_conf.xml         && rm Lightstreamer.tar.gz Lightstreamer.tar.gz.asc
# Thu, 09 May 2019 07:16:03 GMT
EXPOSE 8080
# Thu, 09 May 2019 07:16:04 GMT
WORKDIR /lightstreamer/bin/unix-like
# Thu, 09 May 2019 07:16:04 GMT
CMD ["./LS.sh" "run"]
```

-	Layers:
	-	`sha256:5894e28291972e44f5c3eba2779a85979bae6f95ed4f3e43ea5c98a132f06c48`  
		Last Modified: Wed, 08 May 2019 08:54:43 GMT  
		Size: 43.1 MB (43141955 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a8e6888cee6fef7c223eeaf2ca4c51bc0c21b4631971f416eb6a529a05e96cb`  
		Last Modified: Wed, 08 May 2019 12:07:05 GMT  
		Size: 9.7 MB (9733078 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8bf90e854779f4c5edab378626d847fd0ab7aa9441b63a7db31a7db55d2b255b`  
		Last Modified: Wed, 08 May 2019 12:07:03 GMT  
		Size: 4.1 MB (4094187 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:266e07372d3cf38feb8825ddae8cb9f335282ad809bba6aeaac01c34a13b9394`  
		Last Modified: Wed, 08 May 2019 16:31:36 GMT  
		Size: 839.5 KB (839462 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33620d64e6d1b0246724757776edb615dc49afd758f8173998353070b31a27c7`  
		Last Modified: Wed, 08 May 2019 16:31:36 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a76d1d13c2cdf744d3639f9807db1ee1b921ae954abf02315f64031068f6b01`  
		Last Modified: Wed, 08 May 2019 16:31:35 GMT  
		Size: 246.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7149891f17ac733bc8744c0d2c116737d9cd43460d2da579963d669cd3e48f98`  
		Last Modified: Wed, 08 May 2019 16:31:36 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed630e01fd86e330bd89d5ab7d00b0a051051da858ec14d7289213a615c49896`  
		Last Modified: Wed, 08 May 2019 16:32:15 GMT  
		Size: 121.9 MB (121903240 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a43414214a5cd6f8cdc9842eeda5504a72776544ddcdd680d47e2ac24378eb32`  
		Last Modified: Thu, 09 May 2019 07:17:35 GMT  
		Size: 2.0 KB (2013 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ec2d975510b0407fb9bf3a188ff2d32074e6fa5da44c58a5a8a137abbeeb655`  
		Last Modified: Thu, 09 May 2019 07:17:35 GMT  
		Size: 102.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17d76be6881ad4f5017fb8fb91b27eef17d379a61aa900aa80c4ba7428051ab6`  
		Last Modified: Thu, 09 May 2019 07:17:43 GMT  
		Size: 39.9 MB (39879735 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `lightstreamer:7.0.3-jre8`

```console
$ docker pull lightstreamer@sha256:fc835d862771bd73cd88a83457d00c5ab50aea2f15eac7fac36ab83b1eaeb9f7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `lightstreamer:7.0.3-jre8` - linux; amd64

```console
$ docker pull lightstreamer@sha256:b2a6f34343733be8abba1f40b6ce797e6004b3561f5717b692dccd29dd1f03b2
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **145.6 MB (145582559 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0f76f83eb1665e187036629662a6c8b06a46d254a420d6272bad2b0dc03e5359`
-	Default Command: `[".\/LS.sh","run"]`

```dockerfile
# Wed, 08 May 2019 00:33:09 GMT
ADD file:caf91edab64f988bc24766c58ee66c00311c7c921296b8e5b51d7023422a1485 in / 
# Wed, 08 May 2019 00:33:10 GMT
CMD ["bash"]
# Wed, 08 May 2019 01:40:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 01:40:12 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 29 May 2019 21:22:25 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 				ca-certificates p11-kit 				fontconfig libfreetype6 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 29 May 2019 21:22:25 GMT
ENV LANG=C.UTF-8
# Wed, 29 May 2019 21:22:26 GMT
ENV JAVA_HOME=/usr/local/openjdk-8
# Wed, 29 May 2019 21:22:26 GMT
ENV PATH=/usr/local/openjdk-8/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 29 May 2019 21:22:26 GMT
RUN { echo '#/bin/sh'; echo 'echo "$JAVA_HOME"'; } > /usr/local/bin/docker-java-home && chmod +x /usr/local/bin/docker-java-home && [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 29 May 2019 21:22:27 GMT
ENV JAVA_VERSION=8u212-b04
# Wed, 29 May 2019 21:22:27 GMT
ENV JAVA_BASE_URL=https://github.com/AdoptOpenJDK/openjdk8-upstream-binaries/releases/download/jdk8u212-b04/OpenJDK8U-jre_
# Wed, 29 May 2019 21:22:27 GMT
ENV JAVA_URL_VERSION=8u212b04
# Wed, 05 Jun 2019 22:26:18 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64) upstreamArch='x64' ;; 		arm64) upstreamArch='aarch64' ;; 		*) echo >&2 "error: unsupported architecture: $dpkgArch" ;; 	esac; 		wget -O openjdk.tgz.asc "${JAVA_BASE_URL}${upstreamArch}_linux_${JAVA_URL_VERSION}.tar.gz.sign"; 	wget -O openjdk.tgz "${JAVA_BASE_URL}${upstreamArch}_linux_${JAVA_URL_VERSION}.tar.gz" --progress=dot:giga; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys CA5F11C6CE22644D42C6AC4492EF8D39DC13168F; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys EAC843EBD3EFDB98CC772FADA5CD6035332FA671; 	gpg --batch --list-sigs --keyid-format 0xLONG CA5F11C6CE22644D42C6AC4492EF8D39DC13168F | grep '0xA5CD6035332FA671' | grep 'Andrew Haley'; 	gpg --batch --verify openjdk.tgz.asc openjdk.tgz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 			{ 		echo '#!/usr/bin/env bash'; 		echo 'set -Eeuo pipefail'; 		echo 'if ! [ -d "$JAVA_HOME" ]; then echo >&2 "error: missing JAVA_HOME environment variable"; exit 1; fi'; 		echo 'cacertsFile=; for f in "$JAVA_HOME/lib/security/cacerts" "$JAVA_HOME/jre/lib/security/cacerts"; do if [ -e "$f" ]; then cacertsFile="$f"; break; fi; done'; 		echo 'if [ -z "$cacertsFile" ] || ! [ -f "$cacertsFile" ]; then echo >&2 "error: failed to find cacerts file in $JAVA_HOME"; exit 1; fi'; 		echo 'trust extract --overwrite --format=java-cacerts --filter=ca-anchors --purpose=server-auth "$cacertsFile"'; 	} > /etc/ca-certificates/update.d/docker-openjdk; 	chmod +x /etc/ca-certificates/update.d/docker-openjdk; 	/etc/ca-certificates/update.d/docker-openjdk; 		find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf; 	ldconfig; 		java -version
# Wed, 05 Jun 2019 23:15:57 GMT
LABEL maintainer=Lightstreamer Server Development Team <support@lightstreamer.com>
# Wed, 05 Jun 2019 23:16:00 GMT
RUN gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys 9B90BFD14309C7DA5EF58D7D4A8C08966F29B4D2
# Wed, 05 Jun 2019 23:16:00 GMT
ENV LIGHTSTREAMER_VERSION=7_0_3_20190107
# Wed, 05 Jun 2019 23:16:00 GMT
ENV LIGHTSTREAMER_URL_DOWNLOAD=http://www.lightstreamer.com/repo/distros/Lightstreamer_7_0_3_20190107.tar.gz
# Wed, 05 Jun 2019 23:16:00 GMT
WORKDIR /lightstreamer
# Wed, 05 Jun 2019 23:16:07 GMT
RUN set -ex;         curl -fSL -o Lightstreamer.tar.gz ${LIGHTSTREAMER_URL_DOWNLOAD}         && curl -fSL -o Lightstreamer.tar.gz.asc ${LIGHTSTREAMER_URL_DOWNLOAD}.asc         && gpg --batch --verify Lightstreamer.tar.gz.asc Lightstreamer.tar.gz         && tar -xvf Lightstreamer.tar.gz --strip-components=1         && sed -i -- 's/\/usr\/jdk1.8.0/$JAVA_HOME/' bin/unix-like/LS.sh         && sed -i -e '164,$s/<appender-ref ref="LSConsole" \/>/<!--<appender-ref ref="LSConsole" \/>-->/'                   -e '116,$s/<appender-ref ref="LSDailyRolling" \/>/<appender-ref ref="LSConsole" \/>/'                   -e '/<!--<appender-ref ref="LSConsole" \/>-->/ d' conf/lightstreamer_log_conf.xml         && rm Lightstreamer.tar.gz Lightstreamer.tar.gz.asc
# Wed, 05 Jun 2019 23:16:07 GMT
EXPOSE 8080
# Wed, 05 Jun 2019 23:16:08 GMT
WORKDIR /lightstreamer/bin/unix-like
# Wed, 05 Jun 2019 23:16:08 GMT
CMD ["./LS.sh" "run"]
```

-	Layers:
	-	`sha256:c5e155d5a1d130a7f8a3e24cee0d9e1349bff13f90ec6a941478e558fde53c14`  
		Last Modified: Wed, 08 May 2019 00:37:42 GMT  
		Size: 45.3 MB (45339314 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:221d80d00ae9675aad24913aacbadfac1ce8b7084f9765a6c0813486082c5c69`  
		Last Modified: Wed, 08 May 2019 01:45:42 GMT  
		Size: 10.8 MB (10784878 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4250b3117dca5e14edc32ebf1366cd54e4cda91f17610b76c504a86917ff8b95`  
		Last Modified: Wed, 08 May 2019 01:45:41 GMT  
		Size: 4.3 MB (4340094 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84d5a83c37cab1b4e3581d9738d290681fd8ce13cde68954a5baeef12128e9ae`  
		Last Modified: Wed, 29 May 2019 21:26:37 GMT  
		Size: 5.1 MB (5123210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ca1d40853ad108aee04ac7b66996b467ca6cd20319bd8b11a7965e00e8750fa`  
		Last Modified: Wed, 29 May 2019 21:26:39 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26161197356e5acc9f03bd438a4a5f497fd9a7f9879f88485c01a484988363e0`  
		Last Modified: Wed, 05 Jun 2019 22:28:57 GMT  
		Size: 40.1 MB (40113119 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0446502ccaca0af0361b8540cb0ceca1e712fe0423d0f39610596e415971b187`  
		Last Modified: Wed, 05 Jun 2019 23:16:53 GMT  
		Size: 2.0 KB (2009 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1900f1c9200045d92d761b3c9aedd7ca1b1819bb6927470eab1691a55526dcab`  
		Last Modified: Wed, 05 Jun 2019 23:16:54 GMT  
		Size: 102.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1efb953af2cea5e5ac717ec30aa32486279cc63af360fafaeedc9726edebcd9`  
		Last Modified: Wed, 05 Jun 2019 23:16:57 GMT  
		Size: 39.9 MB (39879611 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `lightstreamer:7.0.3-jre8` - linux; arm64 variant v8

```console
$ docker pull lightstreamer@sha256:488cccc7ec6229bbb64069e533305bc170b3df7149b262816936e05c3f47a5c1
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **210.8 MB (210768174 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aeb309c19a6beb913268ce35f6009bb04bad380ee007d0ef0ec2f31550005798`
-	Default Command: `[".\/LS.sh","run"]`

```dockerfile
# Wed, 08 May 2019 08:48:25 GMT
ADD file:153045f4fe6532d8c2ff273bb249a7a3a4cba913c26a4103ba5ddce1af02c1e5 in / 
# Wed, 08 May 2019 08:48:26 GMT
CMD ["bash"]
# Wed, 08 May 2019 11:51:12 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 11:51:50 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 08 May 2019 16:06:35 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 16:20:20 GMT
ENV LANG=C.UTF-8
# Wed, 08 May 2019 16:20:22 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 08 May 2019 16:20:24 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 08 May 2019 16:20:25 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Wed, 08 May 2019 16:20:25 GMT
ENV JAVA_VERSION=8u212
# Wed, 08 May 2019 16:20:26 GMT
ENV JAVA_DEBIAN_VERSION=8u212-b01-1~deb9u1
# Wed, 08 May 2019 16:26:07 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Thu, 09 May 2019 07:15:01 GMT
LABEL maintainer=Lightstreamer Server Development Team <support@lightstreamer.com>
# Thu, 09 May 2019 07:15:07 GMT
RUN gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys 9B90BFD14309C7DA5EF58D7D4A8C08966F29B4D2
# Thu, 09 May 2019 07:15:08 GMT
ENV LIGHTSTREAMER_VERSION=7_0_3_20190107
# Thu, 09 May 2019 07:15:10 GMT
ENV LIGHTSTREAMER_URL_DOWNLOAD=http://www.lightstreamer.com/repo/distros/Lightstreamer_7_0_3_20190107.tar.gz
# Thu, 09 May 2019 07:15:13 GMT
WORKDIR /lightstreamer
# Thu, 09 May 2019 07:15:24 GMT
RUN set -ex;         curl -fSL -o Lightstreamer.tar.gz ${LIGHTSTREAMER_URL_DOWNLOAD}         && curl -fSL -o Lightstreamer.tar.gz.asc ${LIGHTSTREAMER_URL_DOWNLOAD}.asc         && gpg --batch --verify Lightstreamer.tar.gz.asc Lightstreamer.tar.gz         && tar -xvf Lightstreamer.tar.gz --strip-components=1         && sed -i -- 's/\/usr\/jdk1.8.0/$JAVA_HOME/' bin/unix-like/LS.sh         && sed -i -e '164,$s/<appender-ref ref="LSConsole" \/>/<!--<appender-ref ref="LSConsole" \/>-->/'                   -e '116,$s/<appender-ref ref="LSDailyRolling" \/>/<appender-ref ref="LSConsole" \/>/'                   -e '/<!--<appender-ref ref="LSConsole" \/>-->/ d' conf/lightstreamer_log_conf.xml         && rm Lightstreamer.tar.gz Lightstreamer.tar.gz.asc
# Thu, 09 May 2019 07:15:26 GMT
EXPOSE 8080
# Thu, 09 May 2019 07:15:27 GMT
WORKDIR /lightstreamer/bin/unix-like
# Thu, 09 May 2019 07:15:28 GMT
CMD ["./LS.sh" "run"]
```

-	Layers:
	-	`sha256:5894e28291972e44f5c3eba2779a85979bae6f95ed4f3e43ea5c98a132f06c48`  
		Last Modified: Wed, 08 May 2019 08:54:43 GMT  
		Size: 43.1 MB (43141955 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a8e6888cee6fef7c223eeaf2ca4c51bc0c21b4631971f416eb6a529a05e96cb`  
		Last Modified: Wed, 08 May 2019 12:07:05 GMT  
		Size: 9.7 MB (9733078 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8bf90e854779f4c5edab378626d847fd0ab7aa9441b63a7db31a7db55d2b255b`  
		Last Modified: Wed, 08 May 2019 12:07:03 GMT  
		Size: 4.1 MB (4094187 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:266e07372d3cf38feb8825ddae8cb9f335282ad809bba6aeaac01c34a13b9394`  
		Last Modified: Wed, 08 May 2019 16:31:36 GMT  
		Size: 839.5 KB (839462 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a659800b4725d142bb026865f3fe7c0783f10d06c59d098da99786f2d1651351`  
		Last Modified: Wed, 08 May 2019 16:35:05 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b72fcad374b58026407e0d656f469140e3725eb1baa7468dfaba55fc642503d`  
		Last Modified: Wed, 08 May 2019 16:35:05 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f06f957e19b2a1bce1a9143c3ec174bda06b3a5d74ef7122a0b81a3a730deae6`  
		Last Modified: Wed, 08 May 2019 16:35:55 GMT  
		Size: 113.1 MB (113077224 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1ad3961ffaef0e5f9fe23f1e55354dda861fb6cb680fff69b3bef16b4e61a57`  
		Last Modified: Thu, 09 May 2019 07:17:12 GMT  
		Size: 2.0 KB (2018 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2da940e22f36a8c65117e0c1536fe5f85b63a2a89b4c20f2b4f8f4b04516d9b2`  
		Last Modified: Thu, 09 May 2019 07:17:13 GMT  
		Size: 102.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dda4c5f7e724f39285913e123c44a97b7c2a2cd2b61c306b85ca7c2f5fb421b6`  
		Last Modified: Thu, 09 May 2019 07:17:21 GMT  
		Size: 39.9 MB (39879770 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `lightstreamer:7.0.3-jre8-alpine`

```console
$ docker pull lightstreamer@sha256:723fc37fd9d02c8230fe35eda696670a9b36403d6655e312e2e0fbca9b92df23
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `lightstreamer:7.0.3-jre8-alpine` - linux; amd64

```console
$ docker pull lightstreamer@sha256:aabfd6167e76fc3254b9f7dcbabc22690914c1f94003f7483b8810dbb5adf6db
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **97.6 MB (97612162 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c7380a5886e9d0ecee16923e1614bc3739557ec6d1d35d4691fd9ba17e96acc4`
-	Default Command: `[".\/LS.sh","run"]`

```dockerfile
# Sat, 11 May 2019 00:07:03 GMT
ADD file:a86aea1f3a7d68f6ae03397b99ea77f2e9ee901c5c59e59f76f93adbb4035913 in / 
# Sat, 11 May 2019 00:07:03 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 01:32:11 GMT
ENV LANG=C.UTF-8
# Sat, 11 May 2019 01:32:12 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 11 May 2019 01:32:31 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Sat, 11 May 2019 01:32:32 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Sat, 11 May 2019 01:32:32 GMT
ENV JAVA_VERSION=8u212
# Sat, 11 May 2019 01:32:32 GMT
ENV JAVA_ALPINE_VERSION=8.212.04-r0
# Sat, 11 May 2019 01:32:36 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Sat, 11 May 2019 04:19:28 GMT
LABEL maintainer=Lightstreamer Server Development Team <support@lightstreamer.com>
# Sat, 11 May 2019 04:19:28 GMT
ENV LIGHTSTREAMER_VERSION=7_0_3_20190107
# Sat, 11 May 2019 04:19:28 GMT
ENV LIGHTSTREAMER_URL_DOWNLOAD=http://www.lightstreamer.com/repo/distros/Lightstreamer_7_0_3_20190107.tar.gz
# Sat, 11 May 2019 04:19:28 GMT
WORKDIR /lightstreamer
# Sat, 11 May 2019 04:19:40 GMT
RUN set -ex;         apk add --no-cache --virtual .deps                    gnupg                    tar                    curl         && gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys 9B90BFD14309C7DA5EF58D7D4A8C08966F29B4D2         &&  set -ex;                curl -fSL -o Lightstreamer.tar.gz ${LIGHTSTREAMER_URL_DOWNLOAD}                && curl -fSL -o Lightstreamer.tar.gz.asc ${LIGHTSTREAMER_URL_DOWNLOAD}.asc                && gpg --batch --verify Lightstreamer.tar.gz.asc Lightstreamer.tar.gz                && tar -xvf Lightstreamer.tar.gz --strip-components=1                && sed -i -- 's/\/usr\/jdk1.8.0/$JAVA_HOME/' bin/unix-like/LS.sh                && sed -i -e '164,$s/<appender-ref ref="LSConsole" \/>/<!--<appender-ref ref="LSConsole" \/>-->/'                          -e '116,$s/<appender-ref ref="LSDailyRolling" \/>/<appender-ref ref="LSConsole" \/>/'                          -e '/<!--<appender-ref ref="LSConsole" \/>-->/ d' conf/lightstreamer_log_conf.xml                && apk del .deps                && rm Lightstreamer.tar.gz Lightstreamer.tar.gz.asc
# Sat, 11 May 2019 04:19:40 GMT
EXPOSE 8080
# Sat, 11 May 2019 04:19:41 GMT
WORKDIR /lightstreamer/bin/unix-like
# Sat, 11 May 2019 04:19:41 GMT
CMD ["./LS.sh" "run"]
```

-	Layers:
	-	`sha256:e7c96db7181be991f19a9fb6975cdbbd73c65f4a2681348e63a141a2192a5f10`  
		Last Modified: Sat, 11 May 2019 00:07:31 GMT  
		Size: 2.8 MB (2757034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f910a506b6cb1dbec766725d70356f695ae2bf2bea6224dbe8c7c6ad4f3664a2`  
		Last Modified: Sat, 11 May 2019 01:36:58 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6abafe80f63b02535fc111df2ed6b3c728469679ab654e03e482b6f347c9639`  
		Last Modified: Sat, 11 May 2019 01:37:30 GMT  
		Size: 54.9 MB (54935634 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5cf264f2bb4e097a545c6bce790e986bbe3b814f686213e74f80341a38419f2`  
		Last Modified: Sat, 11 May 2019 04:19:58 GMT  
		Size: 102.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4d74a7da598dc91cdf3f3cab30cec9eea97ea7d3100398b4df193711cb34acf`  
		Last Modified: Sat, 11 May 2019 04:20:01 GMT  
		Size: 39.9 MB (39919154 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `lightstreamer:7.0.3-jre8-alpine` - linux; arm64 variant v8

```console
$ docker pull lightstreamer@sha256:cb5a3e2dc1cec0425cc6498de8dac480eb0113771a3fa58c3162fe2ee814385b
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **97.6 MB (97550989 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:591583f7d45ad5e50bc605da1b7ed1bd89ee18f53ebe6e27fbb29ebbb2d9489b`
-	Default Command: `[".\/LS.sh","run"]`

```dockerfile
# Sat, 11 May 2019 08:43:24 GMT
ADD file:66f49017dd7ba295602526dbf210046e47fd097298c17a3f268a47487b5b6379 in / 
# Sat, 11 May 2019 08:43:25 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 09:18:27 GMT
ENV LANG=C.UTF-8
# Sat, 11 May 2019 09:18:29 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 11 May 2019 09:18:55 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Sat, 11 May 2019 09:18:56 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Sat, 11 May 2019 09:18:56 GMT
ENV JAVA_VERSION=8u212
# Sat, 11 May 2019 09:18:57 GMT
ENV JAVA_ALPINE_VERSION=8.212.04-r0
# Sat, 11 May 2019 09:19:04 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Sat, 11 May 2019 17:00:04 GMT
LABEL maintainer=Lightstreamer Server Development Team <support@lightstreamer.com>
# Sat, 11 May 2019 17:00:04 GMT
ENV LIGHTSTREAMER_VERSION=7_0_3_20190107
# Sat, 11 May 2019 17:00:05 GMT
ENV LIGHTSTREAMER_URL_DOWNLOAD=http://www.lightstreamer.com/repo/distros/Lightstreamer_7_0_3_20190107.tar.gz
# Sat, 11 May 2019 17:00:06 GMT
WORKDIR /lightstreamer
# Sat, 11 May 2019 17:00:19 GMT
RUN set -ex;         apk add --no-cache --virtual .deps                    gnupg                    tar                    curl         && gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys 9B90BFD14309C7DA5EF58D7D4A8C08966F29B4D2         &&  set -ex;                curl -fSL -o Lightstreamer.tar.gz ${LIGHTSTREAMER_URL_DOWNLOAD}                && curl -fSL -o Lightstreamer.tar.gz.asc ${LIGHTSTREAMER_URL_DOWNLOAD}.asc                && gpg --batch --verify Lightstreamer.tar.gz.asc Lightstreamer.tar.gz                && tar -xvf Lightstreamer.tar.gz --strip-components=1                && sed -i -- 's/\/usr\/jdk1.8.0/$JAVA_HOME/' bin/unix-like/LS.sh                && sed -i -e '164,$s/<appender-ref ref="LSConsole" \/>/<!--<appender-ref ref="LSConsole" \/>-->/'                          -e '116,$s/<appender-ref ref="LSDailyRolling" \/>/<appender-ref ref="LSConsole" \/>/'                          -e '/<!--<appender-ref ref="LSConsole" \/>-->/ d' conf/lightstreamer_log_conf.xml                && apk del .deps                && rm Lightstreamer.tar.gz Lightstreamer.tar.gz.asc
# Sat, 11 May 2019 17:00:20 GMT
EXPOSE 8080
# Sat, 11 May 2019 17:00:20 GMT
WORKDIR /lightstreamer/bin/unix-like
# Sat, 11 May 2019 17:00:21 GMT
CMD ["./LS.sh" "run"]
```

-	Layers:
	-	`sha256:0362ad1dd800a9d92f8982fa28f173f9120266153830f990f7486f44b068968a`  
		Last Modified: Sat, 11 May 2019 08:44:25 GMT  
		Size: 2.7 MB (2688779 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ca2cc770c6ebbe90978672d360accf2434f83f9f0339ecd592224d794d5e35e`  
		Last Modified: Sat, 11 May 2019 09:21:04 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9072aa1a230005b2e358809d99ea667b32e1404f13e626b9bf5f3f5eb9f8dd1`  
		Last Modified: Sat, 11 May 2019 09:21:55 GMT  
		Size: 54.9 MB (54942530 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a87f58a0d57ca15c9f49e42b3ee84e0c61a5dd8fc9cbaee0bc4b3bb946ab76e1`  
		Last Modified: Sat, 11 May 2019 17:00:53 GMT  
		Size: 102.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ce634123aa5dce21717915ad1bc83ccebd0554ca700c306bc6546476e16cf80`  
		Last Modified: Sat, 11 May 2019 17:01:02 GMT  
		Size: 39.9 MB (39919341 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `lightstreamer:7.0-alpine`

```console
$ docker pull lightstreamer@sha256:723fc37fd9d02c8230fe35eda696670a9b36403d6655e312e2e0fbca9b92df23
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `lightstreamer:7.0-alpine` - linux; amd64

```console
$ docker pull lightstreamer@sha256:aabfd6167e76fc3254b9f7dcbabc22690914c1f94003f7483b8810dbb5adf6db
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **97.6 MB (97612162 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c7380a5886e9d0ecee16923e1614bc3739557ec6d1d35d4691fd9ba17e96acc4`
-	Default Command: `[".\/LS.sh","run"]`

```dockerfile
# Sat, 11 May 2019 00:07:03 GMT
ADD file:a86aea1f3a7d68f6ae03397b99ea77f2e9ee901c5c59e59f76f93adbb4035913 in / 
# Sat, 11 May 2019 00:07:03 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 01:32:11 GMT
ENV LANG=C.UTF-8
# Sat, 11 May 2019 01:32:12 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 11 May 2019 01:32:31 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Sat, 11 May 2019 01:32:32 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Sat, 11 May 2019 01:32:32 GMT
ENV JAVA_VERSION=8u212
# Sat, 11 May 2019 01:32:32 GMT
ENV JAVA_ALPINE_VERSION=8.212.04-r0
# Sat, 11 May 2019 01:32:36 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Sat, 11 May 2019 04:19:28 GMT
LABEL maintainer=Lightstreamer Server Development Team <support@lightstreamer.com>
# Sat, 11 May 2019 04:19:28 GMT
ENV LIGHTSTREAMER_VERSION=7_0_3_20190107
# Sat, 11 May 2019 04:19:28 GMT
ENV LIGHTSTREAMER_URL_DOWNLOAD=http://www.lightstreamer.com/repo/distros/Lightstreamer_7_0_3_20190107.tar.gz
# Sat, 11 May 2019 04:19:28 GMT
WORKDIR /lightstreamer
# Sat, 11 May 2019 04:19:40 GMT
RUN set -ex;         apk add --no-cache --virtual .deps                    gnupg                    tar                    curl         && gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys 9B90BFD14309C7DA5EF58D7D4A8C08966F29B4D2         &&  set -ex;                curl -fSL -o Lightstreamer.tar.gz ${LIGHTSTREAMER_URL_DOWNLOAD}                && curl -fSL -o Lightstreamer.tar.gz.asc ${LIGHTSTREAMER_URL_DOWNLOAD}.asc                && gpg --batch --verify Lightstreamer.tar.gz.asc Lightstreamer.tar.gz                && tar -xvf Lightstreamer.tar.gz --strip-components=1                && sed -i -- 's/\/usr\/jdk1.8.0/$JAVA_HOME/' bin/unix-like/LS.sh                && sed -i -e '164,$s/<appender-ref ref="LSConsole" \/>/<!--<appender-ref ref="LSConsole" \/>-->/'                          -e '116,$s/<appender-ref ref="LSDailyRolling" \/>/<appender-ref ref="LSConsole" \/>/'                          -e '/<!--<appender-ref ref="LSConsole" \/>-->/ d' conf/lightstreamer_log_conf.xml                && apk del .deps                && rm Lightstreamer.tar.gz Lightstreamer.tar.gz.asc
# Sat, 11 May 2019 04:19:40 GMT
EXPOSE 8080
# Sat, 11 May 2019 04:19:41 GMT
WORKDIR /lightstreamer/bin/unix-like
# Sat, 11 May 2019 04:19:41 GMT
CMD ["./LS.sh" "run"]
```

-	Layers:
	-	`sha256:e7c96db7181be991f19a9fb6975cdbbd73c65f4a2681348e63a141a2192a5f10`  
		Last Modified: Sat, 11 May 2019 00:07:31 GMT  
		Size: 2.8 MB (2757034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f910a506b6cb1dbec766725d70356f695ae2bf2bea6224dbe8c7c6ad4f3664a2`  
		Last Modified: Sat, 11 May 2019 01:36:58 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6abafe80f63b02535fc111df2ed6b3c728469679ab654e03e482b6f347c9639`  
		Last Modified: Sat, 11 May 2019 01:37:30 GMT  
		Size: 54.9 MB (54935634 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5cf264f2bb4e097a545c6bce790e986bbe3b814f686213e74f80341a38419f2`  
		Last Modified: Sat, 11 May 2019 04:19:58 GMT  
		Size: 102.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4d74a7da598dc91cdf3f3cab30cec9eea97ea7d3100398b4df193711cb34acf`  
		Last Modified: Sat, 11 May 2019 04:20:01 GMT  
		Size: 39.9 MB (39919154 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `lightstreamer:7.0-alpine` - linux; arm64 variant v8

```console
$ docker pull lightstreamer@sha256:cb5a3e2dc1cec0425cc6498de8dac480eb0113771a3fa58c3162fe2ee814385b
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **97.6 MB (97550989 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:591583f7d45ad5e50bc605da1b7ed1bd89ee18f53ebe6e27fbb29ebbb2d9489b`
-	Default Command: `[".\/LS.sh","run"]`

```dockerfile
# Sat, 11 May 2019 08:43:24 GMT
ADD file:66f49017dd7ba295602526dbf210046e47fd097298c17a3f268a47487b5b6379 in / 
# Sat, 11 May 2019 08:43:25 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 09:18:27 GMT
ENV LANG=C.UTF-8
# Sat, 11 May 2019 09:18:29 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 11 May 2019 09:18:55 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Sat, 11 May 2019 09:18:56 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Sat, 11 May 2019 09:18:56 GMT
ENV JAVA_VERSION=8u212
# Sat, 11 May 2019 09:18:57 GMT
ENV JAVA_ALPINE_VERSION=8.212.04-r0
# Sat, 11 May 2019 09:19:04 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Sat, 11 May 2019 17:00:04 GMT
LABEL maintainer=Lightstreamer Server Development Team <support@lightstreamer.com>
# Sat, 11 May 2019 17:00:04 GMT
ENV LIGHTSTREAMER_VERSION=7_0_3_20190107
# Sat, 11 May 2019 17:00:05 GMT
ENV LIGHTSTREAMER_URL_DOWNLOAD=http://www.lightstreamer.com/repo/distros/Lightstreamer_7_0_3_20190107.tar.gz
# Sat, 11 May 2019 17:00:06 GMT
WORKDIR /lightstreamer
# Sat, 11 May 2019 17:00:19 GMT
RUN set -ex;         apk add --no-cache --virtual .deps                    gnupg                    tar                    curl         && gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys 9B90BFD14309C7DA5EF58D7D4A8C08966F29B4D2         &&  set -ex;                curl -fSL -o Lightstreamer.tar.gz ${LIGHTSTREAMER_URL_DOWNLOAD}                && curl -fSL -o Lightstreamer.tar.gz.asc ${LIGHTSTREAMER_URL_DOWNLOAD}.asc                && gpg --batch --verify Lightstreamer.tar.gz.asc Lightstreamer.tar.gz                && tar -xvf Lightstreamer.tar.gz --strip-components=1                && sed -i -- 's/\/usr\/jdk1.8.0/$JAVA_HOME/' bin/unix-like/LS.sh                && sed -i -e '164,$s/<appender-ref ref="LSConsole" \/>/<!--<appender-ref ref="LSConsole" \/>-->/'                          -e '116,$s/<appender-ref ref="LSDailyRolling" \/>/<appender-ref ref="LSConsole" \/>/'                          -e '/<!--<appender-ref ref="LSConsole" \/>-->/ d' conf/lightstreamer_log_conf.xml                && apk del .deps                && rm Lightstreamer.tar.gz Lightstreamer.tar.gz.asc
# Sat, 11 May 2019 17:00:20 GMT
EXPOSE 8080
# Sat, 11 May 2019 17:00:20 GMT
WORKDIR /lightstreamer/bin/unix-like
# Sat, 11 May 2019 17:00:21 GMT
CMD ["./LS.sh" "run"]
```

-	Layers:
	-	`sha256:0362ad1dd800a9d92f8982fa28f173f9120266153830f990f7486f44b068968a`  
		Last Modified: Sat, 11 May 2019 08:44:25 GMT  
		Size: 2.7 MB (2688779 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ca2cc770c6ebbe90978672d360accf2434f83f9f0339ecd592224d794d5e35e`  
		Last Modified: Sat, 11 May 2019 09:21:04 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9072aa1a230005b2e358809d99ea667b32e1404f13e626b9bf5f3f5eb9f8dd1`  
		Last Modified: Sat, 11 May 2019 09:21:55 GMT  
		Size: 54.9 MB (54942530 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a87f58a0d57ca15c9f49e42b3ee84e0c61a5dd8fc9cbaee0bc4b3bb946ab76e1`  
		Last Modified: Sat, 11 May 2019 17:00:53 GMT  
		Size: 102.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ce634123aa5dce21717915ad1bc83ccebd0554ca700c306bc6546476e16cf80`  
		Last Modified: Sat, 11 May 2019 17:01:02 GMT  
		Size: 39.9 MB (39919341 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `lightstreamer:7.0-jre11`

```console
$ docker pull lightstreamer@sha256:64b43b5c4f861dca16d67a0aa1cfcce694b3abe8f5d8e1e57cc03ba95158186e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `lightstreamer:7.0-jre11` - linux; amd64

```console
$ docker pull lightstreamer@sha256:641446274998a2eccd40217a345e1ea8678bc90a9a69d2a171cf3f16e8de48b5
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **232.5 MB (232529301 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ba4bcd5390bfc18621d4beb7770d4cf229edd156c3bbd4e66b2b905efe94e526`
-	Default Command: `[".\/LS.sh","run"]`

```dockerfile
# Wed, 08 May 2019 00:33:09 GMT
ADD file:caf91edab64f988bc24766c58ee66c00311c7c921296b8e5b51d7023422a1485 in / 
# Wed, 08 May 2019 00:33:10 GMT
CMD ["bash"]
# Wed, 08 May 2019 01:40:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 01:40:12 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 08 May 2019 05:05:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 05:05:23 GMT
RUN echo 'deb http://deb.debian.org/debian stretch-backports main' > /etc/apt/sources.list.d/stretch-backports.list
# Wed, 08 May 2019 05:05:23 GMT
ENV LANG=C.UTF-8
# Wed, 08 May 2019 05:05:24 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 08 May 2019 05:05:25 GMT
RUN ln -svT "/usr/lib/jvm/java-11-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 08 May 2019 05:05:25 GMT
ENV JAVA_HOME=/docker-java-home
# Wed, 08 May 2019 05:05:25 GMT
ENV JAVA_VERSION=11.0.3
# Wed, 08 May 2019 05:05:25 GMT
ENV JAVA_DEBIAN_VERSION=11.0.3+1-1~bpo9+1
# Wed, 08 May 2019 05:06:14 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		ln -svT /docker-java-home/bin/java /usr/local/bin/java; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-11-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		rm -v /usr/local/bin/java; 		keytool -importkeystore -srckeystore /etc/ssl/certs/java/cacerts -destkeystore /etc/ssl/certs/java/cacerts.jks -deststoretype JKS -srcstorepass changeit -deststorepass changeit -noprompt; 	mv /etc/ssl/certs/java/cacerts.jks /etc/ssl/certs/java/cacerts; 	/var/lib/dpkg/info/ca-certificates-java.postinst configure; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 08 May 2019 12:28:04 GMT
LABEL maintainer=Lightstreamer Server Development Team <support@lightstreamer.com>
# Wed, 08 May 2019 12:28:07 GMT
RUN gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys 9B90BFD14309C7DA5EF58D7D4A8C08966F29B4D2
# Wed, 08 May 2019 12:28:08 GMT
ENV LIGHTSTREAMER_VERSION=7_0_3_20190107
# Wed, 08 May 2019 12:28:08 GMT
ENV LIGHTSTREAMER_URL_DOWNLOAD=http://www.lightstreamer.com/repo/distros/Lightstreamer_7_0_3_20190107.tar.gz
# Wed, 08 May 2019 12:28:08 GMT
WORKDIR /lightstreamer
# Wed, 08 May 2019 12:28:16 GMT
RUN set -ex;         curl -fSL -o Lightstreamer.tar.gz ${LIGHTSTREAMER_URL_DOWNLOAD}         && curl -fSL -o Lightstreamer.tar.gz.asc ${LIGHTSTREAMER_URL_DOWNLOAD}.asc         && gpg --batch --verify Lightstreamer.tar.gz.asc Lightstreamer.tar.gz         && tar -xvf Lightstreamer.tar.gz --strip-components=1         && sed -i -- 's/\/usr\/jdk1.8.0/$JAVA_HOME/' bin/unix-like/LS.sh         && sed -i -e '164,$s/<appender-ref ref="LSConsole" \/>/<!--<appender-ref ref="LSConsole" \/>-->/'                   -e '116,$s/<appender-ref ref="LSDailyRolling" \/>/<appender-ref ref="LSConsole" \/>/'                   -e '/<!--<appender-ref ref="LSConsole" \/>-->/ d' conf/lightstreamer_log_conf.xml         && rm Lightstreamer.tar.gz Lightstreamer.tar.gz.asc
# Wed, 08 May 2019 12:28:17 GMT
EXPOSE 8080
# Wed, 08 May 2019 12:28:17 GMT
WORKDIR /lightstreamer/bin/unix-like
# Wed, 08 May 2019 12:28:17 GMT
CMD ["./LS.sh" "run"]
```

-	Layers:
	-	`sha256:c5e155d5a1d130a7f8a3e24cee0d9e1349bff13f90ec6a941478e558fde53c14`  
		Last Modified: Wed, 08 May 2019 00:37:42 GMT  
		Size: 45.3 MB (45339314 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:221d80d00ae9675aad24913aacbadfac1ce8b7084f9765a6c0813486082c5c69`  
		Last Modified: Wed, 08 May 2019 01:45:42 GMT  
		Size: 10.8 MB (10784878 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4250b3117dca5e14edc32ebf1366cd54e4cda91f17610b76c504a86917ff8b95`  
		Last Modified: Wed, 08 May 2019 01:45:41 GMT  
		Size: 4.3 MB (4340094 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1370422ab933b954a9eb1084c61cbc809a78cfd4b44b29c7655838be35a89ee`  
		Last Modified: Wed, 08 May 2019 05:28:01 GMT  
		Size: 853.2 KB (853185 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:887ef4b1893c59ebbb466a5f639477e1dec6f0420af812a9d96b5fe032bc8842`  
		Last Modified: Wed, 08 May 2019 05:28:01 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5815d21e2da849018c85fac6b991965cbebdb3d4bf75e685159eb7baa8b0ff5`  
		Last Modified: Wed, 08 May 2019 05:28:01 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bca5be5493ced138104ab694f97ee1678173e82fc9c10d928836a3eedf7b8ef2`  
		Last Modified: Wed, 08 May 2019 05:28:01 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:852fbda3c856796ea1b7f725175d646daba0a68806eff95f7aa8cb4b890e3b83`  
		Last Modified: Wed, 08 May 2019 05:28:35 GMT  
		Size: 131.3 MB (131329458 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e59affe89ecf38110547e6624671cec104cd92cf73e8a60fa98915a17168b252`  
		Last Modified: Wed, 08 May 2019 12:29:31 GMT  
		Size: 2.0 KB (2011 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de79cc96d847c4f955ea77a10a43bb66b59b22ddd085a104e355cf6ab745f7f0`  
		Last Modified: Wed, 08 May 2019 12:29:31 GMT  
		Size: 102.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c342dec1fd5126e89e2ffc507a8a7779fe0e14825850bd92b9b1eb56d676e194`  
		Last Modified: Wed, 08 May 2019 12:29:37 GMT  
		Size: 39.9 MB (39879659 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `lightstreamer:7.0-jre11` - linux; arm64 variant v8

```console
$ docker pull lightstreamer@sha256:5ca26d79785d678b30de71e8999e6016903ac0dd8c200e80af668d6b19e4e0d0
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **219.6 MB (219594374 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:17975e9464ca44bd81964ff7a68ece919c9399383d2f8665a9285f2a68aae6a0`
-	Default Command: `[".\/LS.sh","run"]`

```dockerfile
# Wed, 08 May 2019 08:48:25 GMT
ADD file:153045f4fe6532d8c2ff273bb249a7a3a4cba913c26a4103ba5ddce1af02c1e5 in / 
# Wed, 08 May 2019 08:48:26 GMT
CMD ["bash"]
# Wed, 08 May 2019 11:51:12 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 11:51:50 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 08 May 2019 16:06:35 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 16:06:37 GMT
RUN echo 'deb http://deb.debian.org/debian stretch-backports main' > /etc/apt/sources.list.d/stretch-backports.list
# Wed, 08 May 2019 16:06:38 GMT
ENV LANG=C.UTF-8
# Wed, 08 May 2019 16:06:40 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 08 May 2019 16:06:43 GMT
RUN ln -svT "/usr/lib/jvm/java-11-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 08 May 2019 16:06:44 GMT
ENV JAVA_HOME=/docker-java-home
# Wed, 08 May 2019 16:06:44 GMT
ENV JAVA_VERSION=11.0.3
# Wed, 08 May 2019 16:06:45 GMT
ENV JAVA_DEBIAN_VERSION=11.0.3+1-1~bpo9+1
# Wed, 08 May 2019 16:11:14 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		ln -svT /docker-java-home/bin/java /usr/local/bin/java; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-11-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		rm -v /usr/local/bin/java; 		keytool -importkeystore -srckeystore /etc/ssl/certs/java/cacerts -destkeystore /etc/ssl/certs/java/cacerts.jks -deststoretype JKS -srcstorepass changeit -deststorepass changeit -noprompt; 	mv /etc/ssl/certs/java/cacerts.jks /etc/ssl/certs/java/cacerts; 	/var/lib/dpkg/info/ca-certificates-java.postinst configure; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Thu, 09 May 2019 07:15:41 GMT
LABEL maintainer=Lightstreamer Server Development Team <support@lightstreamer.com>
# Thu, 09 May 2019 07:15:46 GMT
RUN gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys 9B90BFD14309C7DA5EF58D7D4A8C08966F29B4D2
# Thu, 09 May 2019 07:15:47 GMT
ENV LIGHTSTREAMER_VERSION=7_0_3_20190107
# Thu, 09 May 2019 07:15:48 GMT
ENV LIGHTSTREAMER_URL_DOWNLOAD=http://www.lightstreamer.com/repo/distros/Lightstreamer_7_0_3_20190107.tar.gz
# Thu, 09 May 2019 07:15:49 GMT
WORKDIR /lightstreamer
# Thu, 09 May 2019 07:16:01 GMT
RUN set -ex;         curl -fSL -o Lightstreamer.tar.gz ${LIGHTSTREAMER_URL_DOWNLOAD}         && curl -fSL -o Lightstreamer.tar.gz.asc ${LIGHTSTREAMER_URL_DOWNLOAD}.asc         && gpg --batch --verify Lightstreamer.tar.gz.asc Lightstreamer.tar.gz         && tar -xvf Lightstreamer.tar.gz --strip-components=1         && sed -i -- 's/\/usr\/jdk1.8.0/$JAVA_HOME/' bin/unix-like/LS.sh         && sed -i -e '164,$s/<appender-ref ref="LSConsole" \/>/<!--<appender-ref ref="LSConsole" \/>-->/'                   -e '116,$s/<appender-ref ref="LSDailyRolling" \/>/<appender-ref ref="LSConsole" \/>/'                   -e '/<!--<appender-ref ref="LSConsole" \/>-->/ d' conf/lightstreamer_log_conf.xml         && rm Lightstreamer.tar.gz Lightstreamer.tar.gz.asc
# Thu, 09 May 2019 07:16:03 GMT
EXPOSE 8080
# Thu, 09 May 2019 07:16:04 GMT
WORKDIR /lightstreamer/bin/unix-like
# Thu, 09 May 2019 07:16:04 GMT
CMD ["./LS.sh" "run"]
```

-	Layers:
	-	`sha256:5894e28291972e44f5c3eba2779a85979bae6f95ed4f3e43ea5c98a132f06c48`  
		Last Modified: Wed, 08 May 2019 08:54:43 GMT  
		Size: 43.1 MB (43141955 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a8e6888cee6fef7c223eeaf2ca4c51bc0c21b4631971f416eb6a529a05e96cb`  
		Last Modified: Wed, 08 May 2019 12:07:05 GMT  
		Size: 9.7 MB (9733078 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8bf90e854779f4c5edab378626d847fd0ab7aa9441b63a7db31a7db55d2b255b`  
		Last Modified: Wed, 08 May 2019 12:07:03 GMT  
		Size: 4.1 MB (4094187 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:266e07372d3cf38feb8825ddae8cb9f335282ad809bba6aeaac01c34a13b9394`  
		Last Modified: Wed, 08 May 2019 16:31:36 GMT  
		Size: 839.5 KB (839462 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33620d64e6d1b0246724757776edb615dc49afd758f8173998353070b31a27c7`  
		Last Modified: Wed, 08 May 2019 16:31:36 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a76d1d13c2cdf744d3639f9807db1ee1b921ae954abf02315f64031068f6b01`  
		Last Modified: Wed, 08 May 2019 16:31:35 GMT  
		Size: 246.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7149891f17ac733bc8744c0d2c116737d9cd43460d2da579963d669cd3e48f98`  
		Last Modified: Wed, 08 May 2019 16:31:36 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed630e01fd86e330bd89d5ab7d00b0a051051da858ec14d7289213a615c49896`  
		Last Modified: Wed, 08 May 2019 16:32:15 GMT  
		Size: 121.9 MB (121903240 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a43414214a5cd6f8cdc9842eeda5504a72776544ddcdd680d47e2ac24378eb32`  
		Last Modified: Thu, 09 May 2019 07:17:35 GMT  
		Size: 2.0 KB (2013 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ec2d975510b0407fb9bf3a188ff2d32074e6fa5da44c58a5a8a137abbeeb655`  
		Last Modified: Thu, 09 May 2019 07:17:35 GMT  
		Size: 102.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17d76be6881ad4f5017fb8fb91b27eef17d379a61aa900aa80c4ba7428051ab6`  
		Last Modified: Thu, 09 May 2019 07:17:43 GMT  
		Size: 39.9 MB (39879735 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `lightstreamer:7.0-jre8`

```console
$ docker pull lightstreamer@sha256:fc835d862771bd73cd88a83457d00c5ab50aea2f15eac7fac36ab83b1eaeb9f7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `lightstreamer:7.0-jre8` - linux; amd64

```console
$ docker pull lightstreamer@sha256:b2a6f34343733be8abba1f40b6ce797e6004b3561f5717b692dccd29dd1f03b2
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **145.6 MB (145582559 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0f76f83eb1665e187036629662a6c8b06a46d254a420d6272bad2b0dc03e5359`
-	Default Command: `[".\/LS.sh","run"]`

```dockerfile
# Wed, 08 May 2019 00:33:09 GMT
ADD file:caf91edab64f988bc24766c58ee66c00311c7c921296b8e5b51d7023422a1485 in / 
# Wed, 08 May 2019 00:33:10 GMT
CMD ["bash"]
# Wed, 08 May 2019 01:40:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 01:40:12 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 29 May 2019 21:22:25 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 				ca-certificates p11-kit 				fontconfig libfreetype6 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 29 May 2019 21:22:25 GMT
ENV LANG=C.UTF-8
# Wed, 29 May 2019 21:22:26 GMT
ENV JAVA_HOME=/usr/local/openjdk-8
# Wed, 29 May 2019 21:22:26 GMT
ENV PATH=/usr/local/openjdk-8/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 29 May 2019 21:22:26 GMT
RUN { echo '#/bin/sh'; echo 'echo "$JAVA_HOME"'; } > /usr/local/bin/docker-java-home && chmod +x /usr/local/bin/docker-java-home && [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 29 May 2019 21:22:27 GMT
ENV JAVA_VERSION=8u212-b04
# Wed, 29 May 2019 21:22:27 GMT
ENV JAVA_BASE_URL=https://github.com/AdoptOpenJDK/openjdk8-upstream-binaries/releases/download/jdk8u212-b04/OpenJDK8U-jre_
# Wed, 29 May 2019 21:22:27 GMT
ENV JAVA_URL_VERSION=8u212b04
# Wed, 05 Jun 2019 22:26:18 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64) upstreamArch='x64' ;; 		arm64) upstreamArch='aarch64' ;; 		*) echo >&2 "error: unsupported architecture: $dpkgArch" ;; 	esac; 		wget -O openjdk.tgz.asc "${JAVA_BASE_URL}${upstreamArch}_linux_${JAVA_URL_VERSION}.tar.gz.sign"; 	wget -O openjdk.tgz "${JAVA_BASE_URL}${upstreamArch}_linux_${JAVA_URL_VERSION}.tar.gz" --progress=dot:giga; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys CA5F11C6CE22644D42C6AC4492EF8D39DC13168F; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys EAC843EBD3EFDB98CC772FADA5CD6035332FA671; 	gpg --batch --list-sigs --keyid-format 0xLONG CA5F11C6CE22644D42C6AC4492EF8D39DC13168F | grep '0xA5CD6035332FA671' | grep 'Andrew Haley'; 	gpg --batch --verify openjdk.tgz.asc openjdk.tgz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 			{ 		echo '#!/usr/bin/env bash'; 		echo 'set -Eeuo pipefail'; 		echo 'if ! [ -d "$JAVA_HOME" ]; then echo >&2 "error: missing JAVA_HOME environment variable"; exit 1; fi'; 		echo 'cacertsFile=; for f in "$JAVA_HOME/lib/security/cacerts" "$JAVA_HOME/jre/lib/security/cacerts"; do if [ -e "$f" ]; then cacertsFile="$f"; break; fi; done'; 		echo 'if [ -z "$cacertsFile" ] || ! [ -f "$cacertsFile" ]; then echo >&2 "error: failed to find cacerts file in $JAVA_HOME"; exit 1; fi'; 		echo 'trust extract --overwrite --format=java-cacerts --filter=ca-anchors --purpose=server-auth "$cacertsFile"'; 	} > /etc/ca-certificates/update.d/docker-openjdk; 	chmod +x /etc/ca-certificates/update.d/docker-openjdk; 	/etc/ca-certificates/update.d/docker-openjdk; 		find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf; 	ldconfig; 		java -version
# Wed, 05 Jun 2019 23:15:57 GMT
LABEL maintainer=Lightstreamer Server Development Team <support@lightstreamer.com>
# Wed, 05 Jun 2019 23:16:00 GMT
RUN gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys 9B90BFD14309C7DA5EF58D7D4A8C08966F29B4D2
# Wed, 05 Jun 2019 23:16:00 GMT
ENV LIGHTSTREAMER_VERSION=7_0_3_20190107
# Wed, 05 Jun 2019 23:16:00 GMT
ENV LIGHTSTREAMER_URL_DOWNLOAD=http://www.lightstreamer.com/repo/distros/Lightstreamer_7_0_3_20190107.tar.gz
# Wed, 05 Jun 2019 23:16:00 GMT
WORKDIR /lightstreamer
# Wed, 05 Jun 2019 23:16:07 GMT
RUN set -ex;         curl -fSL -o Lightstreamer.tar.gz ${LIGHTSTREAMER_URL_DOWNLOAD}         && curl -fSL -o Lightstreamer.tar.gz.asc ${LIGHTSTREAMER_URL_DOWNLOAD}.asc         && gpg --batch --verify Lightstreamer.tar.gz.asc Lightstreamer.tar.gz         && tar -xvf Lightstreamer.tar.gz --strip-components=1         && sed -i -- 's/\/usr\/jdk1.8.0/$JAVA_HOME/' bin/unix-like/LS.sh         && sed -i -e '164,$s/<appender-ref ref="LSConsole" \/>/<!--<appender-ref ref="LSConsole" \/>-->/'                   -e '116,$s/<appender-ref ref="LSDailyRolling" \/>/<appender-ref ref="LSConsole" \/>/'                   -e '/<!--<appender-ref ref="LSConsole" \/>-->/ d' conf/lightstreamer_log_conf.xml         && rm Lightstreamer.tar.gz Lightstreamer.tar.gz.asc
# Wed, 05 Jun 2019 23:16:07 GMT
EXPOSE 8080
# Wed, 05 Jun 2019 23:16:08 GMT
WORKDIR /lightstreamer/bin/unix-like
# Wed, 05 Jun 2019 23:16:08 GMT
CMD ["./LS.sh" "run"]
```

-	Layers:
	-	`sha256:c5e155d5a1d130a7f8a3e24cee0d9e1349bff13f90ec6a941478e558fde53c14`  
		Last Modified: Wed, 08 May 2019 00:37:42 GMT  
		Size: 45.3 MB (45339314 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:221d80d00ae9675aad24913aacbadfac1ce8b7084f9765a6c0813486082c5c69`  
		Last Modified: Wed, 08 May 2019 01:45:42 GMT  
		Size: 10.8 MB (10784878 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4250b3117dca5e14edc32ebf1366cd54e4cda91f17610b76c504a86917ff8b95`  
		Last Modified: Wed, 08 May 2019 01:45:41 GMT  
		Size: 4.3 MB (4340094 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84d5a83c37cab1b4e3581d9738d290681fd8ce13cde68954a5baeef12128e9ae`  
		Last Modified: Wed, 29 May 2019 21:26:37 GMT  
		Size: 5.1 MB (5123210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ca1d40853ad108aee04ac7b66996b467ca6cd20319bd8b11a7965e00e8750fa`  
		Last Modified: Wed, 29 May 2019 21:26:39 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26161197356e5acc9f03bd438a4a5f497fd9a7f9879f88485c01a484988363e0`  
		Last Modified: Wed, 05 Jun 2019 22:28:57 GMT  
		Size: 40.1 MB (40113119 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0446502ccaca0af0361b8540cb0ceca1e712fe0423d0f39610596e415971b187`  
		Last Modified: Wed, 05 Jun 2019 23:16:53 GMT  
		Size: 2.0 KB (2009 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1900f1c9200045d92d761b3c9aedd7ca1b1819bb6927470eab1691a55526dcab`  
		Last Modified: Wed, 05 Jun 2019 23:16:54 GMT  
		Size: 102.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1efb953af2cea5e5ac717ec30aa32486279cc63af360fafaeedc9726edebcd9`  
		Last Modified: Wed, 05 Jun 2019 23:16:57 GMT  
		Size: 39.9 MB (39879611 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `lightstreamer:7.0-jre8` - linux; arm64 variant v8

```console
$ docker pull lightstreamer@sha256:488cccc7ec6229bbb64069e533305bc170b3df7149b262816936e05c3f47a5c1
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **210.8 MB (210768174 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aeb309c19a6beb913268ce35f6009bb04bad380ee007d0ef0ec2f31550005798`
-	Default Command: `[".\/LS.sh","run"]`

```dockerfile
# Wed, 08 May 2019 08:48:25 GMT
ADD file:153045f4fe6532d8c2ff273bb249a7a3a4cba913c26a4103ba5ddce1af02c1e5 in / 
# Wed, 08 May 2019 08:48:26 GMT
CMD ["bash"]
# Wed, 08 May 2019 11:51:12 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 11:51:50 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 08 May 2019 16:06:35 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 16:20:20 GMT
ENV LANG=C.UTF-8
# Wed, 08 May 2019 16:20:22 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 08 May 2019 16:20:24 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 08 May 2019 16:20:25 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Wed, 08 May 2019 16:20:25 GMT
ENV JAVA_VERSION=8u212
# Wed, 08 May 2019 16:20:26 GMT
ENV JAVA_DEBIAN_VERSION=8u212-b01-1~deb9u1
# Wed, 08 May 2019 16:26:07 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Thu, 09 May 2019 07:15:01 GMT
LABEL maintainer=Lightstreamer Server Development Team <support@lightstreamer.com>
# Thu, 09 May 2019 07:15:07 GMT
RUN gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys 9B90BFD14309C7DA5EF58D7D4A8C08966F29B4D2
# Thu, 09 May 2019 07:15:08 GMT
ENV LIGHTSTREAMER_VERSION=7_0_3_20190107
# Thu, 09 May 2019 07:15:10 GMT
ENV LIGHTSTREAMER_URL_DOWNLOAD=http://www.lightstreamer.com/repo/distros/Lightstreamer_7_0_3_20190107.tar.gz
# Thu, 09 May 2019 07:15:13 GMT
WORKDIR /lightstreamer
# Thu, 09 May 2019 07:15:24 GMT
RUN set -ex;         curl -fSL -o Lightstreamer.tar.gz ${LIGHTSTREAMER_URL_DOWNLOAD}         && curl -fSL -o Lightstreamer.tar.gz.asc ${LIGHTSTREAMER_URL_DOWNLOAD}.asc         && gpg --batch --verify Lightstreamer.tar.gz.asc Lightstreamer.tar.gz         && tar -xvf Lightstreamer.tar.gz --strip-components=1         && sed -i -- 's/\/usr\/jdk1.8.0/$JAVA_HOME/' bin/unix-like/LS.sh         && sed -i -e '164,$s/<appender-ref ref="LSConsole" \/>/<!--<appender-ref ref="LSConsole" \/>-->/'                   -e '116,$s/<appender-ref ref="LSDailyRolling" \/>/<appender-ref ref="LSConsole" \/>/'                   -e '/<!--<appender-ref ref="LSConsole" \/>-->/ d' conf/lightstreamer_log_conf.xml         && rm Lightstreamer.tar.gz Lightstreamer.tar.gz.asc
# Thu, 09 May 2019 07:15:26 GMT
EXPOSE 8080
# Thu, 09 May 2019 07:15:27 GMT
WORKDIR /lightstreamer/bin/unix-like
# Thu, 09 May 2019 07:15:28 GMT
CMD ["./LS.sh" "run"]
```

-	Layers:
	-	`sha256:5894e28291972e44f5c3eba2779a85979bae6f95ed4f3e43ea5c98a132f06c48`  
		Last Modified: Wed, 08 May 2019 08:54:43 GMT  
		Size: 43.1 MB (43141955 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a8e6888cee6fef7c223eeaf2ca4c51bc0c21b4631971f416eb6a529a05e96cb`  
		Last Modified: Wed, 08 May 2019 12:07:05 GMT  
		Size: 9.7 MB (9733078 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8bf90e854779f4c5edab378626d847fd0ab7aa9441b63a7db31a7db55d2b255b`  
		Last Modified: Wed, 08 May 2019 12:07:03 GMT  
		Size: 4.1 MB (4094187 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:266e07372d3cf38feb8825ddae8cb9f335282ad809bba6aeaac01c34a13b9394`  
		Last Modified: Wed, 08 May 2019 16:31:36 GMT  
		Size: 839.5 KB (839462 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a659800b4725d142bb026865f3fe7c0783f10d06c59d098da99786f2d1651351`  
		Last Modified: Wed, 08 May 2019 16:35:05 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b72fcad374b58026407e0d656f469140e3725eb1baa7468dfaba55fc642503d`  
		Last Modified: Wed, 08 May 2019 16:35:05 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f06f957e19b2a1bce1a9143c3ec174bda06b3a5d74ef7122a0b81a3a730deae6`  
		Last Modified: Wed, 08 May 2019 16:35:55 GMT  
		Size: 113.1 MB (113077224 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1ad3961ffaef0e5f9fe23f1e55354dda861fb6cb680fff69b3bef16b4e61a57`  
		Last Modified: Thu, 09 May 2019 07:17:12 GMT  
		Size: 2.0 KB (2018 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2da940e22f36a8c65117e0c1536fe5f85b63a2a89b4c20f2b4f8f4b04516d9b2`  
		Last Modified: Thu, 09 May 2019 07:17:13 GMT  
		Size: 102.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dda4c5f7e724f39285913e123c44a97b7c2a2cd2b61c306b85ca7c2f5fb421b6`  
		Last Modified: Thu, 09 May 2019 07:17:21 GMT  
		Size: 39.9 MB (39879770 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `lightstreamer:7.0-jre8-alpine`

```console
$ docker pull lightstreamer@sha256:723fc37fd9d02c8230fe35eda696670a9b36403d6655e312e2e0fbca9b92df23
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `lightstreamer:7.0-jre8-alpine` - linux; amd64

```console
$ docker pull lightstreamer@sha256:aabfd6167e76fc3254b9f7dcbabc22690914c1f94003f7483b8810dbb5adf6db
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **97.6 MB (97612162 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c7380a5886e9d0ecee16923e1614bc3739557ec6d1d35d4691fd9ba17e96acc4`
-	Default Command: `[".\/LS.sh","run"]`

```dockerfile
# Sat, 11 May 2019 00:07:03 GMT
ADD file:a86aea1f3a7d68f6ae03397b99ea77f2e9ee901c5c59e59f76f93adbb4035913 in / 
# Sat, 11 May 2019 00:07:03 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 01:32:11 GMT
ENV LANG=C.UTF-8
# Sat, 11 May 2019 01:32:12 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 11 May 2019 01:32:31 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Sat, 11 May 2019 01:32:32 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Sat, 11 May 2019 01:32:32 GMT
ENV JAVA_VERSION=8u212
# Sat, 11 May 2019 01:32:32 GMT
ENV JAVA_ALPINE_VERSION=8.212.04-r0
# Sat, 11 May 2019 01:32:36 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Sat, 11 May 2019 04:19:28 GMT
LABEL maintainer=Lightstreamer Server Development Team <support@lightstreamer.com>
# Sat, 11 May 2019 04:19:28 GMT
ENV LIGHTSTREAMER_VERSION=7_0_3_20190107
# Sat, 11 May 2019 04:19:28 GMT
ENV LIGHTSTREAMER_URL_DOWNLOAD=http://www.lightstreamer.com/repo/distros/Lightstreamer_7_0_3_20190107.tar.gz
# Sat, 11 May 2019 04:19:28 GMT
WORKDIR /lightstreamer
# Sat, 11 May 2019 04:19:40 GMT
RUN set -ex;         apk add --no-cache --virtual .deps                    gnupg                    tar                    curl         && gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys 9B90BFD14309C7DA5EF58D7D4A8C08966F29B4D2         &&  set -ex;                curl -fSL -o Lightstreamer.tar.gz ${LIGHTSTREAMER_URL_DOWNLOAD}                && curl -fSL -o Lightstreamer.tar.gz.asc ${LIGHTSTREAMER_URL_DOWNLOAD}.asc                && gpg --batch --verify Lightstreamer.tar.gz.asc Lightstreamer.tar.gz                && tar -xvf Lightstreamer.tar.gz --strip-components=1                && sed -i -- 's/\/usr\/jdk1.8.0/$JAVA_HOME/' bin/unix-like/LS.sh                && sed -i -e '164,$s/<appender-ref ref="LSConsole" \/>/<!--<appender-ref ref="LSConsole" \/>-->/'                          -e '116,$s/<appender-ref ref="LSDailyRolling" \/>/<appender-ref ref="LSConsole" \/>/'                          -e '/<!--<appender-ref ref="LSConsole" \/>-->/ d' conf/lightstreamer_log_conf.xml                && apk del .deps                && rm Lightstreamer.tar.gz Lightstreamer.tar.gz.asc
# Sat, 11 May 2019 04:19:40 GMT
EXPOSE 8080
# Sat, 11 May 2019 04:19:41 GMT
WORKDIR /lightstreamer/bin/unix-like
# Sat, 11 May 2019 04:19:41 GMT
CMD ["./LS.sh" "run"]
```

-	Layers:
	-	`sha256:e7c96db7181be991f19a9fb6975cdbbd73c65f4a2681348e63a141a2192a5f10`  
		Last Modified: Sat, 11 May 2019 00:07:31 GMT  
		Size: 2.8 MB (2757034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f910a506b6cb1dbec766725d70356f695ae2bf2bea6224dbe8c7c6ad4f3664a2`  
		Last Modified: Sat, 11 May 2019 01:36:58 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6abafe80f63b02535fc111df2ed6b3c728469679ab654e03e482b6f347c9639`  
		Last Modified: Sat, 11 May 2019 01:37:30 GMT  
		Size: 54.9 MB (54935634 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5cf264f2bb4e097a545c6bce790e986bbe3b814f686213e74f80341a38419f2`  
		Last Modified: Sat, 11 May 2019 04:19:58 GMT  
		Size: 102.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4d74a7da598dc91cdf3f3cab30cec9eea97ea7d3100398b4df193711cb34acf`  
		Last Modified: Sat, 11 May 2019 04:20:01 GMT  
		Size: 39.9 MB (39919154 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `lightstreamer:7.0-jre8-alpine` - linux; arm64 variant v8

```console
$ docker pull lightstreamer@sha256:cb5a3e2dc1cec0425cc6498de8dac480eb0113771a3fa58c3162fe2ee814385b
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **97.6 MB (97550989 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:591583f7d45ad5e50bc605da1b7ed1bd89ee18f53ebe6e27fbb29ebbb2d9489b`
-	Default Command: `[".\/LS.sh","run"]`

```dockerfile
# Sat, 11 May 2019 08:43:24 GMT
ADD file:66f49017dd7ba295602526dbf210046e47fd097298c17a3f268a47487b5b6379 in / 
# Sat, 11 May 2019 08:43:25 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 09:18:27 GMT
ENV LANG=C.UTF-8
# Sat, 11 May 2019 09:18:29 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 11 May 2019 09:18:55 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Sat, 11 May 2019 09:18:56 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Sat, 11 May 2019 09:18:56 GMT
ENV JAVA_VERSION=8u212
# Sat, 11 May 2019 09:18:57 GMT
ENV JAVA_ALPINE_VERSION=8.212.04-r0
# Sat, 11 May 2019 09:19:04 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Sat, 11 May 2019 17:00:04 GMT
LABEL maintainer=Lightstreamer Server Development Team <support@lightstreamer.com>
# Sat, 11 May 2019 17:00:04 GMT
ENV LIGHTSTREAMER_VERSION=7_0_3_20190107
# Sat, 11 May 2019 17:00:05 GMT
ENV LIGHTSTREAMER_URL_DOWNLOAD=http://www.lightstreamer.com/repo/distros/Lightstreamer_7_0_3_20190107.tar.gz
# Sat, 11 May 2019 17:00:06 GMT
WORKDIR /lightstreamer
# Sat, 11 May 2019 17:00:19 GMT
RUN set -ex;         apk add --no-cache --virtual .deps                    gnupg                    tar                    curl         && gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys 9B90BFD14309C7DA5EF58D7D4A8C08966F29B4D2         &&  set -ex;                curl -fSL -o Lightstreamer.tar.gz ${LIGHTSTREAMER_URL_DOWNLOAD}                && curl -fSL -o Lightstreamer.tar.gz.asc ${LIGHTSTREAMER_URL_DOWNLOAD}.asc                && gpg --batch --verify Lightstreamer.tar.gz.asc Lightstreamer.tar.gz                && tar -xvf Lightstreamer.tar.gz --strip-components=1                && sed -i -- 's/\/usr\/jdk1.8.0/$JAVA_HOME/' bin/unix-like/LS.sh                && sed -i -e '164,$s/<appender-ref ref="LSConsole" \/>/<!--<appender-ref ref="LSConsole" \/>-->/'                          -e '116,$s/<appender-ref ref="LSDailyRolling" \/>/<appender-ref ref="LSConsole" \/>/'                          -e '/<!--<appender-ref ref="LSConsole" \/>-->/ d' conf/lightstreamer_log_conf.xml                && apk del .deps                && rm Lightstreamer.tar.gz Lightstreamer.tar.gz.asc
# Sat, 11 May 2019 17:00:20 GMT
EXPOSE 8080
# Sat, 11 May 2019 17:00:20 GMT
WORKDIR /lightstreamer/bin/unix-like
# Sat, 11 May 2019 17:00:21 GMT
CMD ["./LS.sh" "run"]
```

-	Layers:
	-	`sha256:0362ad1dd800a9d92f8982fa28f173f9120266153830f990f7486f44b068968a`  
		Last Modified: Sat, 11 May 2019 08:44:25 GMT  
		Size: 2.7 MB (2688779 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ca2cc770c6ebbe90978672d360accf2434f83f9f0339ecd592224d794d5e35e`  
		Last Modified: Sat, 11 May 2019 09:21:04 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9072aa1a230005b2e358809d99ea667b32e1404f13e626b9bf5f3f5eb9f8dd1`  
		Last Modified: Sat, 11 May 2019 09:21:55 GMT  
		Size: 54.9 MB (54942530 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a87f58a0d57ca15c9f49e42b3ee84e0c61a5dd8fc9cbaee0bc4b3bb946ab76e1`  
		Last Modified: Sat, 11 May 2019 17:00:53 GMT  
		Size: 102.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ce634123aa5dce21717915ad1bc83ccebd0554ca700c306bc6546476e16cf80`  
		Last Modified: Sat, 11 May 2019 17:01:02 GMT  
		Size: 39.9 MB (39919341 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `lightstreamer:7-alpine`

```console
$ docker pull lightstreamer@sha256:723fc37fd9d02c8230fe35eda696670a9b36403d6655e312e2e0fbca9b92df23
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `lightstreamer:7-alpine` - linux; amd64

```console
$ docker pull lightstreamer@sha256:aabfd6167e76fc3254b9f7dcbabc22690914c1f94003f7483b8810dbb5adf6db
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **97.6 MB (97612162 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c7380a5886e9d0ecee16923e1614bc3739557ec6d1d35d4691fd9ba17e96acc4`
-	Default Command: `[".\/LS.sh","run"]`

```dockerfile
# Sat, 11 May 2019 00:07:03 GMT
ADD file:a86aea1f3a7d68f6ae03397b99ea77f2e9ee901c5c59e59f76f93adbb4035913 in / 
# Sat, 11 May 2019 00:07:03 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 01:32:11 GMT
ENV LANG=C.UTF-8
# Sat, 11 May 2019 01:32:12 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 11 May 2019 01:32:31 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Sat, 11 May 2019 01:32:32 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Sat, 11 May 2019 01:32:32 GMT
ENV JAVA_VERSION=8u212
# Sat, 11 May 2019 01:32:32 GMT
ENV JAVA_ALPINE_VERSION=8.212.04-r0
# Sat, 11 May 2019 01:32:36 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Sat, 11 May 2019 04:19:28 GMT
LABEL maintainer=Lightstreamer Server Development Team <support@lightstreamer.com>
# Sat, 11 May 2019 04:19:28 GMT
ENV LIGHTSTREAMER_VERSION=7_0_3_20190107
# Sat, 11 May 2019 04:19:28 GMT
ENV LIGHTSTREAMER_URL_DOWNLOAD=http://www.lightstreamer.com/repo/distros/Lightstreamer_7_0_3_20190107.tar.gz
# Sat, 11 May 2019 04:19:28 GMT
WORKDIR /lightstreamer
# Sat, 11 May 2019 04:19:40 GMT
RUN set -ex;         apk add --no-cache --virtual .deps                    gnupg                    tar                    curl         && gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys 9B90BFD14309C7DA5EF58D7D4A8C08966F29B4D2         &&  set -ex;                curl -fSL -o Lightstreamer.tar.gz ${LIGHTSTREAMER_URL_DOWNLOAD}                && curl -fSL -o Lightstreamer.tar.gz.asc ${LIGHTSTREAMER_URL_DOWNLOAD}.asc                && gpg --batch --verify Lightstreamer.tar.gz.asc Lightstreamer.tar.gz                && tar -xvf Lightstreamer.tar.gz --strip-components=1                && sed -i -- 's/\/usr\/jdk1.8.0/$JAVA_HOME/' bin/unix-like/LS.sh                && sed -i -e '164,$s/<appender-ref ref="LSConsole" \/>/<!--<appender-ref ref="LSConsole" \/>-->/'                          -e '116,$s/<appender-ref ref="LSDailyRolling" \/>/<appender-ref ref="LSConsole" \/>/'                          -e '/<!--<appender-ref ref="LSConsole" \/>-->/ d' conf/lightstreamer_log_conf.xml                && apk del .deps                && rm Lightstreamer.tar.gz Lightstreamer.tar.gz.asc
# Sat, 11 May 2019 04:19:40 GMT
EXPOSE 8080
# Sat, 11 May 2019 04:19:41 GMT
WORKDIR /lightstreamer/bin/unix-like
# Sat, 11 May 2019 04:19:41 GMT
CMD ["./LS.sh" "run"]
```

-	Layers:
	-	`sha256:e7c96db7181be991f19a9fb6975cdbbd73c65f4a2681348e63a141a2192a5f10`  
		Last Modified: Sat, 11 May 2019 00:07:31 GMT  
		Size: 2.8 MB (2757034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f910a506b6cb1dbec766725d70356f695ae2bf2bea6224dbe8c7c6ad4f3664a2`  
		Last Modified: Sat, 11 May 2019 01:36:58 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6abafe80f63b02535fc111df2ed6b3c728469679ab654e03e482b6f347c9639`  
		Last Modified: Sat, 11 May 2019 01:37:30 GMT  
		Size: 54.9 MB (54935634 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5cf264f2bb4e097a545c6bce790e986bbe3b814f686213e74f80341a38419f2`  
		Last Modified: Sat, 11 May 2019 04:19:58 GMT  
		Size: 102.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4d74a7da598dc91cdf3f3cab30cec9eea97ea7d3100398b4df193711cb34acf`  
		Last Modified: Sat, 11 May 2019 04:20:01 GMT  
		Size: 39.9 MB (39919154 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `lightstreamer:7-alpine` - linux; arm64 variant v8

```console
$ docker pull lightstreamer@sha256:cb5a3e2dc1cec0425cc6498de8dac480eb0113771a3fa58c3162fe2ee814385b
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **97.6 MB (97550989 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:591583f7d45ad5e50bc605da1b7ed1bd89ee18f53ebe6e27fbb29ebbb2d9489b`
-	Default Command: `[".\/LS.sh","run"]`

```dockerfile
# Sat, 11 May 2019 08:43:24 GMT
ADD file:66f49017dd7ba295602526dbf210046e47fd097298c17a3f268a47487b5b6379 in / 
# Sat, 11 May 2019 08:43:25 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 09:18:27 GMT
ENV LANG=C.UTF-8
# Sat, 11 May 2019 09:18:29 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 11 May 2019 09:18:55 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Sat, 11 May 2019 09:18:56 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Sat, 11 May 2019 09:18:56 GMT
ENV JAVA_VERSION=8u212
# Sat, 11 May 2019 09:18:57 GMT
ENV JAVA_ALPINE_VERSION=8.212.04-r0
# Sat, 11 May 2019 09:19:04 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Sat, 11 May 2019 17:00:04 GMT
LABEL maintainer=Lightstreamer Server Development Team <support@lightstreamer.com>
# Sat, 11 May 2019 17:00:04 GMT
ENV LIGHTSTREAMER_VERSION=7_0_3_20190107
# Sat, 11 May 2019 17:00:05 GMT
ENV LIGHTSTREAMER_URL_DOWNLOAD=http://www.lightstreamer.com/repo/distros/Lightstreamer_7_0_3_20190107.tar.gz
# Sat, 11 May 2019 17:00:06 GMT
WORKDIR /lightstreamer
# Sat, 11 May 2019 17:00:19 GMT
RUN set -ex;         apk add --no-cache --virtual .deps                    gnupg                    tar                    curl         && gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys 9B90BFD14309C7DA5EF58D7D4A8C08966F29B4D2         &&  set -ex;                curl -fSL -o Lightstreamer.tar.gz ${LIGHTSTREAMER_URL_DOWNLOAD}                && curl -fSL -o Lightstreamer.tar.gz.asc ${LIGHTSTREAMER_URL_DOWNLOAD}.asc                && gpg --batch --verify Lightstreamer.tar.gz.asc Lightstreamer.tar.gz                && tar -xvf Lightstreamer.tar.gz --strip-components=1                && sed -i -- 's/\/usr\/jdk1.8.0/$JAVA_HOME/' bin/unix-like/LS.sh                && sed -i -e '164,$s/<appender-ref ref="LSConsole" \/>/<!--<appender-ref ref="LSConsole" \/>-->/'                          -e '116,$s/<appender-ref ref="LSDailyRolling" \/>/<appender-ref ref="LSConsole" \/>/'                          -e '/<!--<appender-ref ref="LSConsole" \/>-->/ d' conf/lightstreamer_log_conf.xml                && apk del .deps                && rm Lightstreamer.tar.gz Lightstreamer.tar.gz.asc
# Sat, 11 May 2019 17:00:20 GMT
EXPOSE 8080
# Sat, 11 May 2019 17:00:20 GMT
WORKDIR /lightstreamer/bin/unix-like
# Sat, 11 May 2019 17:00:21 GMT
CMD ["./LS.sh" "run"]
```

-	Layers:
	-	`sha256:0362ad1dd800a9d92f8982fa28f173f9120266153830f990f7486f44b068968a`  
		Last Modified: Sat, 11 May 2019 08:44:25 GMT  
		Size: 2.7 MB (2688779 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ca2cc770c6ebbe90978672d360accf2434f83f9f0339ecd592224d794d5e35e`  
		Last Modified: Sat, 11 May 2019 09:21:04 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9072aa1a230005b2e358809d99ea667b32e1404f13e626b9bf5f3f5eb9f8dd1`  
		Last Modified: Sat, 11 May 2019 09:21:55 GMT  
		Size: 54.9 MB (54942530 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a87f58a0d57ca15c9f49e42b3ee84e0c61a5dd8fc9cbaee0bc4b3bb946ab76e1`  
		Last Modified: Sat, 11 May 2019 17:00:53 GMT  
		Size: 102.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ce634123aa5dce21717915ad1bc83ccebd0554ca700c306bc6546476e16cf80`  
		Last Modified: Sat, 11 May 2019 17:01:02 GMT  
		Size: 39.9 MB (39919341 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `lightstreamer:7-jre11`

```console
$ docker pull lightstreamer@sha256:64b43b5c4f861dca16d67a0aa1cfcce694b3abe8f5d8e1e57cc03ba95158186e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `lightstreamer:7-jre11` - linux; amd64

```console
$ docker pull lightstreamer@sha256:641446274998a2eccd40217a345e1ea8678bc90a9a69d2a171cf3f16e8de48b5
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **232.5 MB (232529301 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ba4bcd5390bfc18621d4beb7770d4cf229edd156c3bbd4e66b2b905efe94e526`
-	Default Command: `[".\/LS.sh","run"]`

```dockerfile
# Wed, 08 May 2019 00:33:09 GMT
ADD file:caf91edab64f988bc24766c58ee66c00311c7c921296b8e5b51d7023422a1485 in / 
# Wed, 08 May 2019 00:33:10 GMT
CMD ["bash"]
# Wed, 08 May 2019 01:40:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 01:40:12 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 08 May 2019 05:05:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 05:05:23 GMT
RUN echo 'deb http://deb.debian.org/debian stretch-backports main' > /etc/apt/sources.list.d/stretch-backports.list
# Wed, 08 May 2019 05:05:23 GMT
ENV LANG=C.UTF-8
# Wed, 08 May 2019 05:05:24 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 08 May 2019 05:05:25 GMT
RUN ln -svT "/usr/lib/jvm/java-11-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 08 May 2019 05:05:25 GMT
ENV JAVA_HOME=/docker-java-home
# Wed, 08 May 2019 05:05:25 GMT
ENV JAVA_VERSION=11.0.3
# Wed, 08 May 2019 05:05:25 GMT
ENV JAVA_DEBIAN_VERSION=11.0.3+1-1~bpo9+1
# Wed, 08 May 2019 05:06:14 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		ln -svT /docker-java-home/bin/java /usr/local/bin/java; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-11-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		rm -v /usr/local/bin/java; 		keytool -importkeystore -srckeystore /etc/ssl/certs/java/cacerts -destkeystore /etc/ssl/certs/java/cacerts.jks -deststoretype JKS -srcstorepass changeit -deststorepass changeit -noprompt; 	mv /etc/ssl/certs/java/cacerts.jks /etc/ssl/certs/java/cacerts; 	/var/lib/dpkg/info/ca-certificates-java.postinst configure; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 08 May 2019 12:28:04 GMT
LABEL maintainer=Lightstreamer Server Development Team <support@lightstreamer.com>
# Wed, 08 May 2019 12:28:07 GMT
RUN gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys 9B90BFD14309C7DA5EF58D7D4A8C08966F29B4D2
# Wed, 08 May 2019 12:28:08 GMT
ENV LIGHTSTREAMER_VERSION=7_0_3_20190107
# Wed, 08 May 2019 12:28:08 GMT
ENV LIGHTSTREAMER_URL_DOWNLOAD=http://www.lightstreamer.com/repo/distros/Lightstreamer_7_0_3_20190107.tar.gz
# Wed, 08 May 2019 12:28:08 GMT
WORKDIR /lightstreamer
# Wed, 08 May 2019 12:28:16 GMT
RUN set -ex;         curl -fSL -o Lightstreamer.tar.gz ${LIGHTSTREAMER_URL_DOWNLOAD}         && curl -fSL -o Lightstreamer.tar.gz.asc ${LIGHTSTREAMER_URL_DOWNLOAD}.asc         && gpg --batch --verify Lightstreamer.tar.gz.asc Lightstreamer.tar.gz         && tar -xvf Lightstreamer.tar.gz --strip-components=1         && sed -i -- 's/\/usr\/jdk1.8.0/$JAVA_HOME/' bin/unix-like/LS.sh         && sed -i -e '164,$s/<appender-ref ref="LSConsole" \/>/<!--<appender-ref ref="LSConsole" \/>-->/'                   -e '116,$s/<appender-ref ref="LSDailyRolling" \/>/<appender-ref ref="LSConsole" \/>/'                   -e '/<!--<appender-ref ref="LSConsole" \/>-->/ d' conf/lightstreamer_log_conf.xml         && rm Lightstreamer.tar.gz Lightstreamer.tar.gz.asc
# Wed, 08 May 2019 12:28:17 GMT
EXPOSE 8080
# Wed, 08 May 2019 12:28:17 GMT
WORKDIR /lightstreamer/bin/unix-like
# Wed, 08 May 2019 12:28:17 GMT
CMD ["./LS.sh" "run"]
```

-	Layers:
	-	`sha256:c5e155d5a1d130a7f8a3e24cee0d9e1349bff13f90ec6a941478e558fde53c14`  
		Last Modified: Wed, 08 May 2019 00:37:42 GMT  
		Size: 45.3 MB (45339314 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:221d80d00ae9675aad24913aacbadfac1ce8b7084f9765a6c0813486082c5c69`  
		Last Modified: Wed, 08 May 2019 01:45:42 GMT  
		Size: 10.8 MB (10784878 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4250b3117dca5e14edc32ebf1366cd54e4cda91f17610b76c504a86917ff8b95`  
		Last Modified: Wed, 08 May 2019 01:45:41 GMT  
		Size: 4.3 MB (4340094 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1370422ab933b954a9eb1084c61cbc809a78cfd4b44b29c7655838be35a89ee`  
		Last Modified: Wed, 08 May 2019 05:28:01 GMT  
		Size: 853.2 KB (853185 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:887ef4b1893c59ebbb466a5f639477e1dec6f0420af812a9d96b5fe032bc8842`  
		Last Modified: Wed, 08 May 2019 05:28:01 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5815d21e2da849018c85fac6b991965cbebdb3d4bf75e685159eb7baa8b0ff5`  
		Last Modified: Wed, 08 May 2019 05:28:01 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bca5be5493ced138104ab694f97ee1678173e82fc9c10d928836a3eedf7b8ef2`  
		Last Modified: Wed, 08 May 2019 05:28:01 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:852fbda3c856796ea1b7f725175d646daba0a68806eff95f7aa8cb4b890e3b83`  
		Last Modified: Wed, 08 May 2019 05:28:35 GMT  
		Size: 131.3 MB (131329458 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e59affe89ecf38110547e6624671cec104cd92cf73e8a60fa98915a17168b252`  
		Last Modified: Wed, 08 May 2019 12:29:31 GMT  
		Size: 2.0 KB (2011 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de79cc96d847c4f955ea77a10a43bb66b59b22ddd085a104e355cf6ab745f7f0`  
		Last Modified: Wed, 08 May 2019 12:29:31 GMT  
		Size: 102.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c342dec1fd5126e89e2ffc507a8a7779fe0e14825850bd92b9b1eb56d676e194`  
		Last Modified: Wed, 08 May 2019 12:29:37 GMT  
		Size: 39.9 MB (39879659 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `lightstreamer:7-jre11` - linux; arm64 variant v8

```console
$ docker pull lightstreamer@sha256:5ca26d79785d678b30de71e8999e6016903ac0dd8c200e80af668d6b19e4e0d0
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **219.6 MB (219594374 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:17975e9464ca44bd81964ff7a68ece919c9399383d2f8665a9285f2a68aae6a0`
-	Default Command: `[".\/LS.sh","run"]`

```dockerfile
# Wed, 08 May 2019 08:48:25 GMT
ADD file:153045f4fe6532d8c2ff273bb249a7a3a4cba913c26a4103ba5ddce1af02c1e5 in / 
# Wed, 08 May 2019 08:48:26 GMT
CMD ["bash"]
# Wed, 08 May 2019 11:51:12 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 11:51:50 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 08 May 2019 16:06:35 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 16:06:37 GMT
RUN echo 'deb http://deb.debian.org/debian stretch-backports main' > /etc/apt/sources.list.d/stretch-backports.list
# Wed, 08 May 2019 16:06:38 GMT
ENV LANG=C.UTF-8
# Wed, 08 May 2019 16:06:40 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 08 May 2019 16:06:43 GMT
RUN ln -svT "/usr/lib/jvm/java-11-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 08 May 2019 16:06:44 GMT
ENV JAVA_HOME=/docker-java-home
# Wed, 08 May 2019 16:06:44 GMT
ENV JAVA_VERSION=11.0.3
# Wed, 08 May 2019 16:06:45 GMT
ENV JAVA_DEBIAN_VERSION=11.0.3+1-1~bpo9+1
# Wed, 08 May 2019 16:11:14 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		ln -svT /docker-java-home/bin/java /usr/local/bin/java; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-11-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		rm -v /usr/local/bin/java; 		keytool -importkeystore -srckeystore /etc/ssl/certs/java/cacerts -destkeystore /etc/ssl/certs/java/cacerts.jks -deststoretype JKS -srcstorepass changeit -deststorepass changeit -noprompt; 	mv /etc/ssl/certs/java/cacerts.jks /etc/ssl/certs/java/cacerts; 	/var/lib/dpkg/info/ca-certificates-java.postinst configure; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Thu, 09 May 2019 07:15:41 GMT
LABEL maintainer=Lightstreamer Server Development Team <support@lightstreamer.com>
# Thu, 09 May 2019 07:15:46 GMT
RUN gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys 9B90BFD14309C7DA5EF58D7D4A8C08966F29B4D2
# Thu, 09 May 2019 07:15:47 GMT
ENV LIGHTSTREAMER_VERSION=7_0_3_20190107
# Thu, 09 May 2019 07:15:48 GMT
ENV LIGHTSTREAMER_URL_DOWNLOAD=http://www.lightstreamer.com/repo/distros/Lightstreamer_7_0_3_20190107.tar.gz
# Thu, 09 May 2019 07:15:49 GMT
WORKDIR /lightstreamer
# Thu, 09 May 2019 07:16:01 GMT
RUN set -ex;         curl -fSL -o Lightstreamer.tar.gz ${LIGHTSTREAMER_URL_DOWNLOAD}         && curl -fSL -o Lightstreamer.tar.gz.asc ${LIGHTSTREAMER_URL_DOWNLOAD}.asc         && gpg --batch --verify Lightstreamer.tar.gz.asc Lightstreamer.tar.gz         && tar -xvf Lightstreamer.tar.gz --strip-components=1         && sed -i -- 's/\/usr\/jdk1.8.0/$JAVA_HOME/' bin/unix-like/LS.sh         && sed -i -e '164,$s/<appender-ref ref="LSConsole" \/>/<!--<appender-ref ref="LSConsole" \/>-->/'                   -e '116,$s/<appender-ref ref="LSDailyRolling" \/>/<appender-ref ref="LSConsole" \/>/'                   -e '/<!--<appender-ref ref="LSConsole" \/>-->/ d' conf/lightstreamer_log_conf.xml         && rm Lightstreamer.tar.gz Lightstreamer.tar.gz.asc
# Thu, 09 May 2019 07:16:03 GMT
EXPOSE 8080
# Thu, 09 May 2019 07:16:04 GMT
WORKDIR /lightstreamer/bin/unix-like
# Thu, 09 May 2019 07:16:04 GMT
CMD ["./LS.sh" "run"]
```

-	Layers:
	-	`sha256:5894e28291972e44f5c3eba2779a85979bae6f95ed4f3e43ea5c98a132f06c48`  
		Last Modified: Wed, 08 May 2019 08:54:43 GMT  
		Size: 43.1 MB (43141955 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a8e6888cee6fef7c223eeaf2ca4c51bc0c21b4631971f416eb6a529a05e96cb`  
		Last Modified: Wed, 08 May 2019 12:07:05 GMT  
		Size: 9.7 MB (9733078 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8bf90e854779f4c5edab378626d847fd0ab7aa9441b63a7db31a7db55d2b255b`  
		Last Modified: Wed, 08 May 2019 12:07:03 GMT  
		Size: 4.1 MB (4094187 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:266e07372d3cf38feb8825ddae8cb9f335282ad809bba6aeaac01c34a13b9394`  
		Last Modified: Wed, 08 May 2019 16:31:36 GMT  
		Size: 839.5 KB (839462 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33620d64e6d1b0246724757776edb615dc49afd758f8173998353070b31a27c7`  
		Last Modified: Wed, 08 May 2019 16:31:36 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a76d1d13c2cdf744d3639f9807db1ee1b921ae954abf02315f64031068f6b01`  
		Last Modified: Wed, 08 May 2019 16:31:35 GMT  
		Size: 246.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7149891f17ac733bc8744c0d2c116737d9cd43460d2da579963d669cd3e48f98`  
		Last Modified: Wed, 08 May 2019 16:31:36 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed630e01fd86e330bd89d5ab7d00b0a051051da858ec14d7289213a615c49896`  
		Last Modified: Wed, 08 May 2019 16:32:15 GMT  
		Size: 121.9 MB (121903240 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a43414214a5cd6f8cdc9842eeda5504a72776544ddcdd680d47e2ac24378eb32`  
		Last Modified: Thu, 09 May 2019 07:17:35 GMT  
		Size: 2.0 KB (2013 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ec2d975510b0407fb9bf3a188ff2d32074e6fa5da44c58a5a8a137abbeeb655`  
		Last Modified: Thu, 09 May 2019 07:17:35 GMT  
		Size: 102.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17d76be6881ad4f5017fb8fb91b27eef17d379a61aa900aa80c4ba7428051ab6`  
		Last Modified: Thu, 09 May 2019 07:17:43 GMT  
		Size: 39.9 MB (39879735 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `lightstreamer:7-jre8`

```console
$ docker pull lightstreamer@sha256:fc835d862771bd73cd88a83457d00c5ab50aea2f15eac7fac36ab83b1eaeb9f7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `lightstreamer:7-jre8` - linux; amd64

```console
$ docker pull lightstreamer@sha256:b2a6f34343733be8abba1f40b6ce797e6004b3561f5717b692dccd29dd1f03b2
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **145.6 MB (145582559 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0f76f83eb1665e187036629662a6c8b06a46d254a420d6272bad2b0dc03e5359`
-	Default Command: `[".\/LS.sh","run"]`

```dockerfile
# Wed, 08 May 2019 00:33:09 GMT
ADD file:caf91edab64f988bc24766c58ee66c00311c7c921296b8e5b51d7023422a1485 in / 
# Wed, 08 May 2019 00:33:10 GMT
CMD ["bash"]
# Wed, 08 May 2019 01:40:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 01:40:12 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 29 May 2019 21:22:25 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 				ca-certificates p11-kit 				fontconfig libfreetype6 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 29 May 2019 21:22:25 GMT
ENV LANG=C.UTF-8
# Wed, 29 May 2019 21:22:26 GMT
ENV JAVA_HOME=/usr/local/openjdk-8
# Wed, 29 May 2019 21:22:26 GMT
ENV PATH=/usr/local/openjdk-8/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 29 May 2019 21:22:26 GMT
RUN { echo '#/bin/sh'; echo 'echo "$JAVA_HOME"'; } > /usr/local/bin/docker-java-home && chmod +x /usr/local/bin/docker-java-home && [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 29 May 2019 21:22:27 GMT
ENV JAVA_VERSION=8u212-b04
# Wed, 29 May 2019 21:22:27 GMT
ENV JAVA_BASE_URL=https://github.com/AdoptOpenJDK/openjdk8-upstream-binaries/releases/download/jdk8u212-b04/OpenJDK8U-jre_
# Wed, 29 May 2019 21:22:27 GMT
ENV JAVA_URL_VERSION=8u212b04
# Wed, 05 Jun 2019 22:26:18 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64) upstreamArch='x64' ;; 		arm64) upstreamArch='aarch64' ;; 		*) echo >&2 "error: unsupported architecture: $dpkgArch" ;; 	esac; 		wget -O openjdk.tgz.asc "${JAVA_BASE_URL}${upstreamArch}_linux_${JAVA_URL_VERSION}.tar.gz.sign"; 	wget -O openjdk.tgz "${JAVA_BASE_URL}${upstreamArch}_linux_${JAVA_URL_VERSION}.tar.gz" --progress=dot:giga; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys CA5F11C6CE22644D42C6AC4492EF8D39DC13168F; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys EAC843EBD3EFDB98CC772FADA5CD6035332FA671; 	gpg --batch --list-sigs --keyid-format 0xLONG CA5F11C6CE22644D42C6AC4492EF8D39DC13168F | grep '0xA5CD6035332FA671' | grep 'Andrew Haley'; 	gpg --batch --verify openjdk.tgz.asc openjdk.tgz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 			{ 		echo '#!/usr/bin/env bash'; 		echo 'set -Eeuo pipefail'; 		echo 'if ! [ -d "$JAVA_HOME" ]; then echo >&2 "error: missing JAVA_HOME environment variable"; exit 1; fi'; 		echo 'cacertsFile=; for f in "$JAVA_HOME/lib/security/cacerts" "$JAVA_HOME/jre/lib/security/cacerts"; do if [ -e "$f" ]; then cacertsFile="$f"; break; fi; done'; 		echo 'if [ -z "$cacertsFile" ] || ! [ -f "$cacertsFile" ]; then echo >&2 "error: failed to find cacerts file in $JAVA_HOME"; exit 1; fi'; 		echo 'trust extract --overwrite --format=java-cacerts --filter=ca-anchors --purpose=server-auth "$cacertsFile"'; 	} > /etc/ca-certificates/update.d/docker-openjdk; 	chmod +x /etc/ca-certificates/update.d/docker-openjdk; 	/etc/ca-certificates/update.d/docker-openjdk; 		find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf; 	ldconfig; 		java -version
# Wed, 05 Jun 2019 23:15:57 GMT
LABEL maintainer=Lightstreamer Server Development Team <support@lightstreamer.com>
# Wed, 05 Jun 2019 23:16:00 GMT
RUN gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys 9B90BFD14309C7DA5EF58D7D4A8C08966F29B4D2
# Wed, 05 Jun 2019 23:16:00 GMT
ENV LIGHTSTREAMER_VERSION=7_0_3_20190107
# Wed, 05 Jun 2019 23:16:00 GMT
ENV LIGHTSTREAMER_URL_DOWNLOAD=http://www.lightstreamer.com/repo/distros/Lightstreamer_7_0_3_20190107.tar.gz
# Wed, 05 Jun 2019 23:16:00 GMT
WORKDIR /lightstreamer
# Wed, 05 Jun 2019 23:16:07 GMT
RUN set -ex;         curl -fSL -o Lightstreamer.tar.gz ${LIGHTSTREAMER_URL_DOWNLOAD}         && curl -fSL -o Lightstreamer.tar.gz.asc ${LIGHTSTREAMER_URL_DOWNLOAD}.asc         && gpg --batch --verify Lightstreamer.tar.gz.asc Lightstreamer.tar.gz         && tar -xvf Lightstreamer.tar.gz --strip-components=1         && sed -i -- 's/\/usr\/jdk1.8.0/$JAVA_HOME/' bin/unix-like/LS.sh         && sed -i -e '164,$s/<appender-ref ref="LSConsole" \/>/<!--<appender-ref ref="LSConsole" \/>-->/'                   -e '116,$s/<appender-ref ref="LSDailyRolling" \/>/<appender-ref ref="LSConsole" \/>/'                   -e '/<!--<appender-ref ref="LSConsole" \/>-->/ d' conf/lightstreamer_log_conf.xml         && rm Lightstreamer.tar.gz Lightstreamer.tar.gz.asc
# Wed, 05 Jun 2019 23:16:07 GMT
EXPOSE 8080
# Wed, 05 Jun 2019 23:16:08 GMT
WORKDIR /lightstreamer/bin/unix-like
# Wed, 05 Jun 2019 23:16:08 GMT
CMD ["./LS.sh" "run"]
```

-	Layers:
	-	`sha256:c5e155d5a1d130a7f8a3e24cee0d9e1349bff13f90ec6a941478e558fde53c14`  
		Last Modified: Wed, 08 May 2019 00:37:42 GMT  
		Size: 45.3 MB (45339314 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:221d80d00ae9675aad24913aacbadfac1ce8b7084f9765a6c0813486082c5c69`  
		Last Modified: Wed, 08 May 2019 01:45:42 GMT  
		Size: 10.8 MB (10784878 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4250b3117dca5e14edc32ebf1366cd54e4cda91f17610b76c504a86917ff8b95`  
		Last Modified: Wed, 08 May 2019 01:45:41 GMT  
		Size: 4.3 MB (4340094 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84d5a83c37cab1b4e3581d9738d290681fd8ce13cde68954a5baeef12128e9ae`  
		Last Modified: Wed, 29 May 2019 21:26:37 GMT  
		Size: 5.1 MB (5123210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ca1d40853ad108aee04ac7b66996b467ca6cd20319bd8b11a7965e00e8750fa`  
		Last Modified: Wed, 29 May 2019 21:26:39 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26161197356e5acc9f03bd438a4a5f497fd9a7f9879f88485c01a484988363e0`  
		Last Modified: Wed, 05 Jun 2019 22:28:57 GMT  
		Size: 40.1 MB (40113119 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0446502ccaca0af0361b8540cb0ceca1e712fe0423d0f39610596e415971b187`  
		Last Modified: Wed, 05 Jun 2019 23:16:53 GMT  
		Size: 2.0 KB (2009 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1900f1c9200045d92d761b3c9aedd7ca1b1819bb6927470eab1691a55526dcab`  
		Last Modified: Wed, 05 Jun 2019 23:16:54 GMT  
		Size: 102.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1efb953af2cea5e5ac717ec30aa32486279cc63af360fafaeedc9726edebcd9`  
		Last Modified: Wed, 05 Jun 2019 23:16:57 GMT  
		Size: 39.9 MB (39879611 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `lightstreamer:7-jre8` - linux; arm64 variant v8

```console
$ docker pull lightstreamer@sha256:488cccc7ec6229bbb64069e533305bc170b3df7149b262816936e05c3f47a5c1
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **210.8 MB (210768174 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aeb309c19a6beb913268ce35f6009bb04bad380ee007d0ef0ec2f31550005798`
-	Default Command: `[".\/LS.sh","run"]`

```dockerfile
# Wed, 08 May 2019 08:48:25 GMT
ADD file:153045f4fe6532d8c2ff273bb249a7a3a4cba913c26a4103ba5ddce1af02c1e5 in / 
# Wed, 08 May 2019 08:48:26 GMT
CMD ["bash"]
# Wed, 08 May 2019 11:51:12 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 11:51:50 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 08 May 2019 16:06:35 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 16:20:20 GMT
ENV LANG=C.UTF-8
# Wed, 08 May 2019 16:20:22 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 08 May 2019 16:20:24 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 08 May 2019 16:20:25 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Wed, 08 May 2019 16:20:25 GMT
ENV JAVA_VERSION=8u212
# Wed, 08 May 2019 16:20:26 GMT
ENV JAVA_DEBIAN_VERSION=8u212-b01-1~deb9u1
# Wed, 08 May 2019 16:26:07 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Thu, 09 May 2019 07:15:01 GMT
LABEL maintainer=Lightstreamer Server Development Team <support@lightstreamer.com>
# Thu, 09 May 2019 07:15:07 GMT
RUN gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys 9B90BFD14309C7DA5EF58D7D4A8C08966F29B4D2
# Thu, 09 May 2019 07:15:08 GMT
ENV LIGHTSTREAMER_VERSION=7_0_3_20190107
# Thu, 09 May 2019 07:15:10 GMT
ENV LIGHTSTREAMER_URL_DOWNLOAD=http://www.lightstreamer.com/repo/distros/Lightstreamer_7_0_3_20190107.tar.gz
# Thu, 09 May 2019 07:15:13 GMT
WORKDIR /lightstreamer
# Thu, 09 May 2019 07:15:24 GMT
RUN set -ex;         curl -fSL -o Lightstreamer.tar.gz ${LIGHTSTREAMER_URL_DOWNLOAD}         && curl -fSL -o Lightstreamer.tar.gz.asc ${LIGHTSTREAMER_URL_DOWNLOAD}.asc         && gpg --batch --verify Lightstreamer.tar.gz.asc Lightstreamer.tar.gz         && tar -xvf Lightstreamer.tar.gz --strip-components=1         && sed -i -- 's/\/usr\/jdk1.8.0/$JAVA_HOME/' bin/unix-like/LS.sh         && sed -i -e '164,$s/<appender-ref ref="LSConsole" \/>/<!--<appender-ref ref="LSConsole" \/>-->/'                   -e '116,$s/<appender-ref ref="LSDailyRolling" \/>/<appender-ref ref="LSConsole" \/>/'                   -e '/<!--<appender-ref ref="LSConsole" \/>-->/ d' conf/lightstreamer_log_conf.xml         && rm Lightstreamer.tar.gz Lightstreamer.tar.gz.asc
# Thu, 09 May 2019 07:15:26 GMT
EXPOSE 8080
# Thu, 09 May 2019 07:15:27 GMT
WORKDIR /lightstreamer/bin/unix-like
# Thu, 09 May 2019 07:15:28 GMT
CMD ["./LS.sh" "run"]
```

-	Layers:
	-	`sha256:5894e28291972e44f5c3eba2779a85979bae6f95ed4f3e43ea5c98a132f06c48`  
		Last Modified: Wed, 08 May 2019 08:54:43 GMT  
		Size: 43.1 MB (43141955 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a8e6888cee6fef7c223eeaf2ca4c51bc0c21b4631971f416eb6a529a05e96cb`  
		Last Modified: Wed, 08 May 2019 12:07:05 GMT  
		Size: 9.7 MB (9733078 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8bf90e854779f4c5edab378626d847fd0ab7aa9441b63a7db31a7db55d2b255b`  
		Last Modified: Wed, 08 May 2019 12:07:03 GMT  
		Size: 4.1 MB (4094187 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:266e07372d3cf38feb8825ddae8cb9f335282ad809bba6aeaac01c34a13b9394`  
		Last Modified: Wed, 08 May 2019 16:31:36 GMT  
		Size: 839.5 KB (839462 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a659800b4725d142bb026865f3fe7c0783f10d06c59d098da99786f2d1651351`  
		Last Modified: Wed, 08 May 2019 16:35:05 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b72fcad374b58026407e0d656f469140e3725eb1baa7468dfaba55fc642503d`  
		Last Modified: Wed, 08 May 2019 16:35:05 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f06f957e19b2a1bce1a9143c3ec174bda06b3a5d74ef7122a0b81a3a730deae6`  
		Last Modified: Wed, 08 May 2019 16:35:55 GMT  
		Size: 113.1 MB (113077224 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1ad3961ffaef0e5f9fe23f1e55354dda861fb6cb680fff69b3bef16b4e61a57`  
		Last Modified: Thu, 09 May 2019 07:17:12 GMT  
		Size: 2.0 KB (2018 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2da940e22f36a8c65117e0c1536fe5f85b63a2a89b4c20f2b4f8f4b04516d9b2`  
		Last Modified: Thu, 09 May 2019 07:17:13 GMT  
		Size: 102.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dda4c5f7e724f39285913e123c44a97b7c2a2cd2b61c306b85ca7c2f5fb421b6`  
		Last Modified: Thu, 09 May 2019 07:17:21 GMT  
		Size: 39.9 MB (39879770 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `lightstreamer:7-jre8-alpine`

```console
$ docker pull lightstreamer@sha256:723fc37fd9d02c8230fe35eda696670a9b36403d6655e312e2e0fbca9b92df23
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `lightstreamer:7-jre8-alpine` - linux; amd64

```console
$ docker pull lightstreamer@sha256:aabfd6167e76fc3254b9f7dcbabc22690914c1f94003f7483b8810dbb5adf6db
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **97.6 MB (97612162 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c7380a5886e9d0ecee16923e1614bc3739557ec6d1d35d4691fd9ba17e96acc4`
-	Default Command: `[".\/LS.sh","run"]`

```dockerfile
# Sat, 11 May 2019 00:07:03 GMT
ADD file:a86aea1f3a7d68f6ae03397b99ea77f2e9ee901c5c59e59f76f93adbb4035913 in / 
# Sat, 11 May 2019 00:07:03 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 01:32:11 GMT
ENV LANG=C.UTF-8
# Sat, 11 May 2019 01:32:12 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 11 May 2019 01:32:31 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Sat, 11 May 2019 01:32:32 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Sat, 11 May 2019 01:32:32 GMT
ENV JAVA_VERSION=8u212
# Sat, 11 May 2019 01:32:32 GMT
ENV JAVA_ALPINE_VERSION=8.212.04-r0
# Sat, 11 May 2019 01:32:36 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Sat, 11 May 2019 04:19:28 GMT
LABEL maintainer=Lightstreamer Server Development Team <support@lightstreamer.com>
# Sat, 11 May 2019 04:19:28 GMT
ENV LIGHTSTREAMER_VERSION=7_0_3_20190107
# Sat, 11 May 2019 04:19:28 GMT
ENV LIGHTSTREAMER_URL_DOWNLOAD=http://www.lightstreamer.com/repo/distros/Lightstreamer_7_0_3_20190107.tar.gz
# Sat, 11 May 2019 04:19:28 GMT
WORKDIR /lightstreamer
# Sat, 11 May 2019 04:19:40 GMT
RUN set -ex;         apk add --no-cache --virtual .deps                    gnupg                    tar                    curl         && gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys 9B90BFD14309C7DA5EF58D7D4A8C08966F29B4D2         &&  set -ex;                curl -fSL -o Lightstreamer.tar.gz ${LIGHTSTREAMER_URL_DOWNLOAD}                && curl -fSL -o Lightstreamer.tar.gz.asc ${LIGHTSTREAMER_URL_DOWNLOAD}.asc                && gpg --batch --verify Lightstreamer.tar.gz.asc Lightstreamer.tar.gz                && tar -xvf Lightstreamer.tar.gz --strip-components=1                && sed -i -- 's/\/usr\/jdk1.8.0/$JAVA_HOME/' bin/unix-like/LS.sh                && sed -i -e '164,$s/<appender-ref ref="LSConsole" \/>/<!--<appender-ref ref="LSConsole" \/>-->/'                          -e '116,$s/<appender-ref ref="LSDailyRolling" \/>/<appender-ref ref="LSConsole" \/>/'                          -e '/<!--<appender-ref ref="LSConsole" \/>-->/ d' conf/lightstreamer_log_conf.xml                && apk del .deps                && rm Lightstreamer.tar.gz Lightstreamer.tar.gz.asc
# Sat, 11 May 2019 04:19:40 GMT
EXPOSE 8080
# Sat, 11 May 2019 04:19:41 GMT
WORKDIR /lightstreamer/bin/unix-like
# Sat, 11 May 2019 04:19:41 GMT
CMD ["./LS.sh" "run"]
```

-	Layers:
	-	`sha256:e7c96db7181be991f19a9fb6975cdbbd73c65f4a2681348e63a141a2192a5f10`  
		Last Modified: Sat, 11 May 2019 00:07:31 GMT  
		Size: 2.8 MB (2757034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f910a506b6cb1dbec766725d70356f695ae2bf2bea6224dbe8c7c6ad4f3664a2`  
		Last Modified: Sat, 11 May 2019 01:36:58 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6abafe80f63b02535fc111df2ed6b3c728469679ab654e03e482b6f347c9639`  
		Last Modified: Sat, 11 May 2019 01:37:30 GMT  
		Size: 54.9 MB (54935634 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5cf264f2bb4e097a545c6bce790e986bbe3b814f686213e74f80341a38419f2`  
		Last Modified: Sat, 11 May 2019 04:19:58 GMT  
		Size: 102.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4d74a7da598dc91cdf3f3cab30cec9eea97ea7d3100398b4df193711cb34acf`  
		Last Modified: Sat, 11 May 2019 04:20:01 GMT  
		Size: 39.9 MB (39919154 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `lightstreamer:7-jre8-alpine` - linux; arm64 variant v8

```console
$ docker pull lightstreamer@sha256:cb5a3e2dc1cec0425cc6498de8dac480eb0113771a3fa58c3162fe2ee814385b
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **97.6 MB (97550989 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:591583f7d45ad5e50bc605da1b7ed1bd89ee18f53ebe6e27fbb29ebbb2d9489b`
-	Default Command: `[".\/LS.sh","run"]`

```dockerfile
# Sat, 11 May 2019 08:43:24 GMT
ADD file:66f49017dd7ba295602526dbf210046e47fd097298c17a3f268a47487b5b6379 in / 
# Sat, 11 May 2019 08:43:25 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 09:18:27 GMT
ENV LANG=C.UTF-8
# Sat, 11 May 2019 09:18:29 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 11 May 2019 09:18:55 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Sat, 11 May 2019 09:18:56 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Sat, 11 May 2019 09:18:56 GMT
ENV JAVA_VERSION=8u212
# Sat, 11 May 2019 09:18:57 GMT
ENV JAVA_ALPINE_VERSION=8.212.04-r0
# Sat, 11 May 2019 09:19:04 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Sat, 11 May 2019 17:00:04 GMT
LABEL maintainer=Lightstreamer Server Development Team <support@lightstreamer.com>
# Sat, 11 May 2019 17:00:04 GMT
ENV LIGHTSTREAMER_VERSION=7_0_3_20190107
# Sat, 11 May 2019 17:00:05 GMT
ENV LIGHTSTREAMER_URL_DOWNLOAD=http://www.lightstreamer.com/repo/distros/Lightstreamer_7_0_3_20190107.tar.gz
# Sat, 11 May 2019 17:00:06 GMT
WORKDIR /lightstreamer
# Sat, 11 May 2019 17:00:19 GMT
RUN set -ex;         apk add --no-cache --virtual .deps                    gnupg                    tar                    curl         && gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys 9B90BFD14309C7DA5EF58D7D4A8C08966F29B4D2         &&  set -ex;                curl -fSL -o Lightstreamer.tar.gz ${LIGHTSTREAMER_URL_DOWNLOAD}                && curl -fSL -o Lightstreamer.tar.gz.asc ${LIGHTSTREAMER_URL_DOWNLOAD}.asc                && gpg --batch --verify Lightstreamer.tar.gz.asc Lightstreamer.tar.gz                && tar -xvf Lightstreamer.tar.gz --strip-components=1                && sed -i -- 's/\/usr\/jdk1.8.0/$JAVA_HOME/' bin/unix-like/LS.sh                && sed -i -e '164,$s/<appender-ref ref="LSConsole" \/>/<!--<appender-ref ref="LSConsole" \/>-->/'                          -e '116,$s/<appender-ref ref="LSDailyRolling" \/>/<appender-ref ref="LSConsole" \/>/'                          -e '/<!--<appender-ref ref="LSConsole" \/>-->/ d' conf/lightstreamer_log_conf.xml                && apk del .deps                && rm Lightstreamer.tar.gz Lightstreamer.tar.gz.asc
# Sat, 11 May 2019 17:00:20 GMT
EXPOSE 8080
# Sat, 11 May 2019 17:00:20 GMT
WORKDIR /lightstreamer/bin/unix-like
# Sat, 11 May 2019 17:00:21 GMT
CMD ["./LS.sh" "run"]
```

-	Layers:
	-	`sha256:0362ad1dd800a9d92f8982fa28f173f9120266153830f990f7486f44b068968a`  
		Last Modified: Sat, 11 May 2019 08:44:25 GMT  
		Size: 2.7 MB (2688779 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ca2cc770c6ebbe90978672d360accf2434f83f9f0339ecd592224d794d5e35e`  
		Last Modified: Sat, 11 May 2019 09:21:04 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9072aa1a230005b2e358809d99ea667b32e1404f13e626b9bf5f3f5eb9f8dd1`  
		Last Modified: Sat, 11 May 2019 09:21:55 GMT  
		Size: 54.9 MB (54942530 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a87f58a0d57ca15c9f49e42b3ee84e0c61a5dd8fc9cbaee0bc4b3bb946ab76e1`  
		Last Modified: Sat, 11 May 2019 17:00:53 GMT  
		Size: 102.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ce634123aa5dce21717915ad1bc83ccebd0554ca700c306bc6546476e16cf80`  
		Last Modified: Sat, 11 May 2019 17:01:02 GMT  
		Size: 39.9 MB (39919341 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `lightstreamer:latest`

```console
$ docker pull lightstreamer@sha256:64b43b5c4f861dca16d67a0aa1cfcce694b3abe8f5d8e1e57cc03ba95158186e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `lightstreamer:latest` - linux; amd64

```console
$ docker pull lightstreamer@sha256:641446274998a2eccd40217a345e1ea8678bc90a9a69d2a171cf3f16e8de48b5
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **232.5 MB (232529301 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ba4bcd5390bfc18621d4beb7770d4cf229edd156c3bbd4e66b2b905efe94e526`
-	Default Command: `[".\/LS.sh","run"]`

```dockerfile
# Wed, 08 May 2019 00:33:09 GMT
ADD file:caf91edab64f988bc24766c58ee66c00311c7c921296b8e5b51d7023422a1485 in / 
# Wed, 08 May 2019 00:33:10 GMT
CMD ["bash"]
# Wed, 08 May 2019 01:40:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 01:40:12 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 08 May 2019 05:05:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 05:05:23 GMT
RUN echo 'deb http://deb.debian.org/debian stretch-backports main' > /etc/apt/sources.list.d/stretch-backports.list
# Wed, 08 May 2019 05:05:23 GMT
ENV LANG=C.UTF-8
# Wed, 08 May 2019 05:05:24 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 08 May 2019 05:05:25 GMT
RUN ln -svT "/usr/lib/jvm/java-11-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 08 May 2019 05:05:25 GMT
ENV JAVA_HOME=/docker-java-home
# Wed, 08 May 2019 05:05:25 GMT
ENV JAVA_VERSION=11.0.3
# Wed, 08 May 2019 05:05:25 GMT
ENV JAVA_DEBIAN_VERSION=11.0.3+1-1~bpo9+1
# Wed, 08 May 2019 05:06:14 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		ln -svT /docker-java-home/bin/java /usr/local/bin/java; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-11-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		rm -v /usr/local/bin/java; 		keytool -importkeystore -srckeystore /etc/ssl/certs/java/cacerts -destkeystore /etc/ssl/certs/java/cacerts.jks -deststoretype JKS -srcstorepass changeit -deststorepass changeit -noprompt; 	mv /etc/ssl/certs/java/cacerts.jks /etc/ssl/certs/java/cacerts; 	/var/lib/dpkg/info/ca-certificates-java.postinst configure; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 08 May 2019 12:28:04 GMT
LABEL maintainer=Lightstreamer Server Development Team <support@lightstreamer.com>
# Wed, 08 May 2019 12:28:07 GMT
RUN gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys 9B90BFD14309C7DA5EF58D7D4A8C08966F29B4D2
# Wed, 08 May 2019 12:28:08 GMT
ENV LIGHTSTREAMER_VERSION=7_0_3_20190107
# Wed, 08 May 2019 12:28:08 GMT
ENV LIGHTSTREAMER_URL_DOWNLOAD=http://www.lightstreamer.com/repo/distros/Lightstreamer_7_0_3_20190107.tar.gz
# Wed, 08 May 2019 12:28:08 GMT
WORKDIR /lightstreamer
# Wed, 08 May 2019 12:28:16 GMT
RUN set -ex;         curl -fSL -o Lightstreamer.tar.gz ${LIGHTSTREAMER_URL_DOWNLOAD}         && curl -fSL -o Lightstreamer.tar.gz.asc ${LIGHTSTREAMER_URL_DOWNLOAD}.asc         && gpg --batch --verify Lightstreamer.tar.gz.asc Lightstreamer.tar.gz         && tar -xvf Lightstreamer.tar.gz --strip-components=1         && sed -i -- 's/\/usr\/jdk1.8.0/$JAVA_HOME/' bin/unix-like/LS.sh         && sed -i -e '164,$s/<appender-ref ref="LSConsole" \/>/<!--<appender-ref ref="LSConsole" \/>-->/'                   -e '116,$s/<appender-ref ref="LSDailyRolling" \/>/<appender-ref ref="LSConsole" \/>/'                   -e '/<!--<appender-ref ref="LSConsole" \/>-->/ d' conf/lightstreamer_log_conf.xml         && rm Lightstreamer.tar.gz Lightstreamer.tar.gz.asc
# Wed, 08 May 2019 12:28:17 GMT
EXPOSE 8080
# Wed, 08 May 2019 12:28:17 GMT
WORKDIR /lightstreamer/bin/unix-like
# Wed, 08 May 2019 12:28:17 GMT
CMD ["./LS.sh" "run"]
```

-	Layers:
	-	`sha256:c5e155d5a1d130a7f8a3e24cee0d9e1349bff13f90ec6a941478e558fde53c14`  
		Last Modified: Wed, 08 May 2019 00:37:42 GMT  
		Size: 45.3 MB (45339314 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:221d80d00ae9675aad24913aacbadfac1ce8b7084f9765a6c0813486082c5c69`  
		Last Modified: Wed, 08 May 2019 01:45:42 GMT  
		Size: 10.8 MB (10784878 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4250b3117dca5e14edc32ebf1366cd54e4cda91f17610b76c504a86917ff8b95`  
		Last Modified: Wed, 08 May 2019 01:45:41 GMT  
		Size: 4.3 MB (4340094 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1370422ab933b954a9eb1084c61cbc809a78cfd4b44b29c7655838be35a89ee`  
		Last Modified: Wed, 08 May 2019 05:28:01 GMT  
		Size: 853.2 KB (853185 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:887ef4b1893c59ebbb466a5f639477e1dec6f0420af812a9d96b5fe032bc8842`  
		Last Modified: Wed, 08 May 2019 05:28:01 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5815d21e2da849018c85fac6b991965cbebdb3d4bf75e685159eb7baa8b0ff5`  
		Last Modified: Wed, 08 May 2019 05:28:01 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bca5be5493ced138104ab694f97ee1678173e82fc9c10d928836a3eedf7b8ef2`  
		Last Modified: Wed, 08 May 2019 05:28:01 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:852fbda3c856796ea1b7f725175d646daba0a68806eff95f7aa8cb4b890e3b83`  
		Last Modified: Wed, 08 May 2019 05:28:35 GMT  
		Size: 131.3 MB (131329458 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e59affe89ecf38110547e6624671cec104cd92cf73e8a60fa98915a17168b252`  
		Last Modified: Wed, 08 May 2019 12:29:31 GMT  
		Size: 2.0 KB (2011 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de79cc96d847c4f955ea77a10a43bb66b59b22ddd085a104e355cf6ab745f7f0`  
		Last Modified: Wed, 08 May 2019 12:29:31 GMT  
		Size: 102.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c342dec1fd5126e89e2ffc507a8a7779fe0e14825850bd92b9b1eb56d676e194`  
		Last Modified: Wed, 08 May 2019 12:29:37 GMT  
		Size: 39.9 MB (39879659 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `lightstreamer:latest` - linux; arm64 variant v8

```console
$ docker pull lightstreamer@sha256:5ca26d79785d678b30de71e8999e6016903ac0dd8c200e80af668d6b19e4e0d0
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **219.6 MB (219594374 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:17975e9464ca44bd81964ff7a68ece919c9399383d2f8665a9285f2a68aae6a0`
-	Default Command: `[".\/LS.sh","run"]`

```dockerfile
# Wed, 08 May 2019 08:48:25 GMT
ADD file:153045f4fe6532d8c2ff273bb249a7a3a4cba913c26a4103ba5ddce1af02c1e5 in / 
# Wed, 08 May 2019 08:48:26 GMT
CMD ["bash"]
# Wed, 08 May 2019 11:51:12 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 11:51:50 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 08 May 2019 16:06:35 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 16:06:37 GMT
RUN echo 'deb http://deb.debian.org/debian stretch-backports main' > /etc/apt/sources.list.d/stretch-backports.list
# Wed, 08 May 2019 16:06:38 GMT
ENV LANG=C.UTF-8
# Wed, 08 May 2019 16:06:40 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 08 May 2019 16:06:43 GMT
RUN ln -svT "/usr/lib/jvm/java-11-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 08 May 2019 16:06:44 GMT
ENV JAVA_HOME=/docker-java-home
# Wed, 08 May 2019 16:06:44 GMT
ENV JAVA_VERSION=11.0.3
# Wed, 08 May 2019 16:06:45 GMT
ENV JAVA_DEBIAN_VERSION=11.0.3+1-1~bpo9+1
# Wed, 08 May 2019 16:11:14 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		ln -svT /docker-java-home/bin/java /usr/local/bin/java; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-11-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		rm -v /usr/local/bin/java; 		keytool -importkeystore -srckeystore /etc/ssl/certs/java/cacerts -destkeystore /etc/ssl/certs/java/cacerts.jks -deststoretype JKS -srcstorepass changeit -deststorepass changeit -noprompt; 	mv /etc/ssl/certs/java/cacerts.jks /etc/ssl/certs/java/cacerts; 	/var/lib/dpkg/info/ca-certificates-java.postinst configure; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Thu, 09 May 2019 07:15:41 GMT
LABEL maintainer=Lightstreamer Server Development Team <support@lightstreamer.com>
# Thu, 09 May 2019 07:15:46 GMT
RUN gpg --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys 9B90BFD14309C7DA5EF58D7D4A8C08966F29B4D2
# Thu, 09 May 2019 07:15:47 GMT
ENV LIGHTSTREAMER_VERSION=7_0_3_20190107
# Thu, 09 May 2019 07:15:48 GMT
ENV LIGHTSTREAMER_URL_DOWNLOAD=http://www.lightstreamer.com/repo/distros/Lightstreamer_7_0_3_20190107.tar.gz
# Thu, 09 May 2019 07:15:49 GMT
WORKDIR /lightstreamer
# Thu, 09 May 2019 07:16:01 GMT
RUN set -ex;         curl -fSL -o Lightstreamer.tar.gz ${LIGHTSTREAMER_URL_DOWNLOAD}         && curl -fSL -o Lightstreamer.tar.gz.asc ${LIGHTSTREAMER_URL_DOWNLOAD}.asc         && gpg --batch --verify Lightstreamer.tar.gz.asc Lightstreamer.tar.gz         && tar -xvf Lightstreamer.tar.gz --strip-components=1         && sed -i -- 's/\/usr\/jdk1.8.0/$JAVA_HOME/' bin/unix-like/LS.sh         && sed -i -e '164,$s/<appender-ref ref="LSConsole" \/>/<!--<appender-ref ref="LSConsole" \/>-->/'                   -e '116,$s/<appender-ref ref="LSDailyRolling" \/>/<appender-ref ref="LSConsole" \/>/'                   -e '/<!--<appender-ref ref="LSConsole" \/>-->/ d' conf/lightstreamer_log_conf.xml         && rm Lightstreamer.tar.gz Lightstreamer.tar.gz.asc
# Thu, 09 May 2019 07:16:03 GMT
EXPOSE 8080
# Thu, 09 May 2019 07:16:04 GMT
WORKDIR /lightstreamer/bin/unix-like
# Thu, 09 May 2019 07:16:04 GMT
CMD ["./LS.sh" "run"]
```

-	Layers:
	-	`sha256:5894e28291972e44f5c3eba2779a85979bae6f95ed4f3e43ea5c98a132f06c48`  
		Last Modified: Wed, 08 May 2019 08:54:43 GMT  
		Size: 43.1 MB (43141955 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a8e6888cee6fef7c223eeaf2ca4c51bc0c21b4631971f416eb6a529a05e96cb`  
		Last Modified: Wed, 08 May 2019 12:07:05 GMT  
		Size: 9.7 MB (9733078 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8bf90e854779f4c5edab378626d847fd0ab7aa9441b63a7db31a7db55d2b255b`  
		Last Modified: Wed, 08 May 2019 12:07:03 GMT  
		Size: 4.1 MB (4094187 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:266e07372d3cf38feb8825ddae8cb9f335282ad809bba6aeaac01c34a13b9394`  
		Last Modified: Wed, 08 May 2019 16:31:36 GMT  
		Size: 839.5 KB (839462 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33620d64e6d1b0246724757776edb615dc49afd758f8173998353070b31a27c7`  
		Last Modified: Wed, 08 May 2019 16:31:36 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a76d1d13c2cdf744d3639f9807db1ee1b921ae954abf02315f64031068f6b01`  
		Last Modified: Wed, 08 May 2019 16:31:35 GMT  
		Size: 246.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7149891f17ac733bc8744c0d2c116737d9cd43460d2da579963d669cd3e48f98`  
		Last Modified: Wed, 08 May 2019 16:31:36 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed630e01fd86e330bd89d5ab7d00b0a051051da858ec14d7289213a615c49896`  
		Last Modified: Wed, 08 May 2019 16:32:15 GMT  
		Size: 121.9 MB (121903240 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a43414214a5cd6f8cdc9842eeda5504a72776544ddcdd680d47e2ac24378eb32`  
		Last Modified: Thu, 09 May 2019 07:17:35 GMT  
		Size: 2.0 KB (2013 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ec2d975510b0407fb9bf3a188ff2d32074e6fa5da44c58a5a8a137abbeeb655`  
		Last Modified: Thu, 09 May 2019 07:17:35 GMT  
		Size: 102.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17d76be6881ad4f5017fb8fb91b27eef17d379a61aa900aa80c4ba7428051ab6`  
		Last Modified: Thu, 09 May 2019 07:17:43 GMT  
		Size: 39.9 MB (39879735 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
