<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `orientdb`

-	[`orientdb:2.0.18`](#orientdb2018)
-	[`orientdb:2.1.25`](#orientdb2125)
-	[`orientdb:2.2.37`](#orientdb2237)
-	[`orientdb:2.2.37-spatial`](#orientdb2237-spatial)
-	[`orientdb:3.0.19`](#orientdb3019)
-	[`orientdb:3.0.19-tp3`](#orientdb3019-tp3)
-	[`orientdb:latest`](#orientdblatest)

## `orientdb:2.0.18`

```console
$ docker pull orientdb@sha256:704a44c373655b055c21817a949a355f4e96c6afc0e9e21f94fa2f59c99446bf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `orientdb:2.0.18` - linux; amd64

```console
$ docker pull orientdb@sha256:885441b9a5fe436c5bae8e17f62ec9345b516aa0309e86833c633ab6a7a4a0be
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **266.0 MB (266043131 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0714f4fed60564c527fb06f8f4185443faf82cf9aeebb1bc0afcc8a28adb7900`
-	Default Command: `["server.sh"]`

```dockerfile
# Wed, 08 May 2019 00:33:09 GMT
ADD file:caf91edab64f988bc24766c58ee66c00311c7c921296b8e5b51d7023422a1485 in / 
# Wed, 08 May 2019 00:33:10 GMT
CMD ["bash"]
# Wed, 08 May 2019 01:40:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 01:40:12 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 08 May 2019 01:40:37 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 29 May 2019 21:20:14 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 				ca-certificates p11-kit 				fontconfig libfreetype6 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 29 May 2019 21:20:14 GMT
ENV LANG=C.UTF-8
# Wed, 29 May 2019 21:21:22 GMT
ENV JAVA_HOME=/usr/local/openjdk-8
# Wed, 29 May 2019 21:21:22 GMT
ENV PATH=/usr/local/openjdk-8/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 29 May 2019 21:21:23 GMT
RUN { echo '#/bin/sh'; echo 'echo "$JAVA_HOME"'; } > /usr/local/bin/docker-java-home && chmod +x /usr/local/bin/docker-java-home && [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 29 May 2019 21:21:23 GMT
ENV JAVA_VERSION=8u212-b04
# Wed, 29 May 2019 21:21:24 GMT
ENV JAVA_BASE_URL=https://github.com/AdoptOpenJDK/openjdk8-upstream-binaries/releases/download/jdk8u212-b04/OpenJDK8U-
# Wed, 29 May 2019 21:21:24 GMT
ENV JAVA_URL_VERSION=8u212b04
# Wed, 29 May 2019 21:21:37 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64) upstreamArch='x64' ;; 		arm64) upstreamArch='aarch64' ;; 		*) echo >&2 "error: unsupported architecture: $dpkgArch" ;; 	esac; 		wget -O openjdk.tgz.asc "${JAVA_BASE_URL}${upstreamArch}_linux_${JAVA_URL_VERSION}.tar.gz.sign"; 	wget -O openjdk.tgz "${JAVA_BASE_URL}${upstreamArch}_linux_${JAVA_URL_VERSION}.tar.gz" --progress=dot:giga; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys CA5F11C6CE22644D42C6AC4492EF8D39DC13168F; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys EAC843EBD3EFDB98CC772FADA5CD6035332FA671; 	gpg --batch --list-sigs --keyid-format 0xLONG CA5F11C6CE22644D42C6AC4492EF8D39DC13168F | grep '0xA5CD6035332FA671' | grep 'Andrew Haley'; 	gpg --batch --verify openjdk.tgz.asc openjdk.tgz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$JAVA_HOME"; 	tar --extract --file openjdk.tgz --directory "$JAVA_HOME" --strip-components 1; 	rm openjdk.tgz*; 			{ 		echo '#!/usr/bin/env bash'; 		echo 'set -Eeuo pipefail'; 		echo 'if ! [ -d "$JAVA_HOME" ]; then echo >&2 "error: missing JAVA_HOME environment variable"; exit 1; fi'; 		echo 'cacertsFile=; for f in "$JAVA_HOME/lib/security/cacerts" "$JAVA_HOME/jre/lib/security/cacerts"; do if [ -e "$f" ]; then cacertsFile="$f"; break; fi; done'; 		echo 'if [ -z "$cacertsFile" ] || ! [ -f "$cacertsFile" ]; then echo >&2 "error: failed to find cacerts file in $JAVA_HOME"; exit 1; fi'; 		echo 'trust extract --overwrite --format=java-cacerts --filter=ca-anchors --purpose=server-auth "$cacertsFile"'; 	} > /etc/ca-certificates/update.d/docker-openjdk; 	chmod +x /etc/ca-certificates/update.d/docker-openjdk; 	/etc/ca-certificates/update.d/docker-openjdk; 		javac -version; 	java -version
# Wed, 29 May 2019 22:34:36 GMT
MAINTAINER OrientDB LTD (info@orientdb.com)
# Wed, 29 May 2019 22:34:37 GMT
ENV ORIENTDB_VERSION=2.0.18
# Wed, 29 May 2019 22:34:37 GMT
ENV ORIENTDB_DOWNLOAD_MD5=9e7b7e7b6d95795b188adb4e5898a1b8
# Wed, 29 May 2019 22:34:37 GMT
ENV ORIENTDB_DOWNLOAD_SHA1=f562794536bbf8ae2145f96153e58b1e5d9211b3
# Wed, 29 May 2019 22:34:41 GMT
RUN mkdir /orientdb &&   wget  "http://central.maven.org/maven2/com/orientechnologies/orientdb-community/$ORIENTDB_VERSION/orientdb-community-$ORIENTDB_VERSION.tar.gz"   && echo "$ORIENTDB_DOWNLOAD_MD5 *orientdb-community-$ORIENTDB_VERSION.tar.gz" | md5sum -c -   && echo "$ORIENTDB_DOWNLOAD_SHA1 *orientdb-community-$ORIENTDB_VERSION.tar.gz" | sha1sum -c -   && tar -xvzf orientdb-community-$ORIENTDB_VERSION.tar.gz -C /orientdb --strip-components=1  && rm orientdb-community-$ORIENTDB_VERSION.tar.gz   && rm -rf /orientdb/databases/*
# Wed, 29 May 2019 22:34:42 GMT
ENV PATH=/orientdb/bin:/usr/local/openjdk-8/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 29 May 2019 22:34:42 GMT
VOLUME [/orientdb/backup /orientdb/databases /orientdb/config]
# Wed, 29 May 2019 22:34:42 GMT
WORKDIR /orientdb
# Wed, 29 May 2019 22:34:42 GMT
EXPOSE 2424
# Wed, 29 May 2019 22:34:42 GMT
EXPOSE 2480
# Wed, 29 May 2019 22:34:43 GMT
CMD ["server.sh"]
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
	-	`sha256:3b7ca19181b24b87e24423c01b490633bc1e47d2fcdc1987bf2e37949d6789b5`  
		Last Modified: Wed, 08 May 2019 01:46:01 GMT  
		Size: 50.1 MB (50066382 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:acd9a038f588d8e2b2e3f146ed7adb7b6f8e373516efc24c78c8208f8812ad14`  
		Last Modified: Wed, 29 May 2019 21:24:28 GMT  
		Size: 4.9 MB (4932067 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2aa7bd7991994877c85197911e3de5a0f6eecce76c0684b9d5eaf095aba2671a`  
		Last Modified: Wed, 29 May 2019 21:25:38 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47ce9f19f5673fe0e0749218052da4940d0c647485f1759ad8c5d3e79b3f7cf9`  
		Last Modified: Wed, 29 May 2019 21:25:54 GMT  
		Size: 104.0 MB (103993650 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79ba03e18da2b2d5bda8cfac3d4cc33176e1148796c28158e1d2fabc4eea368a`  
		Last Modified: Wed, 29 May 2019 22:35:09 GMT  
		Size: 46.6 MB (46586524 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `orientdb:2.1.25`

```console
$ docker pull orientdb@sha256:c92863b830070ff0e0149474ed77406bd17de4e92b4bbc3c001dc7e41977a293
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `orientdb:2.1.25` - linux; amd64

```console
$ docker pull orientdb@sha256:cc888d7b672542892e23a64b9490c3b2e388993782687c793957ff053bf4354a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **104.9 MB (104861779 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:989bfc02f4148fe7b16dc8603324735cba07b8f25a9af65d1f6a93bac0c96d38`
-	Default Command: `["server.sh"]`

```dockerfile
# Sat, 11 May 2019 00:07:03 GMT
ADD file:a86aea1f3a7d68f6ae03397b99ea77f2e9ee901c5c59e59f76f93adbb4035913 in / 
# Sat, 11 May 2019 00:07:03 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 01:32:11 GMT
ENV LANG=C.UTF-8
# Sat, 11 May 2019 01:32:12 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 11 May 2019 01:32:12 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
# Sat, 11 May 2019 01:32:12 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Sat, 11 May 2019 01:32:12 GMT
ENV JAVA_VERSION=8u212
# Sat, 11 May 2019 01:32:13 GMT
ENV JAVA_ALPINE_VERSION=8.212.04-r0
# Sat, 11 May 2019 01:32:17 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Sat, 11 May 2019 04:17:31 GMT
MAINTAINER OrientDB LTD (info@orientdb.com)
# Sat, 11 May 2019 04:17:31 GMT
ENV ORIENTDB_VERSION=2.1.25
# Sat, 11 May 2019 04:17:31 GMT
ENV ORIENTDB_DOWNLOAD_MD5=054da3fb7c56e7822b2af116966576ce
# Sat, 11 May 2019 04:17:32 GMT
ENV ORIENTDB_DOWNLOAD_SHA1=b7b08242b40117ac8eb9a201f8704bde839dfcb8
# Sat, 11 May 2019 04:17:33 GMT
RUN apk add --update tar     && rm -rf /var/cache/apk/*
# Sat, 11 May 2019 04:17:37 GMT
RUN mkdir /orientdb &&   wget  "http://central.maven.org/maven2/com/orientechnologies/orientdb-community/$ORIENTDB_VERSION/orientdb-community-$ORIENTDB_VERSION.tar.gz"   && echo "$ORIENTDB_DOWNLOAD_MD5 *orientdb-community-$ORIENTDB_VERSION.tar.gz" | md5sum -c -   && echo "$ORIENTDB_DOWNLOAD_SHA1 *orientdb-community-$ORIENTDB_VERSION.tar.gz" | sha1sum -c -   && tar -xvzf orientdb-community-$ORIENTDB_VERSION.tar.gz -C /orientdb --strip-components=1  && rm orientdb-community-$ORIENTDB_VERSION.tar.gz   && rm -rf /orientdb/databases/*
# Sat, 11 May 2019 04:17:37 GMT
ENV PATH=/orientdb/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Sat, 11 May 2019 04:17:38 GMT
VOLUME [/orientdb/backup /orientdb/databases /orientdb/config]
# Sat, 11 May 2019 04:17:38 GMT
WORKDIR /orientdb
# Sat, 11 May 2019 04:17:38 GMT
EXPOSE 2424
# Sat, 11 May 2019 04:17:38 GMT
EXPOSE 2480
# Sat, 11 May 2019 04:17:38 GMT
CMD ["server.sh"]
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
	-	`sha256:c2274a1a0e2786ee9101b08f76111f9ab8019e368dce1e325d3c284a0ca33397`  
		Last Modified: Sat, 11 May 2019 01:37:08 GMT  
		Size: 70.7 MB (70732768 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2bf708c70c42d52a75ff1133eea4bf5c417c4378c1aa2c024cff9e72a5c3f198`  
		Last Modified: Sat, 11 May 2019 04:18:25 GMT  
		Size: 283.8 KB (283776 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2c77f236456c95921fccd729e8aa345fde9a3f6298c44516d6c09e7134d9201`  
		Last Modified: Sat, 11 May 2019 04:18:27 GMT  
		Size: 31.1 MB (31087963 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `orientdb:2.2.37`

```console
$ docker pull orientdb@sha256:d3eab1eb86ee1a0bacd7b21d37e512af40f8f81a3964f8e3e422702e5616ecd1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `orientdb:2.2.37` - linux; amd64

```console
$ docker pull orientdb@sha256:72b44d3704534e2c4cbc6fd8e87d41f711f51eea68cef39c9c4fa568064c61f2
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **120.7 MB (120748007 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a0517307e55c95d630689afcaddd60f126b26608513587d0e9f0e1ddf26f054c`
-	Default Command: `["server.sh"]`

```dockerfile
# Sat, 11 May 2019 00:07:03 GMT
ADD file:a86aea1f3a7d68f6ae03397b99ea77f2e9ee901c5c59e59f76f93adbb4035913 in / 
# Sat, 11 May 2019 00:07:03 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 01:32:11 GMT
ENV LANG=C.UTF-8
# Sat, 11 May 2019 01:32:12 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 11 May 2019 01:32:12 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
# Sat, 11 May 2019 01:32:12 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Sat, 11 May 2019 01:32:12 GMT
ENV JAVA_VERSION=8u212
# Sat, 11 May 2019 01:32:13 GMT
ENV JAVA_ALPINE_VERSION=8.212.04-r0
# Sat, 11 May 2019 01:32:17 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Sat, 11 May 2019 04:17:31 GMT
MAINTAINER OrientDB LTD (info@orientdb.com)
# Sat, 11 May 2019 04:17:42 GMT
ARG ORIENTDB_DOWNLOAD_SERVER
# Sat, 11 May 2019 04:17:42 GMT
ENV ORIENTDB_VERSION=2.2.37
# Sat, 11 May 2019 04:17:42 GMT
ENV ORIENTDB_DOWNLOAD_MD5=cb80556ef3b0260d0ee5de88ea73fb9d
# Sat, 11 May 2019 04:17:42 GMT
ENV ORIENTDB_DOWNLOAD_SHA1=469c402dde029f265fe905de2c08b43960e81f07
# Sat, 11 May 2019 04:17:42 GMT
ENV ORIENTDB_DOWNLOAD_URL=http://central.maven.org/maven2/com/orientechnologies/orientdb-community/2.2.37/orientdb-community-2.2.37.tar.gz
# Sat, 11 May 2019 04:17:43 GMT
RUN apk add --update tar curl     && rm -rf /var/cache/apk/*
# Sat, 11 May 2019 04:17:48 GMT
RUN mkdir /orientdb &&   wget  $ORIENTDB_DOWNLOAD_URL   && echo "$ORIENTDB_DOWNLOAD_MD5 *orientdb-community-$ORIENTDB_VERSION.tar.gz" | md5sum -c -   && echo "$ORIENTDB_DOWNLOAD_SHA1 *orientdb-community-$ORIENTDB_VERSION.tar.gz" | sha1sum -c -   && tar -xvzf orientdb-community-$ORIENTDB_VERSION.tar.gz -C /orientdb --strip-components=1   && rm orientdb-community-$ORIENTDB_VERSION.tar.gz   && rm -rf /orientdb/databases/*
# Sat, 11 May 2019 04:17:48 GMT
ENV PATH=/orientdb/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Sat, 11 May 2019 04:17:48 GMT
VOLUME [/orientdb/backup /orientdb/databases /orientdb/config]
# Sat, 11 May 2019 04:17:48 GMT
WORKDIR /orientdb
# Sat, 11 May 2019 04:17:49 GMT
EXPOSE 2424
# Sat, 11 May 2019 04:17:49 GMT
EXPOSE 2480
# Sat, 11 May 2019 04:17:49 GMT
CMD ["server.sh"]
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
	-	`sha256:c2274a1a0e2786ee9101b08f76111f9ab8019e368dce1e325d3c284a0ca33397`  
		Last Modified: Sat, 11 May 2019 01:37:08 GMT  
		Size: 70.7 MB (70732768 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b899754da923dd693262fcba8e8907aec08d02f52d5cc5c71f9347c909090b9`  
		Last Modified: Sat, 11 May 2019 04:18:31 GMT  
		Size: 784.1 KB (784080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a20c0de25af985407eaaf612302e5bb9bcdee6428d091d95d87b7e5544a91c87`  
		Last Modified: Sat, 11 May 2019 04:18:34 GMT  
		Size: 46.5 MB (46473887 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `orientdb:2.2.37-spatial`

```console
$ docker pull orientdb@sha256:3e3f04ce9089bbe118b9597d0f94c4aebbd9f6c44a45801c25b7c39d85d95ffc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `orientdb:2.2.37-spatial` - linux; amd64

```console
$ docker pull orientdb@sha256:1434ba74f8f3d90a76d2cdbbdd67be92390a95562fbf622cbbae41d707e81b0f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **122.0 MB (121950567 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ade5a7e48c34185f6222920b097f90d2f83a50d7f885290b4dad0ea56b4cd8c1`
-	Default Command: `["server.sh"]`

```dockerfile
# Sat, 11 May 2019 00:07:03 GMT
ADD file:a86aea1f3a7d68f6ae03397b99ea77f2e9ee901c5c59e59f76f93adbb4035913 in / 
# Sat, 11 May 2019 00:07:03 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 01:32:11 GMT
ENV LANG=C.UTF-8
# Sat, 11 May 2019 01:32:12 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 11 May 2019 01:32:12 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
# Sat, 11 May 2019 01:32:12 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Sat, 11 May 2019 01:32:12 GMT
ENV JAVA_VERSION=8u212
# Sat, 11 May 2019 01:32:13 GMT
ENV JAVA_ALPINE_VERSION=8.212.04-r0
# Sat, 11 May 2019 01:32:17 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Sat, 11 May 2019 04:17:31 GMT
MAINTAINER OrientDB LTD (info@orientdb.com)
# Sat, 11 May 2019 04:17:42 GMT
ARG ORIENTDB_DOWNLOAD_SERVER
# Sat, 11 May 2019 04:17:42 GMT
ENV ORIENTDB_VERSION=2.2.37
# Sat, 11 May 2019 04:17:42 GMT
ENV ORIENTDB_DOWNLOAD_MD5=cb80556ef3b0260d0ee5de88ea73fb9d
# Sat, 11 May 2019 04:17:42 GMT
ENV ORIENTDB_DOWNLOAD_SHA1=469c402dde029f265fe905de2c08b43960e81f07
# Sat, 11 May 2019 04:17:42 GMT
ENV ORIENTDB_DOWNLOAD_URL=http://central.maven.org/maven2/com/orientechnologies/orientdb-community/2.2.37/orientdb-community-2.2.37.tar.gz
# Sat, 11 May 2019 04:17:43 GMT
RUN apk add --update tar curl     && rm -rf /var/cache/apk/*
# Sat, 11 May 2019 04:17:48 GMT
RUN mkdir /orientdb &&   wget  $ORIENTDB_DOWNLOAD_URL   && echo "$ORIENTDB_DOWNLOAD_MD5 *orientdb-community-$ORIENTDB_VERSION.tar.gz" | md5sum -c -   && echo "$ORIENTDB_DOWNLOAD_SHA1 *orientdb-community-$ORIENTDB_VERSION.tar.gz" | sha1sum -c -   && tar -xvzf orientdb-community-$ORIENTDB_VERSION.tar.gz -C /orientdb --strip-components=1   && rm orientdb-community-$ORIENTDB_VERSION.tar.gz   && rm -rf /orientdb/databases/*
# Sat, 11 May 2019 04:17:48 GMT
ENV PATH=/orientdb/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Sat, 11 May 2019 04:17:48 GMT
VOLUME [/orientdb/backup /orientdb/databases /orientdb/config]
# Sat, 11 May 2019 04:17:48 GMT
WORKDIR /orientdb
# Sat, 11 May 2019 04:17:49 GMT
EXPOSE 2424
# Sat, 11 May 2019 04:17:49 GMT
EXPOSE 2480
# Sat, 11 May 2019 04:17:49 GMT
CMD ["server.sh"]
# Sat, 11 May 2019 04:17:52 GMT
ENV ORIENTDB_DOWNLOAD_SPATIAL_MD5=9f64ab5e959f5d9ad9ea5195d6d621d2
# Sat, 11 May 2019 04:17:52 GMT
ENV ORIENTDB_DOWNLOAD_SPATIAL_SHA1=1748c9779ea7a8cb8fc068fcabf960e1778e8a19
# Sat, 11 May 2019 04:17:53 GMT
ENV ORIENTDB_DOWNLOAD_SPATIAL_URL=http://central.maven.org/maven2/com/orientechnologies/orientdb-spatial/2.2.37/orientdb-spatial-2.2.37-dist.jar
# Sat, 11 May 2019 04:17:54 GMT
RUN wget $ORIENTDB_DOWNLOAD_SPATIAL_URL     && echo "$ORIENTDB_DOWNLOAD_SPATIAL_MD5 *orientdb-spatial-$ORIENTDB_VERSION-dist.jar" | md5sum -c -     && echo "$ORIENTDB_DOWNLOAD_SPATIAL_SHA1 *orientdb-spatial-$ORIENTDB_VERSION-dist.jar" | sha1sum -c -     && mv orientdb-spatial-*-dist.jar /orientdb/lib/
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
	-	`sha256:c2274a1a0e2786ee9101b08f76111f9ab8019e368dce1e325d3c284a0ca33397`  
		Last Modified: Sat, 11 May 2019 01:37:08 GMT  
		Size: 70.7 MB (70732768 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b899754da923dd693262fcba8e8907aec08d02f52d5cc5c71f9347c909090b9`  
		Last Modified: Sat, 11 May 2019 04:18:31 GMT  
		Size: 784.1 KB (784080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a20c0de25af985407eaaf612302e5bb9bcdee6428d091d95d87b7e5544a91c87`  
		Last Modified: Sat, 11 May 2019 04:18:34 GMT  
		Size: 46.5 MB (46473887 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11a605d9851ea861671003eea3659ed759820014e2ced170ff128c9e2f534b12`  
		Last Modified: Sat, 11 May 2019 04:18:45 GMT  
		Size: 1.2 MB (1202560 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `orientdb:3.0.19`

```console
$ docker pull orientdb@sha256:6e94b5a2ef5c6fc75a2ea6b3ef232cc9310a86d4b8b2a0c4ae6d52236ae1d9a8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `orientdb:3.0.19` - linux; amd64

```console
$ docker pull orientdb@sha256:422d294b35bba2e996bf38c90442257d5a917d9ab970bda5a2f93fcf7dd75ffd
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **111.2 MB (111186408 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eb682e9e6d2cb127c5df1c6a0b60afe0b2a0862c3ae5d63d22e2e2084ef633cd`
-	Default Command: `["server.sh"]`

```dockerfile
# Sat, 11 May 2019 00:07:03 GMT
ADD file:a86aea1f3a7d68f6ae03397b99ea77f2e9ee901c5c59e59f76f93adbb4035913 in / 
# Sat, 11 May 2019 00:07:03 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 01:32:11 GMT
ENV LANG=C.UTF-8
# Sat, 11 May 2019 01:32:12 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 11 May 2019 01:32:12 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
# Sat, 11 May 2019 01:32:12 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Sat, 11 May 2019 01:32:12 GMT
ENV JAVA_VERSION=8u212
# Sat, 11 May 2019 01:32:13 GMT
ENV JAVA_ALPINE_VERSION=8.212.04-r0
# Sat, 11 May 2019 01:32:17 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Sat, 11 May 2019 04:17:31 GMT
MAINTAINER OrientDB LTD (info@orientdb.com)
# Sat, 11 May 2019 04:17:42 GMT
ARG ORIENTDB_DOWNLOAD_SERVER
# Thu, 16 May 2019 23:19:56 GMT
ENV ORIENTDB_VERSION=3.0.19
# Thu, 16 May 2019 23:19:56 GMT
ENV ORIENTDB_DOWNLOAD_MD5=14d80dae8ca7c0d1666ffb041143bc4e
# Thu, 16 May 2019 23:19:57 GMT
ENV ORIENTDB_DOWNLOAD_SHA1=56097490f327e2c4cf50aa62317c60c51ef160b0
# Thu, 16 May 2019 23:19:57 GMT
ENV ORIENTDB_DOWNLOAD_URL=http://central.maven.org/maven2/com/orientechnologies/orientdb-community/3.0.19/orientdb-community-3.0.19.tar.gz
# Thu, 16 May 2019 23:19:58 GMT
RUN apk add --update tar curl     && rm -rf /var/cache/apk/*
# Thu, 16 May 2019 23:20:03 GMT
RUN mkdir /orientdb &&   wget  $ORIENTDB_DOWNLOAD_URL   && echo "$ORIENTDB_DOWNLOAD_MD5 *orientdb-community-$ORIENTDB_VERSION.tar.gz" | md5sum -c -   && echo "$ORIENTDB_DOWNLOAD_SHA1 *orientdb-community-$ORIENTDB_VERSION.tar.gz" | sha1sum -c -   && tar -xvzf orientdb-community-$ORIENTDB_VERSION.tar.gz -C /orientdb --strip-components=1   && rm orientdb-community-$ORIENTDB_VERSION.tar.gz   && rm -rf /orientdb/databases/*
# Thu, 16 May 2019 23:20:03 GMT
ENV PATH=/orientdb/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Thu, 16 May 2019 23:20:03 GMT
VOLUME [/orientdb/backup /orientdb/databases /orientdb/config]
# Thu, 16 May 2019 23:20:03 GMT
WORKDIR /orientdb
# Thu, 16 May 2019 23:20:03 GMT
EXPOSE 2424
# Thu, 16 May 2019 23:20:04 GMT
EXPOSE 2480
# Thu, 16 May 2019 23:20:04 GMT
CMD ["server.sh"]
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
	-	`sha256:c2274a1a0e2786ee9101b08f76111f9ab8019e368dce1e325d3c284a0ca33397`  
		Last Modified: Sat, 11 May 2019 01:37:08 GMT  
		Size: 70.7 MB (70732768 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c12bd23e71a146b57fa9a32948dbc6e6a0b62408c5004f41e30727d1c76aa5f7`  
		Last Modified: Thu, 16 May 2019 23:20:25 GMT  
		Size: 784.1 KB (784079 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2bb1642fca41c9f540644ae5986ff9d770892beb9d37ed107b7507c1d3f6f8a`  
		Last Modified: Thu, 16 May 2019 23:20:28 GMT  
		Size: 36.9 MB (36912289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `orientdb:3.0.19-tp3`

```console
$ docker pull orientdb@sha256:96a326d5e295b765cc4c67979c3c645dfe30351392879cbf5b688833d7e0d4db
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `orientdb:3.0.19-tp3` - linux; amd64

```console
$ docker pull orientdb@sha256:ea5b1625e041689bfeb81cb1a0a42ff2bfb560a694a7c2c9c12f84e310a75f3c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **138.2 MB (138204066 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:60f013cf9a157d8bbf21aa5abc4cc3f966e8e754980e8ed5223ec32831b8a825`
-	Default Command: `["server.sh"]`

```dockerfile
# Sat, 11 May 2019 00:07:03 GMT
ADD file:a86aea1f3a7d68f6ae03397b99ea77f2e9ee901c5c59e59f76f93adbb4035913 in / 
# Sat, 11 May 2019 00:07:03 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 01:32:11 GMT
ENV LANG=C.UTF-8
# Sat, 11 May 2019 01:32:12 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 11 May 2019 01:32:12 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
# Sat, 11 May 2019 01:32:12 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Sat, 11 May 2019 01:32:12 GMT
ENV JAVA_VERSION=8u212
# Sat, 11 May 2019 01:32:13 GMT
ENV JAVA_ALPINE_VERSION=8.212.04-r0
# Sat, 11 May 2019 01:32:17 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Sat, 11 May 2019 04:17:31 GMT
MAINTAINER OrientDB LTD (info@orientdb.com)
# Sat, 11 May 2019 04:17:42 GMT
ARG ORIENTDB_DOWNLOAD_SERVER
# Thu, 16 May 2019 23:19:56 GMT
ENV ORIENTDB_VERSION=3.0.19
# Thu, 16 May 2019 23:20:07 GMT
ENV ORIENTDB_DOWNLOAD_MD5=e11ff3c98a453eba9f5ce26332f4bc47
# Thu, 16 May 2019 23:20:07 GMT
ENV ORIENTDB_DOWNLOAD_SHA1=2267f3537cfeb2eb79d46d05e177426d610c3259
# Thu, 16 May 2019 23:20:07 GMT
ENV ORIENTDB_DOWNLOAD_URL=http://central.maven.org/maven2/com/orientechnologies/orientdb-tp3/3.0.19/orientdb-tp3-3.0.19.tar.gz
# Thu, 16 May 2019 23:20:08 GMT
RUN apk add --update tar curl     && rm -rf /var/cache/apk/*
# Thu, 16 May 2019 23:20:14 GMT
RUN mkdir /orientdb &&   wget  $ORIENTDB_DOWNLOAD_URL   && echo "$ORIENTDB_DOWNLOAD_MD5 *orientdb-tp3-$ORIENTDB_VERSION.tar.gz" | md5sum -c -   && echo "$ORIENTDB_DOWNLOAD_SHA1 *orientdb-tp3-$ORIENTDB_VERSION.tar.gz" | sha1sum -c -   && tar -xvzf orientdb-tp3-$ORIENTDB_VERSION.tar.gz -C /orientdb --strip-components=1   && rm orientdb-tp3-$ORIENTDB_VERSION.tar.gz   && rm -rf /orientdb/databases/*
# Thu, 16 May 2019 23:20:14 GMT
ADD file:5bcd10827429355383b443914a6e6c163692cb388c7594e6e8d3d4625653a011 in /orientdb/config 
# Thu, 16 May 2019 23:20:15 GMT
ENV PATH=/orientdb/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Thu, 16 May 2019 23:20:15 GMT
VOLUME [/orientdb/backup /orientdb/databases /orientdb/config]
# Thu, 16 May 2019 23:20:15 GMT
WORKDIR /orientdb
# Thu, 16 May 2019 23:20:15 GMT
EXPOSE 2424
# Thu, 16 May 2019 23:20:15 GMT
EXPOSE 2480
# Thu, 16 May 2019 23:20:16 GMT
EXPOSE 8182
# Thu, 16 May 2019 23:20:16 GMT
CMD ["server.sh"]
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
	-	`sha256:c2274a1a0e2786ee9101b08f76111f9ab8019e368dce1e325d3c284a0ca33397`  
		Last Modified: Sat, 11 May 2019 01:37:08 GMT  
		Size: 70.7 MB (70732768 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19ee661411acd298bc11d083ac330242db88301d79ab3e634b824036720481ba`  
		Last Modified: Thu, 16 May 2019 23:20:33 GMT  
		Size: 784.1 KB (784079 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f370dc19bab86d879e33f7b322d3f43d3eb6a2f4641a9188e0310932bf2ad9f`  
		Last Modified: Thu, 16 May 2019 23:20:37 GMT  
		Size: 63.9 MB (63928585 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3bfb3065aa203c5ce2bc9a44b87312394a8c68847e6684e474fbf2affca852c9`  
		Last Modified: Thu, 16 May 2019 23:20:33 GMT  
		Size: 1.4 KB (1362 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `orientdb:latest`

```console
$ docker pull orientdb@sha256:6e94b5a2ef5c6fc75a2ea6b3ef232cc9310a86d4b8b2a0c4ae6d52236ae1d9a8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `orientdb:latest` - linux; amd64

```console
$ docker pull orientdb@sha256:422d294b35bba2e996bf38c90442257d5a917d9ab970bda5a2f93fcf7dd75ffd
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **111.2 MB (111186408 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eb682e9e6d2cb127c5df1c6a0b60afe0b2a0862c3ae5d63d22e2e2084ef633cd`
-	Default Command: `["server.sh"]`

```dockerfile
# Sat, 11 May 2019 00:07:03 GMT
ADD file:a86aea1f3a7d68f6ae03397b99ea77f2e9ee901c5c59e59f76f93adbb4035913 in / 
# Sat, 11 May 2019 00:07:03 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 01:32:11 GMT
ENV LANG=C.UTF-8
# Sat, 11 May 2019 01:32:12 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 11 May 2019 01:32:12 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
# Sat, 11 May 2019 01:32:12 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Sat, 11 May 2019 01:32:12 GMT
ENV JAVA_VERSION=8u212
# Sat, 11 May 2019 01:32:13 GMT
ENV JAVA_ALPINE_VERSION=8.212.04-r0
# Sat, 11 May 2019 01:32:17 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Sat, 11 May 2019 04:17:31 GMT
MAINTAINER OrientDB LTD (info@orientdb.com)
# Sat, 11 May 2019 04:17:42 GMT
ARG ORIENTDB_DOWNLOAD_SERVER
# Thu, 16 May 2019 23:19:56 GMT
ENV ORIENTDB_VERSION=3.0.19
# Thu, 16 May 2019 23:19:56 GMT
ENV ORIENTDB_DOWNLOAD_MD5=14d80dae8ca7c0d1666ffb041143bc4e
# Thu, 16 May 2019 23:19:57 GMT
ENV ORIENTDB_DOWNLOAD_SHA1=56097490f327e2c4cf50aa62317c60c51ef160b0
# Thu, 16 May 2019 23:19:57 GMT
ENV ORIENTDB_DOWNLOAD_URL=http://central.maven.org/maven2/com/orientechnologies/orientdb-community/3.0.19/orientdb-community-3.0.19.tar.gz
# Thu, 16 May 2019 23:19:58 GMT
RUN apk add --update tar curl     && rm -rf /var/cache/apk/*
# Thu, 16 May 2019 23:20:03 GMT
RUN mkdir /orientdb &&   wget  $ORIENTDB_DOWNLOAD_URL   && echo "$ORIENTDB_DOWNLOAD_MD5 *orientdb-community-$ORIENTDB_VERSION.tar.gz" | md5sum -c -   && echo "$ORIENTDB_DOWNLOAD_SHA1 *orientdb-community-$ORIENTDB_VERSION.tar.gz" | sha1sum -c -   && tar -xvzf orientdb-community-$ORIENTDB_VERSION.tar.gz -C /orientdb --strip-components=1   && rm orientdb-community-$ORIENTDB_VERSION.tar.gz   && rm -rf /orientdb/databases/*
# Thu, 16 May 2019 23:20:03 GMT
ENV PATH=/orientdb/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Thu, 16 May 2019 23:20:03 GMT
VOLUME [/orientdb/backup /orientdb/databases /orientdb/config]
# Thu, 16 May 2019 23:20:03 GMT
WORKDIR /orientdb
# Thu, 16 May 2019 23:20:03 GMT
EXPOSE 2424
# Thu, 16 May 2019 23:20:04 GMT
EXPOSE 2480
# Thu, 16 May 2019 23:20:04 GMT
CMD ["server.sh"]
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
	-	`sha256:c2274a1a0e2786ee9101b08f76111f9ab8019e368dce1e325d3c284a0ca33397`  
		Last Modified: Sat, 11 May 2019 01:37:08 GMT  
		Size: 70.7 MB (70732768 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c12bd23e71a146b57fa9a32948dbc6e6a0b62408c5004f41e30727d1c76aa5f7`  
		Last Modified: Thu, 16 May 2019 23:20:25 GMT  
		Size: 784.1 KB (784079 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2bb1642fca41c9f540644ae5986ff9d770892beb9d37ed107b7507c1d3f6f8a`  
		Last Modified: Thu, 16 May 2019 23:20:28 GMT  
		Size: 36.9 MB (36912289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
