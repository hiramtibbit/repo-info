## `tomee:8-jre-7.1.0-plus`

```console
$ docker pull tomee@sha256:8dcafc8e65a200e68a9aeb11338291a329dbaaf47304036847e2c51d15bbeee2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `tomee:8-jre-7.1.0-plus` - linux; amd64

```console
$ docker pull tomee@sha256:6cc2aa5f705dfc41fd4e01a460ec2ee7635b63e7cb38d157e55d20c8cf28f619
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **163.4 MB (163383681 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:851ca492a2062b2cb6c5839daee0ca212b4b438cdd9de53065d6f3858db6b45c`
-	Default Command: `["catalina.sh","run"]`

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
# Wed, 05 Jun 2019 23:08:25 GMT
ENV PATH=/usr/local/tomee/bin:/usr/local/openjdk-8/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Jun 2019 23:08:26 GMT
RUN mkdir -p /usr/local/tomee
# Wed, 05 Jun 2019 23:08:26 GMT
WORKDIR /usr/local/tomee
# Wed, 05 Jun 2019 23:09:06 GMT
ENV GPG_KEYS=223D3A74B068ECA354DC385CE126833F9CF64915     678F2D98F1FD9643811639FB622B8F2D043F71D8     7A2744A8A9AAF063C23EB7868EBE7DBE8D050EEF     82D8419BA697F0E7FB85916EE91287822FDB81B1     9056B710F1E332780DE7AF34CBAEBE39A46C4CA1     A57DAF81C1B69921F4BA8723A8DE0A4DB863A7C1     B7574789F5018690043E6DD9C212662E12F3E1DD     B8B301E6105DF628076BD92C5483E55897ABD9B9     BDD0BBEB753192957EFC5F896A62FC8EF17D8FEF     C23A3F6F595EBD0F960270CC997C8F1A5BE6E4C1     D11DF12CC2CA4894BDE638B967C1227A2678363C     DBCCD103B8B24F86FFAAB025C8BB472CD297D428     F067B8140F5DD80E1D3B5D92318242FE9A0B1183     FAA603D58B1BA4EDF65896D0ED340E0E6D545F97
# Wed, 05 Jun 2019 23:09:10 GMT
RUN set -xe     && for key in $GPG_KEYS; do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key";     done
# Wed, 05 Jun 2019 23:10:27 GMT
RUN set -x 	&& curl -fSL https://repo.maven.apache.org/maven2/org/apache/tomee/apache-tomee/7.1.0/apache-tomee-7.1.0-plus.tar.gz.asc -o tomee.tar.gz.asc 	&& curl -fSL https://repo.maven.apache.org/maven2/org/apache/tomee/apache-tomee/7.1.0/apache-tomee-7.1.0-plus.tar.gz -o tomee.tar.gz     && gpg --batch --verify tomee.tar.gz.asc tomee.tar.gz 	&& tar -zxf tomee.tar.gz 	&& mv apache-tomee-plus-7.1.0/* /usr/local/tomee 	&& rm -Rf apache-tomee-plus-7.1.0 	&& rm bin/*.bat 	&& rm tomee.tar.gz*
# Wed, 05 Jun 2019 23:10:27 GMT
EXPOSE 8080
# Wed, 05 Jun 2019 23:10:27 GMT
CMD ["catalina.sh" "run"]
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
	-	`sha256:0076ffe90a4c0088b427acc2adb24debbc283b8ea1221af94fd7ad8f1b333978`  
		Last Modified: Wed, 05 Jun 2019 23:11:58 GMT  
		Size: 151.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:761c5001325f11c4639be9476bab1e3cc3a35b0def0b7843d500c457ea73f0ef`  
		Last Modified: Wed, 05 Jun 2019 23:12:33 GMT  
		Size: 66.8 KB (66813 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3748557050d32d3e33f171e530e4b248919467db01d8242dd6a9b204ddad5247`  
		Last Modified: Wed, 05 Jun 2019 23:13:54 GMT  
		Size: 57.6 MB (57615880 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `tomee:8-jre-7.1.0-plus` - linux; arm variant v5

```console
$ docker pull tomee@sha256:f75bd89b8e53a16fd7c8816041d5f661c0f770755fe87eba5e43e00008ea2cf2
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **228.5 MB (228539944 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0f089d1a5bd8d6a244d197499ee9b088734a0165d38d222c1e20aa4f54cc36ae`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Wed, 08 May 2019 08:53:17 GMT
ADD file:5dfe3b771bd67a2856913544993e219cb8c7933c33523cc56fe13a3a0e76ce9b in / 
# Wed, 08 May 2019 08:53:18 GMT
CMD ["bash"]
# Wed, 08 May 2019 10:01:40 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 10:01:51 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 08 May 2019 11:29:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 11:35:27 GMT
ENV LANG=C.UTF-8
# Wed, 08 May 2019 11:35:28 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 08 May 2019 11:35:30 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 08 May 2019 11:35:30 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Wed, 08 May 2019 11:35:30 GMT
ENV JAVA_VERSION=8u212
# Wed, 08 May 2019 11:35:31 GMT
ENV JAVA_DEBIAN_VERSION=8u212-b01-1~deb9u1
# Wed, 08 May 2019 11:36:37 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 08 May 2019 16:48:24 GMT
ENV PATH=/usr/local/tomee/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 08 May 2019 16:48:26 GMT
RUN mkdir -p /usr/local/tomee
# Wed, 08 May 2019 16:48:26 GMT
WORKDIR /usr/local/tomee
# Wed, 08 May 2019 16:50:41 GMT
ENV GPG_KEYS=223D3A74B068ECA354DC385CE126833F9CF64915     678F2D98F1FD9643811639FB622B8F2D043F71D8     7A2744A8A9AAF063C23EB7868EBE7DBE8D050EEF     82D8419BA697F0E7FB85916EE91287822FDB81B1     9056B710F1E332780DE7AF34CBAEBE39A46C4CA1     A57DAF81C1B69921F4BA8723A8DE0A4DB863A7C1     B7574789F5018690043E6DD9C212662E12F3E1DD     B8B301E6105DF628076BD92C5483E55897ABD9B9     BDD0BBEB753192957EFC5F896A62FC8EF17D8FEF     C23A3F6F595EBD0F960270CC997C8F1A5BE6E4C1     D11DF12CC2CA4894BDE638B967C1227A2678363C     DBCCD103B8B24F86FFAAB025C8BB472CD297D428     F067B8140F5DD80E1D3B5D92318242FE9A0B1183     FAA603D58B1BA4EDF65896D0ED340E0E6D545F97
# Wed, 08 May 2019 16:50:46 GMT
RUN set -xe     && for key in $GPG_KEYS; do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key";     done
# Wed, 08 May 2019 16:53:12 GMT
RUN set -x 	&& curl -fSL https://repo.maven.apache.org/maven2/org/apache/tomee/apache-tomee/7.1.0/apache-tomee-7.1.0-plus.tar.gz.asc -o tomee.tar.gz.asc 	&& curl -fSL https://repo.maven.apache.org/maven2/org/apache/tomee/apache-tomee/7.1.0/apache-tomee-7.1.0-plus.tar.gz -o tomee.tar.gz     && gpg --batch --verify tomee.tar.gz.asc tomee.tar.gz 	&& tar -zxf tomee.tar.gz 	&& mv apache-tomee-plus-7.1.0/* /usr/local/tomee 	&& rm -Rf apache-tomee-plus-7.1.0 	&& rm bin/*.bat 	&& rm tomee.tar.gz*
# Wed, 08 May 2019 16:53:13 GMT
EXPOSE 8080
# Wed, 08 May 2019 16:53:13 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:ca892ced475bf1c51c1f13b76a64549cfc5d1a0b55d33d8b9418efbb47887bf8`  
		Last Modified: Wed, 08 May 2019 08:59:09 GMT  
		Size: 44.0 MB (44045778 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b7b30b379469b50f6ada866964876f5c4ba164c22896bf3a08aabab61869e51`  
		Last Modified: Wed, 08 May 2019 10:09:26 GMT  
		Size: 9.9 MB (9854225 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53e257762b4747840fc09dce269e7f68146ac9864b8bf218e57475b4af367a74`  
		Last Modified: Wed, 08 May 2019 10:09:24 GMT  
		Size: 4.2 MB (4159009 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef0d161136f55f6e5c26bbd9fde30327cf06dec15e40d7ac330b8db368e4b9ee`  
		Last Modified: Wed, 08 May 2019 11:50:21 GMT  
		Size: 846.1 KB (846058 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e56a59da16addae7a15d26d4edba174883fd994d29bb943085361990730c6787`  
		Last Modified: Wed, 08 May 2019 11:52:50 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01d14b7a612bfb82f68156f623a22e64ab4524cbf82c592f9365a904bac033a5`  
		Last Modified: Wed, 08 May 2019 11:52:50 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8e798df308d1bafc2c22d22386cb75aa71c9b8fc3c7b9ff5e736c1464c83bea`  
		Last Modified: Wed, 08 May 2019 11:53:24 GMT  
		Size: 112.0 MB (111951438 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:659f76ccb0cf04fd241fe8c90a1e6e52b87b96cecb92e7a9b6924d95756c1597`  
		Last Modified: Wed, 08 May 2019 16:59:21 GMT  
		Size: 182.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65419738306413a765b1f53d60e8557c993513ebbc576689bab94a6d208526ea`  
		Last Modified: Wed, 08 May 2019 17:00:17 GMT  
		Size: 66.9 KB (66856 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:218376136b2c6f9a81f34121ef0abb8362503fb030df07029d918012853efbf7`  
		Last Modified: Wed, 08 May 2019 17:01:58 GMT  
		Size: 57.6 MB (57616020 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `tomee:8-jre-7.1.0-plus` - linux; arm variant v7

```console
$ docker pull tomee@sha256:652101d7df875e2b99b85ec8843f342e2971d904bb267c8ff00c24a78bc0e38b
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **224.3 MB (224311899 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cf1091a27bdf7b6c1a4a3f6620362312a45bddce3b98e367ad538383dbcdbb56`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Wed, 08 May 2019 12:03:26 GMT
ADD file:7e8dcc40e246d53b86266855a2de8080d26e6b4ed9f594c1acc565784405735b in / 
# Wed, 08 May 2019 12:03:27 GMT
CMD ["bash"]
# Wed, 08 May 2019 13:04:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 13:04:42 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 08 May 2019 14:10:07 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 14:14:59 GMT
ENV LANG=C.UTF-8
# Wed, 08 May 2019 14:15:01 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 08 May 2019 14:15:02 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 08 May 2019 14:15:02 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Wed, 08 May 2019 14:15:03 GMT
ENV JAVA_VERSION=8u212
# Wed, 08 May 2019 14:15:03 GMT
ENV JAVA_DEBIAN_VERSION=8u212-b01-1~deb9u1
# Wed, 08 May 2019 14:16:13 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 08 May 2019 17:27:35 GMT
ENV PATH=/usr/local/tomee/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 08 May 2019 17:27:37 GMT
RUN mkdir -p /usr/local/tomee
# Wed, 08 May 2019 17:27:38 GMT
WORKDIR /usr/local/tomee
# Wed, 08 May 2019 17:29:48 GMT
ENV GPG_KEYS=223D3A74B068ECA354DC385CE126833F9CF64915     678F2D98F1FD9643811639FB622B8F2D043F71D8     7A2744A8A9AAF063C23EB7868EBE7DBE8D050EEF     82D8419BA697F0E7FB85916EE91287822FDB81B1     9056B710F1E332780DE7AF34CBAEBE39A46C4CA1     A57DAF81C1B69921F4BA8723A8DE0A4DB863A7C1     B7574789F5018690043E6DD9C212662E12F3E1DD     B8B301E6105DF628076BD92C5483E55897ABD9B9     BDD0BBEB753192957EFC5F896A62FC8EF17D8FEF     C23A3F6F595EBD0F960270CC997C8F1A5BE6E4C1     D11DF12CC2CA4894BDE638B967C1227A2678363C     DBCCD103B8B24F86FFAAB025C8BB472CD297D428     F067B8140F5DD80E1D3B5D92318242FE9A0B1183     FAA603D58B1BA4EDF65896D0ED340E0E6D545F97
# Wed, 08 May 2019 17:29:53 GMT
RUN set -xe     && for key in $GPG_KEYS; do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key";     done
# Wed, 08 May 2019 17:31:59 GMT
RUN set -x 	&& curl -fSL https://repo.maven.apache.org/maven2/org/apache/tomee/apache-tomee/7.1.0/apache-tomee-7.1.0-plus.tar.gz.asc -o tomee.tar.gz.asc 	&& curl -fSL https://repo.maven.apache.org/maven2/org/apache/tomee/apache-tomee/7.1.0/apache-tomee-7.1.0-plus.tar.gz -o tomee.tar.gz     && gpg --batch --verify tomee.tar.gz.asc tomee.tar.gz 	&& tar -zxf tomee.tar.gz 	&& mv apache-tomee-plus-7.1.0/* /usr/local/tomee 	&& rm -Rf apache-tomee-plus-7.1.0 	&& rm bin/*.bat 	&& rm tomee.tar.gz*
# Wed, 08 May 2019 17:32:00 GMT
EXPOSE 8080
# Wed, 08 May 2019 17:32:00 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:f2a2fd7c1ab35cd1b5ea6fcc2b801f3877852797e2698ecdb9556e0dee3accb5`  
		Last Modified: Wed, 08 May 2019 12:09:40 GMT  
		Size: 42.1 MB (42082604 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:047df9a92c9f7376283a8d6af526f5126d95995ba48dd7de49979ef57da3e15b`  
		Last Modified: Wed, 08 May 2019 13:12:20 GMT  
		Size: 9.5 MB (9485167 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ddeed4ac8d1e2c751afd6fd3517f1d154365467039353c377c8206fd5eb81d4b`  
		Last Modified: Wed, 08 May 2019 13:12:18 GMT  
		Size: 3.9 MB (3918605 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3c646a29b8c83d854b86dccdbf390a7b296f5144aef4e38276c8a7b649e0804`  
		Last Modified: Wed, 08 May 2019 14:31:13 GMT  
		Size: 830.4 KB (830410 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4cb3a067c54308aa02398bf021c38a952c18f27646b736d71732cbbc9b1010b0`  
		Last Modified: Wed, 08 May 2019 14:33:42 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d2c033d6c592b7d46aafecc714f1393be324b57f01f5e6c76e832e8ea04576a`  
		Last Modified: Wed, 08 May 2019 14:33:42 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afe0d9e8d93d276090a71cd6c8346c468c9e051903bf52760756359c4451d33b`  
		Last Modified: Wed, 08 May 2019 14:34:14 GMT  
		Size: 110.3 MB (110311680 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:642dc7db54cb820e25bc4629ead8f2f9a540d7047a3c3da54d7a8abc2147518a`  
		Last Modified: Wed, 08 May 2019 17:38:04 GMT  
		Size: 180.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b976553054fbb5f324590cadc60090eac7eebc214892c4d508f77de563992370`  
		Last Modified: Wed, 08 May 2019 17:38:49 GMT  
		Size: 66.9 KB (66870 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bcb333d0ba33e37737b75d75b601e503f5c40419b7aeec7e4ea1d7db6832094b`  
		Last Modified: Wed, 08 May 2019 17:40:44 GMT  
		Size: 57.6 MB (57616003 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `tomee:8-jre-7.1.0-plus` - linux; arm64 variant v8

```console
$ docker pull tomee@sha256:9216540da43bc9c20d1feb9244adc8c22926ed552b1cb9644f3cf9cb9d50a9ce
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **228.6 MB (228569194 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:11cb65ca79d600df3548eb8064078a729fb1113347c8772eb03f572064d06446`
-	Default Command: `["catalina.sh","run"]`

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
# Thu, 09 May 2019 07:43:07 GMT
ENV PATH=/usr/local/tomee/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 09 May 2019 07:43:17 GMT
RUN mkdir -p /usr/local/tomee
# Thu, 09 May 2019 07:43:19 GMT
WORKDIR /usr/local/tomee
# Thu, 09 May 2019 07:47:15 GMT
ENV GPG_KEYS=223D3A74B068ECA354DC385CE126833F9CF64915     678F2D98F1FD9643811639FB622B8F2D043F71D8     7A2744A8A9AAF063C23EB7868EBE7DBE8D050EEF     82D8419BA697F0E7FB85916EE91287822FDB81B1     9056B710F1E332780DE7AF34CBAEBE39A46C4CA1     A57DAF81C1B69921F4BA8723A8DE0A4DB863A7C1     B7574789F5018690043E6DD9C212662E12F3E1DD     B8B301E6105DF628076BD92C5483E55897ABD9B9     BDD0BBEB753192957EFC5F896A62FC8EF17D8FEF     C23A3F6F595EBD0F960270CC997C8F1A5BE6E4C1     D11DF12CC2CA4894BDE638B967C1227A2678363C     DBCCD103B8B24F86FFAAB025C8BB472CD297D428     F067B8140F5DD80E1D3B5D92318242FE9A0B1183     FAA603D58B1BA4EDF65896D0ED340E0E6D545F97
# Thu, 09 May 2019 07:47:29 GMT
RUN set -xe     && for key in $GPG_KEYS; do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key";     done
# Thu, 09 May 2019 07:50:32 GMT
RUN set -x 	&& curl -fSL https://repo.maven.apache.org/maven2/org/apache/tomee/apache-tomee/7.1.0/apache-tomee-7.1.0-plus.tar.gz.asc -o tomee.tar.gz.asc 	&& curl -fSL https://repo.maven.apache.org/maven2/org/apache/tomee/apache-tomee/7.1.0/apache-tomee-7.1.0-plus.tar.gz -o tomee.tar.gz     && gpg --batch --verify tomee.tar.gz.asc tomee.tar.gz 	&& tar -zxf tomee.tar.gz 	&& mv apache-tomee-plus-7.1.0/* /usr/local/tomee 	&& rm -Rf apache-tomee-plus-7.1.0 	&& rm bin/*.bat 	&& rm tomee.tar.gz*
# Thu, 09 May 2019 07:50:33 GMT
EXPOSE 8080
# Thu, 09 May 2019 07:50:34 GMT
CMD ["catalina.sh" "run"]
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
	-	`sha256:4ac61c17717f7427d3d2088d5622f7cf4d74315354ed0a9afa60e1b78cace7bc`  
		Last Modified: Thu, 09 May 2019 07:58:57 GMT  
		Size: 150.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee3451a9036f668177197c8b33a53df0ab2ec5c717850a658f1244de9d40b4a3`  
		Last Modified: Thu, 09 May 2019 07:59:54 GMT  
		Size: 66.8 KB (66849 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6049f63c8bf8aee85c5fd710c36fa64aa4993778c01f7486ef89b7f12c117638`  
		Last Modified: Thu, 09 May 2019 08:01:58 GMT  
		Size: 57.6 MB (57615911 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `tomee:8-jre-7.1.0-plus` - linux; 386

```console
$ docker pull tomee@sha256:5010054913b32985b9d8327694ca97312fffbce3701c7e02171d0533986b816f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **242.6 MB (242615477 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ad9bb53506396824f3d547de88349c7c58e1fda2c9f5855267e131d2aae0ee1e`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Wed, 08 May 2019 10:49:19 GMT
ADD file:fde8cf5700c66c38b88d4b3254ec1544d09194e06568c23fe3989f7eaa1f5785 in / 
# Wed, 08 May 2019 10:49:20 GMT
CMD ["bash"]
# Wed, 08 May 2019 19:08:01 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 19:08:07 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 08 May 2019 22:13:16 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 22:16:13 GMT
ENV LANG=C.UTF-8
# Wed, 08 May 2019 22:16:14 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 08 May 2019 22:16:15 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 08 May 2019 22:16:15 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Wed, 08 May 2019 22:16:15 GMT
ENV JAVA_VERSION=8u212
# Wed, 08 May 2019 22:16:15 GMT
ENV JAVA_DEBIAN_VERSION=8u212-b01-1~deb9u1
# Wed, 08 May 2019 22:16:55 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Thu, 09 May 2019 03:55:42 GMT
ENV PATH=/usr/local/tomee/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 09 May 2019 03:55:43 GMT
RUN mkdir -p /usr/local/tomee
# Thu, 09 May 2019 03:55:43 GMT
WORKDIR /usr/local/tomee
# Thu, 09 May 2019 03:56:28 GMT
ENV GPG_KEYS=223D3A74B068ECA354DC385CE126833F9CF64915     678F2D98F1FD9643811639FB622B8F2D043F71D8     7A2744A8A9AAF063C23EB7868EBE7DBE8D050EEF     82D8419BA697F0E7FB85916EE91287822FDB81B1     9056B710F1E332780DE7AF34CBAEBE39A46C4CA1     A57DAF81C1B69921F4BA8723A8DE0A4DB863A7C1     B7574789F5018690043E6DD9C212662E12F3E1DD     B8B301E6105DF628076BD92C5483E55897ABD9B9     BDD0BBEB753192957EFC5F896A62FC8EF17D8FEF     C23A3F6F595EBD0F960270CC997C8F1A5BE6E4C1     D11DF12CC2CA4894BDE638B967C1227A2678363C     DBCCD103B8B24F86FFAAB025C8BB472CD297D428     F067B8140F5DD80E1D3B5D92318242FE9A0B1183     FAA603D58B1BA4EDF65896D0ED340E0E6D545F97
# Thu, 09 May 2019 03:56:32 GMT
RUN set -xe     && for key in $GPG_KEYS; do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key";     done
# Thu, 09 May 2019 03:57:56 GMT
RUN set -x 	&& curl -fSL https://repo.maven.apache.org/maven2/org/apache/tomee/apache-tomee/7.1.0/apache-tomee-7.1.0-plus.tar.gz.asc -o tomee.tar.gz.asc 	&& curl -fSL https://repo.maven.apache.org/maven2/org/apache/tomee/apache-tomee/7.1.0/apache-tomee-7.1.0-plus.tar.gz -o tomee.tar.gz     && gpg --batch --verify tomee.tar.gz.asc tomee.tar.gz 	&& tar -zxf tomee.tar.gz 	&& mv apache-tomee-plus-7.1.0/* /usr/local/tomee 	&& rm -Rf apache-tomee-plus-7.1.0 	&& rm bin/*.bat 	&& rm tomee.tar.gz*
# Thu, 09 May 2019 03:57:56 GMT
EXPOSE 8080
# Thu, 09 May 2019 03:57:57 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:b5d586ad7adeab23f6ff0b7ec90785dc757eaccd445976fda3f6d7db64d20585`  
		Last Modified: Wed, 08 May 2019 10:57:26 GMT  
		Size: 46.1 MB (46063371 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3b18ff57de8d55737be40848138cbd66efcc99443ae507217ae5dd45e3cf41a`  
		Last Modified: Wed, 08 May 2019 19:14:07 GMT  
		Size: 10.8 MB (10802110 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc701b379559241c696cd079ff9b83f0bba19faec8747d75654fe5bc7e8adb03`  
		Last Modified: Wed, 08 May 2019 19:14:05 GMT  
		Size: 4.6 MB (4561353 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ad72e88a4544f4570c0df9df66b43ca05325a8df5fe4bdac5e0240836f47d28`  
		Last Modified: Wed, 08 May 2019 22:48:29 GMT  
		Size: 862.0 KB (862001 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9215fde6b1eafb43012d68d65388471bca2066ad401d508df13b046aa8b830e1`  
		Last Modified: Wed, 08 May 2019 22:51:58 GMT  
		Size: 249.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fdf128bb9e196d3a692d14dc4ed9c91920ab3ecb3fcb3d7e4c968fb1f18b9ce1`  
		Last Modified: Wed, 08 May 2019 22:51:58 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47742760e75d51e74c18576e2a0b2d447e91b2c3a023dc9e3b1e4a83aa7bdc1a`  
		Last Modified: Wed, 08 May 2019 22:52:46 GMT  
		Size: 122.6 MB (122643377 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9806037650a984a4cd9fb1f187d1f22fafe1ff30f68ba430eb4c37a95bc4615f`  
		Last Modified: Thu, 09 May 2019 03:59:10 GMT  
		Size: 150.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5093817798cc864e20feb8e2950c133d2d1d7cc1a531b3421b167e63ec8abc1e`  
		Last Modified: Thu, 09 May 2019 03:59:40 GMT  
		Size: 66.8 KB (66814 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f60c55fc53e4637c7c75135ac61c5ee3606a49b55df2f1c104afcd2a7d6b165`  
		Last Modified: Thu, 09 May 2019 04:00:56 GMT  
		Size: 57.6 MB (57615921 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `tomee:8-jre-7.1.0-plus` - linux; ppc64le

```console
$ docker pull tomee@sha256:35cfb4604683ab04cc406533b8c710981a3b5a9ab09469f274e808227e61efb4
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **233.0 MB (233034388 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fe25dbd45b88e68f1b05cfa83ccea448d9983ee26b97c8f5b511922fe78bccbb`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Wed, 08 May 2019 09:03:26 GMT
ADD file:844cea0aa071f0f6b2640d4c452590a8777485fa27a0aad789553110eaeb7081 in / 
# Wed, 08 May 2019 09:03:33 GMT
CMD ["bash"]
# Wed, 08 May 2019 12:06:55 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 12:07:33 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 08 May 2019 12:39:24 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 12:57:43 GMT
ENV LANG=C.UTF-8
# Wed, 08 May 2019 12:57:49 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 08 May 2019 12:57:56 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 08 May 2019 12:57:59 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Wed, 08 May 2019 12:58:03 GMT
ENV JAVA_VERSION=8u212
# Wed, 08 May 2019 12:58:05 GMT
ENV JAVA_DEBIAN_VERSION=8u212-b01-1~deb9u1
# Wed, 08 May 2019 13:05:08 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 08 May 2019 23:44:06 GMT
ENV PATH=/usr/local/tomee/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 08 May 2019 23:44:15 GMT
RUN mkdir -p /usr/local/tomee
# Wed, 08 May 2019 23:44:17 GMT
WORKDIR /usr/local/tomee
# Wed, 08 May 2019 23:46:45 GMT
ENV GPG_KEYS=223D3A74B068ECA354DC385CE126833F9CF64915     678F2D98F1FD9643811639FB622B8F2D043F71D8     7A2744A8A9AAF063C23EB7868EBE7DBE8D050EEF     82D8419BA697F0E7FB85916EE91287822FDB81B1     9056B710F1E332780DE7AF34CBAEBE39A46C4CA1     A57DAF81C1B69921F4BA8723A8DE0A4DB863A7C1     B7574789F5018690043E6DD9C212662E12F3E1DD     B8B301E6105DF628076BD92C5483E55897ABD9B9     BDD0BBEB753192957EFC5F896A62FC8EF17D8FEF     C23A3F6F595EBD0F960270CC997C8F1A5BE6E4C1     D11DF12CC2CA4894BDE638B967C1227A2678363C     DBCCD103B8B24F86FFAAB025C8BB472CD297D428     F067B8140F5DD80E1D3B5D92318242FE9A0B1183     FAA603D58B1BA4EDF65896D0ED340E0E6D545F97
# Wed, 08 May 2019 23:46:57 GMT
RUN set -xe     && for key in $GPG_KEYS; do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key";     done
# Wed, 08 May 2019 23:50:40 GMT
RUN set -x 	&& curl -fSL https://repo.maven.apache.org/maven2/org/apache/tomee/apache-tomee/7.1.0/apache-tomee-7.1.0-plus.tar.gz.asc -o tomee.tar.gz.asc 	&& curl -fSL https://repo.maven.apache.org/maven2/org/apache/tomee/apache-tomee/7.1.0/apache-tomee-7.1.0-plus.tar.gz -o tomee.tar.gz     && gpg --batch --verify tomee.tar.gz.asc tomee.tar.gz 	&& tar -zxf tomee.tar.gz 	&& mv apache-tomee-plus-7.1.0/* /usr/local/tomee 	&& rm -Rf apache-tomee-plus-7.1.0 	&& rm bin/*.bat 	&& rm tomee.tar.gz*
# Wed, 08 May 2019 23:50:45 GMT
EXPOSE 8080
# Wed, 08 May 2019 23:50:51 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:c6c4df30bc4ffa8fb97a3dda6f8758fb0ddeb8929d159369cf5974dd3f2ac117`  
		Last Modified: Wed, 08 May 2019 09:21:32 GMT  
		Size: 45.6 MB (45603184 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb8b6d64c78121ab5074c55b90272e1a13e72e3b7854d6a6c7e638eff77307ba`  
		Last Modified: Wed, 08 May 2019 12:24:57 GMT  
		Size: 10.0 MB (9991084 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:663d68dc2e1243453bf4b04afcb5394452ca5371b05a1c96f41a0df4189631e8`  
		Last Modified: Wed, 08 May 2019 12:24:54 GMT  
		Size: 4.3 MB (4296597 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b98e4e060b9a0f1aadc5647d44be482b1363697a3fd8a4aeb6a4b9c53e17ecc4`  
		Last Modified: Wed, 08 May 2019 13:14:21 GMT  
		Size: 848.6 KB (848616 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8e24f3bccdd6d1d666b5c75ba2971c3c1d1b974352776ac0c8d91b0244f35cb`  
		Last Modified: Wed, 08 May 2019 13:20:14 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5f7a6e570eaf9c696f99b09d6fb9eaf034d87e7a1e9bf092cd38e9f71777a8b`  
		Last Modified: Wed, 08 May 2019 13:20:15 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb5a3232b209a6e8e5f133bb2d4b9c377dab2d71b8b57de44e32eefb5584bfd2`  
		Last Modified: Wed, 08 May 2019 13:21:49 GMT  
		Size: 114.6 MB (114611463 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:edd83c78061ff23f15cdc569ac349f3e283d4ebbc0bf0809d04e17906c9b9bb5`  
		Last Modified: Wed, 08 May 2019 23:56:50 GMT  
		Size: 183.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2974f560e5e5ae6d63b4b0185583d92e5f918b16a65b150b65fdd1a0c083ecf`  
		Last Modified: Wed, 08 May 2019 23:57:46 GMT  
		Size: 66.9 KB (66874 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3f5d6d7614d22814c57ba052b0f649b1d4ad6972fdc18fae91d192be81ad3a6`  
		Last Modified: Wed, 08 May 2019 23:59:53 GMT  
		Size: 57.6 MB (57616007 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `tomee:8-jre-7.1.0-plus` - linux; s390x

```console
$ docker pull tomee@sha256:444a34e705790884f0ac0d5851d69583da7545dcf8f02ddb97597cd3d7f537d6
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **232.6 MB (232616049 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3c5db785a499f6ad54b11e15ad663585f803dc2c28465e67b0031e9fd39a00cb`
-	Default Command: `["catalina.sh","run"]`

```dockerfile
# Wed, 08 May 2019 11:46:30 GMT
ADD file:35b243252442c1fc6a9e4f7bea498f5b7302c530eb804ed6a79c5b84a68a96fd in / 
# Wed, 08 May 2019 11:46:31 GMT
CMD ["bash"]
# Wed, 08 May 2019 13:48:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 13:48:59 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 08 May 2019 14:42:10 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 14:52:21 GMT
ENV LANG=C.UTF-8
# Wed, 08 May 2019 14:52:23 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 08 May 2019 14:52:32 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 08 May 2019 14:52:35 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Wed, 08 May 2019 14:52:36 GMT
ENV JAVA_VERSION=8u212
# Wed, 08 May 2019 14:52:36 GMT
ENV JAVA_DEBIAN_VERSION=8u212-b01-1~deb9u1
# Wed, 08 May 2019 14:54:55 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Thu, 09 May 2019 05:19:35 GMT
ENV PATH=/usr/local/tomee/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 09 May 2019 05:19:39 GMT
RUN mkdir -p /usr/local/tomee
# Thu, 09 May 2019 05:19:40 GMT
WORKDIR /usr/local/tomee
# Thu, 09 May 2019 05:21:32 GMT
ENV GPG_KEYS=223D3A74B068ECA354DC385CE126833F9CF64915     678F2D98F1FD9643811639FB622B8F2D043F71D8     7A2744A8A9AAF063C23EB7868EBE7DBE8D050EEF     82D8419BA697F0E7FB85916EE91287822FDB81B1     9056B710F1E332780DE7AF34CBAEBE39A46C4CA1     A57DAF81C1B69921F4BA8723A8DE0A4DB863A7C1     B7574789F5018690043E6DD9C212662E12F3E1DD     B8B301E6105DF628076BD92C5483E55897ABD9B9     BDD0BBEB753192957EFC5F896A62FC8EF17D8FEF     C23A3F6F595EBD0F960270CC997C8F1A5BE6E4C1     D11DF12CC2CA4894BDE638B967C1227A2678363C     DBCCD103B8B24F86FFAAB025C8BB472CD297D428     F067B8140F5DD80E1D3B5D92318242FE9A0B1183     FAA603D58B1BA4EDF65896D0ED340E0E6D545F97
# Thu, 09 May 2019 05:21:44 GMT
RUN set -xe     && for key in $GPG_KEYS; do         gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key";     done
# Thu, 09 May 2019 05:24:58 GMT
RUN set -x 	&& curl -fSL https://repo.maven.apache.org/maven2/org/apache/tomee/apache-tomee/7.1.0/apache-tomee-7.1.0-plus.tar.gz.asc -o tomee.tar.gz.asc 	&& curl -fSL https://repo.maven.apache.org/maven2/org/apache/tomee/apache-tomee/7.1.0/apache-tomee-7.1.0-plus.tar.gz -o tomee.tar.gz     && gpg --batch --verify tomee.tar.gz.asc tomee.tar.gz 	&& tar -zxf tomee.tar.gz 	&& mv apache-tomee-plus-7.1.0/* /usr/local/tomee 	&& rm -Rf apache-tomee-plus-7.1.0 	&& rm bin/*.bat 	&& rm tomee.tar.gz*
# Thu, 09 May 2019 05:24:59 GMT
EXPOSE 8080
# Thu, 09 May 2019 05:25:00 GMT
CMD ["catalina.sh" "run"]
```

-	Layers:
	-	`sha256:3602dd773e45048fcb10569c368bf7ddac54267760f371efbe1bb65ba8d67361`  
		Last Modified: Wed, 08 May 2019 11:52:15 GMT  
		Size: 45.2 MB (45197648 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:412a17b553a57c91ed490be0279a1aafa108b9a60b10f8c482ed85ca94de3a3c`  
		Last Modified: Wed, 08 May 2019 14:00:34 GMT  
		Size: 10.3 MB (10314565 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5007dca2cc2afa05648742b75324a09e45eae504d384750ed7c6de3e5e5d65d2`  
		Last Modified: Wed, 08 May 2019 14:00:30 GMT  
		Size: 4.4 MB (4372280 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:baf61465b03d8ec5e8064ba91220d0e97c4dd5b75a7d2fe644aab7cc4a0a514c`  
		Last Modified: Wed, 08 May 2019 15:01:34 GMT  
		Size: 863.9 KB (863943 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35375a807e76af07efe2bf1c77fce29498511166f4b41f158e181805528ce229`  
		Last Modified: Wed, 08 May 2019 15:04:54 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da53975ff11a25b69ce30d4b02d88f1b27cff3e5b1a2e08d05f6721e388f4a5d`  
		Last Modified: Wed, 08 May 2019 15:04:54 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d381e46be773491220b0199e519c4f97308fee82af49481321e3d769db7b7b0a`  
		Last Modified: Wed, 08 May 2019 15:05:36 GMT  
		Size: 114.2 MB (114184348 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e98a97923995b607a972d7ee5b2d325126d664f127b6e96b5f541f565cb5735`  
		Last Modified: Thu, 09 May 2019 05:29:23 GMT  
		Size: 150.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:017191bf613a25314fed7a2cb1c70a22e48a5e360f354af345e93eec82057851`  
		Last Modified: Thu, 09 May 2019 05:30:25 GMT  
		Size: 66.9 KB (66852 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba6e3bd5867e8002964e29631a86051be44ab6c6c46834e9d6636a613f021782`  
		Last Modified: Thu, 09 May 2019 05:33:06 GMT  
		Size: 57.6 MB (57615883 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
