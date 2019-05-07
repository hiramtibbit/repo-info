## `zookeeper:latest`

```console
$ docker pull zookeeper@sha256:55a84b290fe9c146525ec41c28bbb6e4df639553af0b5458d3cbca6ae22de435
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `zookeeper:latest` - linux; amd64

```console
$ docker pull zookeeper@sha256:e81a9dedbe3abe07314742e035a7d4ef4c3bb44baf65f2ceea8473479c40170b
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **97.0 MB (96983114 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:76e9549c68432455e8c7f05d09c8abd6af20d3644fd712cde5da5eb9b3ebf2da`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["zkServer.sh","start-foreground"]`

```dockerfile
# Tue, 09 Apr 2019 23:20:18 GMT
ADD file:2e3a37883f56a4a278bec2931fc9f91fb9ebdaa9047540fe8fde419b84a1701b in / 
# Tue, 09 Apr 2019 23:20:18 GMT
CMD ["/bin/sh"]
# Wed, 10 Apr 2019 01:52:32 GMT
ENV LANG=C.UTF-8
# Wed, 10 Apr 2019 01:52:33 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 10 Apr 2019 01:52:54 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Wed, 10 Apr 2019 01:52:54 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 07 May 2019 00:21:43 GMT
ENV JAVA_VERSION=8u212
# Tue, 07 May 2019 00:21:44 GMT
ENV JAVA_ALPINE_VERSION=8.212.04-r0
# Tue, 07 May 2019 00:21:46 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 07 May 2019 01:08:00 GMT
RUN apk add --no-cache     bash     su-exec
# Tue, 07 May 2019 01:08:00 GMT
ENV ZOO_USER=zookeeper ZOO_CONF_DIR=/conf ZOO_DATA_DIR=/data ZOO_DATA_LOG_DIR=/datalog ZOO_LOG_DIR=/logs ZOO_PORT=2181 ZOO_TICK_TIME=2000 ZOO_INIT_LIMIT=5 ZOO_SYNC_LIMIT=2 ZOO_AUTOPURGE_PURGEINTERVAL=0 ZOO_AUTOPURGE_SNAPRETAINCOUNT=3 ZOO_MAX_CLIENT_CNXNS=60
# Tue, 07 May 2019 01:08:01 GMT
RUN set -ex;     adduser -D "$ZOO_USER";     mkdir -p "$ZOO_DATA_LOG_DIR" "$ZOO_DATA_DIR" "$ZOO_CONF_DIR" "$ZOO_LOG_DIR";     chown "$ZOO_USER:$ZOO_USER" "$ZOO_DATA_LOG_DIR" "$ZOO_DATA_DIR" "$ZOO_CONF_DIR" "$ZOO_LOG_DIR"
# Tue, 07 May 2019 01:08:01 GMT
ARG GPG_KEY=3F7A1D16FA4217B1DC75E1C9FFE35B7F15DFA1BA
# Tue, 07 May 2019 01:08:01 GMT
ARG DISTRO_NAME=zookeeper-3.4.14
# Tue, 07 May 2019 01:08:08 GMT
# ARGS: DISTRO_NAME=zookeeper-3.4.14 GPG_KEY=3F7A1D16FA4217B1DC75E1C9FFE35B7F15DFA1BA
RUN set -ex;     apk add --no-cache --virtual .build-deps         ca-certificates         gnupg         libressl;     wget -q "https://www.apache.org/dist/zookeeper/$DISTRO_NAME/$DISTRO_NAME.tar.gz";     wget -q "https://www.apache.org/dist/zookeeper/$DISTRO_NAME/$DISTRO_NAME.tar.gz.asc";     export GNUPGHOME="$(mktemp -d)";     gpg --keyserver ha.pool.sks-keyservers.net --recv-key "$GPG_KEY" ||     gpg --keyserver pgp.mit.edu --recv-keys "$GPG_KEY" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$GPG_KEY";     gpg --batch --verify "$DISTRO_NAME.tar.gz.asc" "$DISTRO_NAME.tar.gz";     tar -xzf "$DISTRO_NAME.tar.gz";     mv "$DISTRO_NAME/conf/"* "$ZOO_CONF_DIR";     rm -rf "$GNUPGHOME" "$DISTRO_NAME.tar.gz" "$DISTRO_NAME.tar.gz.asc";     apk del .build-deps
# Tue, 07 May 2019 01:08:08 GMT
WORKDIR /zookeeper-3.4.14
# Tue, 07 May 2019 01:08:08 GMT
VOLUME [/data /datalog /logs]
# Tue, 07 May 2019 01:08:08 GMT
EXPOSE 2181 2888 3888
# Tue, 07 May 2019 01:08:08 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin:/zookeeper-3.4.14/bin ZOOCFGDIR=/conf
# Tue, 07 May 2019 01:08:09 GMT
COPY file:e241c4b758b1c07187e9a94844ecbab8e37b4440f1e74109ed52835d8aa518be in / 
# Tue, 07 May 2019 01:08:09 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 07 May 2019 01:08:09 GMT
CMD ["zkServer.sh" "start-foreground"]
```

-	Layers:
	-	`sha256:bdf0201b3a056acc4d6062cc88cd8a4ad5979983bfb640f15a145e09ed985f92`  
		Last Modified: Tue, 09 Apr 2019 10:24:14 GMT  
		Size: 2.8 MB (2757009 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e12771959adeb3408e625492accf845401aa66bcca638859a6b34176d753d62`  
		Last Modified: Wed, 10 Apr 2019 01:57:16 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:436783ae28a4d75be71f011f31b1dd0a35ffd65bdca303bfd5ab33e17b5f37f2`  
		Last Modified: Tue, 07 May 2019 00:23:31 GMT  
		Size: 54.9 MB (54935659 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12af83a635a4e17ffc728337c40facd441071c078376db602df6a39195b29a67`  
		Last Modified: Tue, 07 May 2019 01:08:28 GMT  
		Size: 1.2 MB (1209114 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a475f33d663320b73c474a008d67de9f7d33c0ceafc2f15a02f33182c8b03d0`  
		Last Modified: Tue, 07 May 2019 01:08:28 GMT  
		Size: 1.3 KB (1321 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc397313e6b5ce3380a8f78ab0f6d7255fb4c0e5fcd8df8d947136e74d66cd87`  
		Last Modified: Tue, 07 May 2019 01:08:32 GMT  
		Size: 38.1 MB (38079157 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e54fbdf4841ba1113022e478dbe91f8e27e05035bd288127d8f7d09150154690`  
		Last Modified: Tue, 07 May 2019 01:08:28 GMT  
		Size: 617.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `zookeeper:latest` - linux; arm variant v6

```console
$ docker pull zookeeper@sha256:563ff6a6427268519e86f67cf5adb2e76bab7c9d231d8a85fac2fdcc09d15393
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **94.2 MB (94164556 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0f9dc93f095171d89bf3e1faa4e035eb7dc55753b477ce4a0b7e8b298b027896`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["zkServer.sh","start-foreground"]`

```dockerfile
# Wed, 10 Apr 2019 07:49:49 GMT
ADD file:a436c215187a8aeeb53f8266f96bd40adc3856bb6dc3fe766542e69831ffa7c9 in / 
# Wed, 10 Apr 2019 07:49:49 GMT
CMD ["/bin/sh"]
# Wed, 10 Apr 2019 08:15:59 GMT
ENV LANG=C.UTF-8
# Wed, 10 Apr 2019 08:16:00 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 10 Apr 2019 08:16:13 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Wed, 10 Apr 2019 08:16:13 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 10 Apr 2019 08:16:13 GMT
ENV JAVA_VERSION=8u201
# Wed, 10 Apr 2019 08:16:14 GMT
ENV JAVA_ALPINE_VERSION=8.201.08-r1
# Wed, 10 Apr 2019 08:16:19 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 10 Apr 2019 09:26:33 GMT
RUN apk add --no-cache     bash     su-exec
# Wed, 10 Apr 2019 09:26:34 GMT
ENV ZOO_USER=zookeeper ZOO_CONF_DIR=/conf ZOO_DATA_DIR=/data ZOO_DATA_LOG_DIR=/datalog ZOO_LOG_DIR=/logs ZOO_PORT=2181 ZOO_TICK_TIME=2000 ZOO_INIT_LIMIT=5 ZOO_SYNC_LIMIT=2 ZOO_AUTOPURGE_PURGEINTERVAL=0 ZOO_AUTOPURGE_SNAPRETAINCOUNT=3 ZOO_MAX_CLIENT_CNXNS=60
# Wed, 10 Apr 2019 09:26:36 GMT
RUN set -ex;     adduser -D "$ZOO_USER";     mkdir -p "$ZOO_DATA_LOG_DIR" "$ZOO_DATA_DIR" "$ZOO_CONF_DIR" "$ZOO_LOG_DIR";     chown "$ZOO_USER:$ZOO_USER" "$ZOO_DATA_LOG_DIR" "$ZOO_DATA_DIR" "$ZOO_CONF_DIR" "$ZOO_LOG_DIR"
# Wed, 10 Apr 2019 09:26:36 GMT
ARG GPG_KEY=3F7A1D16FA4217B1DC75E1C9FFE35B7F15DFA1BA
# Wed, 10 Apr 2019 09:26:37 GMT
ARG DISTRO_NAME=zookeeper-3.4.14
# Wed, 10 Apr 2019 09:26:47 GMT
# ARGS: DISTRO_NAME=zookeeper-3.4.14 GPG_KEY=3F7A1D16FA4217B1DC75E1C9FFE35B7F15DFA1BA
RUN set -ex;     apk add --no-cache --virtual .build-deps         ca-certificates         gnupg         libressl;     wget -q "https://www.apache.org/dist/zookeeper/$DISTRO_NAME/$DISTRO_NAME.tar.gz";     wget -q "https://www.apache.org/dist/zookeeper/$DISTRO_NAME/$DISTRO_NAME.tar.gz.asc";     export GNUPGHOME="$(mktemp -d)";     gpg --keyserver ha.pool.sks-keyservers.net --recv-key "$GPG_KEY" ||     gpg --keyserver pgp.mit.edu --recv-keys "$GPG_KEY" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$GPG_KEY";     gpg --batch --verify "$DISTRO_NAME.tar.gz.asc" "$DISTRO_NAME.tar.gz";     tar -xzf "$DISTRO_NAME.tar.gz";     mv "$DISTRO_NAME/conf/"* "$ZOO_CONF_DIR";     rm -rf "$GNUPGHOME" "$DISTRO_NAME.tar.gz" "$DISTRO_NAME.tar.gz.asc";     apk del .build-deps
# Wed, 10 Apr 2019 09:26:48 GMT
WORKDIR /zookeeper-3.4.14
# Wed, 10 Apr 2019 09:26:48 GMT
VOLUME [/data /datalog /logs]
# Wed, 10 Apr 2019 09:26:49 GMT
EXPOSE 2181 2888 3888
# Wed, 10 Apr 2019 09:26:49 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin:/zookeeper-3.4.14/bin ZOOCFGDIR=/conf
# Wed, 10 Apr 2019 09:26:49 GMT
COPY file:e241c4b758b1c07187e9a94844ecbab8e37b4440f1e74109ed52835d8aa518be in / 
# Wed, 10 Apr 2019 09:26:50 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 10 Apr 2019 09:26:50 GMT
CMD ["zkServer.sh" "start-foreground"]
```

-	Layers:
	-	`sha256:9d34ec1d9f3e63864b68d564a237efd2e3778f39a85961f7bdcb3937084070e1`  
		Last Modified: Wed, 10 Apr 2019 07:50:15 GMT  
		Size: 2.5 MB (2543441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:740f9654bf3d64555b0034839bc01523005f3494bc52b01109cf0ceb7de78ece`  
		Last Modified: Wed, 10 Apr 2019 08:17:28 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e44c03e5dbccf9684eecd73adda46344a7ef33a1ef56568391eb8d1bb5766d4`  
		Last Modified: Wed, 10 Apr 2019 08:18:01 GMT  
		Size: 52.4 MB (52387331 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5f2faf03f10384f67b1faddcf989d07cda2027d05167ba2554cf0eae77acee4`  
		Last Modified: Wed, 10 Apr 2019 09:27:18 GMT  
		Size: 1.2 MB (1153984 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51e78fe6254746e9eeb7323fa047dd8c558aa5e62af0527bde796c6d450fc819`  
		Last Modified: Wed, 10 Apr 2019 09:27:17 GMT  
		Size: 1.4 KB (1400 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19e27f471aba8e4275690728e4a37bc55329e8b93c8b2862b259712224a5216c`  
		Last Modified: Wed, 10 Apr 2019 09:27:25 GMT  
		Size: 38.1 MB (38077548 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec219fa98d6a2ee928f9b6ef3bcb5c27858012100f9c59157e38c656548e1122`  
		Last Modified: Wed, 10 Apr 2019 09:27:17 GMT  
		Size: 613.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `zookeeper:latest` - linux; arm64 variant v8

```console
$ docker pull zookeeper@sha256:3efc29a0551016b4f04b854ab15d3ad17c51bd2f8c852ba03048a5684a7a1a93
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **96.9 MB (96930184 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f4335d242c9ecab2c979055d9dc84eb1b12b03ce0ae1f8ca3eaa98013ad9ca1d`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["zkServer.sh","start-foreground"]`

```dockerfile
# Wed, 10 Apr 2019 08:49:11 GMT
ADD file:30e0a8ccdca70b20b8ce637f0ba5108157f4ba491447d20aafbe45d82392bd81 in / 
# Wed, 10 Apr 2019 08:49:12 GMT
CMD ["/bin/sh"]
# Wed, 10 Apr 2019 13:49:37 GMT
ENV LANG=C.UTF-8
# Wed, 10 Apr 2019 13:49:41 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 10 Apr 2019 13:50:30 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Wed, 10 Apr 2019 13:50:31 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 07 May 2019 09:02:55 GMT
ENV JAVA_VERSION=8u212
# Tue, 07 May 2019 09:02:56 GMT
ENV JAVA_ALPINE_VERSION=8.212.04-r0
# Tue, 07 May 2019 09:03:02 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 07 May 2019 09:43:46 GMT
RUN apk add --no-cache     bash     su-exec
# Tue, 07 May 2019 09:43:47 GMT
ENV ZOO_USER=zookeeper ZOO_CONF_DIR=/conf ZOO_DATA_DIR=/data ZOO_DATA_LOG_DIR=/datalog ZOO_LOG_DIR=/logs ZOO_PORT=2181 ZOO_TICK_TIME=2000 ZOO_INIT_LIMIT=5 ZOO_SYNC_LIMIT=2 ZOO_AUTOPURGE_PURGEINTERVAL=0 ZOO_AUTOPURGE_SNAPRETAINCOUNT=3 ZOO_MAX_CLIENT_CNXNS=60
# Tue, 07 May 2019 09:43:49 GMT
RUN set -ex;     adduser -D "$ZOO_USER";     mkdir -p "$ZOO_DATA_LOG_DIR" "$ZOO_DATA_DIR" "$ZOO_CONF_DIR" "$ZOO_LOG_DIR";     chown "$ZOO_USER:$ZOO_USER" "$ZOO_DATA_LOG_DIR" "$ZOO_DATA_DIR" "$ZOO_CONF_DIR" "$ZOO_LOG_DIR"
# Tue, 07 May 2019 09:43:49 GMT
ARG GPG_KEY=3F7A1D16FA4217B1DC75E1C9FFE35B7F15DFA1BA
# Tue, 07 May 2019 09:43:50 GMT
ARG DISTRO_NAME=zookeeper-3.4.14
# Tue, 07 May 2019 09:44:02 GMT
# ARGS: DISTRO_NAME=zookeeper-3.4.14 GPG_KEY=3F7A1D16FA4217B1DC75E1C9FFE35B7F15DFA1BA
RUN set -ex;     apk add --no-cache --virtual .build-deps         ca-certificates         gnupg         libressl;     wget -q "https://www.apache.org/dist/zookeeper/$DISTRO_NAME/$DISTRO_NAME.tar.gz";     wget -q "https://www.apache.org/dist/zookeeper/$DISTRO_NAME/$DISTRO_NAME.tar.gz.asc";     export GNUPGHOME="$(mktemp -d)";     gpg --keyserver ha.pool.sks-keyservers.net --recv-key "$GPG_KEY" ||     gpg --keyserver pgp.mit.edu --recv-keys "$GPG_KEY" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$GPG_KEY";     gpg --batch --verify "$DISTRO_NAME.tar.gz.asc" "$DISTRO_NAME.tar.gz";     tar -xzf "$DISTRO_NAME.tar.gz";     mv "$DISTRO_NAME/conf/"* "$ZOO_CONF_DIR";     rm -rf "$GNUPGHOME" "$DISTRO_NAME.tar.gz" "$DISTRO_NAME.tar.gz.asc";     apk del .build-deps
# Tue, 07 May 2019 09:44:03 GMT
WORKDIR /zookeeper-3.4.14
# Tue, 07 May 2019 09:44:04 GMT
VOLUME [/data /datalog /logs]
# Tue, 07 May 2019 09:44:05 GMT
EXPOSE 2181 2888 3888
# Tue, 07 May 2019 09:44:05 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin:/zookeeper-3.4.14/bin ZOOCFGDIR=/conf
# Tue, 07 May 2019 09:44:06 GMT
COPY file:e241c4b758b1c07187e9a94844ecbab8e37b4440f1e74109ed52835d8aa518be in / 
# Tue, 07 May 2019 09:44:07 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 07 May 2019 09:44:07 GMT
CMD ["zkServer.sh" "start-foreground"]
```

-	Layers:
	-	`sha256:6f37394be673296a0fdc21b819c5df40431baf7d3af121bee451726dd1457493`  
		Last Modified: Wed, 10 Apr 2019 08:50:38 GMT  
		Size: 2.7 MB (2688778 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:262af2c613fda9d21034fdf7bbdb56296fdd19b65bdbb02d6795e631a674fa42`  
		Last Modified: Wed, 10 Apr 2019 13:54:59 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d10db63af1f96048923a5f41d823c0323006317e5fc0aa7c2e88238ca37bf98`  
		Last Modified: Tue, 07 May 2019 09:05:22 GMT  
		Size: 54.9 MB (54942629 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1f0dc50a1171cb9f835a6821f8d7e0dcb3c34192b1fb4e639155929cb42cf57`  
		Last Modified: Tue, 07 May 2019 09:44:47 GMT  
		Size: 1.2 MB (1220048 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:193d04b8a86a5886a0e20a1fa6454fa84a1bed947cf80c36b8812aad13163d29`  
		Last Modified: Tue, 07 May 2019 09:44:46 GMT  
		Size: 1.3 KB (1321 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85777704760e4091dbd1b566cb6aebd6ccf17268094aab3edcdd657e6c67e452`  
		Last Modified: Tue, 07 May 2019 09:44:54 GMT  
		Size: 38.1 MB (38076556 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ed7406a6d0a7388a39c6ceab9cd6b33c1b3c14b253312aa7071386a132aa44a`  
		Last Modified: Tue, 07 May 2019 09:44:46 GMT  
		Size: 615.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `zookeeper:latest` - linux; 386

```console
$ docker pull zookeeper@sha256:847d5fd51e08f8a34b5e4990dc5afd15cc2a09fa7d981914d6c363eaeae7956c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **97.6 MB (97626199 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:85a9ddc1c6d2c4d4e27215c271bce3e7458d5f1e0bb288582300c1f85084f4cb`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["zkServer.sh","start-foreground"]`

```dockerfile
# Wed, 10 Apr 2019 10:38:55 GMT
ADD file:51f7bb95ef6cc3519317dcb7abbf6155e6bb7b73a17ad7d90cad7911e8a8933c in / 
# Wed, 10 Apr 2019 10:38:55 GMT
CMD ["/bin/sh"]
# Wed, 10 Apr 2019 14:45:36 GMT
ENV LANG=C.UTF-8
# Wed, 10 Apr 2019 14:45:37 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 10 Apr 2019 14:45:50 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Wed, 10 Apr 2019 14:45:50 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 10 Apr 2019 14:45:50 GMT
ENV JAVA_VERSION=8u201
# Wed, 10 Apr 2019 14:45:50 GMT
ENV JAVA_ALPINE_VERSION=8.201.08-r1
# Wed, 10 Apr 2019 14:45:53 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 10 Apr 2019 16:16:04 GMT
RUN apk add --no-cache     bash     su-exec
# Wed, 10 Apr 2019 16:16:05 GMT
ENV ZOO_USER=zookeeper ZOO_CONF_DIR=/conf ZOO_DATA_DIR=/data ZOO_DATA_LOG_DIR=/datalog ZOO_LOG_DIR=/logs ZOO_PORT=2181 ZOO_TICK_TIME=2000 ZOO_INIT_LIMIT=5 ZOO_SYNC_LIMIT=2 ZOO_AUTOPURGE_PURGEINTERVAL=0 ZOO_AUTOPURGE_SNAPRETAINCOUNT=3 ZOO_MAX_CLIENT_CNXNS=60
# Wed, 10 Apr 2019 16:16:05 GMT
RUN set -ex;     adduser -D "$ZOO_USER";     mkdir -p "$ZOO_DATA_LOG_DIR" "$ZOO_DATA_DIR" "$ZOO_CONF_DIR" "$ZOO_LOG_DIR";     chown "$ZOO_USER:$ZOO_USER" "$ZOO_DATA_LOG_DIR" "$ZOO_DATA_DIR" "$ZOO_CONF_DIR" "$ZOO_LOG_DIR"
# Wed, 10 Apr 2019 16:16:06 GMT
ARG GPG_KEY=3F7A1D16FA4217B1DC75E1C9FFE35B7F15DFA1BA
# Wed, 10 Apr 2019 16:16:06 GMT
ARG DISTRO_NAME=zookeeper-3.4.14
# Wed, 10 Apr 2019 16:16:13 GMT
# ARGS: DISTRO_NAME=zookeeper-3.4.14 GPG_KEY=3F7A1D16FA4217B1DC75E1C9FFE35B7F15DFA1BA
RUN set -ex;     apk add --no-cache --virtual .build-deps         ca-certificates         gnupg         libressl;     wget -q "https://www.apache.org/dist/zookeeper/$DISTRO_NAME/$DISTRO_NAME.tar.gz";     wget -q "https://www.apache.org/dist/zookeeper/$DISTRO_NAME/$DISTRO_NAME.tar.gz.asc";     export GNUPGHOME="$(mktemp -d)";     gpg --keyserver ha.pool.sks-keyservers.net --recv-key "$GPG_KEY" ||     gpg --keyserver pgp.mit.edu --recv-keys "$GPG_KEY" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$GPG_KEY";     gpg --batch --verify "$DISTRO_NAME.tar.gz.asc" "$DISTRO_NAME.tar.gz";     tar -xzf "$DISTRO_NAME.tar.gz";     mv "$DISTRO_NAME/conf/"* "$ZOO_CONF_DIR";     rm -rf "$GNUPGHOME" "$DISTRO_NAME.tar.gz" "$DISTRO_NAME.tar.gz.asc";     apk del .build-deps
# Wed, 10 Apr 2019 16:16:13 GMT
WORKDIR /zookeeper-3.4.14
# Wed, 10 Apr 2019 16:16:13 GMT
VOLUME [/data /datalog /logs]
# Wed, 10 Apr 2019 16:16:14 GMT
EXPOSE 2181 2888 3888
# Wed, 10 Apr 2019 16:16:14 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin:/zookeeper-3.4.14/bin ZOOCFGDIR=/conf
# Wed, 10 Apr 2019 16:16:14 GMT
COPY file:e241c4b758b1c07187e9a94844ecbab8e37b4440f1e74109ed52835d8aa518be in / 
# Wed, 10 Apr 2019 16:16:14 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 10 Apr 2019 16:16:14 GMT
CMD ["zkServer.sh" "start-foreground"]
```

-	Layers:
	-	`sha256:9a81e6a1a3b4f174d22173a96692c9aeffaefcd00f40607d508951a2b14d6f1f`  
		Last Modified: Wed, 10 Apr 2019 10:39:15 GMT  
		Size: 2.8 MB (2752162 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:507150e9707de9812071bca1e05b447035474af8f628f739782f28876ce11ea7`  
		Last Modified: Wed, 10 Apr 2019 14:47:10 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4cacfa9d1e4f768a9b0bba473e2c0159bbed58683b20860d2f4e235d8818306f`  
		Last Modified: Wed, 10 Apr 2019 14:47:32 GMT  
		Size: 55.5 MB (55538743 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07f205453ff53fab37b31970a93e6f87cf0d5d1a52e4316f644cb587f9fbed60`  
		Last Modified: Wed, 10 Apr 2019 16:16:33 GMT  
		Size: 1.3 MB (1256242 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d56b76f13c5e3e88514a82af4dd0fa390b6ed61500cd71aada0a8a52d8b0f2a1`  
		Last Modified: Wed, 10 Apr 2019 16:16:32 GMT  
		Size: 1.3 KB (1321 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce5fc5681e1ed3d5885f3b8750fa6ce7216c3b6a7d608e76d3a9357499ea931f`  
		Last Modified: Wed, 10 Apr 2019 16:16:37 GMT  
		Size: 38.1 MB (38076874 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd1c6223a87d34cfc7f48e5958c0ad153f87026c70ff9c9e5fd8ff486b384e9e`  
		Last Modified: Wed, 10 Apr 2019 16:16:32 GMT  
		Size: 618.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `zookeeper:latest` - linux; ppc64le

```console
$ docker pull zookeeper@sha256:d5ef027524583c931aaf50798fe9a3b998fd178872ae8713c10be3cb99c743ca
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **97.7 MB (97745672 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dbbf6df64029534b73350b66024ba63384321081c15084985e2e18478b84c715`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["zkServer.sh","start-foreground"]`

```dockerfile
# Wed, 10 Apr 2019 08:27:30 GMT
ADD file:c13c1c2b4e6d71924f570a910caf6a1756ea5a28a4017c7b11305e021eacd0ee in / 
# Wed, 10 Apr 2019 08:27:33 GMT
CMD ["/bin/sh"]
# Wed, 10 Apr 2019 10:34:07 GMT
ENV LANG=C.UTF-8
# Wed, 10 Apr 2019 10:34:14 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 10 Apr 2019 10:35:05 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Wed, 10 Apr 2019 10:35:07 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 07 May 2019 08:26:32 GMT
ENV JAVA_VERSION=8u212
# Tue, 07 May 2019 08:26:36 GMT
ENV JAVA_ALPINE_VERSION=8.212.04-r0
# Tue, 07 May 2019 08:26:49 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 07 May 2019 09:54:09 GMT
RUN apk add --no-cache     bash     su-exec
# Tue, 07 May 2019 09:54:12 GMT
ENV ZOO_USER=zookeeper ZOO_CONF_DIR=/conf ZOO_DATA_DIR=/data ZOO_DATA_LOG_DIR=/datalog ZOO_LOG_DIR=/logs ZOO_PORT=2181 ZOO_TICK_TIME=2000 ZOO_INIT_LIMIT=5 ZOO_SYNC_LIMIT=2 ZOO_AUTOPURGE_PURGEINTERVAL=0 ZOO_AUTOPURGE_SNAPRETAINCOUNT=3 ZOO_MAX_CLIENT_CNXNS=60
# Tue, 07 May 2019 09:54:19 GMT
RUN set -ex;     adduser -D "$ZOO_USER";     mkdir -p "$ZOO_DATA_LOG_DIR" "$ZOO_DATA_DIR" "$ZOO_CONF_DIR" "$ZOO_LOG_DIR";     chown "$ZOO_USER:$ZOO_USER" "$ZOO_DATA_LOG_DIR" "$ZOO_DATA_DIR" "$ZOO_CONF_DIR" "$ZOO_LOG_DIR"
# Tue, 07 May 2019 09:54:21 GMT
ARG GPG_KEY=3F7A1D16FA4217B1DC75E1C9FFE35B7F15DFA1BA
# Tue, 07 May 2019 09:54:24 GMT
ARG DISTRO_NAME=zookeeper-3.4.14
# Tue, 07 May 2019 09:54:55 GMT
# ARGS: DISTRO_NAME=zookeeper-3.4.14 GPG_KEY=3F7A1D16FA4217B1DC75E1C9FFE35B7F15DFA1BA
RUN set -ex;     apk add --no-cache --virtual .build-deps         ca-certificates         gnupg         libressl;     wget -q "https://www.apache.org/dist/zookeeper/$DISTRO_NAME/$DISTRO_NAME.tar.gz";     wget -q "https://www.apache.org/dist/zookeeper/$DISTRO_NAME/$DISTRO_NAME.tar.gz.asc";     export GNUPGHOME="$(mktemp -d)";     gpg --keyserver ha.pool.sks-keyservers.net --recv-key "$GPG_KEY" ||     gpg --keyserver pgp.mit.edu --recv-keys "$GPG_KEY" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$GPG_KEY";     gpg --batch --verify "$DISTRO_NAME.tar.gz.asc" "$DISTRO_NAME.tar.gz";     tar -xzf "$DISTRO_NAME.tar.gz";     mv "$DISTRO_NAME/conf/"* "$ZOO_CONF_DIR";     rm -rf "$GNUPGHOME" "$DISTRO_NAME.tar.gz" "$DISTRO_NAME.tar.gz.asc";     apk del .build-deps
# Tue, 07 May 2019 09:55:00 GMT
WORKDIR /zookeeper-3.4.14
# Tue, 07 May 2019 09:55:03 GMT
VOLUME [/data /datalog /logs]
# Tue, 07 May 2019 09:55:05 GMT
EXPOSE 2181 2888 3888
# Tue, 07 May 2019 09:55:08 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin:/zookeeper-3.4.14/bin ZOOCFGDIR=/conf
# Tue, 07 May 2019 09:55:11 GMT
COPY file:e241c4b758b1c07187e9a94844ecbab8e37b4440f1e74109ed52835d8aa518be in / 
# Tue, 07 May 2019 09:55:13 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 07 May 2019 09:55:15 GMT
CMD ["zkServer.sh" "start-foreground"]
```

-	Layers:
	-	`sha256:fe0f92a92ee06f38abf50fefd22331ac42262e3872ecd2d7ddfa7c24ab71a53a`  
		Last Modified: Wed, 10 Apr 2019 08:28:34 GMT  
		Size: 2.8 MB (2781020 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33502e4594fea19504ab3a271166aae35dc0104c699ca0bdf84559822c1c7be8`  
		Last Modified: Wed, 10 Apr 2019 10:38:58 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a878fd53e767670ae9dd90a12c593d6ebea9c9b8d8e5ae4af9dfb25b20674f42`  
		Last Modified: Tue, 07 May 2019 08:30:01 GMT  
		Size: 55.6 MB (55592005 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:314b6b8eb554f2052ba6b8eed361e0a92b683e9e2d96a970a7cca47c91ed0f3f`  
		Last Modified: Tue, 07 May 2019 09:56:24 GMT  
		Size: 1.3 MB (1291489 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4355fb57868140c422642b1b25d9076d9802bfd6ea44b8462f7dff07b3a628d4`  
		Last Modified: Tue, 07 May 2019 09:56:23 GMT  
		Size: 1.4 KB (1405 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52abad8fd71d68a2a8b59531202e95593956f8b97e7a883587032af23a39eb97`  
		Last Modified: Tue, 07 May 2019 09:56:30 GMT  
		Size: 38.1 MB (38078899 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e612386e6c1397a618272a68ef1c867710801eeb968066f4a50cc19df6ba2297`  
		Last Modified: Tue, 07 May 2019 09:56:23 GMT  
		Size: 617.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `zookeeper:latest` - linux; s390x

```console
$ docker pull zookeeper@sha256:e5c25043e145d0ec4390aeba50a979c9dd83ab90079a58c25616fcf8bfe64d7d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **95.5 MB (95522268 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e811fb5404fcc69e33878b19915939bd09b47689286f6e2a3017bf2a397843a8`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["zkServer.sh","start-foreground"]`

```dockerfile
# Wed, 10 Apr 2019 11:42:23 GMT
ADD file:ab106eb2cf4bf0e1ca7861a56dc24e44dd206fd3ae8d3587684324e5c11136f4 in / 
# Wed, 10 Apr 2019 11:42:23 GMT
CMD ["/bin/sh"]
# Wed, 10 Apr 2019 14:29:54 GMT
ENV LANG=C.UTF-8
# Wed, 10 Apr 2019 14:29:58 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 10 Apr 2019 14:30:40 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Wed, 10 Apr 2019 14:30:41 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 10 Apr 2019 14:30:41 GMT
ENV JAVA_VERSION=8u201
# Wed, 10 Apr 2019 14:30:42 GMT
ENV JAVA_ALPINE_VERSION=8.201.08-r1
# Wed, 10 Apr 2019 14:30:55 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 10 Apr 2019 15:22:36 GMT
RUN apk add --no-cache     bash     su-exec
# Wed, 10 Apr 2019 15:22:36 GMT
ENV ZOO_USER=zookeeper ZOO_CONF_DIR=/conf ZOO_DATA_DIR=/data ZOO_DATA_LOG_DIR=/datalog ZOO_LOG_DIR=/logs ZOO_PORT=2181 ZOO_TICK_TIME=2000 ZOO_INIT_LIMIT=5 ZOO_SYNC_LIMIT=2 ZOO_AUTOPURGE_PURGEINTERVAL=0 ZOO_AUTOPURGE_SNAPRETAINCOUNT=3 ZOO_MAX_CLIENT_CNXNS=60
# Wed, 10 Apr 2019 15:22:37 GMT
RUN set -ex;     adduser -D "$ZOO_USER";     mkdir -p "$ZOO_DATA_LOG_DIR" "$ZOO_DATA_DIR" "$ZOO_CONF_DIR" "$ZOO_LOG_DIR";     chown "$ZOO_USER:$ZOO_USER" "$ZOO_DATA_LOG_DIR" "$ZOO_DATA_DIR" "$ZOO_CONF_DIR" "$ZOO_LOG_DIR"
# Wed, 10 Apr 2019 15:22:38 GMT
ARG GPG_KEY=3F7A1D16FA4217B1DC75E1C9FFE35B7F15DFA1BA
# Wed, 10 Apr 2019 15:22:38 GMT
ARG DISTRO_NAME=zookeeper-3.4.14
# Wed, 10 Apr 2019 15:22:48 GMT
# ARGS: DISTRO_NAME=zookeeper-3.4.14 GPG_KEY=3F7A1D16FA4217B1DC75E1C9FFE35B7F15DFA1BA
RUN set -ex;     apk add --no-cache --virtual .build-deps         ca-certificates         gnupg         libressl;     wget -q "https://www.apache.org/dist/zookeeper/$DISTRO_NAME/$DISTRO_NAME.tar.gz";     wget -q "https://www.apache.org/dist/zookeeper/$DISTRO_NAME/$DISTRO_NAME.tar.gz.asc";     export GNUPGHOME="$(mktemp -d)";     gpg --keyserver ha.pool.sks-keyservers.net --recv-key "$GPG_KEY" ||     gpg --keyserver pgp.mit.edu --recv-keys "$GPG_KEY" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$GPG_KEY";     gpg --batch --verify "$DISTRO_NAME.tar.gz.asc" "$DISTRO_NAME.tar.gz";     tar -xzf "$DISTRO_NAME.tar.gz";     mv "$DISTRO_NAME/conf/"* "$ZOO_CONF_DIR";     rm -rf "$GNUPGHOME" "$DISTRO_NAME.tar.gz" "$DISTRO_NAME.tar.gz.asc";     apk del .build-deps
# Wed, 10 Apr 2019 15:22:48 GMT
WORKDIR /zookeeper-3.4.14
# Wed, 10 Apr 2019 15:22:49 GMT
VOLUME [/data /datalog /logs]
# Wed, 10 Apr 2019 15:22:49 GMT
EXPOSE 2181 2888 3888
# Wed, 10 Apr 2019 15:22:50 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin:/zookeeper-3.4.14/bin ZOOCFGDIR=/conf
# Wed, 10 Apr 2019 15:22:50 GMT
COPY file:e241c4b758b1c07187e9a94844ecbab8e37b4440f1e74109ed52835d8aa518be in / 
# Wed, 10 Apr 2019 15:22:51 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 10 Apr 2019 15:22:51 GMT
CMD ["zkServer.sh" "start-foreground"]
```

-	Layers:
	-	`sha256:5b51e37a522c2e7cd3c67e8a3e5500b45189ea6698e9fdaed7f5d48282326633`  
		Last Modified: Wed, 10 Apr 2019 11:43:06 GMT  
		Size: 2.5 MB (2543326 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a5d5378375b74e61c7006a4fcd138a028ad6edff3a385f04b5ad1a15363b3ed`  
		Last Modified: Wed, 10 Apr 2019 14:34:21 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d393e8415e284fa7de997453f59e69d7f5e47b87b8d7061e49a123cea630b06c`  
		Last Modified: Wed, 10 Apr 2019 14:35:00 GMT  
		Size: 53.7 MB (53660223 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a64e97bb2e8bd0f363f6b9dc1bbbf36fcb445f7c1721960f71e5a198666765e`  
		Last Modified: Wed, 10 Apr 2019 15:23:22 GMT  
		Size: 1.2 MB (1240056 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47a6412623176f3eadd514a095c1809d2f14bb3b9c3f6680c3166e889424f8dd`  
		Last Modified: Wed, 10 Apr 2019 15:23:21 GMT  
		Size: 1.3 KB (1322 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd91c8e084809cc020d004c5951b21238d13b831119a63bb1a062e24ab6c911f`  
		Last Modified: Wed, 10 Apr 2019 15:23:26 GMT  
		Size: 38.1 MB (38076486 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74a576e86bcf77e69cb6f2ff359603eceed13e9ee7b75f52352db0193ba5aaaf`  
		Last Modified: Wed, 10 Apr 2019 15:23:21 GMT  
		Size: 617.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
