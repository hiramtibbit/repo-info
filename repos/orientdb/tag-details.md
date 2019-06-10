<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `orientdb`

-	[`orientdb:2.0.18`](#orientdb2018)
-	[`orientdb:2.1.25`](#orientdb2125)
-	[`orientdb:2.2.37`](#orientdb2237)
-	[`orientdb:2.2.37-spatial`](#orientdb2237-spatial)
-	[`orientdb:3.0.20`](#orientdb3020)
-	[`orientdb:3.0.20-tp3`](#orientdb3020-tp3)
-	[`orientdb:latest`](#orientdblatest)

## `orientdb:2.0.18`

```console
$ docker pull orientdb@sha256:464cc349c14bd91195b6f8e1db5724334133a9a0d5ae6a197a674505479e1483
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `orientdb:2.0.18` - linux; amd64

```console
$ docker pull orientdb@sha256:b608dad693f8fb91ac3353f0fdc7e91d341f031d1e74911bca408ee07c7a1292
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **266.0 MB (266047666 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e1cce4eeb680d4c69bad3368b5f0fc4d21aa7cf049f17dbbcebf616d1e92b948`
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
# Wed, 05 Jun 2019 22:25:46 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64) upstreamArch='x64' ;; 		arm64) upstreamArch='aarch64' ;; 		*) echo >&2 "error: unsupported architecture: $dpkgArch" ;; 	esac; 		wget -O openjdk.tgz.asc "${JAVA_BASE_URL}${upstreamArch}_linux_${JAVA_URL_VERSION}.tar.gz.sign"; 	wget -O openjdk.tgz "${JAVA_BASE_URL}${upstreamArch}_linux_${JAVA_URL_VERSION}.tar.gz" --progress=dot:giga; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys CA5F11C6CE22644D42C6AC4492EF8D39DC13168F; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys EAC843EBD3EFDB98CC772FADA5CD6035332FA671; 	gpg --batch --list-sigs --keyid-format 0xLONG CA5F11C6CE22644D42C6AC4492EF8D39DC13168F | grep '0xA5CD6035332FA671' | grep 'Andrew Haley'; 	gpg --batch --verify openjdk.tgz.asc openjdk.tgz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 			{ 		echo '#!/usr/bin/env bash'; 		echo 'set -Eeuo pipefail'; 		echo 'if ! [ -d "$JAVA_HOME" ]; then echo >&2 "error: missing JAVA_HOME environment variable"; exit 1; fi'; 		echo 'cacertsFile=; for f in "$JAVA_HOME/lib/security/cacerts" "$JAVA_HOME/jre/lib/security/cacerts"; do if [ -e "$f" ]; then cacertsFile="$f"; break; fi; done'; 		echo 'if [ -z "$cacertsFile" ] || ! [ -f "$cacertsFile" ]; then echo >&2 "error: failed to find cacerts file in $JAVA_HOME"; exit 1; fi'; 		echo 'trust extract --overwrite --format=java-cacerts --filter=ca-anchors --purpose=server-auth "$cacertsFile"'; 	} > /etc/ca-certificates/update.d/docker-openjdk; 	chmod +x /etc/ca-certificates/update.d/docker-openjdk; 	/etc/ca-certificates/update.d/docker-openjdk; 		find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf; 	ldconfig; 		javac -version; 	java -version
# Wed, 05 Jun 2019 23:01:49 GMT
MAINTAINER OrientDB LTD (info@orientdb.com)
# Wed, 05 Jun 2019 23:01:49 GMT
ENV ORIENTDB_VERSION=2.0.18
# Wed, 05 Jun 2019 23:01:50 GMT
ENV ORIENTDB_DOWNLOAD_MD5=9e7b7e7b6d95795b188adb4e5898a1b8
# Wed, 05 Jun 2019 23:01:50 GMT
ENV ORIENTDB_DOWNLOAD_SHA1=f562794536bbf8ae2145f96153e58b1e5d9211b3
# Wed, 05 Jun 2019 23:01:54 GMT
RUN mkdir /orientdb &&   wget  "http://central.maven.org/maven2/com/orientechnologies/orientdb-community/$ORIENTDB_VERSION/orientdb-community-$ORIENTDB_VERSION.tar.gz"   && echo "$ORIENTDB_DOWNLOAD_MD5 *orientdb-community-$ORIENTDB_VERSION.tar.gz" | md5sum -c -   && echo "$ORIENTDB_DOWNLOAD_SHA1 *orientdb-community-$ORIENTDB_VERSION.tar.gz" | sha1sum -c -   && tar -xvzf orientdb-community-$ORIENTDB_VERSION.tar.gz -C /orientdb --strip-components=1  && rm orientdb-community-$ORIENTDB_VERSION.tar.gz   && rm -rf /orientdb/databases/*
# Wed, 05 Jun 2019 23:01:54 GMT
ENV PATH=/orientdb/bin:/usr/local/openjdk-8/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Jun 2019 23:01:54 GMT
VOLUME [/orientdb/backup /orientdb/databases /orientdb/config]
# Wed, 05 Jun 2019 23:01:55 GMT
WORKDIR /orientdb
# Wed, 05 Jun 2019 23:01:55 GMT
EXPOSE 2424
# Wed, 05 Jun 2019 23:01:55 GMT
EXPOSE 2480
# Wed, 05 Jun 2019 23:01:55 GMT
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
	-	`sha256:05b9cbca178db64d86278023f8d9ad56e4e5321a97d028e8e9ff5a825ab804c0`  
		Last Modified: Wed, 05 Jun 2019 22:28:14 GMT  
		Size: 104.0 MB (103998176 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3c29ef367835654a190214cf42d9aa734608263a9d33ff99e22c727f7fc44b3`  
		Last Modified: Wed, 05 Jun 2019 23:02:18 GMT  
		Size: 46.6 MB (46586533 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `orientdb:2.1.25`

```console
$ docker pull orientdb@sha256:d627c3ad021e44e8646b4c200902027c5f4e769d90ebf84b5b15dec3bf11ea91
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `orientdb:2.1.25` - linux; amd64

```console
$ docker pull orientdb@sha256:60f0c7ff129aff974d06dc6c267bcc435bac3527c232b08534188c0d0224e12e
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **166.5 MB (166459726 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cadddd11627058da7b1ec656cd987d3612698808799db13b6d5236eff804a575`
-	Default Command: `["server.sh"]`

```dockerfile
# Wed, 08 May 2019 00:33:32 GMT
ADD file:fcb9328ea4c1156709f3d04c3d9a5f3667e77fb36a4a83390ae2495555fc0238 in / 
# Wed, 08 May 2019 00:33:32 GMT
CMD ["bash"]
# Wed, 29 May 2019 21:20:46 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates p11-kit 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 29 May 2019 21:20:46 GMT
ENV LANG=C.UTF-8
# Wed, 29 May 2019 21:21:43 GMT
ENV JAVA_HOME=/usr/local/openjdk-8
# Wed, 29 May 2019 21:21:44 GMT
ENV PATH=/usr/local/openjdk-8/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 29 May 2019 21:21:47 GMT
RUN { echo '#/bin/sh'; echo 'echo "$JAVA_HOME"'; } > /usr/local/bin/docker-java-home && chmod +x /usr/local/bin/docker-java-home && [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 29 May 2019 21:21:47 GMT
ENV JAVA_VERSION=8u212-b04
# Wed, 29 May 2019 21:21:47 GMT
ENV JAVA_BASE_URL=https://github.com/AdoptOpenJDK/openjdk8-upstream-binaries/releases/download/jdk8u212-b04/OpenJDK8U-
# Wed, 29 May 2019 21:21:47 GMT
ENV JAVA_URL_VERSION=8u212b04
# Wed, 05 Jun 2019 22:26:07 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64) upstreamArch='x64' ;; 		arm64) upstreamArch='aarch64' ;; 		*) echo >&2 "error: unsupported architecture: $dpkgArch" ;; 	esac; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dirmngr 		gnupg 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O openjdk.tgz.asc "${JAVA_BASE_URL}${upstreamArch}_linux_${JAVA_URL_VERSION}.tar.gz.sign"; 	wget -O openjdk.tgz "${JAVA_BASE_URL}${upstreamArch}_linux_${JAVA_URL_VERSION}.tar.gz" --progress=dot:giga; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys CA5F11C6CE22644D42C6AC4492EF8D39DC13168F; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys EAC843EBD3EFDB98CC772FADA5CD6035332FA671; 	gpg --batch --list-sigs --keyid-format 0xLONG CA5F11C6CE22644D42C6AC4492EF8D39DC13168F | grep '0xA5CD6035332FA671' | grep 'Andrew Haley'; 	gpg --batch --verify openjdk.tgz.asc openjdk.tgz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 			apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		{ 		echo '#!/usr/bin/env bash'; 		echo 'set -Eeuo pipefail'; 		echo 'if ! [ -d "$JAVA_HOME" ]; then echo >&2 "error: missing JAVA_HOME environment variable"; exit 1; fi'; 		echo 'cacertsFile=; for f in "$JAVA_HOME/lib/security/cacerts" "$JAVA_HOME/jre/lib/security/cacerts"; do if [ -e "$f" ]; then cacertsFile="$f"; break; fi; done'; 		echo 'if [ -z "$cacertsFile" ] || ! [ -f "$cacertsFile" ]; then echo >&2 "error: failed to find cacerts file in $JAVA_HOME"; exit 1; fi'; 		echo 'trust extract --overwrite --format=java-cacerts --filter=ca-anchors --purpose=server-auth "$cacertsFile"'; 	} > /etc/ca-certificates/update.d/docker-openjdk; 	chmod +x /etc/ca-certificates/update.d/docker-openjdk; 	/etc/ca-certificates/update.d/docker-openjdk; 		find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf; 	ldconfig; 		javac -version; 	java -version
# Mon, 10 Jun 2019 19:22:09 GMT
MAINTAINER OrientDB LTD (info@orientdb.com)
# Mon, 10 Jun 2019 19:22:09 GMT
ENV ORIENTDB_VERSION=2.1.25
# Mon, 10 Jun 2019 19:22:10 GMT
ENV ORIENTDB_DOWNLOAD_MD5=054da3fb7c56e7822b2af116966576ce
# Mon, 10 Jun 2019 19:22:10 GMT
ENV ORIENTDB_DOWNLOAD_SHA1=b7b08242b40117ac8eb9a201f8704bde839dfcb8
# Mon, 10 Jun 2019 19:22:20 GMT
RUN apt update     && apt install -y curl wget     && rm -rf /var/lib/apt/lists/*
# Mon, 10 Jun 2019 19:22:24 GMT
RUN mkdir /orientdb &&   wget  "http://central.maven.org/maven2/com/orientechnologies/orientdb-community/$ORIENTDB_VERSION/orientdb-community-$ORIENTDB_VERSION.tar.gz"   && echo "$ORIENTDB_DOWNLOAD_MD5 *orientdb-community-$ORIENTDB_VERSION.tar.gz" | md5sum -c -   && echo "$ORIENTDB_DOWNLOAD_SHA1 *orientdb-community-$ORIENTDB_VERSION.tar.gz" | sha1sum -c -   && tar -xvzf orientdb-community-$ORIENTDB_VERSION.tar.gz -C /orientdb --strip-components=1  && rm orientdb-community-$ORIENTDB_VERSION.tar.gz   && rm -rf /orientdb/databases/*
# Mon, 10 Jun 2019 19:22:25 GMT
ENV PATH=/orientdb/bin:/usr/local/openjdk-8/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 10 Jun 2019 19:22:25 GMT
VOLUME [/orientdb/backup /orientdb/databases /orientdb/config]
# Mon, 10 Jun 2019 19:22:25 GMT
WORKDIR /orientdb
# Mon, 10 Jun 2019 19:22:25 GMT
EXPOSE 2424
# Mon, 10 Jun 2019 19:22:25 GMT
EXPOSE 2480
# Mon, 10 Jun 2019 19:22:26 GMT
CMD ["server.sh"]
```

-	Layers:
	-	`sha256:743f2d6c1f65c793009f30acb07845ba2ef968192732afdab2ecf9a475515393`  
		Last Modified: Wed, 08 May 2019 00:37:57 GMT  
		Size: 22.5 MB (22489350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b83e581826a65fc9aaa67825aaa71f5c7261d43e53f012c45be1e9b864a8c95f`  
		Last Modified: Wed, 29 May 2019 21:25:01 GMT  
		Size: 2.9 MB (2905773 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04305660f45e4e2218ac34c3ef2a84646260a6b2076035b4279e195e709318a7`  
		Last Modified: Wed, 29 May 2019 21:26:02 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ac80ecf8394d722b6777cd9d033170d00f69142759020122c82c1f2448cfc45`  
		Last Modified: Wed, 05 Jun 2019 22:28:37 GMT  
		Size: 104.3 MB (104259240 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18d1b687f9ab215c6d7e7a4f607c0688a0c35e6d029a2e5b466a6d9f3d10d13a`  
		Last Modified: Mon, 10 Jun 2019 19:23:34 GMT  
		Size: 5.7 MB (5717182 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3f916f387c165e56ed1d5ee2f4d8b3a0eeb099c858c9c3e5e717e92a2a24d40`  
		Last Modified: Mon, 10 Jun 2019 19:23:34 GMT  
		Size: 31.1 MB (31087959 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `orientdb:2.2.37`

```console
$ docker pull orientdb@sha256:8147a4c60ef785097bbffa24ca96a17d64a2700ab199ac5281e4c9fc96468465
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `orientdb:2.2.37` - linux; amd64

```console
$ docker pull orientdb@sha256:0e1fde5e0567aa713986e8b90a608233065c322711e78a984b772f41019206c0
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **181.8 MB (181845683 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2076d52b36ea3290bdc0fae8df8b9cf150079fa21939428a952cf6dde1c38b37`
-	Default Command: `["server.sh"]`

```dockerfile
# Wed, 08 May 2019 00:33:32 GMT
ADD file:fcb9328ea4c1156709f3d04c3d9a5f3667e77fb36a4a83390ae2495555fc0238 in / 
# Wed, 08 May 2019 00:33:32 GMT
CMD ["bash"]
# Wed, 29 May 2019 21:20:46 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates p11-kit 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 29 May 2019 21:20:46 GMT
ENV LANG=C.UTF-8
# Wed, 29 May 2019 21:21:43 GMT
ENV JAVA_HOME=/usr/local/openjdk-8
# Wed, 29 May 2019 21:21:44 GMT
ENV PATH=/usr/local/openjdk-8/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 29 May 2019 21:21:47 GMT
RUN { echo '#/bin/sh'; echo 'echo "$JAVA_HOME"'; } > /usr/local/bin/docker-java-home && chmod +x /usr/local/bin/docker-java-home && [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 29 May 2019 21:21:47 GMT
ENV JAVA_VERSION=8u212-b04
# Wed, 29 May 2019 21:21:47 GMT
ENV JAVA_BASE_URL=https://github.com/AdoptOpenJDK/openjdk8-upstream-binaries/releases/download/jdk8u212-b04/OpenJDK8U-
# Wed, 29 May 2019 21:21:47 GMT
ENV JAVA_URL_VERSION=8u212b04
# Wed, 05 Jun 2019 22:26:07 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64) upstreamArch='x64' ;; 		arm64) upstreamArch='aarch64' ;; 		*) echo >&2 "error: unsupported architecture: $dpkgArch" ;; 	esac; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dirmngr 		gnupg 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O openjdk.tgz.asc "${JAVA_BASE_URL}${upstreamArch}_linux_${JAVA_URL_VERSION}.tar.gz.sign"; 	wget -O openjdk.tgz "${JAVA_BASE_URL}${upstreamArch}_linux_${JAVA_URL_VERSION}.tar.gz" --progress=dot:giga; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys CA5F11C6CE22644D42C6AC4492EF8D39DC13168F; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys EAC843EBD3EFDB98CC772FADA5CD6035332FA671; 	gpg --batch --list-sigs --keyid-format 0xLONG CA5F11C6CE22644D42C6AC4492EF8D39DC13168F | grep '0xA5CD6035332FA671' | grep 'Andrew Haley'; 	gpg --batch --verify openjdk.tgz.asc openjdk.tgz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 			apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		{ 		echo '#!/usr/bin/env bash'; 		echo 'set -Eeuo pipefail'; 		echo 'if ! [ -d "$JAVA_HOME" ]; then echo >&2 "error: missing JAVA_HOME environment variable"; exit 1; fi'; 		echo 'cacertsFile=; for f in "$JAVA_HOME/lib/security/cacerts" "$JAVA_HOME/jre/lib/security/cacerts"; do if [ -e "$f" ]; then cacertsFile="$f"; break; fi; done'; 		echo 'if [ -z "$cacertsFile" ] || ! [ -f "$cacertsFile" ]; then echo >&2 "error: failed to find cacerts file in $JAVA_HOME"; exit 1; fi'; 		echo 'trust extract --overwrite --format=java-cacerts --filter=ca-anchors --purpose=server-auth "$cacertsFile"'; 	} > /etc/ca-certificates/update.d/docker-openjdk; 	chmod +x /etc/ca-certificates/update.d/docker-openjdk; 	/etc/ca-certificates/update.d/docker-openjdk; 		find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf; 	ldconfig; 		javac -version; 	java -version
# Mon, 10 Jun 2019 19:22:09 GMT
MAINTAINER OrientDB LTD (info@orientdb.com)
# Mon, 10 Jun 2019 19:22:29 GMT
ARG ORIENTDB_DOWNLOAD_SERVER
# Mon, 10 Jun 2019 19:22:29 GMT
ENV ORIENTDB_VERSION=2.2.37
# Mon, 10 Jun 2019 19:22:29 GMT
ENV ORIENTDB_DOWNLOAD_MD5=cb80556ef3b0260d0ee5de88ea73fb9d
# Mon, 10 Jun 2019 19:22:30 GMT
ENV ORIENTDB_DOWNLOAD_SHA1=469c402dde029f265fe905de2c08b43960e81f07
# Mon, 10 Jun 2019 19:22:30 GMT
ENV ORIENTDB_DOWNLOAD_URL=http://central.maven.org/maven2/com/orientechnologies/orientdb-community/2.2.37/orientdb-community-2.2.37.tar.gz
# Mon, 10 Jun 2019 19:22:37 GMT
RUN apt update     && apt install -y curl wget     && rm -rf /var/lib/apt/lists/*
# Mon, 10 Jun 2019 19:22:41 GMT
RUN mkdir /orientdb &&   wget  $ORIENTDB_DOWNLOAD_URL   && echo "$ORIENTDB_DOWNLOAD_MD5 *orientdb-community-$ORIENTDB_VERSION.tar.gz" | md5sum -c -   && echo "$ORIENTDB_DOWNLOAD_SHA1 *orientdb-community-$ORIENTDB_VERSION.tar.gz" | sha1sum -c -   && tar -xvzf orientdb-community-$ORIENTDB_VERSION.tar.gz -C /orientdb --strip-components=1   && rm orientdb-community-$ORIENTDB_VERSION.tar.gz   && rm -rf /orientdb/databases/*
# Mon, 10 Jun 2019 19:22:41 GMT
ENV PATH=/orientdb/bin:/usr/local/openjdk-8/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 10 Jun 2019 19:22:41 GMT
VOLUME [/orientdb/backup /orientdb/databases /orientdb/config]
# Mon, 10 Jun 2019 19:22:42 GMT
WORKDIR /orientdb
# Mon, 10 Jun 2019 19:22:42 GMT
EXPOSE 2424
# Mon, 10 Jun 2019 19:22:42 GMT
EXPOSE 2480
# Mon, 10 Jun 2019 19:22:42 GMT
CMD ["server.sh"]
```

-	Layers:
	-	`sha256:743f2d6c1f65c793009f30acb07845ba2ef968192732afdab2ecf9a475515393`  
		Last Modified: Wed, 08 May 2019 00:37:57 GMT  
		Size: 22.5 MB (22489350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b83e581826a65fc9aaa67825aaa71f5c7261d43e53f012c45be1e9b864a8c95f`  
		Last Modified: Wed, 29 May 2019 21:25:01 GMT  
		Size: 2.9 MB (2905773 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04305660f45e4e2218ac34c3ef2a84646260a6b2076035b4279e195e709318a7`  
		Last Modified: Wed, 29 May 2019 21:26:02 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ac80ecf8394d722b6777cd9d033170d00f69142759020122c82c1f2448cfc45`  
		Last Modified: Wed, 05 Jun 2019 22:28:37 GMT  
		Size: 104.3 MB (104259240 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:036099ff9e3c507f63c973eeda0e4ac95dc909b18836dec64954a89ef3695894`  
		Last Modified: Mon, 10 Jun 2019 19:23:38 GMT  
		Size: 5.7 MB (5717174 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76cdeb1687daaa8734ec4b1b2239076eb3c7ca1d507fafce8c45b2b7d1dc1e36`  
		Last Modified: Mon, 10 Jun 2019 19:23:40 GMT  
		Size: 46.5 MB (46473924 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `orientdb:2.2.37-spatial`

```console
$ docker pull orientdb@sha256:2cb2ae04098c910aaf0a995025a1782bc47ba9eebbbbf397cede7222fb9e6294
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `orientdb:2.2.37-spatial` - linux; amd64

```console
$ docker pull orientdb@sha256:53640479f98b6db9170905b8e1146860d492a4f79bbaf83929035a8fb425a8fa
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **183.0 MB (183048264 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:27dd591a6c963a2da4745015d4990a422cec371e271768caa2e004774ca7ff11`
-	Default Command: `["server.sh"]`

```dockerfile
# Wed, 08 May 2019 00:33:32 GMT
ADD file:fcb9328ea4c1156709f3d04c3d9a5f3667e77fb36a4a83390ae2495555fc0238 in / 
# Wed, 08 May 2019 00:33:32 GMT
CMD ["bash"]
# Wed, 29 May 2019 21:20:46 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates p11-kit 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 29 May 2019 21:20:46 GMT
ENV LANG=C.UTF-8
# Wed, 29 May 2019 21:21:43 GMT
ENV JAVA_HOME=/usr/local/openjdk-8
# Wed, 29 May 2019 21:21:44 GMT
ENV PATH=/usr/local/openjdk-8/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 29 May 2019 21:21:47 GMT
RUN { echo '#/bin/sh'; echo 'echo "$JAVA_HOME"'; } > /usr/local/bin/docker-java-home && chmod +x /usr/local/bin/docker-java-home && [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 29 May 2019 21:21:47 GMT
ENV JAVA_VERSION=8u212-b04
# Wed, 29 May 2019 21:21:47 GMT
ENV JAVA_BASE_URL=https://github.com/AdoptOpenJDK/openjdk8-upstream-binaries/releases/download/jdk8u212-b04/OpenJDK8U-
# Wed, 29 May 2019 21:21:47 GMT
ENV JAVA_URL_VERSION=8u212b04
# Wed, 05 Jun 2019 22:26:07 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64) upstreamArch='x64' ;; 		arm64) upstreamArch='aarch64' ;; 		*) echo >&2 "error: unsupported architecture: $dpkgArch" ;; 	esac; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dirmngr 		gnupg 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O openjdk.tgz.asc "${JAVA_BASE_URL}${upstreamArch}_linux_${JAVA_URL_VERSION}.tar.gz.sign"; 	wget -O openjdk.tgz "${JAVA_BASE_URL}${upstreamArch}_linux_${JAVA_URL_VERSION}.tar.gz" --progress=dot:giga; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys CA5F11C6CE22644D42C6AC4492EF8D39DC13168F; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys EAC843EBD3EFDB98CC772FADA5CD6035332FA671; 	gpg --batch --list-sigs --keyid-format 0xLONG CA5F11C6CE22644D42C6AC4492EF8D39DC13168F | grep '0xA5CD6035332FA671' | grep 'Andrew Haley'; 	gpg --batch --verify openjdk.tgz.asc openjdk.tgz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 			apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		{ 		echo '#!/usr/bin/env bash'; 		echo 'set -Eeuo pipefail'; 		echo 'if ! [ -d "$JAVA_HOME" ]; then echo >&2 "error: missing JAVA_HOME environment variable"; exit 1; fi'; 		echo 'cacertsFile=; for f in "$JAVA_HOME/lib/security/cacerts" "$JAVA_HOME/jre/lib/security/cacerts"; do if [ -e "$f" ]; then cacertsFile="$f"; break; fi; done'; 		echo 'if [ -z "$cacertsFile" ] || ! [ -f "$cacertsFile" ]; then echo >&2 "error: failed to find cacerts file in $JAVA_HOME"; exit 1; fi'; 		echo 'trust extract --overwrite --format=java-cacerts --filter=ca-anchors --purpose=server-auth "$cacertsFile"'; 	} > /etc/ca-certificates/update.d/docker-openjdk; 	chmod +x /etc/ca-certificates/update.d/docker-openjdk; 	/etc/ca-certificates/update.d/docker-openjdk; 		find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf; 	ldconfig; 		javac -version; 	java -version
# Mon, 10 Jun 2019 19:22:09 GMT
MAINTAINER OrientDB LTD (info@orientdb.com)
# Mon, 10 Jun 2019 19:22:29 GMT
ARG ORIENTDB_DOWNLOAD_SERVER
# Mon, 10 Jun 2019 19:22:29 GMT
ENV ORIENTDB_VERSION=2.2.37
# Mon, 10 Jun 2019 19:22:29 GMT
ENV ORIENTDB_DOWNLOAD_MD5=cb80556ef3b0260d0ee5de88ea73fb9d
# Mon, 10 Jun 2019 19:22:30 GMT
ENV ORIENTDB_DOWNLOAD_SHA1=469c402dde029f265fe905de2c08b43960e81f07
# Mon, 10 Jun 2019 19:22:30 GMT
ENV ORIENTDB_DOWNLOAD_URL=http://central.maven.org/maven2/com/orientechnologies/orientdb-community/2.2.37/orientdb-community-2.2.37.tar.gz
# Mon, 10 Jun 2019 19:22:37 GMT
RUN apt update     && apt install -y curl wget     && rm -rf /var/lib/apt/lists/*
# Mon, 10 Jun 2019 19:22:41 GMT
RUN mkdir /orientdb &&   wget  $ORIENTDB_DOWNLOAD_URL   && echo "$ORIENTDB_DOWNLOAD_MD5 *orientdb-community-$ORIENTDB_VERSION.tar.gz" | md5sum -c -   && echo "$ORIENTDB_DOWNLOAD_SHA1 *orientdb-community-$ORIENTDB_VERSION.tar.gz" | sha1sum -c -   && tar -xvzf orientdb-community-$ORIENTDB_VERSION.tar.gz -C /orientdb --strip-components=1   && rm orientdb-community-$ORIENTDB_VERSION.tar.gz   && rm -rf /orientdb/databases/*
# Mon, 10 Jun 2019 19:22:41 GMT
ENV PATH=/orientdb/bin:/usr/local/openjdk-8/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 10 Jun 2019 19:22:41 GMT
VOLUME [/orientdb/backup /orientdb/databases /orientdb/config]
# Mon, 10 Jun 2019 19:22:42 GMT
WORKDIR /orientdb
# Mon, 10 Jun 2019 19:22:42 GMT
EXPOSE 2424
# Mon, 10 Jun 2019 19:22:42 GMT
EXPOSE 2480
# Mon, 10 Jun 2019 19:22:42 GMT
CMD ["server.sh"]
# Mon, 10 Jun 2019 19:22:46 GMT
ENV ORIENTDB_DOWNLOAD_SPATIAL_MD5=9f64ab5e959f5d9ad9ea5195d6d621d2
# Mon, 10 Jun 2019 19:22:46 GMT
ENV ORIENTDB_DOWNLOAD_SPATIAL_SHA1=1748c9779ea7a8cb8fc068fcabf960e1778e8a19
# Mon, 10 Jun 2019 19:22:46 GMT
ENV ORIENTDB_DOWNLOAD_SPATIAL_URL=http://central.maven.org/maven2/com/orientechnologies/orientdb-spatial/2.2.37/orientdb-spatial-2.2.37-dist.jar
# Mon, 10 Jun 2019 19:22:47 GMT
RUN wget $ORIENTDB_DOWNLOAD_SPATIAL_URL     && echo "$ORIENTDB_DOWNLOAD_SPATIAL_MD5 *orientdb-spatial-$ORIENTDB_VERSION-dist.jar" | md5sum -c -     && echo "$ORIENTDB_DOWNLOAD_SPATIAL_SHA1 *orientdb-spatial-$ORIENTDB_VERSION-dist.jar" | sha1sum -c -     && mv orientdb-spatial-*-dist.jar /orientdb/lib/
```

-	Layers:
	-	`sha256:743f2d6c1f65c793009f30acb07845ba2ef968192732afdab2ecf9a475515393`  
		Last Modified: Wed, 08 May 2019 00:37:57 GMT  
		Size: 22.5 MB (22489350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b83e581826a65fc9aaa67825aaa71f5c7261d43e53f012c45be1e9b864a8c95f`  
		Last Modified: Wed, 29 May 2019 21:25:01 GMT  
		Size: 2.9 MB (2905773 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04305660f45e4e2218ac34c3ef2a84646260a6b2076035b4279e195e709318a7`  
		Last Modified: Wed, 29 May 2019 21:26:02 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ac80ecf8394d722b6777cd9d033170d00f69142759020122c82c1f2448cfc45`  
		Last Modified: Wed, 05 Jun 2019 22:28:37 GMT  
		Size: 104.3 MB (104259240 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:036099ff9e3c507f63c973eeda0e4ac95dc909b18836dec64954a89ef3695894`  
		Last Modified: Mon, 10 Jun 2019 19:23:38 GMT  
		Size: 5.7 MB (5717174 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76cdeb1687daaa8734ec4b1b2239076eb3c7ca1d507fafce8c45b2b7d1dc1e36`  
		Last Modified: Mon, 10 Jun 2019 19:23:40 GMT  
		Size: 46.5 MB (46473924 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:459a08450b64e88ceddc591398e3202f8cea3b2f7d4fe01ce2b8b4a7d710b29d`  
		Last Modified: Mon, 10 Jun 2019 19:23:43 GMT  
		Size: 1.2 MB (1202581 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `orientdb:3.0.20`

```console
$ docker pull orientdb@sha256:c993ade13738785eb7dcfa30a920513bf84bf15b85e77ba6e7dba3515e4101bf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `orientdb:3.0.20` - linux; amd64

```console
$ docker pull orientdb@sha256:aa22966a77ce5f268e6e218f0c739b0a0d2993611029e14fb7b7a3dab3b73cd6
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **172.3 MB (172280399 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9703e626a253dd467d9603f3def0f489ad9f0491708333c4b66cd7df6ef2c465`
-	Default Command: `["server.sh"]`

```dockerfile
# Wed, 08 May 2019 00:33:32 GMT
ADD file:fcb9328ea4c1156709f3d04c3d9a5f3667e77fb36a4a83390ae2495555fc0238 in / 
# Wed, 08 May 2019 00:33:32 GMT
CMD ["bash"]
# Wed, 29 May 2019 21:20:46 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates p11-kit 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 29 May 2019 21:20:46 GMT
ENV LANG=C.UTF-8
# Wed, 29 May 2019 21:21:43 GMT
ENV JAVA_HOME=/usr/local/openjdk-8
# Wed, 29 May 2019 21:21:44 GMT
ENV PATH=/usr/local/openjdk-8/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 29 May 2019 21:21:47 GMT
RUN { echo '#/bin/sh'; echo 'echo "$JAVA_HOME"'; } > /usr/local/bin/docker-java-home && chmod +x /usr/local/bin/docker-java-home && [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 29 May 2019 21:21:47 GMT
ENV JAVA_VERSION=8u212-b04
# Wed, 29 May 2019 21:21:47 GMT
ENV JAVA_BASE_URL=https://github.com/AdoptOpenJDK/openjdk8-upstream-binaries/releases/download/jdk8u212-b04/OpenJDK8U-
# Wed, 29 May 2019 21:21:47 GMT
ENV JAVA_URL_VERSION=8u212b04
# Wed, 05 Jun 2019 22:26:07 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64) upstreamArch='x64' ;; 		arm64) upstreamArch='aarch64' ;; 		*) echo >&2 "error: unsupported architecture: $dpkgArch" ;; 	esac; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dirmngr 		gnupg 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O openjdk.tgz.asc "${JAVA_BASE_URL}${upstreamArch}_linux_${JAVA_URL_VERSION}.tar.gz.sign"; 	wget -O openjdk.tgz "${JAVA_BASE_URL}${upstreamArch}_linux_${JAVA_URL_VERSION}.tar.gz" --progress=dot:giga; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys CA5F11C6CE22644D42C6AC4492EF8D39DC13168F; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys EAC843EBD3EFDB98CC772FADA5CD6035332FA671; 	gpg --batch --list-sigs --keyid-format 0xLONG CA5F11C6CE22644D42C6AC4492EF8D39DC13168F | grep '0xA5CD6035332FA671' | grep 'Andrew Haley'; 	gpg --batch --verify openjdk.tgz.asc openjdk.tgz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 			apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		{ 		echo '#!/usr/bin/env bash'; 		echo 'set -Eeuo pipefail'; 		echo 'if ! [ -d "$JAVA_HOME" ]; then echo >&2 "error: missing JAVA_HOME environment variable"; exit 1; fi'; 		echo 'cacertsFile=; for f in "$JAVA_HOME/lib/security/cacerts" "$JAVA_HOME/jre/lib/security/cacerts"; do if [ -e "$f" ]; then cacertsFile="$f"; break; fi; done'; 		echo 'if [ -z "$cacertsFile" ] || ! [ -f "$cacertsFile" ]; then echo >&2 "error: failed to find cacerts file in $JAVA_HOME"; exit 1; fi'; 		echo 'trust extract --overwrite --format=java-cacerts --filter=ca-anchors --purpose=server-auth "$cacertsFile"'; 	} > /etc/ca-certificates/update.d/docker-openjdk; 	chmod +x /etc/ca-certificates/update.d/docker-openjdk; 	/etc/ca-certificates/update.d/docker-openjdk; 		find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf; 	ldconfig; 		javac -version; 	java -version
# Mon, 10 Jun 2019 19:22:09 GMT
MAINTAINER OrientDB LTD (info@orientdb.com)
# Mon, 10 Jun 2019 19:22:29 GMT
ARG ORIENTDB_DOWNLOAD_SERVER
# Mon, 10 Jun 2019 19:22:49 GMT
ENV ORIENTDB_VERSION=3.0.20
# Mon, 10 Jun 2019 19:22:50 GMT
ENV ORIENTDB_DOWNLOAD_MD5=b6d6899deda81d8e6e3f368c36331bda
# Mon, 10 Jun 2019 19:22:50 GMT
ENV ORIENTDB_DOWNLOAD_SHA1=03063be6f3c87f0efbb88e5f34e9be9f187b3ab8
# Mon, 10 Jun 2019 19:22:50 GMT
ENV ORIENTDB_DOWNLOAD_URL=http://central.maven.org/maven2/com/orientechnologies/orientdb-community/3.0.20/orientdb-community-3.0.20.tar.gz
# Mon, 10 Jun 2019 19:22:57 GMT
RUN apt update     && apt install -y curl wget     && rm -rf /var/lib/apt/lists/*
# Mon, 10 Jun 2019 19:23:01 GMT
RUN mkdir /orientdb &&   wget  $ORIENTDB_DOWNLOAD_URL   && echo "$ORIENTDB_DOWNLOAD_MD5 *orientdb-community-$ORIENTDB_VERSION.tar.gz" | md5sum -c -   && echo "$ORIENTDB_DOWNLOAD_SHA1 *orientdb-community-$ORIENTDB_VERSION.tar.gz" | sha1sum -c -   && tar -xvzf orientdb-community-$ORIENTDB_VERSION.tar.gz -C /orientdb --strip-components=1   && rm orientdb-community-$ORIENTDB_VERSION.tar.gz   && rm -rf /orientdb/databases/*
# Mon, 10 Jun 2019 19:23:01 GMT
ENV PATH=/orientdb/bin:/usr/local/openjdk-8/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 10 Jun 2019 19:23:01 GMT
VOLUME [/orientdb/backup /orientdb/databases /orientdb/config]
# Mon, 10 Jun 2019 19:23:01 GMT
WORKDIR /orientdb
# Mon, 10 Jun 2019 19:23:01 GMT
EXPOSE 2424
# Mon, 10 Jun 2019 19:23:02 GMT
EXPOSE 2480
# Mon, 10 Jun 2019 19:23:02 GMT
CMD ["server.sh"]
```

-	Layers:
	-	`sha256:743f2d6c1f65c793009f30acb07845ba2ef968192732afdab2ecf9a475515393`  
		Last Modified: Wed, 08 May 2019 00:37:57 GMT  
		Size: 22.5 MB (22489350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b83e581826a65fc9aaa67825aaa71f5c7261d43e53f012c45be1e9b864a8c95f`  
		Last Modified: Wed, 29 May 2019 21:25:01 GMT  
		Size: 2.9 MB (2905773 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04305660f45e4e2218ac34c3ef2a84646260a6b2076035b4279e195e709318a7`  
		Last Modified: Wed, 29 May 2019 21:26:02 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ac80ecf8394d722b6777cd9d033170d00f69142759020122c82c1f2448cfc45`  
		Last Modified: Wed, 05 Jun 2019 22:28:37 GMT  
		Size: 104.3 MB (104259240 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7de268c2404c9930e2c2e85b71809afe9c9d14c5d6756b249b6a2d3316281fbe`  
		Last Modified: Mon, 10 Jun 2019 19:23:48 GMT  
		Size: 5.7 MB (5717202 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:312b066e2428709cffa88b1bcf2e2fef84d91297298672f5cdb7dcd685c5c32a`  
		Last Modified: Mon, 10 Jun 2019 19:23:50 GMT  
		Size: 36.9 MB (36908612 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `orientdb:3.0.20-tp3`

```console
$ docker pull orientdb@sha256:46bc9c628cad305b0b32067bbeb9ba41f48a4987376cbe4e166942270750a03c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `orientdb:3.0.20-tp3` - linux; amd64

```console
$ docker pull orientdb@sha256:cb9efa985436a0b0d404e19b9105fa5c7b8459216759d134c2628ce4b832cd80
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **199.3 MB (199297416 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fd980f80a0ebe979482cff30dc5311c7ee1b43aad18c74fb46f80514134db0ca`
-	Default Command: `["server.sh"]`

```dockerfile
# Wed, 08 May 2019 00:33:32 GMT
ADD file:fcb9328ea4c1156709f3d04c3d9a5f3667e77fb36a4a83390ae2495555fc0238 in / 
# Wed, 08 May 2019 00:33:32 GMT
CMD ["bash"]
# Wed, 29 May 2019 21:20:46 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates p11-kit 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 29 May 2019 21:20:46 GMT
ENV LANG=C.UTF-8
# Wed, 29 May 2019 21:21:43 GMT
ENV JAVA_HOME=/usr/local/openjdk-8
# Wed, 29 May 2019 21:21:44 GMT
ENV PATH=/usr/local/openjdk-8/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 29 May 2019 21:21:47 GMT
RUN { echo '#/bin/sh'; echo 'echo "$JAVA_HOME"'; } > /usr/local/bin/docker-java-home && chmod +x /usr/local/bin/docker-java-home && [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 29 May 2019 21:21:47 GMT
ENV JAVA_VERSION=8u212-b04
# Wed, 29 May 2019 21:21:47 GMT
ENV JAVA_BASE_URL=https://github.com/AdoptOpenJDK/openjdk8-upstream-binaries/releases/download/jdk8u212-b04/OpenJDK8U-
# Wed, 29 May 2019 21:21:47 GMT
ENV JAVA_URL_VERSION=8u212b04
# Wed, 05 Jun 2019 22:26:07 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64) upstreamArch='x64' ;; 		arm64) upstreamArch='aarch64' ;; 		*) echo >&2 "error: unsupported architecture: $dpkgArch" ;; 	esac; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dirmngr 		gnupg 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O openjdk.tgz.asc "${JAVA_BASE_URL}${upstreamArch}_linux_${JAVA_URL_VERSION}.tar.gz.sign"; 	wget -O openjdk.tgz "${JAVA_BASE_URL}${upstreamArch}_linux_${JAVA_URL_VERSION}.tar.gz" --progress=dot:giga; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys CA5F11C6CE22644D42C6AC4492EF8D39DC13168F; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys EAC843EBD3EFDB98CC772FADA5CD6035332FA671; 	gpg --batch --list-sigs --keyid-format 0xLONG CA5F11C6CE22644D42C6AC4492EF8D39DC13168F | grep '0xA5CD6035332FA671' | grep 'Andrew Haley'; 	gpg --batch --verify openjdk.tgz.asc openjdk.tgz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 			apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		{ 		echo '#!/usr/bin/env bash'; 		echo 'set -Eeuo pipefail'; 		echo 'if ! [ -d "$JAVA_HOME" ]; then echo >&2 "error: missing JAVA_HOME environment variable"; exit 1; fi'; 		echo 'cacertsFile=; for f in "$JAVA_HOME/lib/security/cacerts" "$JAVA_HOME/jre/lib/security/cacerts"; do if [ -e "$f" ]; then cacertsFile="$f"; break; fi; done'; 		echo 'if [ -z "$cacertsFile" ] || ! [ -f "$cacertsFile" ]; then echo >&2 "error: failed to find cacerts file in $JAVA_HOME"; exit 1; fi'; 		echo 'trust extract --overwrite --format=java-cacerts --filter=ca-anchors --purpose=server-auth "$cacertsFile"'; 	} > /etc/ca-certificates/update.d/docker-openjdk; 	chmod +x /etc/ca-certificates/update.d/docker-openjdk; 	/etc/ca-certificates/update.d/docker-openjdk; 		find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf; 	ldconfig; 		javac -version; 	java -version
# Mon, 10 Jun 2019 19:22:09 GMT
MAINTAINER OrientDB LTD (info@orientdb.com)
# Mon, 10 Jun 2019 19:22:29 GMT
ARG ORIENTDB_DOWNLOAD_SERVER
# Mon, 10 Jun 2019 19:22:49 GMT
ENV ORIENTDB_VERSION=3.0.20
# Mon, 10 Jun 2019 19:23:06 GMT
ENV ORIENTDB_DOWNLOAD_MD5=51169bb82df17710f5c2054f9486a836
# Mon, 10 Jun 2019 19:23:06 GMT
ENV ORIENTDB_DOWNLOAD_SHA1=460840d110bd86f558af20c0bd0288a0037faeda
# Mon, 10 Jun 2019 19:23:07 GMT
ENV ORIENTDB_DOWNLOAD_URL=http://central.maven.org/maven2/com/orientechnologies/orientdb-tp3/3.0.20/orientdb-tp3-3.0.20.tar.gz
# Mon, 10 Jun 2019 19:23:13 GMT
RUN apt update     && apt install -y curl wget     && rm -rf /var/lib/apt/lists/*
# Mon, 10 Jun 2019 19:23:20 GMT
RUN mkdir /orientdb &&   wget  $ORIENTDB_DOWNLOAD_URL   && echo "$ORIENTDB_DOWNLOAD_MD5 *orientdb-tp3-$ORIENTDB_VERSION.tar.gz" | md5sum -c -   && echo "$ORIENTDB_DOWNLOAD_SHA1 *orientdb-tp3-$ORIENTDB_VERSION.tar.gz" | sha1sum -c -   && tar -xvzf orientdb-tp3-$ORIENTDB_VERSION.tar.gz -C /orientdb --strip-components=1   && rm orientdb-tp3-$ORIENTDB_VERSION.tar.gz   && rm -rf /orientdb/databases/*
# Mon, 10 Jun 2019 19:23:20 GMT
ADD file:5bcd10827429355383b443914a6e6c163692cb388c7594e6e8d3d4625653a011 in /orientdb/config 
# Mon, 10 Jun 2019 19:23:20 GMT
ENV PATH=/orientdb/bin:/usr/local/openjdk-8/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 10 Jun 2019 19:23:20 GMT
VOLUME [/orientdb/backup /orientdb/databases /orientdb/config]
# Mon, 10 Jun 2019 19:23:20 GMT
WORKDIR /orientdb
# Mon, 10 Jun 2019 19:23:21 GMT
EXPOSE 2424
# Mon, 10 Jun 2019 19:23:21 GMT
EXPOSE 2480
# Mon, 10 Jun 2019 19:23:21 GMT
EXPOSE 8182
# Mon, 10 Jun 2019 19:23:21 GMT
CMD ["server.sh"]
```

-	Layers:
	-	`sha256:743f2d6c1f65c793009f30acb07845ba2ef968192732afdab2ecf9a475515393`  
		Last Modified: Wed, 08 May 2019 00:37:57 GMT  
		Size: 22.5 MB (22489350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b83e581826a65fc9aaa67825aaa71f5c7261d43e53f012c45be1e9b864a8c95f`  
		Last Modified: Wed, 29 May 2019 21:25:01 GMT  
		Size: 2.9 MB (2905773 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04305660f45e4e2218ac34c3ef2a84646260a6b2076035b4279e195e709318a7`  
		Last Modified: Wed, 29 May 2019 21:26:02 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ac80ecf8394d722b6777cd9d033170d00f69142759020122c82c1f2448cfc45`  
		Last Modified: Wed, 05 Jun 2019 22:28:37 GMT  
		Size: 104.3 MB (104259240 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75284c64a973d9d0fff9196000e218da8b023a769e9d64efa82fa60957483802`  
		Last Modified: Mon, 10 Jun 2019 19:23:55 GMT  
		Size: 5.7 MB (5717178 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51d29293a684432ff80d09d5af06af6420e1a564ad41fc860fd7ec70bfbccd42`  
		Last Modified: Mon, 10 Jun 2019 19:23:58 GMT  
		Size: 63.9 MB (63924286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b5c6aeadc7d5ec0bc910a0f38f0d0be7764340568fc2dc2d2ec5bec74274e7f`  
		Last Modified: Mon, 10 Jun 2019 19:23:53 GMT  
		Size: 1.4 KB (1367 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `orientdb:latest`

```console
$ docker pull orientdb@sha256:c993ade13738785eb7dcfa30a920513bf84bf15b85e77ba6e7dba3515e4101bf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `orientdb:latest` - linux; amd64

```console
$ docker pull orientdb@sha256:aa22966a77ce5f268e6e218f0c739b0a0d2993611029e14fb7b7a3dab3b73cd6
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **172.3 MB (172280399 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9703e626a253dd467d9603f3def0f489ad9f0491708333c4b66cd7df6ef2c465`
-	Default Command: `["server.sh"]`

```dockerfile
# Wed, 08 May 2019 00:33:32 GMT
ADD file:fcb9328ea4c1156709f3d04c3d9a5f3667e77fb36a4a83390ae2495555fc0238 in / 
# Wed, 08 May 2019 00:33:32 GMT
CMD ["bash"]
# Wed, 29 May 2019 21:20:46 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ca-certificates p11-kit 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 29 May 2019 21:20:46 GMT
ENV LANG=C.UTF-8
# Wed, 29 May 2019 21:21:43 GMT
ENV JAVA_HOME=/usr/local/openjdk-8
# Wed, 29 May 2019 21:21:44 GMT
ENV PATH=/usr/local/openjdk-8/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 29 May 2019 21:21:47 GMT
RUN { echo '#/bin/sh'; echo 'echo "$JAVA_HOME"'; } > /usr/local/bin/docker-java-home && chmod +x /usr/local/bin/docker-java-home && [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 29 May 2019 21:21:47 GMT
ENV JAVA_VERSION=8u212-b04
# Wed, 29 May 2019 21:21:47 GMT
ENV JAVA_BASE_URL=https://github.com/AdoptOpenJDK/openjdk8-upstream-binaries/releases/download/jdk8u212-b04/OpenJDK8U-
# Wed, 29 May 2019 21:21:47 GMT
ENV JAVA_URL_VERSION=8u212b04
# Wed, 05 Jun 2019 22:26:07 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64) upstreamArch='x64' ;; 		arm64) upstreamArch='aarch64' ;; 		*) echo >&2 "error: unsupported architecture: $dpkgArch" ;; 	esac; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dirmngr 		gnupg 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O openjdk.tgz.asc "${JAVA_BASE_URL}${upstreamArch}_linux_${JAVA_URL_VERSION}.tar.gz.sign"; 	wget -O openjdk.tgz "${JAVA_BASE_URL}${upstreamArch}_linux_${JAVA_URL_VERSION}.tar.gz" --progress=dot:giga; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys CA5F11C6CE22644D42C6AC4492EF8D39DC13168F; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys EAC843EBD3EFDB98CC772FADA5CD6035332FA671; 	gpg --batch --list-sigs --keyid-format 0xLONG CA5F11C6CE22644D42C6AC4492EF8D39DC13168F | grep '0xA5CD6035332FA671' | grep 'Andrew Haley'; 	gpg --batch --verify openjdk.tgz.asc openjdk.tgz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 			apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		{ 		echo '#!/usr/bin/env bash'; 		echo 'set -Eeuo pipefail'; 		echo 'if ! [ -d "$JAVA_HOME" ]; then echo >&2 "error: missing JAVA_HOME environment variable"; exit 1; fi'; 		echo 'cacertsFile=; for f in "$JAVA_HOME/lib/security/cacerts" "$JAVA_HOME/jre/lib/security/cacerts"; do if [ -e "$f" ]; then cacertsFile="$f"; break; fi; done'; 		echo 'if [ -z "$cacertsFile" ] || ! [ -f "$cacertsFile" ]; then echo >&2 "error: failed to find cacerts file in $JAVA_HOME"; exit 1; fi'; 		echo 'trust extract --overwrite --format=java-cacerts --filter=ca-anchors --purpose=server-auth "$cacertsFile"'; 	} > /etc/ca-certificates/update.d/docker-openjdk; 	chmod +x /etc/ca-certificates/update.d/docker-openjdk; 	/etc/ca-certificates/update.d/docker-openjdk; 		find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf; 	ldconfig; 		javac -version; 	java -version
# Mon, 10 Jun 2019 19:22:09 GMT
MAINTAINER OrientDB LTD (info@orientdb.com)
# Mon, 10 Jun 2019 19:22:29 GMT
ARG ORIENTDB_DOWNLOAD_SERVER
# Mon, 10 Jun 2019 19:22:49 GMT
ENV ORIENTDB_VERSION=3.0.20
# Mon, 10 Jun 2019 19:22:50 GMT
ENV ORIENTDB_DOWNLOAD_MD5=b6d6899deda81d8e6e3f368c36331bda
# Mon, 10 Jun 2019 19:22:50 GMT
ENV ORIENTDB_DOWNLOAD_SHA1=03063be6f3c87f0efbb88e5f34e9be9f187b3ab8
# Mon, 10 Jun 2019 19:22:50 GMT
ENV ORIENTDB_DOWNLOAD_URL=http://central.maven.org/maven2/com/orientechnologies/orientdb-community/3.0.20/orientdb-community-3.0.20.tar.gz
# Mon, 10 Jun 2019 19:22:57 GMT
RUN apt update     && apt install -y curl wget     && rm -rf /var/lib/apt/lists/*
# Mon, 10 Jun 2019 19:23:01 GMT
RUN mkdir /orientdb &&   wget  $ORIENTDB_DOWNLOAD_URL   && echo "$ORIENTDB_DOWNLOAD_MD5 *orientdb-community-$ORIENTDB_VERSION.tar.gz" | md5sum -c -   && echo "$ORIENTDB_DOWNLOAD_SHA1 *orientdb-community-$ORIENTDB_VERSION.tar.gz" | sha1sum -c -   && tar -xvzf orientdb-community-$ORIENTDB_VERSION.tar.gz -C /orientdb --strip-components=1   && rm orientdb-community-$ORIENTDB_VERSION.tar.gz   && rm -rf /orientdb/databases/*
# Mon, 10 Jun 2019 19:23:01 GMT
ENV PATH=/orientdb/bin:/usr/local/openjdk-8/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 10 Jun 2019 19:23:01 GMT
VOLUME [/orientdb/backup /orientdb/databases /orientdb/config]
# Mon, 10 Jun 2019 19:23:01 GMT
WORKDIR /orientdb
# Mon, 10 Jun 2019 19:23:01 GMT
EXPOSE 2424
# Mon, 10 Jun 2019 19:23:02 GMT
EXPOSE 2480
# Mon, 10 Jun 2019 19:23:02 GMT
CMD ["server.sh"]
```

-	Layers:
	-	`sha256:743f2d6c1f65c793009f30acb07845ba2ef968192732afdab2ecf9a475515393`  
		Last Modified: Wed, 08 May 2019 00:37:57 GMT  
		Size: 22.5 MB (22489350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b83e581826a65fc9aaa67825aaa71f5c7261d43e53f012c45be1e9b864a8c95f`  
		Last Modified: Wed, 29 May 2019 21:25:01 GMT  
		Size: 2.9 MB (2905773 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04305660f45e4e2218ac34c3ef2a84646260a6b2076035b4279e195e709318a7`  
		Last Modified: Wed, 29 May 2019 21:26:02 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ac80ecf8394d722b6777cd9d033170d00f69142759020122c82c1f2448cfc45`  
		Last Modified: Wed, 05 Jun 2019 22:28:37 GMT  
		Size: 104.3 MB (104259240 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7de268c2404c9930e2c2e85b71809afe9c9d14c5d6756b249b6a2d3316281fbe`  
		Last Modified: Mon, 10 Jun 2019 19:23:48 GMT  
		Size: 5.7 MB (5717202 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:312b066e2428709cffa88b1bcf2e2fef84d91297298672f5cdb7dcd685c5c32a`  
		Last Modified: Mon, 10 Jun 2019 19:23:50 GMT  
		Size: 36.9 MB (36908612 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
