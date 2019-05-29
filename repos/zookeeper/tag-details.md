<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `zookeeper`

-	[`zookeeper:3.4`](#zookeeper34)
-	[`zookeeper:3.4.14`](#zookeeper3414)
-	[`zookeeper:3.5`](#zookeeper35)
-	[`zookeeper:3.5.5`](#zookeeper355)
-	[`zookeeper:latest`](#zookeeperlatest)

## `zookeeper:3.4`

```console
$ docker pull zookeeper@sha256:a127dcb8a7ddf344f27e0ac9a60630b53400d8d912469cd38200fc5c5c4dc9d5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `zookeeper:3.4` - linux; amd64

```console
$ docker pull zookeeper@sha256:85da94863739d8766fe92efa24b8bb096930399a0ccbb6b9d787a050f0f47be5
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **109.2 MB (109186435 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9f52946a02a80a0024e72caf59256b8f1a99ac7f7d7a35f3584579eaa5fdd4df`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["zkServer.sh","start-foreground"]`

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
# Wed, 29 May 2019 21:22:39 GMT
ENV JAVA_BASE_URL=https://github.com/AdoptOpenJDK/openjdk8-upstream-binaries/releases/download/jdk8u212-b04/OpenJDK8U-jre_
# Wed, 29 May 2019 21:22:39 GMT
ENV JAVA_URL_VERSION=8u212b04
# Wed, 29 May 2019 21:22:56 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64) upstreamArch='x64' ;; 		arm64) upstreamArch='aarch64' ;; 		*) echo >&2 "error: unsupported architecture: $dpkgArch" ;; 	esac; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dirmngr 		gnupg 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O openjdk.tgz.asc "${JAVA_BASE_URL}${upstreamArch}_linux_${JAVA_URL_VERSION}.tar.gz.sign"; 	wget -O openjdk.tgz "${JAVA_BASE_URL}${upstreamArch}_linux_${JAVA_URL_VERSION}.tar.gz" --progress=dot:giga; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys CA5F11C6CE22644D42C6AC4492EF8D39DC13168F; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys EAC843EBD3EFDB98CC772FADA5CD6035332FA671; 	gpg --batch --list-sigs --keyid-format 0xLONG CA5F11C6CE22644D42C6AC4492EF8D39DC13168F | grep '0xA5CD6035332FA671' | grep 'Andrew Haley'; 	gpg --batch --verify openjdk.tgz.asc openjdk.tgz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$JAVA_HOME"; 	tar --extract --file openjdk.tgz --directory "$JAVA_HOME" --strip-components 1; 	rm openjdk.tgz*; 			apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		{ 		echo '#!/usr/bin/env bash'; 		echo 'set -Eeuo pipefail'; 		echo 'if ! [ -d "$JAVA_HOME" ]; then echo >&2 "error: missing JAVA_HOME environment variable"; exit 1; fi'; 		echo 'cacertsFile=; for f in "$JAVA_HOME/lib/security/cacerts" "$JAVA_HOME/jre/lib/security/cacerts"; do if [ -e "$f" ]; then cacertsFile="$f"; break; fi; done'; 		echo 'if [ -z "$cacertsFile" ] || ! [ -f "$cacertsFile" ]; then echo >&2 "error: failed to find cacerts file in $JAVA_HOME"; exit 1; fi'; 		echo 'trust extract --overwrite --format=java-cacerts --filter=ca-anchors --purpose=server-auth "$cacertsFile"'; 	} > /etc/ca-certificates/update.d/docker-openjdk; 	chmod +x /etc/ca-certificates/update.d/docker-openjdk; 	/etc/ca-certificates/update.d/docker-openjdk; 		java -version
# Wed, 29 May 2019 22:42:21 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive     apt-get install -y --no-install-recommends         ca-certificates         dirmngr         gosu         gnupg         wget;     rm -rf /var/lib/apt/lists/*;     gosu nobody true
# Wed, 29 May 2019 22:42:21 GMT
ENV ZOO_USER=zookeeper ZOO_CONF_DIR=/conf ZOO_DATA_DIR=/data ZOO_DATA_LOG_DIR=/datalog ZOO_LOG_DIR=/logs ZOO_PORT=2181 ZOO_TICK_TIME=2000 ZOO_INIT_LIMIT=5 ZOO_SYNC_LIMIT=2 ZOO_AUTOPURGE_PURGEINTERVAL=0 ZOO_AUTOPURGE_SNAPRETAINCOUNT=3 ZOO_MAX_CLIENT_CNXNS=60
# Wed, 29 May 2019 22:42:22 GMT
RUN set -eux;     useradd -r "$ZOO_USER";     mkdir -p "$ZOO_DATA_LOG_DIR" "$ZOO_DATA_DIR" "$ZOO_CONF_DIR" "$ZOO_LOG_DIR";     chown "$ZOO_USER:$ZOO_USER" "$ZOO_DATA_LOG_DIR" "$ZOO_DATA_DIR" "$ZOO_CONF_DIR" "$ZOO_LOG_DIR"
# Wed, 29 May 2019 22:42:22 GMT
ARG GPG_KEY=3F7A1D16FA4217B1DC75E1C9FFE35B7F15DFA1BA
# Wed, 29 May 2019 22:42:22 GMT
ARG DISTRO_NAME=zookeeper-3.4.14
# Wed, 29 May 2019 22:42:29 GMT
# ARGS: DISTRO_NAME=zookeeper-3.4.14 GPG_KEY=3F7A1D16FA4217B1DC75E1C9FFE35B7F15DFA1BA
RUN set -eux;     wget -q "https://www.apache.org/dist/zookeeper/$DISTRO_NAME/$DISTRO_NAME.tar.gz";     wget -q "https://www.apache.org/dist/zookeeper/$DISTRO_NAME/$DISTRO_NAME.tar.gz.asc";     export GNUPGHOME="$(mktemp -d)";     gpg --keyserver ha.pool.sks-keyservers.net --recv-key "$GPG_KEY" ||     gpg --keyserver pgp.mit.edu --recv-keys "$GPG_KEY" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$GPG_KEY";     gpg --batch --verify "$DISTRO_NAME.tar.gz.asc" "$DISTRO_NAME.tar.gz";     tar -xzf "$DISTRO_NAME.tar.gz";     mv "$DISTRO_NAME/conf/"* "$ZOO_CONF_DIR";     rm -rf "$GNUPGHOME" "$DISTRO_NAME.tar.gz" "$DISTRO_NAME.tar.gz.asc";     chown -R "$ZOO_USER:$ZOO_USER" "/$DISTRO_NAME"
# Wed, 29 May 2019 22:42:30 GMT
WORKDIR /zookeeper-3.4.14
# Wed, 29 May 2019 22:42:30 GMT
VOLUME [/data /datalog /logs]
# Wed, 29 May 2019 22:42:30 GMT
EXPOSE 2181 2888 3888
# Wed, 29 May 2019 22:42:30 GMT
ENV PATH=/usr/local/openjdk-8/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/zookeeper-3.4.14/bin ZOOCFGDIR=/conf
# Wed, 29 May 2019 22:42:30 GMT
COPY file:af7c4b81baba27172a6f22f11c2573fa2780d03f716743edb216ed4e1f667db3 in / 
# Wed, 29 May 2019 22:42:31 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 29 May 2019 22:42:31 GMT
CMD ["zkServer.sh" "start-foreground"]
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
	-	`sha256:bbe7020b5561d39d2f33e4ba9d900c1a09ca094ebe85b3b2484b76ca125340cb`  
		Last Modified: Wed, 29 May 2019 21:27:01 GMT  
		Size: 40.4 MB (40377799 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e339292320dc2c833287fde3b995f4e96a22804a8a9512a2af90158737862b1`  
		Last Modified: Wed, 29 May 2019 22:42:52 GMT  
		Size: 5.7 MB (5684448 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fea6ac6e30f4613f03e3ed63833ccb7ff7d51feed2f518eb0432477f0a34d01c`  
		Last Modified: Wed, 29 May 2019 22:42:51 GMT  
		Size: 1.8 KB (1819 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9cc038d1b528f3bb2bddf852a332fe147b4caa2df6311732925a527bfd50bb72`  
		Last Modified: Wed, 29 May 2019 22:42:55 GMT  
		Size: 37.7 MB (37726410 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c24984e531426198bcff49a16c1173f62a455b77533b282ddb5dc988ddb54f57`  
		Last Modified: Wed, 29 May 2019 22:42:51 GMT  
		Size: 614.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `zookeeper:3.4.14`

```console
$ docker pull zookeeper@sha256:a127dcb8a7ddf344f27e0ac9a60630b53400d8d912469cd38200fc5c5c4dc9d5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `zookeeper:3.4.14` - linux; amd64

```console
$ docker pull zookeeper@sha256:85da94863739d8766fe92efa24b8bb096930399a0ccbb6b9d787a050f0f47be5
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **109.2 MB (109186435 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9f52946a02a80a0024e72caf59256b8f1a99ac7f7d7a35f3584579eaa5fdd4df`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["zkServer.sh","start-foreground"]`

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
# Wed, 29 May 2019 21:22:39 GMT
ENV JAVA_BASE_URL=https://github.com/AdoptOpenJDK/openjdk8-upstream-binaries/releases/download/jdk8u212-b04/OpenJDK8U-jre_
# Wed, 29 May 2019 21:22:39 GMT
ENV JAVA_URL_VERSION=8u212b04
# Wed, 29 May 2019 21:22:56 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64) upstreamArch='x64' ;; 		arm64) upstreamArch='aarch64' ;; 		*) echo >&2 "error: unsupported architecture: $dpkgArch" ;; 	esac; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dirmngr 		gnupg 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O openjdk.tgz.asc "${JAVA_BASE_URL}${upstreamArch}_linux_${JAVA_URL_VERSION}.tar.gz.sign"; 	wget -O openjdk.tgz "${JAVA_BASE_URL}${upstreamArch}_linux_${JAVA_URL_VERSION}.tar.gz" --progress=dot:giga; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys CA5F11C6CE22644D42C6AC4492EF8D39DC13168F; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys EAC843EBD3EFDB98CC772FADA5CD6035332FA671; 	gpg --batch --list-sigs --keyid-format 0xLONG CA5F11C6CE22644D42C6AC4492EF8D39DC13168F | grep '0xA5CD6035332FA671' | grep 'Andrew Haley'; 	gpg --batch --verify openjdk.tgz.asc openjdk.tgz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$JAVA_HOME"; 	tar --extract --file openjdk.tgz --directory "$JAVA_HOME" --strip-components 1; 	rm openjdk.tgz*; 			apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		{ 		echo '#!/usr/bin/env bash'; 		echo 'set -Eeuo pipefail'; 		echo 'if ! [ -d "$JAVA_HOME" ]; then echo >&2 "error: missing JAVA_HOME environment variable"; exit 1; fi'; 		echo 'cacertsFile=; for f in "$JAVA_HOME/lib/security/cacerts" "$JAVA_HOME/jre/lib/security/cacerts"; do if [ -e "$f" ]; then cacertsFile="$f"; break; fi; done'; 		echo 'if [ -z "$cacertsFile" ] || ! [ -f "$cacertsFile" ]; then echo >&2 "error: failed to find cacerts file in $JAVA_HOME"; exit 1; fi'; 		echo 'trust extract --overwrite --format=java-cacerts --filter=ca-anchors --purpose=server-auth "$cacertsFile"'; 	} > /etc/ca-certificates/update.d/docker-openjdk; 	chmod +x /etc/ca-certificates/update.d/docker-openjdk; 	/etc/ca-certificates/update.d/docker-openjdk; 		java -version
# Wed, 29 May 2019 22:42:21 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive     apt-get install -y --no-install-recommends         ca-certificates         dirmngr         gosu         gnupg         wget;     rm -rf /var/lib/apt/lists/*;     gosu nobody true
# Wed, 29 May 2019 22:42:21 GMT
ENV ZOO_USER=zookeeper ZOO_CONF_DIR=/conf ZOO_DATA_DIR=/data ZOO_DATA_LOG_DIR=/datalog ZOO_LOG_DIR=/logs ZOO_PORT=2181 ZOO_TICK_TIME=2000 ZOO_INIT_LIMIT=5 ZOO_SYNC_LIMIT=2 ZOO_AUTOPURGE_PURGEINTERVAL=0 ZOO_AUTOPURGE_SNAPRETAINCOUNT=3 ZOO_MAX_CLIENT_CNXNS=60
# Wed, 29 May 2019 22:42:22 GMT
RUN set -eux;     useradd -r "$ZOO_USER";     mkdir -p "$ZOO_DATA_LOG_DIR" "$ZOO_DATA_DIR" "$ZOO_CONF_DIR" "$ZOO_LOG_DIR";     chown "$ZOO_USER:$ZOO_USER" "$ZOO_DATA_LOG_DIR" "$ZOO_DATA_DIR" "$ZOO_CONF_DIR" "$ZOO_LOG_DIR"
# Wed, 29 May 2019 22:42:22 GMT
ARG GPG_KEY=3F7A1D16FA4217B1DC75E1C9FFE35B7F15DFA1BA
# Wed, 29 May 2019 22:42:22 GMT
ARG DISTRO_NAME=zookeeper-3.4.14
# Wed, 29 May 2019 22:42:29 GMT
# ARGS: DISTRO_NAME=zookeeper-3.4.14 GPG_KEY=3F7A1D16FA4217B1DC75E1C9FFE35B7F15DFA1BA
RUN set -eux;     wget -q "https://www.apache.org/dist/zookeeper/$DISTRO_NAME/$DISTRO_NAME.tar.gz";     wget -q "https://www.apache.org/dist/zookeeper/$DISTRO_NAME/$DISTRO_NAME.tar.gz.asc";     export GNUPGHOME="$(mktemp -d)";     gpg --keyserver ha.pool.sks-keyservers.net --recv-key "$GPG_KEY" ||     gpg --keyserver pgp.mit.edu --recv-keys "$GPG_KEY" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$GPG_KEY";     gpg --batch --verify "$DISTRO_NAME.tar.gz.asc" "$DISTRO_NAME.tar.gz";     tar -xzf "$DISTRO_NAME.tar.gz";     mv "$DISTRO_NAME/conf/"* "$ZOO_CONF_DIR";     rm -rf "$GNUPGHOME" "$DISTRO_NAME.tar.gz" "$DISTRO_NAME.tar.gz.asc";     chown -R "$ZOO_USER:$ZOO_USER" "/$DISTRO_NAME"
# Wed, 29 May 2019 22:42:30 GMT
WORKDIR /zookeeper-3.4.14
# Wed, 29 May 2019 22:42:30 GMT
VOLUME [/data /datalog /logs]
# Wed, 29 May 2019 22:42:30 GMT
EXPOSE 2181 2888 3888
# Wed, 29 May 2019 22:42:30 GMT
ENV PATH=/usr/local/openjdk-8/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/zookeeper-3.4.14/bin ZOOCFGDIR=/conf
# Wed, 29 May 2019 22:42:30 GMT
COPY file:af7c4b81baba27172a6f22f11c2573fa2780d03f716743edb216ed4e1f667db3 in / 
# Wed, 29 May 2019 22:42:31 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 29 May 2019 22:42:31 GMT
CMD ["zkServer.sh" "start-foreground"]
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
	-	`sha256:bbe7020b5561d39d2f33e4ba9d900c1a09ca094ebe85b3b2484b76ca125340cb`  
		Last Modified: Wed, 29 May 2019 21:27:01 GMT  
		Size: 40.4 MB (40377799 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e339292320dc2c833287fde3b995f4e96a22804a8a9512a2af90158737862b1`  
		Last Modified: Wed, 29 May 2019 22:42:52 GMT  
		Size: 5.7 MB (5684448 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fea6ac6e30f4613f03e3ed63833ccb7ff7d51feed2f518eb0432477f0a34d01c`  
		Last Modified: Wed, 29 May 2019 22:42:51 GMT  
		Size: 1.8 KB (1819 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9cc038d1b528f3bb2bddf852a332fe147b4caa2df6311732925a527bfd50bb72`  
		Last Modified: Wed, 29 May 2019 22:42:55 GMT  
		Size: 37.7 MB (37726410 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c24984e531426198bcff49a16c1173f62a455b77533b282ddb5dc988ddb54f57`  
		Last Modified: Wed, 29 May 2019 22:42:51 GMT  
		Size: 614.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `zookeeper:3.5`

```console
$ docker pull zookeeper@sha256:d8aac61a92c5201c5e04cdef60bf6d6bebb6510179bbef56b215a73fd32ccedf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `zookeeper:3.5` - linux; amd64

```console
$ docker pull zookeeper@sha256:a2828a6aecda90b704cdafcec4ed1d0de28ed015ffe38a96f9ff4c799cfc7a1b
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **82.1 MB (82055938 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:55c28ddb9786d3660761bb5b7044d8ae035a22e9bfd4c138552b955218f471ce`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["zkServer.sh","start-foreground"]`

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
# Wed, 29 May 2019 21:22:39 GMT
ENV JAVA_BASE_URL=https://github.com/AdoptOpenJDK/openjdk8-upstream-binaries/releases/download/jdk8u212-b04/OpenJDK8U-jre_
# Wed, 29 May 2019 21:22:39 GMT
ENV JAVA_URL_VERSION=8u212b04
# Wed, 29 May 2019 21:22:56 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64) upstreamArch='x64' ;; 		arm64) upstreamArch='aarch64' ;; 		*) echo >&2 "error: unsupported architecture: $dpkgArch" ;; 	esac; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dirmngr 		gnupg 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O openjdk.tgz.asc "${JAVA_BASE_URL}${upstreamArch}_linux_${JAVA_URL_VERSION}.tar.gz.sign"; 	wget -O openjdk.tgz "${JAVA_BASE_URL}${upstreamArch}_linux_${JAVA_URL_VERSION}.tar.gz" --progress=dot:giga; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys CA5F11C6CE22644D42C6AC4492EF8D39DC13168F; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys EAC843EBD3EFDB98CC772FADA5CD6035332FA671; 	gpg --batch --list-sigs --keyid-format 0xLONG CA5F11C6CE22644D42C6AC4492EF8D39DC13168F | grep '0xA5CD6035332FA671' | grep 'Andrew Haley'; 	gpg --batch --verify openjdk.tgz.asc openjdk.tgz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$JAVA_HOME"; 	tar --extract --file openjdk.tgz --directory "$JAVA_HOME" --strip-components 1; 	rm openjdk.tgz*; 			apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		{ 		echo '#!/usr/bin/env bash'; 		echo 'set -Eeuo pipefail'; 		echo 'if ! [ -d "$JAVA_HOME" ]; then echo >&2 "error: missing JAVA_HOME environment variable"; exit 1; fi'; 		echo 'cacertsFile=; for f in "$JAVA_HOME/lib/security/cacerts" "$JAVA_HOME/jre/lib/security/cacerts"; do if [ -e "$f" ]; then cacertsFile="$f"; break; fi; done'; 		echo 'if [ -z "$cacertsFile" ] || ! [ -f "$cacertsFile" ]; then echo >&2 "error: failed to find cacerts file in $JAVA_HOME"; exit 1; fi'; 		echo 'trust extract --overwrite --format=java-cacerts --filter=ca-anchors --purpose=server-auth "$cacertsFile"'; 	} > /etc/ca-certificates/update.d/docker-openjdk; 	chmod +x /etc/ca-certificates/update.d/docker-openjdk; 	/etc/ca-certificates/update.d/docker-openjdk; 		java -version
# Wed, 29 May 2019 22:42:21 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive     apt-get install -y --no-install-recommends         ca-certificates         dirmngr         gosu         gnupg         wget;     rm -rf /var/lib/apt/lists/*;     gosu nobody true
# Wed, 29 May 2019 22:42:34 GMT
ENV ZOO_USER=zookeeper ZOO_CONF_DIR=/conf ZOO_DATA_DIR=/data ZOO_DATA_LOG_DIR=/datalog ZOO_LOG_DIR=/logs ZOO_PORT=2181 ZOO_TICK_TIME=2000 ZOO_INIT_LIMIT=5 ZOO_SYNC_LIMIT=2 ZOO_AUTOPURGE_PURGEINTERVAL=0 ZOO_AUTOPURGE_SNAPRETAINCOUNT=3 ZOO_MAX_CLIENT_CNXNS=60 ZOO_STANDALONE_ENABLED=true
# Wed, 29 May 2019 22:42:35 GMT
RUN set -eux;     useradd -r "$ZOO_USER";     mkdir -p "$ZOO_DATA_LOG_DIR" "$ZOO_DATA_DIR" "$ZOO_CONF_DIR" "$ZOO_LOG_DIR";     chown "$ZOO_USER:$ZOO_USER" "$ZOO_DATA_LOG_DIR" "$ZOO_DATA_DIR" "$ZOO_CONF_DIR" "$ZOO_LOG_DIR"
# Wed, 29 May 2019 22:42:36 GMT
ARG GPG_KEY=3F7A1D16FA4217B1DC75E1C9FFE35B7F15DFA1BA
# Wed, 29 May 2019 22:42:36 GMT
ARG SHORT_DISTRO_NAME=zookeeper-3.5.5
# Wed, 29 May 2019 22:42:36 GMT
ARG DISTRO_NAME=apache-zookeeper-3.5.5-bin
# Wed, 29 May 2019 22:42:41 GMT
# ARGS: DISTRO_NAME=apache-zookeeper-3.5.5-bin GPG_KEY=3F7A1D16FA4217B1DC75E1C9FFE35B7F15DFA1BA SHORT_DISTRO_NAME=zookeeper-3.5.5
RUN set -eux;     wget -q "https://www.apache.org/dist/zookeeper/$SHORT_DISTRO_NAME/$DISTRO_NAME.tar.gz";     wget -q "https://www.apache.org/dist/zookeeper/$SHORT_DISTRO_NAME/$DISTRO_NAME.tar.gz.asc";     export GNUPGHOME="$(mktemp -d)";     gpg --keyserver ha.pool.sks-keyservers.net --recv-key "$GPG_KEY" ||     gpg --keyserver pgp.mit.edu --recv-keys "$GPG_KEY" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$GPG_KEY";     gpg --batch --verify "$DISTRO_NAME.tar.gz.asc" "$DISTRO_NAME.tar.gz";     tar -zxf "$DISTRO_NAME.tar.gz";     mv "$DISTRO_NAME/conf/"* "$ZOO_CONF_DIR";     rm -rf "$GNUPGHOME" "$DISTRO_NAME.tar.gz" "$DISTRO_NAME.tar.gz.asc";     chown -R "$ZOO_USER:$ZOO_USER" "/$DISTRO_NAME"
# Wed, 29 May 2019 22:42:41 GMT
WORKDIR /apache-zookeeper-3.5.5-bin
# Wed, 29 May 2019 22:42:41 GMT
VOLUME [/data /datalog /logs]
# Wed, 29 May 2019 22:42:41 GMT
EXPOSE 2181 2888 3888
# Wed, 29 May 2019 22:42:41 GMT
ENV PATH=/usr/local/openjdk-8/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/apache-zookeeper-3.5.5-bin/bin ZOOCFGDIR=/conf
# Wed, 29 May 2019 22:42:42 GMT
COPY file:95dc0c15132a7e6cbe3c97aed202c76e0adb298cd59ec40a4e22084786939cff in / 
# Wed, 29 May 2019 22:42:42 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 29 May 2019 22:42:42 GMT
CMD ["zkServer.sh" "start-foreground"]
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
	-	`sha256:bbe7020b5561d39d2f33e4ba9d900c1a09ca094ebe85b3b2484b76ca125340cb`  
		Last Modified: Wed, 29 May 2019 21:27:01 GMT  
		Size: 40.4 MB (40377799 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e339292320dc2c833287fde3b995f4e96a22804a8a9512a2af90158737862b1`  
		Last Modified: Wed, 29 May 2019 22:42:52 GMT  
		Size: 5.7 MB (5684448 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6556d1e2aefe0d9d8cfa9a4e9a140dd8bea048a020dbbd2bab4bd4b5d56e3a0c`  
		Last Modified: Wed, 29 May 2019 22:42:59 GMT  
		Size: 1.8 KB (1819 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:852b05ee74a58bc6e5cda786d372cff8c98134337d45d990e7c0000221bacda1`  
		Last Modified: Wed, 29 May 2019 22:43:01 GMT  
		Size: 10.6 MB (10595854 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b22c16aa010d856fa6dbe34b3d025898cc7103af383fb43ffd3046f5c13650b`  
		Last Modified: Wed, 29 May 2019 22:42:59 GMT  
		Size: 673.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `zookeeper:3.5.5`

```console
$ docker pull zookeeper@sha256:d8aac61a92c5201c5e04cdef60bf6d6bebb6510179bbef56b215a73fd32ccedf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `zookeeper:3.5.5` - linux; amd64

```console
$ docker pull zookeeper@sha256:a2828a6aecda90b704cdafcec4ed1d0de28ed015ffe38a96f9ff4c799cfc7a1b
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **82.1 MB (82055938 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:55c28ddb9786d3660761bb5b7044d8ae035a22e9bfd4c138552b955218f471ce`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["zkServer.sh","start-foreground"]`

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
# Wed, 29 May 2019 21:22:39 GMT
ENV JAVA_BASE_URL=https://github.com/AdoptOpenJDK/openjdk8-upstream-binaries/releases/download/jdk8u212-b04/OpenJDK8U-jre_
# Wed, 29 May 2019 21:22:39 GMT
ENV JAVA_URL_VERSION=8u212b04
# Wed, 29 May 2019 21:22:56 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64) upstreamArch='x64' ;; 		arm64) upstreamArch='aarch64' ;; 		*) echo >&2 "error: unsupported architecture: $dpkgArch" ;; 	esac; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dirmngr 		gnupg 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O openjdk.tgz.asc "${JAVA_BASE_URL}${upstreamArch}_linux_${JAVA_URL_VERSION}.tar.gz.sign"; 	wget -O openjdk.tgz "${JAVA_BASE_URL}${upstreamArch}_linux_${JAVA_URL_VERSION}.tar.gz" --progress=dot:giga; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys CA5F11C6CE22644D42C6AC4492EF8D39DC13168F; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys EAC843EBD3EFDB98CC772FADA5CD6035332FA671; 	gpg --batch --list-sigs --keyid-format 0xLONG CA5F11C6CE22644D42C6AC4492EF8D39DC13168F | grep '0xA5CD6035332FA671' | grep 'Andrew Haley'; 	gpg --batch --verify openjdk.tgz.asc openjdk.tgz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$JAVA_HOME"; 	tar --extract --file openjdk.tgz --directory "$JAVA_HOME" --strip-components 1; 	rm openjdk.tgz*; 			apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		{ 		echo '#!/usr/bin/env bash'; 		echo 'set -Eeuo pipefail'; 		echo 'if ! [ -d "$JAVA_HOME" ]; then echo >&2 "error: missing JAVA_HOME environment variable"; exit 1; fi'; 		echo 'cacertsFile=; for f in "$JAVA_HOME/lib/security/cacerts" "$JAVA_HOME/jre/lib/security/cacerts"; do if [ -e "$f" ]; then cacertsFile="$f"; break; fi; done'; 		echo 'if [ -z "$cacertsFile" ] || ! [ -f "$cacertsFile" ]; then echo >&2 "error: failed to find cacerts file in $JAVA_HOME"; exit 1; fi'; 		echo 'trust extract --overwrite --format=java-cacerts --filter=ca-anchors --purpose=server-auth "$cacertsFile"'; 	} > /etc/ca-certificates/update.d/docker-openjdk; 	chmod +x /etc/ca-certificates/update.d/docker-openjdk; 	/etc/ca-certificates/update.d/docker-openjdk; 		java -version
# Wed, 29 May 2019 22:42:21 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive     apt-get install -y --no-install-recommends         ca-certificates         dirmngr         gosu         gnupg         wget;     rm -rf /var/lib/apt/lists/*;     gosu nobody true
# Wed, 29 May 2019 22:42:34 GMT
ENV ZOO_USER=zookeeper ZOO_CONF_DIR=/conf ZOO_DATA_DIR=/data ZOO_DATA_LOG_DIR=/datalog ZOO_LOG_DIR=/logs ZOO_PORT=2181 ZOO_TICK_TIME=2000 ZOO_INIT_LIMIT=5 ZOO_SYNC_LIMIT=2 ZOO_AUTOPURGE_PURGEINTERVAL=0 ZOO_AUTOPURGE_SNAPRETAINCOUNT=3 ZOO_MAX_CLIENT_CNXNS=60 ZOO_STANDALONE_ENABLED=true
# Wed, 29 May 2019 22:42:35 GMT
RUN set -eux;     useradd -r "$ZOO_USER";     mkdir -p "$ZOO_DATA_LOG_DIR" "$ZOO_DATA_DIR" "$ZOO_CONF_DIR" "$ZOO_LOG_DIR";     chown "$ZOO_USER:$ZOO_USER" "$ZOO_DATA_LOG_DIR" "$ZOO_DATA_DIR" "$ZOO_CONF_DIR" "$ZOO_LOG_DIR"
# Wed, 29 May 2019 22:42:36 GMT
ARG GPG_KEY=3F7A1D16FA4217B1DC75E1C9FFE35B7F15DFA1BA
# Wed, 29 May 2019 22:42:36 GMT
ARG SHORT_DISTRO_NAME=zookeeper-3.5.5
# Wed, 29 May 2019 22:42:36 GMT
ARG DISTRO_NAME=apache-zookeeper-3.5.5-bin
# Wed, 29 May 2019 22:42:41 GMT
# ARGS: DISTRO_NAME=apache-zookeeper-3.5.5-bin GPG_KEY=3F7A1D16FA4217B1DC75E1C9FFE35B7F15DFA1BA SHORT_DISTRO_NAME=zookeeper-3.5.5
RUN set -eux;     wget -q "https://www.apache.org/dist/zookeeper/$SHORT_DISTRO_NAME/$DISTRO_NAME.tar.gz";     wget -q "https://www.apache.org/dist/zookeeper/$SHORT_DISTRO_NAME/$DISTRO_NAME.tar.gz.asc";     export GNUPGHOME="$(mktemp -d)";     gpg --keyserver ha.pool.sks-keyservers.net --recv-key "$GPG_KEY" ||     gpg --keyserver pgp.mit.edu --recv-keys "$GPG_KEY" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$GPG_KEY";     gpg --batch --verify "$DISTRO_NAME.tar.gz.asc" "$DISTRO_NAME.tar.gz";     tar -zxf "$DISTRO_NAME.tar.gz";     mv "$DISTRO_NAME/conf/"* "$ZOO_CONF_DIR";     rm -rf "$GNUPGHOME" "$DISTRO_NAME.tar.gz" "$DISTRO_NAME.tar.gz.asc";     chown -R "$ZOO_USER:$ZOO_USER" "/$DISTRO_NAME"
# Wed, 29 May 2019 22:42:41 GMT
WORKDIR /apache-zookeeper-3.5.5-bin
# Wed, 29 May 2019 22:42:41 GMT
VOLUME [/data /datalog /logs]
# Wed, 29 May 2019 22:42:41 GMT
EXPOSE 2181 2888 3888
# Wed, 29 May 2019 22:42:41 GMT
ENV PATH=/usr/local/openjdk-8/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/apache-zookeeper-3.5.5-bin/bin ZOOCFGDIR=/conf
# Wed, 29 May 2019 22:42:42 GMT
COPY file:95dc0c15132a7e6cbe3c97aed202c76e0adb298cd59ec40a4e22084786939cff in / 
# Wed, 29 May 2019 22:42:42 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 29 May 2019 22:42:42 GMT
CMD ["zkServer.sh" "start-foreground"]
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
	-	`sha256:bbe7020b5561d39d2f33e4ba9d900c1a09ca094ebe85b3b2484b76ca125340cb`  
		Last Modified: Wed, 29 May 2019 21:27:01 GMT  
		Size: 40.4 MB (40377799 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e339292320dc2c833287fde3b995f4e96a22804a8a9512a2af90158737862b1`  
		Last Modified: Wed, 29 May 2019 22:42:52 GMT  
		Size: 5.7 MB (5684448 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6556d1e2aefe0d9d8cfa9a4e9a140dd8bea048a020dbbd2bab4bd4b5d56e3a0c`  
		Last Modified: Wed, 29 May 2019 22:42:59 GMT  
		Size: 1.8 KB (1819 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:852b05ee74a58bc6e5cda786d372cff8c98134337d45d990e7c0000221bacda1`  
		Last Modified: Wed, 29 May 2019 22:43:01 GMT  
		Size: 10.6 MB (10595854 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b22c16aa010d856fa6dbe34b3d025898cc7103af383fb43ffd3046f5c13650b`  
		Last Modified: Wed, 29 May 2019 22:42:59 GMT  
		Size: 673.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `zookeeper:latest`

```console
$ docker pull zookeeper@sha256:d8aac61a92c5201c5e04cdef60bf6d6bebb6510179bbef56b215a73fd32ccedf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `zookeeper:latest` - linux; amd64

```console
$ docker pull zookeeper@sha256:a2828a6aecda90b704cdafcec4ed1d0de28ed015ffe38a96f9ff4c799cfc7a1b
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **82.1 MB (82055938 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:55c28ddb9786d3660761bb5b7044d8ae035a22e9bfd4c138552b955218f471ce`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["zkServer.sh","start-foreground"]`

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
# Wed, 29 May 2019 21:22:39 GMT
ENV JAVA_BASE_URL=https://github.com/AdoptOpenJDK/openjdk8-upstream-binaries/releases/download/jdk8u212-b04/OpenJDK8U-jre_
# Wed, 29 May 2019 21:22:39 GMT
ENV JAVA_URL_VERSION=8u212b04
# Wed, 29 May 2019 21:22:56 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64) upstreamArch='x64' ;; 		arm64) upstreamArch='aarch64' ;; 		*) echo >&2 "error: unsupported architecture: $dpkgArch" ;; 	esac; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		dirmngr 		gnupg 		wget 	; 	rm -rf /var/lib/apt/lists/*; 		wget -O openjdk.tgz.asc "${JAVA_BASE_URL}${upstreamArch}_linux_${JAVA_URL_VERSION}.tar.gz.sign"; 	wget -O openjdk.tgz "${JAVA_BASE_URL}${upstreamArch}_linux_${JAVA_URL_VERSION}.tar.gz" --progress=dot:giga; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys CA5F11C6CE22644D42C6AC4492EF8D39DC13168F; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys EAC843EBD3EFDB98CC772FADA5CD6035332FA671; 	gpg --batch --list-sigs --keyid-format 0xLONG CA5F11C6CE22644D42C6AC4492EF8D39DC13168F | grep '0xA5CD6035332FA671' | grep 'Andrew Haley'; 	gpg --batch --verify openjdk.tgz.asc openjdk.tgz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$JAVA_HOME"; 	tar --extract --file openjdk.tgz --directory "$JAVA_HOME" --strip-components 1; 	rm openjdk.tgz*; 			apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 		{ 		echo '#!/usr/bin/env bash'; 		echo 'set -Eeuo pipefail'; 		echo 'if ! [ -d "$JAVA_HOME" ]; then echo >&2 "error: missing JAVA_HOME environment variable"; exit 1; fi'; 		echo 'cacertsFile=; for f in "$JAVA_HOME/lib/security/cacerts" "$JAVA_HOME/jre/lib/security/cacerts"; do if [ -e "$f" ]; then cacertsFile="$f"; break; fi; done'; 		echo 'if [ -z "$cacertsFile" ] || ! [ -f "$cacertsFile" ]; then echo >&2 "error: failed to find cacerts file in $JAVA_HOME"; exit 1; fi'; 		echo 'trust extract --overwrite --format=java-cacerts --filter=ca-anchors --purpose=server-auth "$cacertsFile"'; 	} > /etc/ca-certificates/update.d/docker-openjdk; 	chmod +x /etc/ca-certificates/update.d/docker-openjdk; 	/etc/ca-certificates/update.d/docker-openjdk; 		java -version
# Wed, 29 May 2019 22:42:21 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive     apt-get install -y --no-install-recommends         ca-certificates         dirmngr         gosu         gnupg         wget;     rm -rf /var/lib/apt/lists/*;     gosu nobody true
# Wed, 29 May 2019 22:42:34 GMT
ENV ZOO_USER=zookeeper ZOO_CONF_DIR=/conf ZOO_DATA_DIR=/data ZOO_DATA_LOG_DIR=/datalog ZOO_LOG_DIR=/logs ZOO_PORT=2181 ZOO_TICK_TIME=2000 ZOO_INIT_LIMIT=5 ZOO_SYNC_LIMIT=2 ZOO_AUTOPURGE_PURGEINTERVAL=0 ZOO_AUTOPURGE_SNAPRETAINCOUNT=3 ZOO_MAX_CLIENT_CNXNS=60 ZOO_STANDALONE_ENABLED=true
# Wed, 29 May 2019 22:42:35 GMT
RUN set -eux;     useradd -r "$ZOO_USER";     mkdir -p "$ZOO_DATA_LOG_DIR" "$ZOO_DATA_DIR" "$ZOO_CONF_DIR" "$ZOO_LOG_DIR";     chown "$ZOO_USER:$ZOO_USER" "$ZOO_DATA_LOG_DIR" "$ZOO_DATA_DIR" "$ZOO_CONF_DIR" "$ZOO_LOG_DIR"
# Wed, 29 May 2019 22:42:36 GMT
ARG GPG_KEY=3F7A1D16FA4217B1DC75E1C9FFE35B7F15DFA1BA
# Wed, 29 May 2019 22:42:36 GMT
ARG SHORT_DISTRO_NAME=zookeeper-3.5.5
# Wed, 29 May 2019 22:42:36 GMT
ARG DISTRO_NAME=apache-zookeeper-3.5.5-bin
# Wed, 29 May 2019 22:42:41 GMT
# ARGS: DISTRO_NAME=apache-zookeeper-3.5.5-bin GPG_KEY=3F7A1D16FA4217B1DC75E1C9FFE35B7F15DFA1BA SHORT_DISTRO_NAME=zookeeper-3.5.5
RUN set -eux;     wget -q "https://www.apache.org/dist/zookeeper/$SHORT_DISTRO_NAME/$DISTRO_NAME.tar.gz";     wget -q "https://www.apache.org/dist/zookeeper/$SHORT_DISTRO_NAME/$DISTRO_NAME.tar.gz.asc";     export GNUPGHOME="$(mktemp -d)";     gpg --keyserver ha.pool.sks-keyservers.net --recv-key "$GPG_KEY" ||     gpg --keyserver pgp.mit.edu --recv-keys "$GPG_KEY" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$GPG_KEY";     gpg --batch --verify "$DISTRO_NAME.tar.gz.asc" "$DISTRO_NAME.tar.gz";     tar -zxf "$DISTRO_NAME.tar.gz";     mv "$DISTRO_NAME/conf/"* "$ZOO_CONF_DIR";     rm -rf "$GNUPGHOME" "$DISTRO_NAME.tar.gz" "$DISTRO_NAME.tar.gz.asc";     chown -R "$ZOO_USER:$ZOO_USER" "/$DISTRO_NAME"
# Wed, 29 May 2019 22:42:41 GMT
WORKDIR /apache-zookeeper-3.5.5-bin
# Wed, 29 May 2019 22:42:41 GMT
VOLUME [/data /datalog /logs]
# Wed, 29 May 2019 22:42:41 GMT
EXPOSE 2181 2888 3888
# Wed, 29 May 2019 22:42:41 GMT
ENV PATH=/usr/local/openjdk-8/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/apache-zookeeper-3.5.5-bin/bin ZOOCFGDIR=/conf
# Wed, 29 May 2019 22:42:42 GMT
COPY file:95dc0c15132a7e6cbe3c97aed202c76e0adb298cd59ec40a4e22084786939cff in / 
# Wed, 29 May 2019 22:42:42 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 29 May 2019 22:42:42 GMT
CMD ["zkServer.sh" "start-foreground"]
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
	-	`sha256:bbe7020b5561d39d2f33e4ba9d900c1a09ca094ebe85b3b2484b76ca125340cb`  
		Last Modified: Wed, 29 May 2019 21:27:01 GMT  
		Size: 40.4 MB (40377799 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e339292320dc2c833287fde3b995f4e96a22804a8a9512a2af90158737862b1`  
		Last Modified: Wed, 29 May 2019 22:42:52 GMT  
		Size: 5.7 MB (5684448 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6556d1e2aefe0d9d8cfa9a4e9a140dd8bea048a020dbbd2bab4bd4b5d56e3a0c`  
		Last Modified: Wed, 29 May 2019 22:42:59 GMT  
		Size: 1.8 KB (1819 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:852b05ee74a58bc6e5cda786d372cff8c98134337d45d990e7c0000221bacda1`  
		Last Modified: Wed, 29 May 2019 22:43:01 GMT  
		Size: 10.6 MB (10595854 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b22c16aa010d856fa6dbe34b3d025898cc7103af383fb43ffd3046f5c13650b`  
		Last Modified: Wed, 29 May 2019 22:42:59 GMT  
		Size: 673.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
