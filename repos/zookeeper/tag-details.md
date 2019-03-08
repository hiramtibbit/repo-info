<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `zookeeper`

-	[`zookeeper:3.4`](#zookeeper34)
-	[`zookeeper:3.4.13`](#zookeeper3413)
-	[`zookeeper:3.5`](#zookeeper35)
-	[`zookeeper:3.5.4-beta`](#zookeeper354-beta)
-	[`zookeeper:latest`](#zookeeperlatest)

## `zookeeper:3.4`

```console
$ docker pull zookeeper@sha256:39ad74f72efb86cfc06204969827eac676d327d2a741c6f6422b54d147922fbc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `zookeeper:3.4` - linux; amd64

```console
$ docker pull zookeeper@sha256:5828d72bd73a01bc0ebbc18c009eb72ca8c852757a74baff198e209c59236172
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **96.5 MB (96451561 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4c7dee7bb5a5b29aefe6cd96543ce0312fe501d524519e3b52b6d962e4473848`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["zkServer.sh","start-foreground"]`

```dockerfile
# Thu, 07 Mar 2019 22:19:40 GMT
ADD file:88875982b0512a9d0ba001bfea19497ae9a9442c257b19c61bffc56e7201b0c3 in / 
# Thu, 07 Mar 2019 22:19:40 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 02:13:29 GMT
ENV LANG=C.UTF-8
# Fri, 08 Mar 2019 02:13:30 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 08 Mar 2019 02:13:42 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Fri, 08 Mar 2019 02:13:42 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Fri, 08 Mar 2019 02:13:43 GMT
ENV JAVA_VERSION=8u191
# Fri, 08 Mar 2019 02:13:43 GMT
ENV JAVA_ALPINE_VERSION=8.191.12-r0
# Fri, 08 Mar 2019 02:13:45 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Fri, 08 Mar 2019 04:47:04 GMT
RUN apk add --no-cache     bash     su-exec
# Fri, 08 Mar 2019 04:47:04 GMT
ENV ZOO_USER=zookeeper ZOO_CONF_DIR=/conf ZOO_DATA_DIR=/data ZOO_DATA_LOG_DIR=/datalog ZOO_LOG_DIR=/logs ZOO_PORT=2181 ZOO_TICK_TIME=2000 ZOO_INIT_LIMIT=5 ZOO_SYNC_LIMIT=2 ZOO_AUTOPURGE_PURGEINTERVAL=0 ZOO_AUTOPURGE_SNAPRETAINCOUNT=3 ZOO_MAX_CLIENT_CNXNS=60
# Fri, 08 Mar 2019 04:47:06 GMT
RUN set -ex;     adduser -D "$ZOO_USER";     mkdir -p "$ZOO_DATA_LOG_DIR" "$ZOO_DATA_DIR" "$ZOO_CONF_DIR" "$ZOO_LOG_DIR";     chown "$ZOO_USER:$ZOO_USER" "$ZOO_DATA_LOG_DIR" "$ZOO_DATA_DIR" "$ZOO_CONF_DIR" "$ZOO_LOG_DIR"
# Fri, 08 Mar 2019 04:47:06 GMT
ARG GPG_KEY=C61B346552DC5E0CB53AA84F59147497767E7473
# Fri, 08 Mar 2019 04:47:06 GMT
ARG DISTRO_NAME=zookeeper-3.4.13
# Fri, 08 Mar 2019 04:47:12 GMT
# ARGS: DISTRO_NAME=zookeeper-3.4.13 GPG_KEY=C61B346552DC5E0CB53AA84F59147497767E7473
RUN set -ex;     apk add --no-cache --virtual .build-deps         ca-certificates         gnupg         libressl;     wget -q "https://www.apache.org/dist/zookeeper/$DISTRO_NAME/$DISTRO_NAME.tar.gz";     wget -q "https://www.apache.org/dist/zookeeper/$DISTRO_NAME/$DISTRO_NAME.tar.gz.asc";     export GNUPGHOME="$(mktemp -d)";     gpg --keyserver ha.pool.sks-keyservers.net --recv-key "$GPG_KEY" ||     gpg --keyserver pgp.mit.edu --recv-keys "$GPG_KEY" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$GPG_KEY";     gpg --batch --verify "$DISTRO_NAME.tar.gz.asc" "$DISTRO_NAME.tar.gz";     tar -xzf "$DISTRO_NAME.tar.gz";     mv "$DISTRO_NAME/conf/"* "$ZOO_CONF_DIR";     rm -rf "$GNUPGHOME" "$DISTRO_NAME.tar.gz" "$DISTRO_NAME.tar.gz.asc";     apk del .build-deps
# Fri, 08 Mar 2019 04:47:13 GMT
WORKDIR /zookeeper-3.4.13
# Fri, 08 Mar 2019 04:47:13 GMT
VOLUME [/data /datalog /logs]
# Fri, 08 Mar 2019 04:47:13 GMT
EXPOSE 2181 2888 3888
# Fri, 08 Mar 2019 04:47:13 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin:/zookeeper-3.4.13/bin ZOOCFGDIR=/conf
# Fri, 08 Mar 2019 04:47:14 GMT
COPY file:e241c4b758b1c07187e9a94844ecbab8e37b4440f1e74109ed52835d8aa518be in / 
# Fri, 08 Mar 2019 04:47:14 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 08 Mar 2019 04:47:14 GMT
CMD ["zkServer.sh" "start-foreground"]
```

-	Layers:
	-	`sha256:8e402f1a9c577ded051c1ef10e9fe4492890459522089959988a4852dee8ab2c`  
		Last Modified: Tue, 05 Mar 2019 21:22:35 GMT  
		Size: 2.8 MB (2754729 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4866c822999cc5862e60f784434873bd291ef9a7ac6e9199a5d1d19eea22fe17`  
		Last Modified: Fri, 08 Mar 2019 02:15:56 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:205f26e90552395346c11a0738dab5f50b49f245b5aac539ad7845f6ea92d2d4`  
		Last Modified: Fri, 08 Mar 2019 02:16:18 GMT  
		Size: 54.9 MB (54922705 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99243f6904c1cb96464bd89696ec6dca2cd5d2a8bd56e364eb19a05dbfa03e8e`  
		Last Modified: Fri, 08 Mar 2019 04:47:39 GMT  
		Size: 1.2 MB (1209062 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6ac2a9494103530d117d9847b88b838384d0c2791f969c72df8285e1b3c77e4`  
		Last Modified: Fri, 08 Mar 2019 04:47:38 GMT  
		Size: 1.3 KB (1322 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c9e3757276813770b4ced1e70248793c2f7f6dd1b3f84febba86babcd3e6c7f`  
		Last Modified: Fri, 08 Mar 2019 04:47:43 GMT  
		Size: 37.6 MB (37562889 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:637f418389133076170bcfb3931389f7ecffb240015c1a2141665830b1a5b188`  
		Last Modified: Fri, 08 Mar 2019 04:47:38 GMT  
		Size: 615.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `zookeeper:3.4` - linux; arm variant v6

```console
$ docker pull zookeeper@sha256:a2c30264c51f9387ccab5f2de1033b55170fb273b429f606a9203ec9b46917e2
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **93.6 MB (93576441 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:26de613a41e677e2494ef7813ca31382cc5005bdbf05579ca96a7a0fbf7feb09`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["zkServer.sh","start-foreground"]`

```dockerfile
# Thu, 31 Jan 2019 08:50:08 GMT
ADD file:64d5aa5dc08c958468e7c857c35d32a3e87c88800152264432930898defa10c5 in / 
# Thu, 31 Jan 2019 08:50:09 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Thu, 31 Jan 2019 08:50:09 GMT
CMD ["/bin/sh"]
# Wed, 06 Feb 2019 09:09:14 GMT
ENV LANG=C.UTF-8
# Wed, 06 Feb 2019 09:09:15 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 06 Feb 2019 09:09:34 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Wed, 06 Feb 2019 09:09:34 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 06 Feb 2019 09:09:34 GMT
ENV JAVA_VERSION=8u191
# Wed, 06 Feb 2019 09:09:35 GMT
ENV JAVA_ALPINE_VERSION=8.191.12-r0
# Wed, 06 Feb 2019 09:09:39 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Thu, 07 Feb 2019 09:46:35 GMT
RUN apk add --no-cache     bash     su-exec
# Thu, 07 Feb 2019 09:46:35 GMT
ENV ZOO_USER=zookeeper ZOO_CONF_DIR=/conf ZOO_DATA_DIR=/data ZOO_DATA_LOG_DIR=/datalog ZOO_LOG_DIR=/logs ZOO_PORT=2181 ZOO_TICK_TIME=2000 ZOO_INIT_LIMIT=5 ZOO_SYNC_LIMIT=2 ZOO_AUTOPURGE_PURGEINTERVAL=0 ZOO_AUTOPURGE_SNAPRETAINCOUNT=3 ZOO_MAX_CLIENT_CNXNS=60
# Thu, 07 Feb 2019 09:46:37 GMT
RUN set -ex;     adduser -D "$ZOO_USER";     mkdir -p "$ZOO_DATA_LOG_DIR" "$ZOO_DATA_DIR" "$ZOO_CONF_DIR" "$ZOO_LOG_DIR";     chown "$ZOO_USER:$ZOO_USER" "$ZOO_DATA_LOG_DIR" "$ZOO_DATA_DIR" "$ZOO_CONF_DIR" "$ZOO_LOG_DIR"
# Thu, 07 Feb 2019 09:46:37 GMT
ARG GPG_KEY=C61B346552DC5E0CB53AA84F59147497767E7473
# Thu, 07 Feb 2019 09:46:38 GMT
ARG DISTRO_NAME=zookeeper-3.4.13
# Thu, 07 Feb 2019 09:47:09 GMT
# ARGS: DISTRO_NAME=zookeeper-3.4.13 GPG_KEY=C61B346552DC5E0CB53AA84F59147497767E7473
RUN set -ex;     apk add --no-cache --virtual .build-deps         ca-certificates         gnupg         libressl;     wget -q "https://www.apache.org/dist/zookeeper/$DISTRO_NAME/$DISTRO_NAME.tar.gz";     wget -q "https://www.apache.org/dist/zookeeper/$DISTRO_NAME/$DISTRO_NAME.tar.gz.asc";     export GNUPGHOME="$(mktemp -d)";     gpg --keyserver ha.pool.sks-keyservers.net --recv-key "$GPG_KEY" ||     gpg --keyserver pgp.mit.edu --recv-keys "$GPG_KEY" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$GPG_KEY";     gpg --batch --verify "$DISTRO_NAME.tar.gz.asc" "$DISTRO_NAME.tar.gz";     tar -xzf "$DISTRO_NAME.tar.gz";     mv "$DISTRO_NAME/conf/"* "$ZOO_CONF_DIR";     rm -rf "$GNUPGHOME" "$DISTRO_NAME.tar.gz" "$DISTRO_NAME.tar.gz.asc";     apk del .build-deps
# Thu, 07 Feb 2019 09:47:10 GMT
WORKDIR /zookeeper-3.4.13
# Thu, 07 Feb 2019 09:47:10 GMT
VOLUME [/data /datalog /logs]
# Thu, 07 Feb 2019 09:47:11 GMT
EXPOSE 2181 2888 3888
# Thu, 07 Feb 2019 09:47:11 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin:/zookeeper-3.4.13/bin ZOOCFGDIR=/conf
# Thu, 07 Feb 2019 09:47:12 GMT
COPY file:e241c4b758b1c07187e9a94844ecbab8e37b4440f1e74109ed52835d8aa518be in / 
# Thu, 07 Feb 2019 09:47:12 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 07 Feb 2019 09:47:12 GMT
CMD ["zkServer.sh" "start-foreground"]
```

-	Layers:
	-	`sha256:05276f4299f299c4d5ca6776672dcf52f03189b7004e747fd1c2b759d9157831`  
		Last Modified: Thu, 31 Jan 2019 08:50:31 GMT  
		Size: 2.5 MB (2540746 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5657e63df53674891643732c236f7932524d1710ce42d916bb3c889a8652df67`  
		Last Modified: Thu, 31 Jan 2019 08:50:31 GMT  
		Size: 173.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:598092653ce578dc5f1728020fc7cea202bfd7c3694e321c61bdd914e0a1f5ec`  
		Last Modified: Wed, 06 Feb 2019 09:10:30 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89a4f55d20a64c757c23b9e9b1382fa744e666c57cb22ae208fa26f8724585c2`  
		Last Modified: Wed, 06 Feb 2019 09:11:13 GMT  
		Size: 52.3 MB (52316622 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3b5aeac4816e0601a214f22a41dc5258bc63084c40ea23450cc0e35b49ce182`  
		Last Modified: Thu, 07 Feb 2019 09:47:41 GMT  
		Size: 1.2 MB (1154133 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:791ac7f55f420d4cea35da1de70ded57c33bff85fca1fa4e00ce6d6837e4e9e3`  
		Last Modified: Thu, 07 Feb 2019 09:47:40 GMT  
		Size: 1.4 KB (1393 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f50c83c26d8a10b4836c1a4cc24b0bee68ced62ed84095197eb8f098ca4a86b6`  
		Last Modified: Thu, 07 Feb 2019 09:47:48 GMT  
		Size: 37.6 MB (37562521 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:782ba2840eea26ea3e723ea472d18b5644b531b22f34d56b7b529d70b3bd8f4f`  
		Last Modified: Thu, 07 Feb 2019 09:47:40 GMT  
		Size: 616.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `zookeeper:3.4` - linux; arm64 variant v8

```console
$ docker pull zookeeper@sha256:8c91333e821622b9a010eab2850863b1fd67ef7e1717aa1ac7f61c2efddb4d5c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **96.3 MB (96335662 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bbcff02c15d0fcfdb8d7e62e492f6c1986e9313e7380dd26675aa9f4801d3e29`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["zkServer.sh","start-foreground"]`

```dockerfile
# Thu, 31 Jan 2019 09:40:55 GMT
ADD file:3c5f57c6644886bbb8164b9aa4cd60e233be7da48b7194a04963a8e7de058e28 in / 
# Thu, 31 Jan 2019 09:40:56 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Thu, 31 Jan 2019 09:40:57 GMT
CMD ["/bin/sh"]
# Wed, 06 Feb 2019 12:20:55 GMT
ENV LANG=C.UTF-8
# Wed, 06 Feb 2019 12:21:00 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 06 Feb 2019 12:31:59 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Wed, 06 Feb 2019 12:32:01 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 06 Feb 2019 12:32:04 GMT
ENV JAVA_VERSION=8u191
# Wed, 06 Feb 2019 12:32:07 GMT
ENV JAVA_ALPINE_VERSION=8.191.12-r0
# Wed, 06 Feb 2019 12:32:21 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Thu, 07 Feb 2019 08:55:52 GMT
RUN apk add --no-cache     bash     su-exec
# Thu, 07 Feb 2019 08:55:53 GMT
ENV ZOO_USER=zookeeper ZOO_CONF_DIR=/conf ZOO_DATA_DIR=/data ZOO_DATA_LOG_DIR=/datalog ZOO_LOG_DIR=/logs ZOO_PORT=2181 ZOO_TICK_TIME=2000 ZOO_INIT_LIMIT=5 ZOO_SYNC_LIMIT=2 ZOO_AUTOPURGE_PURGEINTERVAL=0 ZOO_AUTOPURGE_SNAPRETAINCOUNT=3 ZOO_MAX_CLIENT_CNXNS=60
# Thu, 07 Feb 2019 08:55:57 GMT
RUN set -ex;     adduser -D "$ZOO_USER";     mkdir -p "$ZOO_DATA_LOG_DIR" "$ZOO_DATA_DIR" "$ZOO_CONF_DIR" "$ZOO_LOG_DIR";     chown "$ZOO_USER:$ZOO_USER" "$ZOO_DATA_LOG_DIR" "$ZOO_DATA_DIR" "$ZOO_CONF_DIR" "$ZOO_LOG_DIR"
# Thu, 07 Feb 2019 08:55:58 GMT
ARG GPG_KEY=C61B346552DC5E0CB53AA84F59147497767E7473
# Thu, 07 Feb 2019 08:55:59 GMT
ARG DISTRO_NAME=zookeeper-3.4.13
# Thu, 07 Feb 2019 08:56:15 GMT
# ARGS: DISTRO_NAME=zookeeper-3.4.13 GPG_KEY=C61B346552DC5E0CB53AA84F59147497767E7473
RUN set -ex;     apk add --no-cache --virtual .build-deps         ca-certificates         gnupg         libressl;     wget -q "https://www.apache.org/dist/zookeeper/$DISTRO_NAME/$DISTRO_NAME.tar.gz";     wget -q "https://www.apache.org/dist/zookeeper/$DISTRO_NAME/$DISTRO_NAME.tar.gz.asc";     export GNUPGHOME="$(mktemp -d)";     gpg --keyserver ha.pool.sks-keyservers.net --recv-key "$GPG_KEY" ||     gpg --keyserver pgp.mit.edu --recv-keys "$GPG_KEY" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$GPG_KEY";     gpg --batch --verify "$DISTRO_NAME.tar.gz.asc" "$DISTRO_NAME.tar.gz";     tar -xzf "$DISTRO_NAME.tar.gz";     mv "$DISTRO_NAME/conf/"* "$ZOO_CONF_DIR";     rm -rf "$GNUPGHOME" "$DISTRO_NAME.tar.gz" "$DISTRO_NAME.tar.gz.asc";     apk del .build-deps
# Thu, 07 Feb 2019 08:56:16 GMT
WORKDIR /zookeeper-3.4.13
# Thu, 07 Feb 2019 08:56:17 GMT
VOLUME [/data /datalog /logs]
# Thu, 07 Feb 2019 08:56:19 GMT
EXPOSE 2181 2888 3888
# Thu, 07 Feb 2019 08:56:20 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin:/zookeeper-3.4.13/bin ZOOCFGDIR=/conf
# Thu, 07 Feb 2019 08:56:21 GMT
COPY file:e241c4b758b1c07187e9a94844ecbab8e37b4440f1e74109ed52835d8aa518be in / 
# Thu, 07 Feb 2019 08:56:23 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 07 Feb 2019 08:56:24 GMT
CMD ["zkServer.sh" "start-foreground"]
```

-	Layers:
	-	`sha256:ee02fa18913c824d1d1c9b680f1a43dad343b9d6c086a6bc62e3361c3d3a2d63`  
		Last Modified: Thu, 31 Jan 2019 09:41:23 GMT  
		Size: 2.7 MB (2687895 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afafa41235ea57b01b00eba47de1574777073a79c1d592c5709dfcbb3bd51f2a`  
		Last Modified: Thu, 31 Jan 2019 09:41:21 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd4dbd37ccf7cb48097dfc245c4c6f892eaf16d2ad47a0478302cf24d0a74911`  
		Last Modified: Wed, 06 Feb 2019 12:42:42 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a4c22261364cc479c308d041f6881688678f61995139006fbd24aa898f98a7f`  
		Last Modified: Wed, 06 Feb 2019 12:45:02 GMT  
		Size: 54.9 MB (54863256 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f19da5bbe7339eaca5e7037bbeab323f14c1c9869e2b501a85ce25b8c599313`  
		Last Modified: Thu, 07 Feb 2019 08:57:10 GMT  
		Size: 1.2 MB (1220003 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56acc5810a78bba805b35c4beaab70f2118210b0aa85757e9155e6aed2f64bf6`  
		Last Modified: Thu, 07 Feb 2019 08:57:09 GMT  
		Size: 1.3 KB (1314 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e78423a7b16a00c632ca90c0a31806970c78b03c9ea821f24ffebf4425a7c289`  
		Last Modified: Thu, 07 Feb 2019 08:57:20 GMT  
		Size: 37.6 MB (37562163 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c63a1a1eeb2bdb08eb5ae58e95d5f537600484e15b3a16413fe12bf16cf22b2`  
		Last Modified: Thu, 07 Feb 2019 08:57:09 GMT  
		Size: 616.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `zookeeper:3.4` - linux; 386

```console
$ docker pull zookeeper@sha256:88774951841d6a6c62a89af09e67297abb428b716c70cbd10edfc0a6cb1b5ae8
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **97.1 MB (97121666 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e592f1baac27aa1d2fee39280c7ceb85f92fc09ffc2ab023ed3f46d676fa8404`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["zkServer.sh","start-foreground"]`

```dockerfile
# Thu, 31 Jan 2019 11:38:57 GMT
ADD file:738a04760a9f9a1cd919954db42a0da78c644e7024240160c54723bf1dd479e9 in / 
# Thu, 31 Jan 2019 11:38:57 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Thu, 31 Jan 2019 11:38:57 GMT
CMD ["/bin/sh"]
# Wed, 06 Feb 2019 13:21:09 GMT
ENV LANG=C.UTF-8
# Wed, 06 Feb 2019 13:21:11 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 06 Feb 2019 13:22:07 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Wed, 06 Feb 2019 13:22:07 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 06 Feb 2019 13:22:08 GMT
ENV JAVA_VERSION=8u191
# Wed, 06 Feb 2019 13:22:08 GMT
ENV JAVA_ALPINE_VERSION=8.191.12-r0
# Wed, 06 Feb 2019 13:22:13 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Thu, 07 Feb 2019 06:57:06 GMT
RUN apk add --no-cache     bash     su-exec
# Thu, 07 Feb 2019 06:57:06 GMT
ENV ZOO_USER=zookeeper ZOO_CONF_DIR=/conf ZOO_DATA_DIR=/data ZOO_DATA_LOG_DIR=/datalog ZOO_LOG_DIR=/logs ZOO_PORT=2181 ZOO_TICK_TIME=2000 ZOO_INIT_LIMIT=5 ZOO_SYNC_LIMIT=2 ZOO_AUTOPURGE_PURGEINTERVAL=0 ZOO_AUTOPURGE_SNAPRETAINCOUNT=3 ZOO_MAX_CLIENT_CNXNS=60
# Thu, 07 Feb 2019 06:57:07 GMT
RUN set -ex;     adduser -D "$ZOO_USER";     mkdir -p "$ZOO_DATA_LOG_DIR" "$ZOO_DATA_DIR" "$ZOO_CONF_DIR" "$ZOO_LOG_DIR";     chown "$ZOO_USER:$ZOO_USER" "$ZOO_DATA_LOG_DIR" "$ZOO_DATA_DIR" "$ZOO_CONF_DIR" "$ZOO_LOG_DIR"
# Thu, 07 Feb 2019 06:57:07 GMT
ARG GPG_KEY=C61B346552DC5E0CB53AA84F59147497767E7473
# Thu, 07 Feb 2019 06:57:07 GMT
ARG DISTRO_NAME=zookeeper-3.4.13
# Thu, 07 Feb 2019 06:57:12 GMT
# ARGS: DISTRO_NAME=zookeeper-3.4.13 GPG_KEY=C61B346552DC5E0CB53AA84F59147497767E7473
RUN set -ex;     apk add --no-cache --virtual .build-deps         ca-certificates         gnupg         libressl;     wget -q "https://www.apache.org/dist/zookeeper/$DISTRO_NAME/$DISTRO_NAME.tar.gz";     wget -q "https://www.apache.org/dist/zookeeper/$DISTRO_NAME/$DISTRO_NAME.tar.gz.asc";     export GNUPGHOME="$(mktemp -d)";     gpg --keyserver ha.pool.sks-keyservers.net --recv-key "$GPG_KEY" ||     gpg --keyserver pgp.mit.edu --recv-keys "$GPG_KEY" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$GPG_KEY";     gpg --batch --verify "$DISTRO_NAME.tar.gz.asc" "$DISTRO_NAME.tar.gz";     tar -xzf "$DISTRO_NAME.tar.gz";     mv "$DISTRO_NAME/conf/"* "$ZOO_CONF_DIR";     rm -rf "$GNUPGHOME" "$DISTRO_NAME.tar.gz" "$DISTRO_NAME.tar.gz.asc";     apk del .build-deps
# Thu, 07 Feb 2019 06:57:12 GMT
WORKDIR /zookeeper-3.4.13
# Thu, 07 Feb 2019 06:57:12 GMT
VOLUME [/data /datalog /logs]
# Thu, 07 Feb 2019 06:57:12 GMT
EXPOSE 2181 2888 3888
# Thu, 07 Feb 2019 06:57:13 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin:/zookeeper-3.4.13/bin ZOOCFGDIR=/conf
# Thu, 07 Feb 2019 06:57:13 GMT
COPY file:e241c4b758b1c07187e9a94844ecbab8e37b4440f1e74109ed52835d8aa518be in / 
# Thu, 07 Feb 2019 06:57:13 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 07 Feb 2019 06:57:13 GMT
CMD ["zkServer.sh" "start-foreground"]
```

-	Layers:
	-	`sha256:bcb4f889a459d231e71d88c93174eec5edef928ab1e2481f8b0074076ee934a6`  
		Last Modified: Thu, 31 Jan 2019 11:39:11 GMT  
		Size: 2.7 MB (2749336 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4099db9edcf638f20df22a899890483f7c152af59ca7a2de9c3b24c53c509e7`  
		Last Modified: Thu, 31 Jan 2019 11:39:11 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce0f3d3b48a17ae1a2bcad376e638afbdf982a8d5949595c2e4a4007f4db3d0c`  
		Last Modified: Wed, 06 Feb 2019 13:42:46 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6f750ad7f5e8d95553682c05697501d8d94a636946715800825169fb5974036`  
		Last Modified: Wed, 06 Feb 2019 13:43:57 GMT  
		Size: 55.6 MB (55551309 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:644d973e06d17886800442ecd34535984052e10bd1a776f799b661e33714113e`  
		Last Modified: Thu, 07 Feb 2019 06:57:32 GMT  
		Size: 1.3 MB (1256186 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:386b44d98c1341387a20bac6035fbae63cf9cf11709b465e08cbe85d72c289c2`  
		Last Modified: Thu, 07 Feb 2019 06:57:31 GMT  
		Size: 1.3 KB (1311 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d73bea42a24adef2279e1e50e259501e6ab9bfd4d74934012cafe7224907d5f8`  
		Last Modified: Thu, 07 Feb 2019 06:57:36 GMT  
		Size: 37.6 MB (37562495 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d876ff9798e926cfd5107ec500e44f44ee202a6f38f96219a55c38ef562ab8f`  
		Last Modified: Thu, 07 Feb 2019 06:57:32 GMT  
		Size: 614.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `zookeeper:3.4` - linux; ppc64le

```console
$ docker pull zookeeper@sha256:ff8dd63d5d97b6219befdedd9551f058ac4e8a84dd8908d7d025c465356d7444
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **97.1 MB (97138895 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0c979873d8ec48b5fd545f6d9054eef2d1e32ce60b96a32ec4a95e43ab766b62`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["zkServer.sh","start-foreground"]`

```dockerfile
# Thu, 31 Jan 2019 09:21:00 GMT
ADD file:22eef5b6e842546e68660322c07723d9794ca0eb45ac3acf95381e2591f455c6 in / 
# Thu, 31 Jan 2019 09:21:01 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Thu, 31 Jan 2019 09:21:02 GMT
CMD ["/bin/sh"]
# Wed, 06 Feb 2019 11:30:19 GMT
ENV LANG=C.UTF-8
# Wed, 06 Feb 2019 11:30:24 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 06 Feb 2019 11:32:36 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Wed, 06 Feb 2019 11:32:40 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 06 Feb 2019 11:32:43 GMT
ENV JAVA_VERSION=8u191
# Wed, 06 Feb 2019 11:32:45 GMT
ENV JAVA_ALPINE_VERSION=8.191.12-r0
# Wed, 06 Feb 2019 11:32:56 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Thu, 07 Feb 2019 02:11:45 GMT
RUN apk add --no-cache     bash     su-exec
# Thu, 07 Feb 2019 02:11:46 GMT
ENV ZOO_USER=zookeeper ZOO_CONF_DIR=/conf ZOO_DATA_DIR=/data ZOO_DATA_LOG_DIR=/datalog ZOO_LOG_DIR=/logs ZOO_PORT=2181 ZOO_TICK_TIME=2000 ZOO_INIT_LIMIT=5 ZOO_SYNC_LIMIT=2 ZOO_AUTOPURGE_PURGEINTERVAL=0 ZOO_AUTOPURGE_SNAPRETAINCOUNT=3 ZOO_MAX_CLIENT_CNXNS=60
# Thu, 07 Feb 2019 02:11:52 GMT
RUN set -ex;     adduser -D "$ZOO_USER";     mkdir -p "$ZOO_DATA_LOG_DIR" "$ZOO_DATA_DIR" "$ZOO_CONF_DIR" "$ZOO_LOG_DIR";     chown "$ZOO_USER:$ZOO_USER" "$ZOO_DATA_LOG_DIR" "$ZOO_DATA_DIR" "$ZOO_CONF_DIR" "$ZOO_LOG_DIR"
# Thu, 07 Feb 2019 02:11:54 GMT
ARG GPG_KEY=C61B346552DC5E0CB53AA84F59147497767E7473
# Thu, 07 Feb 2019 02:11:56 GMT
ARG DISTRO_NAME=zookeeper-3.4.13
# Thu, 07 Feb 2019 02:12:07 GMT
# ARGS: DISTRO_NAME=zookeeper-3.4.13 GPG_KEY=C61B346552DC5E0CB53AA84F59147497767E7473
RUN set -ex;     apk add --no-cache --virtual .build-deps         ca-certificates         gnupg         libressl;     wget -q "https://www.apache.org/dist/zookeeper/$DISTRO_NAME/$DISTRO_NAME.tar.gz";     wget -q "https://www.apache.org/dist/zookeeper/$DISTRO_NAME/$DISTRO_NAME.tar.gz.asc";     export GNUPGHOME="$(mktemp -d)";     gpg --keyserver ha.pool.sks-keyservers.net --recv-key "$GPG_KEY" ||     gpg --keyserver pgp.mit.edu --recv-keys "$GPG_KEY" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$GPG_KEY";     gpg --batch --verify "$DISTRO_NAME.tar.gz.asc" "$DISTRO_NAME.tar.gz";     tar -xzf "$DISTRO_NAME.tar.gz";     mv "$DISTRO_NAME/conf/"* "$ZOO_CONF_DIR";     rm -rf "$GNUPGHOME" "$DISTRO_NAME.tar.gz" "$DISTRO_NAME.tar.gz.asc";     apk del .build-deps
# Thu, 07 Feb 2019 02:12:10 GMT
WORKDIR /zookeeper-3.4.13
# Thu, 07 Feb 2019 02:12:13 GMT
VOLUME [/data /datalog /logs]
# Thu, 07 Feb 2019 02:12:16 GMT
EXPOSE 2181 2888 3888
# Thu, 07 Feb 2019 02:12:20 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin:/zookeeper-3.4.13/bin ZOOCFGDIR=/conf
# Thu, 07 Feb 2019 02:12:21 GMT
COPY file:e241c4b758b1c07187e9a94844ecbab8e37b4440f1e74109ed52835d8aa518be in / 
# Thu, 07 Feb 2019 02:12:24 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 07 Feb 2019 02:12:28 GMT
CMD ["zkServer.sh" "start-foreground"]
```

-	Layers:
	-	`sha256:3261f066f954b13c338d7bebabcc22a2a4037bfe4c6989b60595b13ac629445f`  
		Last Modified: Thu, 31 Jan 2019 09:21:21 GMT  
		Size: 2.8 MB (2778665 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ff5f92c7db4d11f3356e3243a8a330a8eb64fcde5310599933270ad96a2e3dc`  
		Last Modified: Thu, 31 Jan 2019 09:21:22 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81ffc70c988f1eca134348f8c977a0a8eca65b127503f8a7d6561fd73acaf47f`  
		Last Modified: Wed, 06 Feb 2019 11:40:41 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8cf79593b1c96e6feabee87ffa86fac13485dfb07d9c3ee56aa9894c479e939c`  
		Last Modified: Wed, 06 Feb 2019 11:41:49 GMT  
		Size: 55.5 MB (55503724 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bcf618d30d4b960042b0b84f5bfcf2165c03302b93b04970d44451c8d738e094`  
		Last Modified: Thu, 07 Feb 2019 02:13:36 GMT  
		Size: 1.3 MB (1291401 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bfea78845b2748553f4dc154bbacb5d4376eea446e780971641128ef1594bb39`  
		Last Modified: Thu, 07 Feb 2019 02:13:35 GMT  
		Size: 1.4 KB (1395 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07e1d6ac3bd5267093b6588be5158296342b0b0dd2441ba13c27388a4aaea239`  
		Last Modified: Thu, 07 Feb 2019 02:13:40 GMT  
		Size: 37.6 MB (37562681 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f7227f16524e677e9c7aecf818e897fd90f1f49c60bdfed5027157b3853b274`  
		Last Modified: Thu, 07 Feb 2019 02:13:35 GMT  
		Size: 615.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `zookeeper:3.4` - linux; s390x

```console
$ docker pull zookeeper@sha256:9a531d31fca52dc07c81dcb48a497bcb8a99ed3f11dff8f055bca6ff95b2fc77
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **94.9 MB (94933484 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ef7102de0c17606b5b9f957178e38e55d016c99bfebda10236c1d0a0f3d888bb`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["zkServer.sh","start-foreground"]`

```dockerfile
# Thu, 31 Jan 2019 12:41:43 GMT
ADD file:fdc9dcc7d932bb46a3992371288a0f80814bfb29ae8c8f1d860b6aabf0e9f893 in / 
# Thu, 31 Jan 2019 12:41:44 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Thu, 31 Jan 2019 12:41:44 GMT
CMD ["/bin/sh"]
# Wed, 06 Feb 2019 13:20:18 GMT
ENV LANG=C.UTF-8
# Wed, 06 Feb 2019 13:20:18 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 06 Feb 2019 13:20:56 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Wed, 06 Feb 2019 13:20:56 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 06 Feb 2019 13:20:56 GMT
ENV JAVA_VERSION=8u191
# Wed, 06 Feb 2019 13:20:57 GMT
ENV JAVA_ALPINE_VERSION=8.191.12-r0
# Wed, 06 Feb 2019 13:20:59 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 06 Feb 2019 18:15:41 GMT
RUN apk add --no-cache     bash     su-exec
# Wed, 06 Feb 2019 18:15:42 GMT
ENV ZOO_USER=zookeeper ZOO_CONF_DIR=/conf ZOO_DATA_DIR=/data ZOO_DATA_LOG_DIR=/datalog ZOO_LOG_DIR=/logs ZOO_PORT=2181 ZOO_TICK_TIME=2000 ZOO_INIT_LIMIT=5 ZOO_SYNC_LIMIT=2 ZOO_AUTOPURGE_PURGEINTERVAL=0 ZOO_AUTOPURGE_SNAPRETAINCOUNT=3 ZOO_MAX_CLIENT_CNXNS=60
# Wed, 06 Feb 2019 18:15:42 GMT
RUN set -ex;     adduser -D "$ZOO_USER";     mkdir -p "$ZOO_DATA_LOG_DIR" "$ZOO_DATA_DIR" "$ZOO_CONF_DIR" "$ZOO_LOG_DIR";     chown "$ZOO_USER:$ZOO_USER" "$ZOO_DATA_LOG_DIR" "$ZOO_DATA_DIR" "$ZOO_CONF_DIR" "$ZOO_LOG_DIR"
# Wed, 06 Feb 2019 18:15:42 GMT
ARG GPG_KEY=C61B346552DC5E0CB53AA84F59147497767E7473
# Wed, 06 Feb 2019 18:15:43 GMT
ARG DISTRO_NAME=zookeeper-3.4.13
# Wed, 06 Feb 2019 18:15:49 GMT
# ARGS: DISTRO_NAME=zookeeper-3.4.13 GPG_KEY=C61B346552DC5E0CB53AA84F59147497767E7473
RUN set -ex;     apk add --no-cache --virtual .build-deps         ca-certificates         gnupg         libressl;     wget -q "https://www.apache.org/dist/zookeeper/$DISTRO_NAME/$DISTRO_NAME.tar.gz";     wget -q "https://www.apache.org/dist/zookeeper/$DISTRO_NAME/$DISTRO_NAME.tar.gz.asc";     export GNUPGHOME="$(mktemp -d)";     gpg --keyserver ha.pool.sks-keyservers.net --recv-key "$GPG_KEY" ||     gpg --keyserver pgp.mit.edu --recv-keys "$GPG_KEY" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$GPG_KEY";     gpg --batch --verify "$DISTRO_NAME.tar.gz.asc" "$DISTRO_NAME.tar.gz";     tar -xzf "$DISTRO_NAME.tar.gz";     mv "$DISTRO_NAME/conf/"* "$ZOO_CONF_DIR";     rm -rf "$GNUPGHOME" "$DISTRO_NAME.tar.gz" "$DISTRO_NAME.tar.gz.asc";     apk del .build-deps
# Wed, 06 Feb 2019 18:15:49 GMT
WORKDIR /zookeeper-3.4.13
# Wed, 06 Feb 2019 18:15:49 GMT
VOLUME [/data /datalog /logs]
# Wed, 06 Feb 2019 18:15:49 GMT
EXPOSE 2181 2888 3888
# Wed, 06 Feb 2019 18:15:49 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin:/zookeeper-3.4.13/bin ZOOCFGDIR=/conf
# Wed, 06 Feb 2019 18:15:50 GMT
COPY file:e241c4b758b1c07187e9a94844ecbab8e37b4440f1e74109ed52835d8aa518be in / 
# Wed, 06 Feb 2019 18:15:50 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 06 Feb 2019 18:15:50 GMT
CMD ["zkServer.sh" "start-foreground"]
```

-	Layers:
	-	`sha256:11396e2e564eba3ffa05ba6ea52a711025650a7cfe1387d6a59fdd9a90f2e024`  
		Last Modified: Thu, 31 Jan 2019 12:42:01 GMT  
		Size: 2.5 MB (2541348 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e33c309129e1ab066f8f8e65929ab8246c5ae9ec293c9522c706fa70dfa0a4c6`  
		Last Modified: Thu, 31 Jan 2019 12:42:01 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99d1a7308c276b4bfe36b12f01b7c57f79adfc7eb55e0263fd725e1308d13412`  
		Last Modified: Wed, 06 Feb 2019 13:25:05 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af546122d628f916df18308eef518892c9e8d4560ed0bb582389244f015942d6`  
		Last Modified: Wed, 06 Feb 2019 13:25:42 GMT  
		Size: 53.6 MB (53587740 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80468258aa44038e935f65d62d380ee9db866ea2a161f20f8adc28d22c736190`  
		Last Modified: Wed, 06 Feb 2019 18:16:11 GMT  
		Size: 1.2 MB (1240005 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e640172b9ee5864b41bcfda6b09f47a096dcefb43bce087cb75c112fbec33473`  
		Last Modified: Wed, 06 Feb 2019 18:16:11 GMT  
		Size: 1.3 KB (1311 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82e669b57233facbd518cdaad542dadc693f922e013bf13e2281168675962c80`  
		Last Modified: Wed, 06 Feb 2019 18:16:15 GMT  
		Size: 37.6 MB (37562050 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23c57175780edba9613b96977cd4f4e47020262faafb524aed9df4f3c68eac60`  
		Last Modified: Wed, 06 Feb 2019 18:16:11 GMT  
		Size: 617.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `zookeeper:3.4.13`

```console
$ docker pull zookeeper@sha256:39ad74f72efb86cfc06204969827eac676d327d2a741c6f6422b54d147922fbc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `zookeeper:3.4.13` - linux; amd64

```console
$ docker pull zookeeper@sha256:5828d72bd73a01bc0ebbc18c009eb72ca8c852757a74baff198e209c59236172
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **96.5 MB (96451561 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4c7dee7bb5a5b29aefe6cd96543ce0312fe501d524519e3b52b6d962e4473848`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["zkServer.sh","start-foreground"]`

```dockerfile
# Thu, 07 Mar 2019 22:19:40 GMT
ADD file:88875982b0512a9d0ba001bfea19497ae9a9442c257b19c61bffc56e7201b0c3 in / 
# Thu, 07 Mar 2019 22:19:40 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 02:13:29 GMT
ENV LANG=C.UTF-8
# Fri, 08 Mar 2019 02:13:30 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 08 Mar 2019 02:13:42 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Fri, 08 Mar 2019 02:13:42 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Fri, 08 Mar 2019 02:13:43 GMT
ENV JAVA_VERSION=8u191
# Fri, 08 Mar 2019 02:13:43 GMT
ENV JAVA_ALPINE_VERSION=8.191.12-r0
# Fri, 08 Mar 2019 02:13:45 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Fri, 08 Mar 2019 04:47:04 GMT
RUN apk add --no-cache     bash     su-exec
# Fri, 08 Mar 2019 04:47:04 GMT
ENV ZOO_USER=zookeeper ZOO_CONF_DIR=/conf ZOO_DATA_DIR=/data ZOO_DATA_LOG_DIR=/datalog ZOO_LOG_DIR=/logs ZOO_PORT=2181 ZOO_TICK_TIME=2000 ZOO_INIT_LIMIT=5 ZOO_SYNC_LIMIT=2 ZOO_AUTOPURGE_PURGEINTERVAL=0 ZOO_AUTOPURGE_SNAPRETAINCOUNT=3 ZOO_MAX_CLIENT_CNXNS=60
# Fri, 08 Mar 2019 04:47:06 GMT
RUN set -ex;     adduser -D "$ZOO_USER";     mkdir -p "$ZOO_DATA_LOG_DIR" "$ZOO_DATA_DIR" "$ZOO_CONF_DIR" "$ZOO_LOG_DIR";     chown "$ZOO_USER:$ZOO_USER" "$ZOO_DATA_LOG_DIR" "$ZOO_DATA_DIR" "$ZOO_CONF_DIR" "$ZOO_LOG_DIR"
# Fri, 08 Mar 2019 04:47:06 GMT
ARG GPG_KEY=C61B346552DC5E0CB53AA84F59147497767E7473
# Fri, 08 Mar 2019 04:47:06 GMT
ARG DISTRO_NAME=zookeeper-3.4.13
# Fri, 08 Mar 2019 04:47:12 GMT
# ARGS: DISTRO_NAME=zookeeper-3.4.13 GPG_KEY=C61B346552DC5E0CB53AA84F59147497767E7473
RUN set -ex;     apk add --no-cache --virtual .build-deps         ca-certificates         gnupg         libressl;     wget -q "https://www.apache.org/dist/zookeeper/$DISTRO_NAME/$DISTRO_NAME.tar.gz";     wget -q "https://www.apache.org/dist/zookeeper/$DISTRO_NAME/$DISTRO_NAME.tar.gz.asc";     export GNUPGHOME="$(mktemp -d)";     gpg --keyserver ha.pool.sks-keyservers.net --recv-key "$GPG_KEY" ||     gpg --keyserver pgp.mit.edu --recv-keys "$GPG_KEY" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$GPG_KEY";     gpg --batch --verify "$DISTRO_NAME.tar.gz.asc" "$DISTRO_NAME.tar.gz";     tar -xzf "$DISTRO_NAME.tar.gz";     mv "$DISTRO_NAME/conf/"* "$ZOO_CONF_DIR";     rm -rf "$GNUPGHOME" "$DISTRO_NAME.tar.gz" "$DISTRO_NAME.tar.gz.asc";     apk del .build-deps
# Fri, 08 Mar 2019 04:47:13 GMT
WORKDIR /zookeeper-3.4.13
# Fri, 08 Mar 2019 04:47:13 GMT
VOLUME [/data /datalog /logs]
# Fri, 08 Mar 2019 04:47:13 GMT
EXPOSE 2181 2888 3888
# Fri, 08 Mar 2019 04:47:13 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin:/zookeeper-3.4.13/bin ZOOCFGDIR=/conf
# Fri, 08 Mar 2019 04:47:14 GMT
COPY file:e241c4b758b1c07187e9a94844ecbab8e37b4440f1e74109ed52835d8aa518be in / 
# Fri, 08 Mar 2019 04:47:14 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 08 Mar 2019 04:47:14 GMT
CMD ["zkServer.sh" "start-foreground"]
```

-	Layers:
	-	`sha256:8e402f1a9c577ded051c1ef10e9fe4492890459522089959988a4852dee8ab2c`  
		Last Modified: Tue, 05 Mar 2019 21:22:35 GMT  
		Size: 2.8 MB (2754729 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4866c822999cc5862e60f784434873bd291ef9a7ac6e9199a5d1d19eea22fe17`  
		Last Modified: Fri, 08 Mar 2019 02:15:56 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:205f26e90552395346c11a0738dab5f50b49f245b5aac539ad7845f6ea92d2d4`  
		Last Modified: Fri, 08 Mar 2019 02:16:18 GMT  
		Size: 54.9 MB (54922705 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99243f6904c1cb96464bd89696ec6dca2cd5d2a8bd56e364eb19a05dbfa03e8e`  
		Last Modified: Fri, 08 Mar 2019 04:47:39 GMT  
		Size: 1.2 MB (1209062 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6ac2a9494103530d117d9847b88b838384d0c2791f969c72df8285e1b3c77e4`  
		Last Modified: Fri, 08 Mar 2019 04:47:38 GMT  
		Size: 1.3 KB (1322 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c9e3757276813770b4ced1e70248793c2f7f6dd1b3f84febba86babcd3e6c7f`  
		Last Modified: Fri, 08 Mar 2019 04:47:43 GMT  
		Size: 37.6 MB (37562889 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:637f418389133076170bcfb3931389f7ecffb240015c1a2141665830b1a5b188`  
		Last Modified: Fri, 08 Mar 2019 04:47:38 GMT  
		Size: 615.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `zookeeper:3.4.13` - linux; arm variant v6

```console
$ docker pull zookeeper@sha256:a2c30264c51f9387ccab5f2de1033b55170fb273b429f606a9203ec9b46917e2
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **93.6 MB (93576441 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:26de613a41e677e2494ef7813ca31382cc5005bdbf05579ca96a7a0fbf7feb09`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["zkServer.sh","start-foreground"]`

```dockerfile
# Thu, 31 Jan 2019 08:50:08 GMT
ADD file:64d5aa5dc08c958468e7c857c35d32a3e87c88800152264432930898defa10c5 in / 
# Thu, 31 Jan 2019 08:50:09 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Thu, 31 Jan 2019 08:50:09 GMT
CMD ["/bin/sh"]
# Wed, 06 Feb 2019 09:09:14 GMT
ENV LANG=C.UTF-8
# Wed, 06 Feb 2019 09:09:15 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 06 Feb 2019 09:09:34 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Wed, 06 Feb 2019 09:09:34 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 06 Feb 2019 09:09:34 GMT
ENV JAVA_VERSION=8u191
# Wed, 06 Feb 2019 09:09:35 GMT
ENV JAVA_ALPINE_VERSION=8.191.12-r0
# Wed, 06 Feb 2019 09:09:39 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Thu, 07 Feb 2019 09:46:35 GMT
RUN apk add --no-cache     bash     su-exec
# Thu, 07 Feb 2019 09:46:35 GMT
ENV ZOO_USER=zookeeper ZOO_CONF_DIR=/conf ZOO_DATA_DIR=/data ZOO_DATA_LOG_DIR=/datalog ZOO_LOG_DIR=/logs ZOO_PORT=2181 ZOO_TICK_TIME=2000 ZOO_INIT_LIMIT=5 ZOO_SYNC_LIMIT=2 ZOO_AUTOPURGE_PURGEINTERVAL=0 ZOO_AUTOPURGE_SNAPRETAINCOUNT=3 ZOO_MAX_CLIENT_CNXNS=60
# Thu, 07 Feb 2019 09:46:37 GMT
RUN set -ex;     adduser -D "$ZOO_USER";     mkdir -p "$ZOO_DATA_LOG_DIR" "$ZOO_DATA_DIR" "$ZOO_CONF_DIR" "$ZOO_LOG_DIR";     chown "$ZOO_USER:$ZOO_USER" "$ZOO_DATA_LOG_DIR" "$ZOO_DATA_DIR" "$ZOO_CONF_DIR" "$ZOO_LOG_DIR"
# Thu, 07 Feb 2019 09:46:37 GMT
ARG GPG_KEY=C61B346552DC5E0CB53AA84F59147497767E7473
# Thu, 07 Feb 2019 09:46:38 GMT
ARG DISTRO_NAME=zookeeper-3.4.13
# Thu, 07 Feb 2019 09:47:09 GMT
# ARGS: DISTRO_NAME=zookeeper-3.4.13 GPG_KEY=C61B346552DC5E0CB53AA84F59147497767E7473
RUN set -ex;     apk add --no-cache --virtual .build-deps         ca-certificates         gnupg         libressl;     wget -q "https://www.apache.org/dist/zookeeper/$DISTRO_NAME/$DISTRO_NAME.tar.gz";     wget -q "https://www.apache.org/dist/zookeeper/$DISTRO_NAME/$DISTRO_NAME.tar.gz.asc";     export GNUPGHOME="$(mktemp -d)";     gpg --keyserver ha.pool.sks-keyservers.net --recv-key "$GPG_KEY" ||     gpg --keyserver pgp.mit.edu --recv-keys "$GPG_KEY" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$GPG_KEY";     gpg --batch --verify "$DISTRO_NAME.tar.gz.asc" "$DISTRO_NAME.tar.gz";     tar -xzf "$DISTRO_NAME.tar.gz";     mv "$DISTRO_NAME/conf/"* "$ZOO_CONF_DIR";     rm -rf "$GNUPGHOME" "$DISTRO_NAME.tar.gz" "$DISTRO_NAME.tar.gz.asc";     apk del .build-deps
# Thu, 07 Feb 2019 09:47:10 GMT
WORKDIR /zookeeper-3.4.13
# Thu, 07 Feb 2019 09:47:10 GMT
VOLUME [/data /datalog /logs]
# Thu, 07 Feb 2019 09:47:11 GMT
EXPOSE 2181 2888 3888
# Thu, 07 Feb 2019 09:47:11 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin:/zookeeper-3.4.13/bin ZOOCFGDIR=/conf
# Thu, 07 Feb 2019 09:47:12 GMT
COPY file:e241c4b758b1c07187e9a94844ecbab8e37b4440f1e74109ed52835d8aa518be in / 
# Thu, 07 Feb 2019 09:47:12 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 07 Feb 2019 09:47:12 GMT
CMD ["zkServer.sh" "start-foreground"]
```

-	Layers:
	-	`sha256:05276f4299f299c4d5ca6776672dcf52f03189b7004e747fd1c2b759d9157831`  
		Last Modified: Thu, 31 Jan 2019 08:50:31 GMT  
		Size: 2.5 MB (2540746 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5657e63df53674891643732c236f7932524d1710ce42d916bb3c889a8652df67`  
		Last Modified: Thu, 31 Jan 2019 08:50:31 GMT  
		Size: 173.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:598092653ce578dc5f1728020fc7cea202bfd7c3694e321c61bdd914e0a1f5ec`  
		Last Modified: Wed, 06 Feb 2019 09:10:30 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89a4f55d20a64c757c23b9e9b1382fa744e666c57cb22ae208fa26f8724585c2`  
		Last Modified: Wed, 06 Feb 2019 09:11:13 GMT  
		Size: 52.3 MB (52316622 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3b5aeac4816e0601a214f22a41dc5258bc63084c40ea23450cc0e35b49ce182`  
		Last Modified: Thu, 07 Feb 2019 09:47:41 GMT  
		Size: 1.2 MB (1154133 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:791ac7f55f420d4cea35da1de70ded57c33bff85fca1fa4e00ce6d6837e4e9e3`  
		Last Modified: Thu, 07 Feb 2019 09:47:40 GMT  
		Size: 1.4 KB (1393 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f50c83c26d8a10b4836c1a4cc24b0bee68ced62ed84095197eb8f098ca4a86b6`  
		Last Modified: Thu, 07 Feb 2019 09:47:48 GMT  
		Size: 37.6 MB (37562521 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:782ba2840eea26ea3e723ea472d18b5644b531b22f34d56b7b529d70b3bd8f4f`  
		Last Modified: Thu, 07 Feb 2019 09:47:40 GMT  
		Size: 616.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `zookeeper:3.4.13` - linux; arm64 variant v8

```console
$ docker pull zookeeper@sha256:8c91333e821622b9a010eab2850863b1fd67ef7e1717aa1ac7f61c2efddb4d5c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **96.3 MB (96335662 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bbcff02c15d0fcfdb8d7e62e492f6c1986e9313e7380dd26675aa9f4801d3e29`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["zkServer.sh","start-foreground"]`

```dockerfile
# Thu, 31 Jan 2019 09:40:55 GMT
ADD file:3c5f57c6644886bbb8164b9aa4cd60e233be7da48b7194a04963a8e7de058e28 in / 
# Thu, 31 Jan 2019 09:40:56 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Thu, 31 Jan 2019 09:40:57 GMT
CMD ["/bin/sh"]
# Wed, 06 Feb 2019 12:20:55 GMT
ENV LANG=C.UTF-8
# Wed, 06 Feb 2019 12:21:00 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 06 Feb 2019 12:31:59 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Wed, 06 Feb 2019 12:32:01 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 06 Feb 2019 12:32:04 GMT
ENV JAVA_VERSION=8u191
# Wed, 06 Feb 2019 12:32:07 GMT
ENV JAVA_ALPINE_VERSION=8.191.12-r0
# Wed, 06 Feb 2019 12:32:21 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Thu, 07 Feb 2019 08:55:52 GMT
RUN apk add --no-cache     bash     su-exec
# Thu, 07 Feb 2019 08:55:53 GMT
ENV ZOO_USER=zookeeper ZOO_CONF_DIR=/conf ZOO_DATA_DIR=/data ZOO_DATA_LOG_DIR=/datalog ZOO_LOG_DIR=/logs ZOO_PORT=2181 ZOO_TICK_TIME=2000 ZOO_INIT_LIMIT=5 ZOO_SYNC_LIMIT=2 ZOO_AUTOPURGE_PURGEINTERVAL=0 ZOO_AUTOPURGE_SNAPRETAINCOUNT=3 ZOO_MAX_CLIENT_CNXNS=60
# Thu, 07 Feb 2019 08:55:57 GMT
RUN set -ex;     adduser -D "$ZOO_USER";     mkdir -p "$ZOO_DATA_LOG_DIR" "$ZOO_DATA_DIR" "$ZOO_CONF_DIR" "$ZOO_LOG_DIR";     chown "$ZOO_USER:$ZOO_USER" "$ZOO_DATA_LOG_DIR" "$ZOO_DATA_DIR" "$ZOO_CONF_DIR" "$ZOO_LOG_DIR"
# Thu, 07 Feb 2019 08:55:58 GMT
ARG GPG_KEY=C61B346552DC5E0CB53AA84F59147497767E7473
# Thu, 07 Feb 2019 08:55:59 GMT
ARG DISTRO_NAME=zookeeper-3.4.13
# Thu, 07 Feb 2019 08:56:15 GMT
# ARGS: DISTRO_NAME=zookeeper-3.4.13 GPG_KEY=C61B346552DC5E0CB53AA84F59147497767E7473
RUN set -ex;     apk add --no-cache --virtual .build-deps         ca-certificates         gnupg         libressl;     wget -q "https://www.apache.org/dist/zookeeper/$DISTRO_NAME/$DISTRO_NAME.tar.gz";     wget -q "https://www.apache.org/dist/zookeeper/$DISTRO_NAME/$DISTRO_NAME.tar.gz.asc";     export GNUPGHOME="$(mktemp -d)";     gpg --keyserver ha.pool.sks-keyservers.net --recv-key "$GPG_KEY" ||     gpg --keyserver pgp.mit.edu --recv-keys "$GPG_KEY" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$GPG_KEY";     gpg --batch --verify "$DISTRO_NAME.tar.gz.asc" "$DISTRO_NAME.tar.gz";     tar -xzf "$DISTRO_NAME.tar.gz";     mv "$DISTRO_NAME/conf/"* "$ZOO_CONF_DIR";     rm -rf "$GNUPGHOME" "$DISTRO_NAME.tar.gz" "$DISTRO_NAME.tar.gz.asc";     apk del .build-deps
# Thu, 07 Feb 2019 08:56:16 GMT
WORKDIR /zookeeper-3.4.13
# Thu, 07 Feb 2019 08:56:17 GMT
VOLUME [/data /datalog /logs]
# Thu, 07 Feb 2019 08:56:19 GMT
EXPOSE 2181 2888 3888
# Thu, 07 Feb 2019 08:56:20 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin:/zookeeper-3.4.13/bin ZOOCFGDIR=/conf
# Thu, 07 Feb 2019 08:56:21 GMT
COPY file:e241c4b758b1c07187e9a94844ecbab8e37b4440f1e74109ed52835d8aa518be in / 
# Thu, 07 Feb 2019 08:56:23 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 07 Feb 2019 08:56:24 GMT
CMD ["zkServer.sh" "start-foreground"]
```

-	Layers:
	-	`sha256:ee02fa18913c824d1d1c9b680f1a43dad343b9d6c086a6bc62e3361c3d3a2d63`  
		Last Modified: Thu, 31 Jan 2019 09:41:23 GMT  
		Size: 2.7 MB (2687895 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afafa41235ea57b01b00eba47de1574777073a79c1d592c5709dfcbb3bd51f2a`  
		Last Modified: Thu, 31 Jan 2019 09:41:21 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd4dbd37ccf7cb48097dfc245c4c6f892eaf16d2ad47a0478302cf24d0a74911`  
		Last Modified: Wed, 06 Feb 2019 12:42:42 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a4c22261364cc479c308d041f6881688678f61995139006fbd24aa898f98a7f`  
		Last Modified: Wed, 06 Feb 2019 12:45:02 GMT  
		Size: 54.9 MB (54863256 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f19da5bbe7339eaca5e7037bbeab323f14c1c9869e2b501a85ce25b8c599313`  
		Last Modified: Thu, 07 Feb 2019 08:57:10 GMT  
		Size: 1.2 MB (1220003 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56acc5810a78bba805b35c4beaab70f2118210b0aa85757e9155e6aed2f64bf6`  
		Last Modified: Thu, 07 Feb 2019 08:57:09 GMT  
		Size: 1.3 KB (1314 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e78423a7b16a00c632ca90c0a31806970c78b03c9ea821f24ffebf4425a7c289`  
		Last Modified: Thu, 07 Feb 2019 08:57:20 GMT  
		Size: 37.6 MB (37562163 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c63a1a1eeb2bdb08eb5ae58e95d5f537600484e15b3a16413fe12bf16cf22b2`  
		Last Modified: Thu, 07 Feb 2019 08:57:09 GMT  
		Size: 616.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `zookeeper:3.4.13` - linux; 386

```console
$ docker pull zookeeper@sha256:88774951841d6a6c62a89af09e67297abb428b716c70cbd10edfc0a6cb1b5ae8
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **97.1 MB (97121666 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e592f1baac27aa1d2fee39280c7ceb85f92fc09ffc2ab023ed3f46d676fa8404`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["zkServer.sh","start-foreground"]`

```dockerfile
# Thu, 31 Jan 2019 11:38:57 GMT
ADD file:738a04760a9f9a1cd919954db42a0da78c644e7024240160c54723bf1dd479e9 in / 
# Thu, 31 Jan 2019 11:38:57 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Thu, 31 Jan 2019 11:38:57 GMT
CMD ["/bin/sh"]
# Wed, 06 Feb 2019 13:21:09 GMT
ENV LANG=C.UTF-8
# Wed, 06 Feb 2019 13:21:11 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 06 Feb 2019 13:22:07 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Wed, 06 Feb 2019 13:22:07 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 06 Feb 2019 13:22:08 GMT
ENV JAVA_VERSION=8u191
# Wed, 06 Feb 2019 13:22:08 GMT
ENV JAVA_ALPINE_VERSION=8.191.12-r0
# Wed, 06 Feb 2019 13:22:13 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Thu, 07 Feb 2019 06:57:06 GMT
RUN apk add --no-cache     bash     su-exec
# Thu, 07 Feb 2019 06:57:06 GMT
ENV ZOO_USER=zookeeper ZOO_CONF_DIR=/conf ZOO_DATA_DIR=/data ZOO_DATA_LOG_DIR=/datalog ZOO_LOG_DIR=/logs ZOO_PORT=2181 ZOO_TICK_TIME=2000 ZOO_INIT_LIMIT=5 ZOO_SYNC_LIMIT=2 ZOO_AUTOPURGE_PURGEINTERVAL=0 ZOO_AUTOPURGE_SNAPRETAINCOUNT=3 ZOO_MAX_CLIENT_CNXNS=60
# Thu, 07 Feb 2019 06:57:07 GMT
RUN set -ex;     adduser -D "$ZOO_USER";     mkdir -p "$ZOO_DATA_LOG_DIR" "$ZOO_DATA_DIR" "$ZOO_CONF_DIR" "$ZOO_LOG_DIR";     chown "$ZOO_USER:$ZOO_USER" "$ZOO_DATA_LOG_DIR" "$ZOO_DATA_DIR" "$ZOO_CONF_DIR" "$ZOO_LOG_DIR"
# Thu, 07 Feb 2019 06:57:07 GMT
ARG GPG_KEY=C61B346552DC5E0CB53AA84F59147497767E7473
# Thu, 07 Feb 2019 06:57:07 GMT
ARG DISTRO_NAME=zookeeper-3.4.13
# Thu, 07 Feb 2019 06:57:12 GMT
# ARGS: DISTRO_NAME=zookeeper-3.4.13 GPG_KEY=C61B346552DC5E0CB53AA84F59147497767E7473
RUN set -ex;     apk add --no-cache --virtual .build-deps         ca-certificates         gnupg         libressl;     wget -q "https://www.apache.org/dist/zookeeper/$DISTRO_NAME/$DISTRO_NAME.tar.gz";     wget -q "https://www.apache.org/dist/zookeeper/$DISTRO_NAME/$DISTRO_NAME.tar.gz.asc";     export GNUPGHOME="$(mktemp -d)";     gpg --keyserver ha.pool.sks-keyservers.net --recv-key "$GPG_KEY" ||     gpg --keyserver pgp.mit.edu --recv-keys "$GPG_KEY" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$GPG_KEY";     gpg --batch --verify "$DISTRO_NAME.tar.gz.asc" "$DISTRO_NAME.tar.gz";     tar -xzf "$DISTRO_NAME.tar.gz";     mv "$DISTRO_NAME/conf/"* "$ZOO_CONF_DIR";     rm -rf "$GNUPGHOME" "$DISTRO_NAME.tar.gz" "$DISTRO_NAME.tar.gz.asc";     apk del .build-deps
# Thu, 07 Feb 2019 06:57:12 GMT
WORKDIR /zookeeper-3.4.13
# Thu, 07 Feb 2019 06:57:12 GMT
VOLUME [/data /datalog /logs]
# Thu, 07 Feb 2019 06:57:12 GMT
EXPOSE 2181 2888 3888
# Thu, 07 Feb 2019 06:57:13 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin:/zookeeper-3.4.13/bin ZOOCFGDIR=/conf
# Thu, 07 Feb 2019 06:57:13 GMT
COPY file:e241c4b758b1c07187e9a94844ecbab8e37b4440f1e74109ed52835d8aa518be in / 
# Thu, 07 Feb 2019 06:57:13 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 07 Feb 2019 06:57:13 GMT
CMD ["zkServer.sh" "start-foreground"]
```

-	Layers:
	-	`sha256:bcb4f889a459d231e71d88c93174eec5edef928ab1e2481f8b0074076ee934a6`  
		Last Modified: Thu, 31 Jan 2019 11:39:11 GMT  
		Size: 2.7 MB (2749336 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4099db9edcf638f20df22a899890483f7c152af59ca7a2de9c3b24c53c509e7`  
		Last Modified: Thu, 31 Jan 2019 11:39:11 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce0f3d3b48a17ae1a2bcad376e638afbdf982a8d5949595c2e4a4007f4db3d0c`  
		Last Modified: Wed, 06 Feb 2019 13:42:46 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6f750ad7f5e8d95553682c05697501d8d94a636946715800825169fb5974036`  
		Last Modified: Wed, 06 Feb 2019 13:43:57 GMT  
		Size: 55.6 MB (55551309 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:644d973e06d17886800442ecd34535984052e10bd1a776f799b661e33714113e`  
		Last Modified: Thu, 07 Feb 2019 06:57:32 GMT  
		Size: 1.3 MB (1256186 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:386b44d98c1341387a20bac6035fbae63cf9cf11709b465e08cbe85d72c289c2`  
		Last Modified: Thu, 07 Feb 2019 06:57:31 GMT  
		Size: 1.3 KB (1311 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d73bea42a24adef2279e1e50e259501e6ab9bfd4d74934012cafe7224907d5f8`  
		Last Modified: Thu, 07 Feb 2019 06:57:36 GMT  
		Size: 37.6 MB (37562495 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d876ff9798e926cfd5107ec500e44f44ee202a6f38f96219a55c38ef562ab8f`  
		Last Modified: Thu, 07 Feb 2019 06:57:32 GMT  
		Size: 614.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `zookeeper:3.4.13` - linux; ppc64le

```console
$ docker pull zookeeper@sha256:ff8dd63d5d97b6219befdedd9551f058ac4e8a84dd8908d7d025c465356d7444
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **97.1 MB (97138895 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0c979873d8ec48b5fd545f6d9054eef2d1e32ce60b96a32ec4a95e43ab766b62`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["zkServer.sh","start-foreground"]`

```dockerfile
# Thu, 31 Jan 2019 09:21:00 GMT
ADD file:22eef5b6e842546e68660322c07723d9794ca0eb45ac3acf95381e2591f455c6 in / 
# Thu, 31 Jan 2019 09:21:01 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Thu, 31 Jan 2019 09:21:02 GMT
CMD ["/bin/sh"]
# Wed, 06 Feb 2019 11:30:19 GMT
ENV LANG=C.UTF-8
# Wed, 06 Feb 2019 11:30:24 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 06 Feb 2019 11:32:36 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Wed, 06 Feb 2019 11:32:40 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 06 Feb 2019 11:32:43 GMT
ENV JAVA_VERSION=8u191
# Wed, 06 Feb 2019 11:32:45 GMT
ENV JAVA_ALPINE_VERSION=8.191.12-r0
# Wed, 06 Feb 2019 11:32:56 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Thu, 07 Feb 2019 02:11:45 GMT
RUN apk add --no-cache     bash     su-exec
# Thu, 07 Feb 2019 02:11:46 GMT
ENV ZOO_USER=zookeeper ZOO_CONF_DIR=/conf ZOO_DATA_DIR=/data ZOO_DATA_LOG_DIR=/datalog ZOO_LOG_DIR=/logs ZOO_PORT=2181 ZOO_TICK_TIME=2000 ZOO_INIT_LIMIT=5 ZOO_SYNC_LIMIT=2 ZOO_AUTOPURGE_PURGEINTERVAL=0 ZOO_AUTOPURGE_SNAPRETAINCOUNT=3 ZOO_MAX_CLIENT_CNXNS=60
# Thu, 07 Feb 2019 02:11:52 GMT
RUN set -ex;     adduser -D "$ZOO_USER";     mkdir -p "$ZOO_DATA_LOG_DIR" "$ZOO_DATA_DIR" "$ZOO_CONF_DIR" "$ZOO_LOG_DIR";     chown "$ZOO_USER:$ZOO_USER" "$ZOO_DATA_LOG_DIR" "$ZOO_DATA_DIR" "$ZOO_CONF_DIR" "$ZOO_LOG_DIR"
# Thu, 07 Feb 2019 02:11:54 GMT
ARG GPG_KEY=C61B346552DC5E0CB53AA84F59147497767E7473
# Thu, 07 Feb 2019 02:11:56 GMT
ARG DISTRO_NAME=zookeeper-3.4.13
# Thu, 07 Feb 2019 02:12:07 GMT
# ARGS: DISTRO_NAME=zookeeper-3.4.13 GPG_KEY=C61B346552DC5E0CB53AA84F59147497767E7473
RUN set -ex;     apk add --no-cache --virtual .build-deps         ca-certificates         gnupg         libressl;     wget -q "https://www.apache.org/dist/zookeeper/$DISTRO_NAME/$DISTRO_NAME.tar.gz";     wget -q "https://www.apache.org/dist/zookeeper/$DISTRO_NAME/$DISTRO_NAME.tar.gz.asc";     export GNUPGHOME="$(mktemp -d)";     gpg --keyserver ha.pool.sks-keyservers.net --recv-key "$GPG_KEY" ||     gpg --keyserver pgp.mit.edu --recv-keys "$GPG_KEY" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$GPG_KEY";     gpg --batch --verify "$DISTRO_NAME.tar.gz.asc" "$DISTRO_NAME.tar.gz";     tar -xzf "$DISTRO_NAME.tar.gz";     mv "$DISTRO_NAME/conf/"* "$ZOO_CONF_DIR";     rm -rf "$GNUPGHOME" "$DISTRO_NAME.tar.gz" "$DISTRO_NAME.tar.gz.asc";     apk del .build-deps
# Thu, 07 Feb 2019 02:12:10 GMT
WORKDIR /zookeeper-3.4.13
# Thu, 07 Feb 2019 02:12:13 GMT
VOLUME [/data /datalog /logs]
# Thu, 07 Feb 2019 02:12:16 GMT
EXPOSE 2181 2888 3888
# Thu, 07 Feb 2019 02:12:20 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin:/zookeeper-3.4.13/bin ZOOCFGDIR=/conf
# Thu, 07 Feb 2019 02:12:21 GMT
COPY file:e241c4b758b1c07187e9a94844ecbab8e37b4440f1e74109ed52835d8aa518be in / 
# Thu, 07 Feb 2019 02:12:24 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 07 Feb 2019 02:12:28 GMT
CMD ["zkServer.sh" "start-foreground"]
```

-	Layers:
	-	`sha256:3261f066f954b13c338d7bebabcc22a2a4037bfe4c6989b60595b13ac629445f`  
		Last Modified: Thu, 31 Jan 2019 09:21:21 GMT  
		Size: 2.8 MB (2778665 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ff5f92c7db4d11f3356e3243a8a330a8eb64fcde5310599933270ad96a2e3dc`  
		Last Modified: Thu, 31 Jan 2019 09:21:22 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81ffc70c988f1eca134348f8c977a0a8eca65b127503f8a7d6561fd73acaf47f`  
		Last Modified: Wed, 06 Feb 2019 11:40:41 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8cf79593b1c96e6feabee87ffa86fac13485dfb07d9c3ee56aa9894c479e939c`  
		Last Modified: Wed, 06 Feb 2019 11:41:49 GMT  
		Size: 55.5 MB (55503724 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bcf618d30d4b960042b0b84f5bfcf2165c03302b93b04970d44451c8d738e094`  
		Last Modified: Thu, 07 Feb 2019 02:13:36 GMT  
		Size: 1.3 MB (1291401 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bfea78845b2748553f4dc154bbacb5d4376eea446e780971641128ef1594bb39`  
		Last Modified: Thu, 07 Feb 2019 02:13:35 GMT  
		Size: 1.4 KB (1395 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07e1d6ac3bd5267093b6588be5158296342b0b0dd2441ba13c27388a4aaea239`  
		Last Modified: Thu, 07 Feb 2019 02:13:40 GMT  
		Size: 37.6 MB (37562681 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f7227f16524e677e9c7aecf818e897fd90f1f49c60bdfed5027157b3853b274`  
		Last Modified: Thu, 07 Feb 2019 02:13:35 GMT  
		Size: 615.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `zookeeper:3.4.13` - linux; s390x

```console
$ docker pull zookeeper@sha256:9a531d31fca52dc07c81dcb48a497bcb8a99ed3f11dff8f055bca6ff95b2fc77
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **94.9 MB (94933484 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ef7102de0c17606b5b9f957178e38e55d016c99bfebda10236c1d0a0f3d888bb`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["zkServer.sh","start-foreground"]`

```dockerfile
# Thu, 31 Jan 2019 12:41:43 GMT
ADD file:fdc9dcc7d932bb46a3992371288a0f80814bfb29ae8c8f1d860b6aabf0e9f893 in / 
# Thu, 31 Jan 2019 12:41:44 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Thu, 31 Jan 2019 12:41:44 GMT
CMD ["/bin/sh"]
# Wed, 06 Feb 2019 13:20:18 GMT
ENV LANG=C.UTF-8
# Wed, 06 Feb 2019 13:20:18 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 06 Feb 2019 13:20:56 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Wed, 06 Feb 2019 13:20:56 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 06 Feb 2019 13:20:56 GMT
ENV JAVA_VERSION=8u191
# Wed, 06 Feb 2019 13:20:57 GMT
ENV JAVA_ALPINE_VERSION=8.191.12-r0
# Wed, 06 Feb 2019 13:20:59 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 06 Feb 2019 18:15:41 GMT
RUN apk add --no-cache     bash     su-exec
# Wed, 06 Feb 2019 18:15:42 GMT
ENV ZOO_USER=zookeeper ZOO_CONF_DIR=/conf ZOO_DATA_DIR=/data ZOO_DATA_LOG_DIR=/datalog ZOO_LOG_DIR=/logs ZOO_PORT=2181 ZOO_TICK_TIME=2000 ZOO_INIT_LIMIT=5 ZOO_SYNC_LIMIT=2 ZOO_AUTOPURGE_PURGEINTERVAL=0 ZOO_AUTOPURGE_SNAPRETAINCOUNT=3 ZOO_MAX_CLIENT_CNXNS=60
# Wed, 06 Feb 2019 18:15:42 GMT
RUN set -ex;     adduser -D "$ZOO_USER";     mkdir -p "$ZOO_DATA_LOG_DIR" "$ZOO_DATA_DIR" "$ZOO_CONF_DIR" "$ZOO_LOG_DIR";     chown "$ZOO_USER:$ZOO_USER" "$ZOO_DATA_LOG_DIR" "$ZOO_DATA_DIR" "$ZOO_CONF_DIR" "$ZOO_LOG_DIR"
# Wed, 06 Feb 2019 18:15:42 GMT
ARG GPG_KEY=C61B346552DC5E0CB53AA84F59147497767E7473
# Wed, 06 Feb 2019 18:15:43 GMT
ARG DISTRO_NAME=zookeeper-3.4.13
# Wed, 06 Feb 2019 18:15:49 GMT
# ARGS: DISTRO_NAME=zookeeper-3.4.13 GPG_KEY=C61B346552DC5E0CB53AA84F59147497767E7473
RUN set -ex;     apk add --no-cache --virtual .build-deps         ca-certificates         gnupg         libressl;     wget -q "https://www.apache.org/dist/zookeeper/$DISTRO_NAME/$DISTRO_NAME.tar.gz";     wget -q "https://www.apache.org/dist/zookeeper/$DISTRO_NAME/$DISTRO_NAME.tar.gz.asc";     export GNUPGHOME="$(mktemp -d)";     gpg --keyserver ha.pool.sks-keyservers.net --recv-key "$GPG_KEY" ||     gpg --keyserver pgp.mit.edu --recv-keys "$GPG_KEY" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$GPG_KEY";     gpg --batch --verify "$DISTRO_NAME.tar.gz.asc" "$DISTRO_NAME.tar.gz";     tar -xzf "$DISTRO_NAME.tar.gz";     mv "$DISTRO_NAME/conf/"* "$ZOO_CONF_DIR";     rm -rf "$GNUPGHOME" "$DISTRO_NAME.tar.gz" "$DISTRO_NAME.tar.gz.asc";     apk del .build-deps
# Wed, 06 Feb 2019 18:15:49 GMT
WORKDIR /zookeeper-3.4.13
# Wed, 06 Feb 2019 18:15:49 GMT
VOLUME [/data /datalog /logs]
# Wed, 06 Feb 2019 18:15:49 GMT
EXPOSE 2181 2888 3888
# Wed, 06 Feb 2019 18:15:49 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin:/zookeeper-3.4.13/bin ZOOCFGDIR=/conf
# Wed, 06 Feb 2019 18:15:50 GMT
COPY file:e241c4b758b1c07187e9a94844ecbab8e37b4440f1e74109ed52835d8aa518be in / 
# Wed, 06 Feb 2019 18:15:50 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 06 Feb 2019 18:15:50 GMT
CMD ["zkServer.sh" "start-foreground"]
```

-	Layers:
	-	`sha256:11396e2e564eba3ffa05ba6ea52a711025650a7cfe1387d6a59fdd9a90f2e024`  
		Last Modified: Thu, 31 Jan 2019 12:42:01 GMT  
		Size: 2.5 MB (2541348 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e33c309129e1ab066f8f8e65929ab8246c5ae9ec293c9522c706fa70dfa0a4c6`  
		Last Modified: Thu, 31 Jan 2019 12:42:01 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99d1a7308c276b4bfe36b12f01b7c57f79adfc7eb55e0263fd725e1308d13412`  
		Last Modified: Wed, 06 Feb 2019 13:25:05 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af546122d628f916df18308eef518892c9e8d4560ed0bb582389244f015942d6`  
		Last Modified: Wed, 06 Feb 2019 13:25:42 GMT  
		Size: 53.6 MB (53587740 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80468258aa44038e935f65d62d380ee9db866ea2a161f20f8adc28d22c736190`  
		Last Modified: Wed, 06 Feb 2019 18:16:11 GMT  
		Size: 1.2 MB (1240005 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e640172b9ee5864b41bcfda6b09f47a096dcefb43bce087cb75c112fbec33473`  
		Last Modified: Wed, 06 Feb 2019 18:16:11 GMT  
		Size: 1.3 KB (1311 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82e669b57233facbd518cdaad542dadc693f922e013bf13e2281168675962c80`  
		Last Modified: Wed, 06 Feb 2019 18:16:15 GMT  
		Size: 37.6 MB (37562050 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23c57175780edba9613b96977cd4f4e47020262faafb524aed9df4f3c68eac60`  
		Last Modified: Wed, 06 Feb 2019 18:16:11 GMT  
		Size: 617.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `zookeeper:3.5`

```console
$ docker pull zookeeper@sha256:3f9e9af525398cf1a0df8658c46529edadbba0b8b6cd3e8dd801ce2ec584769f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `zookeeper:3.5` - linux; amd64

```console
$ docker pull zookeeper@sha256:ca06ca7ce8da984b86070f8d07f93fcf579eb4a1f2a0362790ebac507cb34e3a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **78.4 MB (78439324 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:35b1423c5c19da29d637d342a6ca977b7ac7801338a1afbc1944a487cb92af0c`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["zkServer.sh","start-foreground"]`

```dockerfile
# Wed, 30 Jan 2019 22:19:52 GMT
ADD file:2a1fc9351afe35698918545b2d466d9805c2e8afcec52f916785ee65bbafeced in / 
# Wed, 30 Jan 2019 22:19:52 GMT
CMD ["/bin/sh"]
# Tue, 05 Feb 2019 20:39:38 GMT
ENV LANG=C.UTF-8
# Tue, 05 Feb 2019 20:39:40 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 05 Feb 2019 20:39:59 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Tue, 05 Feb 2019 20:39:59 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 05 Feb 2019 20:39:59 GMT
ENV JAVA_VERSION=8u191
# Tue, 05 Feb 2019 20:39:59 GMT
ENV JAVA_ALPINE_VERSION=8.191.12-r0
# Tue, 05 Feb 2019 20:40:03 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 05 Feb 2019 21:37:21 GMT
RUN apk add --no-cache     bash     su-exec
# Tue, 05 Feb 2019 21:37:40 GMT
ENV ZOO_USER=zookeeper ZOO_CONF_DIR=/conf ZOO_DATA_DIR=/data ZOO_DATA_LOG_DIR=/datalog ZOO_LOG_DIR=/logs ZOO_PORT=2181 ZOO_TICK_TIME=2000 ZOO_INIT_LIMIT=5 ZOO_SYNC_LIMIT=2 ZOO_AUTOPURGE_PURGEINTERVAL=0 ZOO_AUTOPURGE_SNAPRETAINCOUNT=3 ZOO_MAX_CLIENT_CNXNS=60 ZOO_STANDALONE_ENABLED=false
# Tue, 05 Feb 2019 21:37:41 GMT
RUN set -ex;     adduser -D "$ZOO_USER";     mkdir -p "$ZOO_DATA_LOG_DIR" "$ZOO_DATA_DIR" "$ZOO_CONF_DIR" "$ZOO_LOG_DIR";     chown "$ZOO_USER:$ZOO_USER" "$ZOO_DATA_LOG_DIR" "$ZOO_DATA_DIR" "$ZOO_CONF_DIR" "$ZOO_LOG_DIR"
# Tue, 05 Feb 2019 21:37:41 GMT
ARG GPG_KEY=D0BC8D8A4E90A40AFDFC43B3E22A746A68E327C1
# Tue, 05 Feb 2019 21:37:41 GMT
ARG DISTRO_NAME=zookeeper-3.5.4-beta
# Tue, 05 Feb 2019 21:37:47 GMT
# ARGS: DISTRO_NAME=zookeeper-3.5.4-beta GPG_KEY=D0BC8D8A4E90A40AFDFC43B3E22A746A68E327C1
RUN set -ex;     apk add --no-cache --virtual .build-deps         ca-certificates         gnupg         libressl;     wget -q "https://www.apache.org/dist/zookeeper/$DISTRO_NAME/$DISTRO_NAME.tar.gz";     wget -q "https://www.apache.org/dist/zookeeper/$DISTRO_NAME/$DISTRO_NAME.tar.gz.asc";     export GNUPGHOME="$(mktemp -d)";     gpg --keyserver ha.pool.sks-keyservers.net --recv-key "$GPG_KEY" ||     gpg --keyserver pgp.mit.edu --recv-keys "$GPG_KEY" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$GPG_KEY";     gpg --batch --verify "$DISTRO_NAME.tar.gz.asc" "$DISTRO_NAME.tar.gz";     tar -zxf "$DISTRO_NAME.tar.gz";     mv "$DISTRO_NAME/conf/"* "$ZOO_CONF_DIR";     rm -rf "$GNUPGHOME" "$DISTRO_NAME.tar.gz" "$DISTRO_NAME.tar.gz.asc";     apk del .build-deps;     chown -R "$ZOO_USER:$ZOO_USER" "/$DISTRO_NAME"
# Tue, 05 Feb 2019 21:37:47 GMT
WORKDIR /zookeeper-3.5.4-beta
# Tue, 05 Feb 2019 21:37:47 GMT
VOLUME [/data /datalog /logs]
# Tue, 05 Feb 2019 21:37:48 GMT
EXPOSE 2181 2888 3888
# Tue, 05 Feb 2019 21:37:48 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin:/zookeeper-3.5.4-beta/bin ZOOCFGDIR=/conf
# Tue, 05 Feb 2019 21:37:48 GMT
COPY file:da4c1e7ba5b62f2d076bdffec939a64fb3c8a58676a7b139e17939a632a59a88 in / 
# Tue, 05 Feb 2019 21:37:48 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 05 Feb 2019 21:37:49 GMT
CMD ["zkServer.sh" "start-foreground"]
```

-	Layers:
	-	`sha256:6c40cc604d8e4c121adcb6b0bfe8bb038815c350980090e74aa5a6423f8f82c0`  
		Last Modified: Wed, 30 Jan 2019 22:21:08 GMT  
		Size: 2.8 MB (2754728 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e78b803852394d2b9aaa3ce93b0f2502b0bf8e063b1fa79734de0fc8ee55ee6e`  
		Last Modified: Tue, 05 Feb 2019 20:45:24 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f41fe1b6eee3555498a7e15b3bf048a7ec274302a92d0c8b34fda111c780fdcf`  
		Last Modified: Tue, 05 Feb 2019 20:45:56 GMT  
		Size: 54.9 MB (54922733 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:365a20fafc585c5a0a6b460b7293edaa4fabf9a42fd0fc17beb280de17788306`  
		Last Modified: Tue, 05 Feb 2019 21:38:00 GMT  
		Size: 1.2 MB (1209062 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3c69e51c0a4a04e0b2756807a1d1cd63d1c9564bac33aa1fb1a4c693dc4488d`  
		Last Modified: Tue, 05 Feb 2019 21:38:12 GMT  
		Size: 1.3 KB (1314 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a8dbaf0cd2c8e72532ca540a4148a16cfabe2b32118758060415ce77a5c8280`  
		Last Modified: Tue, 05 Feb 2019 21:38:14 GMT  
		Size: 19.6 MB (19550572 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08c045fc9937e5bde3508861421d554e6154b51f55621ec3bab26223b68a6838`  
		Last Modified: Tue, 05 Feb 2019 21:38:12 GMT  
		Size: 676.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `zookeeper:3.5` - linux; arm variant v6

```console
$ docker pull zookeeper@sha256:f5304c3a894d64539c6189141888a760e4b31eea2fc3096becb3488fe7fb5f98
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **75.6 MB (75563064 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a1e58885a1e216fafbefefcde1f2426d7b849fe955161efa7055ec7641ea8b04`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["zkServer.sh","start-foreground"]`

```dockerfile
# Thu, 31 Jan 2019 08:50:08 GMT
ADD file:64d5aa5dc08c958468e7c857c35d32a3e87c88800152264432930898defa10c5 in / 
# Thu, 31 Jan 2019 08:50:09 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Thu, 31 Jan 2019 08:50:09 GMT
CMD ["/bin/sh"]
# Wed, 06 Feb 2019 09:09:14 GMT
ENV LANG=C.UTF-8
# Wed, 06 Feb 2019 09:09:15 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 06 Feb 2019 09:09:34 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Wed, 06 Feb 2019 09:09:34 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 06 Feb 2019 09:09:34 GMT
ENV JAVA_VERSION=8u191
# Wed, 06 Feb 2019 09:09:35 GMT
ENV JAVA_ALPINE_VERSION=8.191.12-r0
# Wed, 06 Feb 2019 09:09:39 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Thu, 07 Feb 2019 09:46:35 GMT
RUN apk add --no-cache     bash     su-exec
# Thu, 07 Feb 2019 09:47:17 GMT
ENV ZOO_USER=zookeeper ZOO_CONF_DIR=/conf ZOO_DATA_DIR=/data ZOO_DATA_LOG_DIR=/datalog ZOO_LOG_DIR=/logs ZOO_PORT=2181 ZOO_TICK_TIME=2000 ZOO_INIT_LIMIT=5 ZOO_SYNC_LIMIT=2 ZOO_AUTOPURGE_PURGEINTERVAL=0 ZOO_AUTOPURGE_SNAPRETAINCOUNT=3 ZOO_MAX_CLIENT_CNXNS=60 ZOO_STANDALONE_ENABLED=false
# Thu, 07 Feb 2019 09:47:19 GMT
RUN set -ex;     adduser -D "$ZOO_USER";     mkdir -p "$ZOO_DATA_LOG_DIR" "$ZOO_DATA_DIR" "$ZOO_CONF_DIR" "$ZOO_LOG_DIR";     chown "$ZOO_USER:$ZOO_USER" "$ZOO_DATA_LOG_DIR" "$ZOO_DATA_DIR" "$ZOO_CONF_DIR" "$ZOO_LOG_DIR"
# Thu, 07 Feb 2019 09:47:19 GMT
ARG GPG_KEY=D0BC8D8A4E90A40AFDFC43B3E22A746A68E327C1
# Thu, 07 Feb 2019 09:47:19 GMT
ARG DISTRO_NAME=zookeeper-3.5.4-beta
# Thu, 07 Feb 2019 09:47:27 GMT
# ARGS: DISTRO_NAME=zookeeper-3.5.4-beta GPG_KEY=D0BC8D8A4E90A40AFDFC43B3E22A746A68E327C1
RUN set -ex;     apk add --no-cache --virtual .build-deps         ca-certificates         gnupg         libressl;     wget -q "https://www.apache.org/dist/zookeeper/$DISTRO_NAME/$DISTRO_NAME.tar.gz";     wget -q "https://www.apache.org/dist/zookeeper/$DISTRO_NAME/$DISTRO_NAME.tar.gz.asc";     export GNUPGHOME="$(mktemp -d)";     gpg --keyserver ha.pool.sks-keyservers.net --recv-key "$GPG_KEY" ||     gpg --keyserver pgp.mit.edu --recv-keys "$GPG_KEY" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$GPG_KEY";     gpg --batch --verify "$DISTRO_NAME.tar.gz.asc" "$DISTRO_NAME.tar.gz";     tar -zxf "$DISTRO_NAME.tar.gz";     mv "$DISTRO_NAME/conf/"* "$ZOO_CONF_DIR";     rm -rf "$GNUPGHOME" "$DISTRO_NAME.tar.gz" "$DISTRO_NAME.tar.gz.asc";     apk del .build-deps;     chown -R "$ZOO_USER:$ZOO_USER" "/$DISTRO_NAME"
# Thu, 07 Feb 2019 09:47:28 GMT
WORKDIR /zookeeper-3.5.4-beta
# Thu, 07 Feb 2019 09:47:28 GMT
VOLUME [/data /datalog /logs]
# Thu, 07 Feb 2019 09:47:28 GMT
EXPOSE 2181 2888 3888
# Thu, 07 Feb 2019 09:47:29 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin:/zookeeper-3.5.4-beta/bin ZOOCFGDIR=/conf
# Thu, 07 Feb 2019 09:47:29 GMT
COPY file:da4c1e7ba5b62f2d076bdffec939a64fb3c8a58676a7b139e17939a632a59a88 in / 
# Thu, 07 Feb 2019 09:47:30 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 07 Feb 2019 09:47:30 GMT
CMD ["zkServer.sh" "start-foreground"]
```

-	Layers:
	-	`sha256:05276f4299f299c4d5ca6776672dcf52f03189b7004e747fd1c2b759d9157831`  
		Last Modified: Thu, 31 Jan 2019 08:50:31 GMT  
		Size: 2.5 MB (2540746 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5657e63df53674891643732c236f7932524d1710ce42d916bb3c889a8652df67`  
		Last Modified: Thu, 31 Jan 2019 08:50:31 GMT  
		Size: 173.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:598092653ce578dc5f1728020fc7cea202bfd7c3694e321c61bdd914e0a1f5ec`  
		Last Modified: Wed, 06 Feb 2019 09:10:30 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89a4f55d20a64c757c23b9e9b1382fa744e666c57cb22ae208fa26f8724585c2`  
		Last Modified: Wed, 06 Feb 2019 09:11:13 GMT  
		Size: 52.3 MB (52316622 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3b5aeac4816e0601a214f22a41dc5258bc63084c40ea23450cc0e35b49ce182`  
		Last Modified: Thu, 07 Feb 2019 09:47:41 GMT  
		Size: 1.2 MB (1154133 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26081929873e0dc7a6a2d040020e998bbaaddd6e85b97f3cdb5f903b82a2691f`  
		Last Modified: Thu, 07 Feb 2019 09:47:55 GMT  
		Size: 1.4 KB (1392 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28bb13ac06fc67d9e6e46bdd79f52ef97cc4334bbbe1500fe0db3cb59d9e3474`  
		Last Modified: Thu, 07 Feb 2019 09:48:00 GMT  
		Size: 19.5 MB (19549086 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5def34d611d5c16627b330738265dfc27ae4572caa443a3038f4395da925636`  
		Last Modified: Thu, 07 Feb 2019 09:47:56 GMT  
		Size: 675.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `zookeeper:3.5` - linux; arm64 variant v8

```console
$ docker pull zookeeper@sha256:99cd47d717f3d5d9d5638c6695912197544e1be01bc62651e5799d04fa25a079
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **78.3 MB (78321284 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1c4db6ee1bf96c2cd03477d4eb1ece2868d1f63d92f8f9e08dff25831f573809`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["zkServer.sh","start-foreground"]`

```dockerfile
# Thu, 31 Jan 2019 09:40:55 GMT
ADD file:3c5f57c6644886bbb8164b9aa4cd60e233be7da48b7194a04963a8e7de058e28 in / 
# Thu, 31 Jan 2019 09:40:56 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Thu, 31 Jan 2019 09:40:57 GMT
CMD ["/bin/sh"]
# Wed, 06 Feb 2019 12:20:55 GMT
ENV LANG=C.UTF-8
# Wed, 06 Feb 2019 12:21:00 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 06 Feb 2019 12:31:59 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Wed, 06 Feb 2019 12:32:01 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 06 Feb 2019 12:32:04 GMT
ENV JAVA_VERSION=8u191
# Wed, 06 Feb 2019 12:32:07 GMT
ENV JAVA_ALPINE_VERSION=8.191.12-r0
# Wed, 06 Feb 2019 12:32:21 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Thu, 07 Feb 2019 08:55:52 GMT
RUN apk add --no-cache     bash     su-exec
# Thu, 07 Feb 2019 08:56:31 GMT
ENV ZOO_USER=zookeeper ZOO_CONF_DIR=/conf ZOO_DATA_DIR=/data ZOO_DATA_LOG_DIR=/datalog ZOO_LOG_DIR=/logs ZOO_PORT=2181 ZOO_TICK_TIME=2000 ZOO_INIT_LIMIT=5 ZOO_SYNC_LIMIT=2 ZOO_AUTOPURGE_PURGEINTERVAL=0 ZOO_AUTOPURGE_SNAPRETAINCOUNT=3 ZOO_MAX_CLIENT_CNXNS=60 ZOO_STANDALONE_ENABLED=false
# Thu, 07 Feb 2019 08:56:33 GMT
RUN set -ex;     adduser -D "$ZOO_USER";     mkdir -p "$ZOO_DATA_LOG_DIR" "$ZOO_DATA_DIR" "$ZOO_CONF_DIR" "$ZOO_LOG_DIR";     chown "$ZOO_USER:$ZOO_USER" "$ZOO_DATA_LOG_DIR" "$ZOO_DATA_DIR" "$ZOO_CONF_DIR" "$ZOO_LOG_DIR"
# Thu, 07 Feb 2019 08:56:34 GMT
ARG GPG_KEY=D0BC8D8A4E90A40AFDFC43B3E22A746A68E327C1
# Thu, 07 Feb 2019 08:56:34 GMT
ARG DISTRO_NAME=zookeeper-3.5.4-beta
# Thu, 07 Feb 2019 08:56:47 GMT
# ARGS: DISTRO_NAME=zookeeper-3.5.4-beta GPG_KEY=D0BC8D8A4E90A40AFDFC43B3E22A746A68E327C1
RUN set -ex;     apk add --no-cache --virtual .build-deps         ca-certificates         gnupg         libressl;     wget -q "https://www.apache.org/dist/zookeeper/$DISTRO_NAME/$DISTRO_NAME.tar.gz";     wget -q "https://www.apache.org/dist/zookeeper/$DISTRO_NAME/$DISTRO_NAME.tar.gz.asc";     export GNUPGHOME="$(mktemp -d)";     gpg --keyserver ha.pool.sks-keyservers.net --recv-key "$GPG_KEY" ||     gpg --keyserver pgp.mit.edu --recv-keys "$GPG_KEY" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$GPG_KEY";     gpg --batch --verify "$DISTRO_NAME.tar.gz.asc" "$DISTRO_NAME.tar.gz";     tar -zxf "$DISTRO_NAME.tar.gz";     mv "$DISTRO_NAME/conf/"* "$ZOO_CONF_DIR";     rm -rf "$GNUPGHOME" "$DISTRO_NAME.tar.gz" "$DISTRO_NAME.tar.gz.asc";     apk del .build-deps;     chown -R "$ZOO_USER:$ZOO_USER" "/$DISTRO_NAME"
# Thu, 07 Feb 2019 08:56:49 GMT
WORKDIR /zookeeper-3.5.4-beta
# Thu, 07 Feb 2019 08:56:51 GMT
VOLUME [/data /datalog /logs]
# Thu, 07 Feb 2019 08:56:52 GMT
EXPOSE 2181 2888 3888
# Thu, 07 Feb 2019 08:56:53 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin:/zookeeper-3.5.4-beta/bin ZOOCFGDIR=/conf
# Thu, 07 Feb 2019 08:56:54 GMT
COPY file:da4c1e7ba5b62f2d076bdffec939a64fb3c8a58676a7b139e17939a632a59a88 in / 
# Thu, 07 Feb 2019 08:56:55 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 07 Feb 2019 08:56:56 GMT
CMD ["zkServer.sh" "start-foreground"]
```

-	Layers:
	-	`sha256:ee02fa18913c824d1d1c9b680f1a43dad343b9d6c086a6bc62e3361c3d3a2d63`  
		Last Modified: Thu, 31 Jan 2019 09:41:23 GMT  
		Size: 2.7 MB (2687895 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afafa41235ea57b01b00eba47de1574777073a79c1d592c5709dfcbb3bd51f2a`  
		Last Modified: Thu, 31 Jan 2019 09:41:21 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd4dbd37ccf7cb48097dfc245c4c6f892eaf16d2ad47a0478302cf24d0a74911`  
		Last Modified: Wed, 06 Feb 2019 12:42:42 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a4c22261364cc479c308d041f6881688678f61995139006fbd24aa898f98a7f`  
		Last Modified: Wed, 06 Feb 2019 12:45:02 GMT  
		Size: 54.9 MB (54863256 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f19da5bbe7339eaca5e7037bbeab323f14c1c9869e2b501a85ce25b8c599313`  
		Last Modified: Thu, 07 Feb 2019 08:57:10 GMT  
		Size: 1.2 MB (1220003 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca7cbed8e881386c7000f30100cfa23f36f2cc1a0efe92a0892c2634708c3202`  
		Last Modified: Thu, 07 Feb 2019 08:57:31 GMT  
		Size: 1.3 KB (1310 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0731f8c65e9445f28adcadf136f3edba593d6240c02b8aa00560ef2401a728be`  
		Last Modified: Thu, 07 Feb 2019 08:57:36 GMT  
		Size: 19.5 MB (19547730 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50f673b0f581109c78e65ccc8221c1c83b7ccefde67786452d3907f388d2876b`  
		Last Modified: Thu, 07 Feb 2019 08:57:31 GMT  
		Size: 675.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `zookeeper:3.5` - linux; 386

```console
$ docker pull zookeeper@sha256:f92982557be4bf0f8cf9356768570a6747896b97ce2ce1ab556fdac55a4ab524
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **79.1 MB (79107269 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:68eac9e7372806d17833c66213d39492cb3553c419a2dae45a4922aac41b5c4a`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["zkServer.sh","start-foreground"]`

```dockerfile
# Thu, 31 Jan 2019 11:38:57 GMT
ADD file:738a04760a9f9a1cd919954db42a0da78c644e7024240160c54723bf1dd479e9 in / 
# Thu, 31 Jan 2019 11:38:57 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Thu, 31 Jan 2019 11:38:57 GMT
CMD ["/bin/sh"]
# Wed, 06 Feb 2019 13:21:09 GMT
ENV LANG=C.UTF-8
# Wed, 06 Feb 2019 13:21:11 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 06 Feb 2019 13:22:07 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Wed, 06 Feb 2019 13:22:07 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 06 Feb 2019 13:22:08 GMT
ENV JAVA_VERSION=8u191
# Wed, 06 Feb 2019 13:22:08 GMT
ENV JAVA_ALPINE_VERSION=8.191.12-r0
# Wed, 06 Feb 2019 13:22:13 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Thu, 07 Feb 2019 06:57:06 GMT
RUN apk add --no-cache     bash     su-exec
# Thu, 07 Feb 2019 06:57:17 GMT
ENV ZOO_USER=zookeeper ZOO_CONF_DIR=/conf ZOO_DATA_DIR=/data ZOO_DATA_LOG_DIR=/datalog ZOO_LOG_DIR=/logs ZOO_PORT=2181 ZOO_TICK_TIME=2000 ZOO_INIT_LIMIT=5 ZOO_SYNC_LIMIT=2 ZOO_AUTOPURGE_PURGEINTERVAL=0 ZOO_AUTOPURGE_SNAPRETAINCOUNT=3 ZOO_MAX_CLIENT_CNXNS=60 ZOO_STANDALONE_ENABLED=false
# Thu, 07 Feb 2019 06:57:17 GMT
RUN set -ex;     adduser -D "$ZOO_USER";     mkdir -p "$ZOO_DATA_LOG_DIR" "$ZOO_DATA_DIR" "$ZOO_CONF_DIR" "$ZOO_LOG_DIR";     chown "$ZOO_USER:$ZOO_USER" "$ZOO_DATA_LOG_DIR" "$ZOO_DATA_DIR" "$ZOO_CONF_DIR" "$ZOO_LOG_DIR"
# Thu, 07 Feb 2019 06:57:18 GMT
ARG GPG_KEY=D0BC8D8A4E90A40AFDFC43B3E22A746A68E327C1
# Thu, 07 Feb 2019 06:57:18 GMT
ARG DISTRO_NAME=zookeeper-3.5.4-beta
# Thu, 07 Feb 2019 06:57:23 GMT
# ARGS: DISTRO_NAME=zookeeper-3.5.4-beta GPG_KEY=D0BC8D8A4E90A40AFDFC43B3E22A746A68E327C1
RUN set -ex;     apk add --no-cache --virtual .build-deps         ca-certificates         gnupg         libressl;     wget -q "https://www.apache.org/dist/zookeeper/$DISTRO_NAME/$DISTRO_NAME.tar.gz";     wget -q "https://www.apache.org/dist/zookeeper/$DISTRO_NAME/$DISTRO_NAME.tar.gz.asc";     export GNUPGHOME="$(mktemp -d)";     gpg --keyserver ha.pool.sks-keyservers.net --recv-key "$GPG_KEY" ||     gpg --keyserver pgp.mit.edu --recv-keys "$GPG_KEY" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$GPG_KEY";     gpg --batch --verify "$DISTRO_NAME.tar.gz.asc" "$DISTRO_NAME.tar.gz";     tar -zxf "$DISTRO_NAME.tar.gz";     mv "$DISTRO_NAME/conf/"* "$ZOO_CONF_DIR";     rm -rf "$GNUPGHOME" "$DISTRO_NAME.tar.gz" "$DISTRO_NAME.tar.gz.asc";     apk del .build-deps;     chown -R "$ZOO_USER:$ZOO_USER" "/$DISTRO_NAME"
# Thu, 07 Feb 2019 06:57:23 GMT
WORKDIR /zookeeper-3.5.4-beta
# Thu, 07 Feb 2019 06:57:23 GMT
VOLUME [/data /datalog /logs]
# Thu, 07 Feb 2019 06:57:24 GMT
EXPOSE 2181 2888 3888
# Thu, 07 Feb 2019 06:57:24 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin:/zookeeper-3.5.4-beta/bin ZOOCFGDIR=/conf
# Thu, 07 Feb 2019 06:57:24 GMT
COPY file:da4c1e7ba5b62f2d076bdffec939a64fb3c8a58676a7b139e17939a632a59a88 in / 
# Thu, 07 Feb 2019 06:57:24 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 07 Feb 2019 06:57:24 GMT
CMD ["zkServer.sh" "start-foreground"]
```

-	Layers:
	-	`sha256:bcb4f889a459d231e71d88c93174eec5edef928ab1e2481f8b0074076ee934a6`  
		Last Modified: Thu, 31 Jan 2019 11:39:11 GMT  
		Size: 2.7 MB (2749336 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4099db9edcf638f20df22a899890483f7c152af59ca7a2de9c3b24c53c509e7`  
		Last Modified: Thu, 31 Jan 2019 11:39:11 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce0f3d3b48a17ae1a2bcad376e638afbdf982a8d5949595c2e4a4007f4db3d0c`  
		Last Modified: Wed, 06 Feb 2019 13:42:46 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6f750ad7f5e8d95553682c05697501d8d94a636946715800825169fb5974036`  
		Last Modified: Wed, 06 Feb 2019 13:43:57 GMT  
		Size: 55.6 MB (55551309 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:644d973e06d17886800442ecd34535984052e10bd1a776f799b661e33714113e`  
		Last Modified: Thu, 07 Feb 2019 06:57:32 GMT  
		Size: 1.3 MB (1256186 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb3b1f05264d4d94ebf44a4a29d50f490c95bf74853e5986018482dd355df36c`  
		Last Modified: Thu, 07 Feb 2019 06:57:40 GMT  
		Size: 1.3 KB (1310 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f10b7260dbf97e0ee31508e7c6f3b55089675dc727b68a33c6c249af19f60778`  
		Last Modified: Thu, 07 Feb 2019 06:57:46 GMT  
		Size: 19.5 MB (19548040 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56f839dedede5677c3e4fb2f36eaf13c6a694df85056d142156d73a95cb1c95e`  
		Last Modified: Thu, 07 Feb 2019 06:57:40 GMT  
		Size: 673.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `zookeeper:3.5` - linux; ppc64le

```console
$ docker pull zookeeper@sha256:5379a9af25d88f1d578b9400233073d4d11a119b5538daa66a46033e1c92b625
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **79.1 MB (79126508 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:22237d73e0f3b880cf34c663d280d033dbbfd0dc6bd8409a6156209c6b5d6bea`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["zkServer.sh","start-foreground"]`

```dockerfile
# Thu, 31 Jan 2019 09:21:00 GMT
ADD file:22eef5b6e842546e68660322c07723d9794ca0eb45ac3acf95381e2591f455c6 in / 
# Thu, 31 Jan 2019 09:21:01 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Thu, 31 Jan 2019 09:21:02 GMT
CMD ["/bin/sh"]
# Wed, 06 Feb 2019 11:30:19 GMT
ENV LANG=C.UTF-8
# Wed, 06 Feb 2019 11:30:24 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 06 Feb 2019 11:32:36 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Wed, 06 Feb 2019 11:32:40 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 06 Feb 2019 11:32:43 GMT
ENV JAVA_VERSION=8u191
# Wed, 06 Feb 2019 11:32:45 GMT
ENV JAVA_ALPINE_VERSION=8.191.12-r0
# Wed, 06 Feb 2019 11:32:56 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Thu, 07 Feb 2019 02:11:45 GMT
RUN apk add --no-cache     bash     su-exec
# Thu, 07 Feb 2019 02:12:43 GMT
ENV ZOO_USER=zookeeper ZOO_CONF_DIR=/conf ZOO_DATA_DIR=/data ZOO_DATA_LOG_DIR=/datalog ZOO_LOG_DIR=/logs ZOO_PORT=2181 ZOO_TICK_TIME=2000 ZOO_INIT_LIMIT=5 ZOO_SYNC_LIMIT=2 ZOO_AUTOPURGE_PURGEINTERVAL=0 ZOO_AUTOPURGE_SNAPRETAINCOUNT=3 ZOO_MAX_CLIENT_CNXNS=60 ZOO_STANDALONE_ENABLED=false
# Thu, 07 Feb 2019 02:12:47 GMT
RUN set -ex;     adduser -D "$ZOO_USER";     mkdir -p "$ZOO_DATA_LOG_DIR" "$ZOO_DATA_DIR" "$ZOO_CONF_DIR" "$ZOO_LOG_DIR";     chown "$ZOO_USER:$ZOO_USER" "$ZOO_DATA_LOG_DIR" "$ZOO_DATA_DIR" "$ZOO_CONF_DIR" "$ZOO_LOG_DIR"
# Thu, 07 Feb 2019 02:12:51 GMT
ARG GPG_KEY=D0BC8D8A4E90A40AFDFC43B3E22A746A68E327C1
# Thu, 07 Feb 2019 02:12:54 GMT
ARG DISTRO_NAME=zookeeper-3.5.4-beta
# Thu, 07 Feb 2019 02:13:03 GMT
# ARGS: DISTRO_NAME=zookeeper-3.5.4-beta GPG_KEY=D0BC8D8A4E90A40AFDFC43B3E22A746A68E327C1
RUN set -ex;     apk add --no-cache --virtual .build-deps         ca-certificates         gnupg         libressl;     wget -q "https://www.apache.org/dist/zookeeper/$DISTRO_NAME/$DISTRO_NAME.tar.gz";     wget -q "https://www.apache.org/dist/zookeeper/$DISTRO_NAME/$DISTRO_NAME.tar.gz.asc";     export GNUPGHOME="$(mktemp -d)";     gpg --keyserver ha.pool.sks-keyservers.net --recv-key "$GPG_KEY" ||     gpg --keyserver pgp.mit.edu --recv-keys "$GPG_KEY" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$GPG_KEY";     gpg --batch --verify "$DISTRO_NAME.tar.gz.asc" "$DISTRO_NAME.tar.gz";     tar -zxf "$DISTRO_NAME.tar.gz";     mv "$DISTRO_NAME/conf/"* "$ZOO_CONF_DIR";     rm -rf "$GNUPGHOME" "$DISTRO_NAME.tar.gz" "$DISTRO_NAME.tar.gz.asc";     apk del .build-deps;     chown -R "$ZOO_USER:$ZOO_USER" "/$DISTRO_NAME"
# Thu, 07 Feb 2019 02:13:07 GMT
WORKDIR /zookeeper-3.5.4-beta
# Thu, 07 Feb 2019 02:13:09 GMT
VOLUME [/data /datalog /logs]
# Thu, 07 Feb 2019 02:13:12 GMT
EXPOSE 2181 2888 3888
# Thu, 07 Feb 2019 02:13:16 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin:/zookeeper-3.5.4-beta/bin ZOOCFGDIR=/conf
# Thu, 07 Feb 2019 02:13:17 GMT
COPY file:da4c1e7ba5b62f2d076bdffec939a64fb3c8a58676a7b139e17939a632a59a88 in / 
# Thu, 07 Feb 2019 02:13:19 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 07 Feb 2019 02:13:22 GMT
CMD ["zkServer.sh" "start-foreground"]
```

-	Layers:
	-	`sha256:3261f066f954b13c338d7bebabcc22a2a4037bfe4c6989b60595b13ac629445f`  
		Last Modified: Thu, 31 Jan 2019 09:21:21 GMT  
		Size: 2.8 MB (2778665 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ff5f92c7db4d11f3356e3243a8a330a8eb64fcde5310599933270ad96a2e3dc`  
		Last Modified: Thu, 31 Jan 2019 09:21:22 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81ffc70c988f1eca134348f8c977a0a8eca65b127503f8a7d6561fd73acaf47f`  
		Last Modified: Wed, 06 Feb 2019 11:40:41 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8cf79593b1c96e6feabee87ffa86fac13485dfb07d9c3ee56aa9894c479e939c`  
		Last Modified: Wed, 06 Feb 2019 11:41:49 GMT  
		Size: 55.5 MB (55503724 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bcf618d30d4b960042b0b84f5bfcf2165c03302b93b04970d44451c8d738e094`  
		Last Modified: Thu, 07 Feb 2019 02:13:36 GMT  
		Size: 1.3 MB (1291401 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70dac0e55a62205e4343141de8215b2de50bedb4d6143740348417488a9b9b5d`  
		Last Modified: Thu, 07 Feb 2019 02:13:54 GMT  
		Size: 1.4 KB (1394 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:607ff6390b4dbcbfedf12aa91e2b8b66edfa95266813d64502f59cf280095fe5`  
		Last Modified: Thu, 07 Feb 2019 02:13:57 GMT  
		Size: 19.6 MB (19550235 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7962b98abff81bd8f3acbb6763e716b6376106120629b79813b97085d38e92dc`  
		Last Modified: Thu, 07 Feb 2019 02:13:54 GMT  
		Size: 675.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `zookeeper:3.5` - linux; s390x

```console
$ docker pull zookeeper@sha256:72521f8fd7212ec6fe20af11ebbe9e8683985ca02c6e30a21ffed9fe7e9d1990
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **76.9 MB (76919096 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:de07e230296e366d60bd2d5a76665fb03bc3a73cbdd6abae3c39d1511c535977`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["zkServer.sh","start-foreground"]`

```dockerfile
# Thu, 31 Jan 2019 12:41:43 GMT
ADD file:fdc9dcc7d932bb46a3992371288a0f80814bfb29ae8c8f1d860b6aabf0e9f893 in / 
# Thu, 31 Jan 2019 12:41:44 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Thu, 31 Jan 2019 12:41:44 GMT
CMD ["/bin/sh"]
# Wed, 06 Feb 2019 13:20:18 GMT
ENV LANG=C.UTF-8
# Wed, 06 Feb 2019 13:20:18 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 06 Feb 2019 13:20:56 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Wed, 06 Feb 2019 13:20:56 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 06 Feb 2019 13:20:56 GMT
ENV JAVA_VERSION=8u191
# Wed, 06 Feb 2019 13:20:57 GMT
ENV JAVA_ALPINE_VERSION=8.191.12-r0
# Wed, 06 Feb 2019 13:20:59 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 06 Feb 2019 18:15:41 GMT
RUN apk add --no-cache     bash     su-exec
# Wed, 06 Feb 2019 18:15:57 GMT
ENV ZOO_USER=zookeeper ZOO_CONF_DIR=/conf ZOO_DATA_DIR=/data ZOO_DATA_LOG_DIR=/datalog ZOO_LOG_DIR=/logs ZOO_PORT=2181 ZOO_TICK_TIME=2000 ZOO_INIT_LIMIT=5 ZOO_SYNC_LIMIT=2 ZOO_AUTOPURGE_PURGEINTERVAL=0 ZOO_AUTOPURGE_SNAPRETAINCOUNT=3 ZOO_MAX_CLIENT_CNXNS=60 ZOO_STANDALONE_ENABLED=false
# Wed, 06 Feb 2019 18:15:58 GMT
RUN set -ex;     adduser -D "$ZOO_USER";     mkdir -p "$ZOO_DATA_LOG_DIR" "$ZOO_DATA_DIR" "$ZOO_CONF_DIR" "$ZOO_LOG_DIR";     chown "$ZOO_USER:$ZOO_USER" "$ZOO_DATA_LOG_DIR" "$ZOO_DATA_DIR" "$ZOO_CONF_DIR" "$ZOO_LOG_DIR"
# Wed, 06 Feb 2019 18:15:58 GMT
ARG GPG_KEY=D0BC8D8A4E90A40AFDFC43B3E22A746A68E327C1
# Wed, 06 Feb 2019 18:15:58 GMT
ARG DISTRO_NAME=zookeeper-3.5.4-beta
# Wed, 06 Feb 2019 18:16:01 GMT
# ARGS: DISTRO_NAME=zookeeper-3.5.4-beta GPG_KEY=D0BC8D8A4E90A40AFDFC43B3E22A746A68E327C1
RUN set -ex;     apk add --no-cache --virtual .build-deps         ca-certificates         gnupg         libressl;     wget -q "https://www.apache.org/dist/zookeeper/$DISTRO_NAME/$DISTRO_NAME.tar.gz";     wget -q "https://www.apache.org/dist/zookeeper/$DISTRO_NAME/$DISTRO_NAME.tar.gz.asc";     export GNUPGHOME="$(mktemp -d)";     gpg --keyserver ha.pool.sks-keyservers.net --recv-key "$GPG_KEY" ||     gpg --keyserver pgp.mit.edu --recv-keys "$GPG_KEY" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$GPG_KEY";     gpg --batch --verify "$DISTRO_NAME.tar.gz.asc" "$DISTRO_NAME.tar.gz";     tar -zxf "$DISTRO_NAME.tar.gz";     mv "$DISTRO_NAME/conf/"* "$ZOO_CONF_DIR";     rm -rf "$GNUPGHOME" "$DISTRO_NAME.tar.gz" "$DISTRO_NAME.tar.gz.asc";     apk del .build-deps;     chown -R "$ZOO_USER:$ZOO_USER" "/$DISTRO_NAME"
# Wed, 06 Feb 2019 18:16:02 GMT
WORKDIR /zookeeper-3.5.4-beta
# Wed, 06 Feb 2019 18:16:02 GMT
VOLUME [/data /datalog /logs]
# Wed, 06 Feb 2019 18:16:02 GMT
EXPOSE 2181 2888 3888
# Wed, 06 Feb 2019 18:16:02 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin:/zookeeper-3.5.4-beta/bin ZOOCFGDIR=/conf
# Wed, 06 Feb 2019 18:16:02 GMT
COPY file:da4c1e7ba5b62f2d076bdffec939a64fb3c8a58676a7b139e17939a632a59a88 in / 
# Wed, 06 Feb 2019 18:16:02 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 06 Feb 2019 18:16:03 GMT
CMD ["zkServer.sh" "start-foreground"]
```

-	Layers:
	-	`sha256:11396e2e564eba3ffa05ba6ea52a711025650a7cfe1387d6a59fdd9a90f2e024`  
		Last Modified: Thu, 31 Jan 2019 12:42:01 GMT  
		Size: 2.5 MB (2541348 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e33c309129e1ab066f8f8e65929ab8246c5ae9ec293c9522c706fa70dfa0a4c6`  
		Last Modified: Thu, 31 Jan 2019 12:42:01 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99d1a7308c276b4bfe36b12f01b7c57f79adfc7eb55e0263fd725e1308d13412`  
		Last Modified: Wed, 06 Feb 2019 13:25:05 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af546122d628f916df18308eef518892c9e8d4560ed0bb582389244f015942d6`  
		Last Modified: Wed, 06 Feb 2019 13:25:42 GMT  
		Size: 53.6 MB (53587740 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80468258aa44038e935f65d62d380ee9db866ea2a161f20f8adc28d22c736190`  
		Last Modified: Wed, 06 Feb 2019 18:16:11 GMT  
		Size: 1.2 MB (1240005 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15866067605bdbee81eba1a1e7f5bca14374841a970d09054e2f9a052f024913`  
		Last Modified: Wed, 06 Feb 2019 18:16:21 GMT  
		Size: 1.3 KB (1312 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f45583ce023ea67dc1882ff85e0ee3e6cd48e77a3af805898c72a754d48235f3`  
		Last Modified: Wed, 06 Feb 2019 18:16:23 GMT  
		Size: 19.5 MB (19547603 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eeb280343695f10445ab9bda5ed7d7f61a1b26a0c3b720f17926276722619821`  
		Last Modified: Wed, 06 Feb 2019 18:16:21 GMT  
		Size: 675.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `zookeeper:3.5.4-beta`

```console
$ docker pull zookeeper@sha256:3f9e9af525398cf1a0df8658c46529edadbba0b8b6cd3e8dd801ce2ec584769f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `zookeeper:3.5.4-beta` - linux; amd64

```console
$ docker pull zookeeper@sha256:ca06ca7ce8da984b86070f8d07f93fcf579eb4a1f2a0362790ebac507cb34e3a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **78.4 MB (78439324 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:35b1423c5c19da29d637d342a6ca977b7ac7801338a1afbc1944a487cb92af0c`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["zkServer.sh","start-foreground"]`

```dockerfile
# Wed, 30 Jan 2019 22:19:52 GMT
ADD file:2a1fc9351afe35698918545b2d466d9805c2e8afcec52f916785ee65bbafeced in / 
# Wed, 30 Jan 2019 22:19:52 GMT
CMD ["/bin/sh"]
# Tue, 05 Feb 2019 20:39:38 GMT
ENV LANG=C.UTF-8
# Tue, 05 Feb 2019 20:39:40 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 05 Feb 2019 20:39:59 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Tue, 05 Feb 2019 20:39:59 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 05 Feb 2019 20:39:59 GMT
ENV JAVA_VERSION=8u191
# Tue, 05 Feb 2019 20:39:59 GMT
ENV JAVA_ALPINE_VERSION=8.191.12-r0
# Tue, 05 Feb 2019 20:40:03 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 05 Feb 2019 21:37:21 GMT
RUN apk add --no-cache     bash     su-exec
# Tue, 05 Feb 2019 21:37:40 GMT
ENV ZOO_USER=zookeeper ZOO_CONF_DIR=/conf ZOO_DATA_DIR=/data ZOO_DATA_LOG_DIR=/datalog ZOO_LOG_DIR=/logs ZOO_PORT=2181 ZOO_TICK_TIME=2000 ZOO_INIT_LIMIT=5 ZOO_SYNC_LIMIT=2 ZOO_AUTOPURGE_PURGEINTERVAL=0 ZOO_AUTOPURGE_SNAPRETAINCOUNT=3 ZOO_MAX_CLIENT_CNXNS=60 ZOO_STANDALONE_ENABLED=false
# Tue, 05 Feb 2019 21:37:41 GMT
RUN set -ex;     adduser -D "$ZOO_USER";     mkdir -p "$ZOO_DATA_LOG_DIR" "$ZOO_DATA_DIR" "$ZOO_CONF_DIR" "$ZOO_LOG_DIR";     chown "$ZOO_USER:$ZOO_USER" "$ZOO_DATA_LOG_DIR" "$ZOO_DATA_DIR" "$ZOO_CONF_DIR" "$ZOO_LOG_DIR"
# Tue, 05 Feb 2019 21:37:41 GMT
ARG GPG_KEY=D0BC8D8A4E90A40AFDFC43B3E22A746A68E327C1
# Tue, 05 Feb 2019 21:37:41 GMT
ARG DISTRO_NAME=zookeeper-3.5.4-beta
# Tue, 05 Feb 2019 21:37:47 GMT
# ARGS: DISTRO_NAME=zookeeper-3.5.4-beta GPG_KEY=D0BC8D8A4E90A40AFDFC43B3E22A746A68E327C1
RUN set -ex;     apk add --no-cache --virtual .build-deps         ca-certificates         gnupg         libressl;     wget -q "https://www.apache.org/dist/zookeeper/$DISTRO_NAME/$DISTRO_NAME.tar.gz";     wget -q "https://www.apache.org/dist/zookeeper/$DISTRO_NAME/$DISTRO_NAME.tar.gz.asc";     export GNUPGHOME="$(mktemp -d)";     gpg --keyserver ha.pool.sks-keyservers.net --recv-key "$GPG_KEY" ||     gpg --keyserver pgp.mit.edu --recv-keys "$GPG_KEY" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$GPG_KEY";     gpg --batch --verify "$DISTRO_NAME.tar.gz.asc" "$DISTRO_NAME.tar.gz";     tar -zxf "$DISTRO_NAME.tar.gz";     mv "$DISTRO_NAME/conf/"* "$ZOO_CONF_DIR";     rm -rf "$GNUPGHOME" "$DISTRO_NAME.tar.gz" "$DISTRO_NAME.tar.gz.asc";     apk del .build-deps;     chown -R "$ZOO_USER:$ZOO_USER" "/$DISTRO_NAME"
# Tue, 05 Feb 2019 21:37:47 GMT
WORKDIR /zookeeper-3.5.4-beta
# Tue, 05 Feb 2019 21:37:47 GMT
VOLUME [/data /datalog /logs]
# Tue, 05 Feb 2019 21:37:48 GMT
EXPOSE 2181 2888 3888
# Tue, 05 Feb 2019 21:37:48 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin:/zookeeper-3.5.4-beta/bin ZOOCFGDIR=/conf
# Tue, 05 Feb 2019 21:37:48 GMT
COPY file:da4c1e7ba5b62f2d076bdffec939a64fb3c8a58676a7b139e17939a632a59a88 in / 
# Tue, 05 Feb 2019 21:37:48 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 05 Feb 2019 21:37:49 GMT
CMD ["zkServer.sh" "start-foreground"]
```

-	Layers:
	-	`sha256:6c40cc604d8e4c121adcb6b0bfe8bb038815c350980090e74aa5a6423f8f82c0`  
		Last Modified: Wed, 30 Jan 2019 22:21:08 GMT  
		Size: 2.8 MB (2754728 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e78b803852394d2b9aaa3ce93b0f2502b0bf8e063b1fa79734de0fc8ee55ee6e`  
		Last Modified: Tue, 05 Feb 2019 20:45:24 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f41fe1b6eee3555498a7e15b3bf048a7ec274302a92d0c8b34fda111c780fdcf`  
		Last Modified: Tue, 05 Feb 2019 20:45:56 GMT  
		Size: 54.9 MB (54922733 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:365a20fafc585c5a0a6b460b7293edaa4fabf9a42fd0fc17beb280de17788306`  
		Last Modified: Tue, 05 Feb 2019 21:38:00 GMT  
		Size: 1.2 MB (1209062 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3c69e51c0a4a04e0b2756807a1d1cd63d1c9564bac33aa1fb1a4c693dc4488d`  
		Last Modified: Tue, 05 Feb 2019 21:38:12 GMT  
		Size: 1.3 KB (1314 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a8dbaf0cd2c8e72532ca540a4148a16cfabe2b32118758060415ce77a5c8280`  
		Last Modified: Tue, 05 Feb 2019 21:38:14 GMT  
		Size: 19.6 MB (19550572 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08c045fc9937e5bde3508861421d554e6154b51f55621ec3bab26223b68a6838`  
		Last Modified: Tue, 05 Feb 2019 21:38:12 GMT  
		Size: 676.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `zookeeper:3.5.4-beta` - linux; arm variant v6

```console
$ docker pull zookeeper@sha256:f5304c3a894d64539c6189141888a760e4b31eea2fc3096becb3488fe7fb5f98
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **75.6 MB (75563064 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a1e58885a1e216fafbefefcde1f2426d7b849fe955161efa7055ec7641ea8b04`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["zkServer.sh","start-foreground"]`

```dockerfile
# Thu, 31 Jan 2019 08:50:08 GMT
ADD file:64d5aa5dc08c958468e7c857c35d32a3e87c88800152264432930898defa10c5 in / 
# Thu, 31 Jan 2019 08:50:09 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Thu, 31 Jan 2019 08:50:09 GMT
CMD ["/bin/sh"]
# Wed, 06 Feb 2019 09:09:14 GMT
ENV LANG=C.UTF-8
# Wed, 06 Feb 2019 09:09:15 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 06 Feb 2019 09:09:34 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Wed, 06 Feb 2019 09:09:34 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 06 Feb 2019 09:09:34 GMT
ENV JAVA_VERSION=8u191
# Wed, 06 Feb 2019 09:09:35 GMT
ENV JAVA_ALPINE_VERSION=8.191.12-r0
# Wed, 06 Feb 2019 09:09:39 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Thu, 07 Feb 2019 09:46:35 GMT
RUN apk add --no-cache     bash     su-exec
# Thu, 07 Feb 2019 09:47:17 GMT
ENV ZOO_USER=zookeeper ZOO_CONF_DIR=/conf ZOO_DATA_DIR=/data ZOO_DATA_LOG_DIR=/datalog ZOO_LOG_DIR=/logs ZOO_PORT=2181 ZOO_TICK_TIME=2000 ZOO_INIT_LIMIT=5 ZOO_SYNC_LIMIT=2 ZOO_AUTOPURGE_PURGEINTERVAL=0 ZOO_AUTOPURGE_SNAPRETAINCOUNT=3 ZOO_MAX_CLIENT_CNXNS=60 ZOO_STANDALONE_ENABLED=false
# Thu, 07 Feb 2019 09:47:19 GMT
RUN set -ex;     adduser -D "$ZOO_USER";     mkdir -p "$ZOO_DATA_LOG_DIR" "$ZOO_DATA_DIR" "$ZOO_CONF_DIR" "$ZOO_LOG_DIR";     chown "$ZOO_USER:$ZOO_USER" "$ZOO_DATA_LOG_DIR" "$ZOO_DATA_DIR" "$ZOO_CONF_DIR" "$ZOO_LOG_DIR"
# Thu, 07 Feb 2019 09:47:19 GMT
ARG GPG_KEY=D0BC8D8A4E90A40AFDFC43B3E22A746A68E327C1
# Thu, 07 Feb 2019 09:47:19 GMT
ARG DISTRO_NAME=zookeeper-3.5.4-beta
# Thu, 07 Feb 2019 09:47:27 GMT
# ARGS: DISTRO_NAME=zookeeper-3.5.4-beta GPG_KEY=D0BC8D8A4E90A40AFDFC43B3E22A746A68E327C1
RUN set -ex;     apk add --no-cache --virtual .build-deps         ca-certificates         gnupg         libressl;     wget -q "https://www.apache.org/dist/zookeeper/$DISTRO_NAME/$DISTRO_NAME.tar.gz";     wget -q "https://www.apache.org/dist/zookeeper/$DISTRO_NAME/$DISTRO_NAME.tar.gz.asc";     export GNUPGHOME="$(mktemp -d)";     gpg --keyserver ha.pool.sks-keyservers.net --recv-key "$GPG_KEY" ||     gpg --keyserver pgp.mit.edu --recv-keys "$GPG_KEY" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$GPG_KEY";     gpg --batch --verify "$DISTRO_NAME.tar.gz.asc" "$DISTRO_NAME.tar.gz";     tar -zxf "$DISTRO_NAME.tar.gz";     mv "$DISTRO_NAME/conf/"* "$ZOO_CONF_DIR";     rm -rf "$GNUPGHOME" "$DISTRO_NAME.tar.gz" "$DISTRO_NAME.tar.gz.asc";     apk del .build-deps;     chown -R "$ZOO_USER:$ZOO_USER" "/$DISTRO_NAME"
# Thu, 07 Feb 2019 09:47:28 GMT
WORKDIR /zookeeper-3.5.4-beta
# Thu, 07 Feb 2019 09:47:28 GMT
VOLUME [/data /datalog /logs]
# Thu, 07 Feb 2019 09:47:28 GMT
EXPOSE 2181 2888 3888
# Thu, 07 Feb 2019 09:47:29 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin:/zookeeper-3.5.4-beta/bin ZOOCFGDIR=/conf
# Thu, 07 Feb 2019 09:47:29 GMT
COPY file:da4c1e7ba5b62f2d076bdffec939a64fb3c8a58676a7b139e17939a632a59a88 in / 
# Thu, 07 Feb 2019 09:47:30 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 07 Feb 2019 09:47:30 GMT
CMD ["zkServer.sh" "start-foreground"]
```

-	Layers:
	-	`sha256:05276f4299f299c4d5ca6776672dcf52f03189b7004e747fd1c2b759d9157831`  
		Last Modified: Thu, 31 Jan 2019 08:50:31 GMT  
		Size: 2.5 MB (2540746 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5657e63df53674891643732c236f7932524d1710ce42d916bb3c889a8652df67`  
		Last Modified: Thu, 31 Jan 2019 08:50:31 GMT  
		Size: 173.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:598092653ce578dc5f1728020fc7cea202bfd7c3694e321c61bdd914e0a1f5ec`  
		Last Modified: Wed, 06 Feb 2019 09:10:30 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89a4f55d20a64c757c23b9e9b1382fa744e666c57cb22ae208fa26f8724585c2`  
		Last Modified: Wed, 06 Feb 2019 09:11:13 GMT  
		Size: 52.3 MB (52316622 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3b5aeac4816e0601a214f22a41dc5258bc63084c40ea23450cc0e35b49ce182`  
		Last Modified: Thu, 07 Feb 2019 09:47:41 GMT  
		Size: 1.2 MB (1154133 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26081929873e0dc7a6a2d040020e998bbaaddd6e85b97f3cdb5f903b82a2691f`  
		Last Modified: Thu, 07 Feb 2019 09:47:55 GMT  
		Size: 1.4 KB (1392 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28bb13ac06fc67d9e6e46bdd79f52ef97cc4334bbbe1500fe0db3cb59d9e3474`  
		Last Modified: Thu, 07 Feb 2019 09:48:00 GMT  
		Size: 19.5 MB (19549086 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5def34d611d5c16627b330738265dfc27ae4572caa443a3038f4395da925636`  
		Last Modified: Thu, 07 Feb 2019 09:47:56 GMT  
		Size: 675.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `zookeeper:3.5.4-beta` - linux; arm64 variant v8

```console
$ docker pull zookeeper@sha256:99cd47d717f3d5d9d5638c6695912197544e1be01bc62651e5799d04fa25a079
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **78.3 MB (78321284 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1c4db6ee1bf96c2cd03477d4eb1ece2868d1f63d92f8f9e08dff25831f573809`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["zkServer.sh","start-foreground"]`

```dockerfile
# Thu, 31 Jan 2019 09:40:55 GMT
ADD file:3c5f57c6644886bbb8164b9aa4cd60e233be7da48b7194a04963a8e7de058e28 in / 
# Thu, 31 Jan 2019 09:40:56 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Thu, 31 Jan 2019 09:40:57 GMT
CMD ["/bin/sh"]
# Wed, 06 Feb 2019 12:20:55 GMT
ENV LANG=C.UTF-8
# Wed, 06 Feb 2019 12:21:00 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 06 Feb 2019 12:31:59 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Wed, 06 Feb 2019 12:32:01 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 06 Feb 2019 12:32:04 GMT
ENV JAVA_VERSION=8u191
# Wed, 06 Feb 2019 12:32:07 GMT
ENV JAVA_ALPINE_VERSION=8.191.12-r0
# Wed, 06 Feb 2019 12:32:21 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Thu, 07 Feb 2019 08:55:52 GMT
RUN apk add --no-cache     bash     su-exec
# Thu, 07 Feb 2019 08:56:31 GMT
ENV ZOO_USER=zookeeper ZOO_CONF_DIR=/conf ZOO_DATA_DIR=/data ZOO_DATA_LOG_DIR=/datalog ZOO_LOG_DIR=/logs ZOO_PORT=2181 ZOO_TICK_TIME=2000 ZOO_INIT_LIMIT=5 ZOO_SYNC_LIMIT=2 ZOO_AUTOPURGE_PURGEINTERVAL=0 ZOO_AUTOPURGE_SNAPRETAINCOUNT=3 ZOO_MAX_CLIENT_CNXNS=60 ZOO_STANDALONE_ENABLED=false
# Thu, 07 Feb 2019 08:56:33 GMT
RUN set -ex;     adduser -D "$ZOO_USER";     mkdir -p "$ZOO_DATA_LOG_DIR" "$ZOO_DATA_DIR" "$ZOO_CONF_DIR" "$ZOO_LOG_DIR";     chown "$ZOO_USER:$ZOO_USER" "$ZOO_DATA_LOG_DIR" "$ZOO_DATA_DIR" "$ZOO_CONF_DIR" "$ZOO_LOG_DIR"
# Thu, 07 Feb 2019 08:56:34 GMT
ARG GPG_KEY=D0BC8D8A4E90A40AFDFC43B3E22A746A68E327C1
# Thu, 07 Feb 2019 08:56:34 GMT
ARG DISTRO_NAME=zookeeper-3.5.4-beta
# Thu, 07 Feb 2019 08:56:47 GMT
# ARGS: DISTRO_NAME=zookeeper-3.5.4-beta GPG_KEY=D0BC8D8A4E90A40AFDFC43B3E22A746A68E327C1
RUN set -ex;     apk add --no-cache --virtual .build-deps         ca-certificates         gnupg         libressl;     wget -q "https://www.apache.org/dist/zookeeper/$DISTRO_NAME/$DISTRO_NAME.tar.gz";     wget -q "https://www.apache.org/dist/zookeeper/$DISTRO_NAME/$DISTRO_NAME.tar.gz.asc";     export GNUPGHOME="$(mktemp -d)";     gpg --keyserver ha.pool.sks-keyservers.net --recv-key "$GPG_KEY" ||     gpg --keyserver pgp.mit.edu --recv-keys "$GPG_KEY" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$GPG_KEY";     gpg --batch --verify "$DISTRO_NAME.tar.gz.asc" "$DISTRO_NAME.tar.gz";     tar -zxf "$DISTRO_NAME.tar.gz";     mv "$DISTRO_NAME/conf/"* "$ZOO_CONF_DIR";     rm -rf "$GNUPGHOME" "$DISTRO_NAME.tar.gz" "$DISTRO_NAME.tar.gz.asc";     apk del .build-deps;     chown -R "$ZOO_USER:$ZOO_USER" "/$DISTRO_NAME"
# Thu, 07 Feb 2019 08:56:49 GMT
WORKDIR /zookeeper-3.5.4-beta
# Thu, 07 Feb 2019 08:56:51 GMT
VOLUME [/data /datalog /logs]
# Thu, 07 Feb 2019 08:56:52 GMT
EXPOSE 2181 2888 3888
# Thu, 07 Feb 2019 08:56:53 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin:/zookeeper-3.5.4-beta/bin ZOOCFGDIR=/conf
# Thu, 07 Feb 2019 08:56:54 GMT
COPY file:da4c1e7ba5b62f2d076bdffec939a64fb3c8a58676a7b139e17939a632a59a88 in / 
# Thu, 07 Feb 2019 08:56:55 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 07 Feb 2019 08:56:56 GMT
CMD ["zkServer.sh" "start-foreground"]
```

-	Layers:
	-	`sha256:ee02fa18913c824d1d1c9b680f1a43dad343b9d6c086a6bc62e3361c3d3a2d63`  
		Last Modified: Thu, 31 Jan 2019 09:41:23 GMT  
		Size: 2.7 MB (2687895 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afafa41235ea57b01b00eba47de1574777073a79c1d592c5709dfcbb3bd51f2a`  
		Last Modified: Thu, 31 Jan 2019 09:41:21 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd4dbd37ccf7cb48097dfc245c4c6f892eaf16d2ad47a0478302cf24d0a74911`  
		Last Modified: Wed, 06 Feb 2019 12:42:42 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a4c22261364cc479c308d041f6881688678f61995139006fbd24aa898f98a7f`  
		Last Modified: Wed, 06 Feb 2019 12:45:02 GMT  
		Size: 54.9 MB (54863256 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f19da5bbe7339eaca5e7037bbeab323f14c1c9869e2b501a85ce25b8c599313`  
		Last Modified: Thu, 07 Feb 2019 08:57:10 GMT  
		Size: 1.2 MB (1220003 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca7cbed8e881386c7000f30100cfa23f36f2cc1a0efe92a0892c2634708c3202`  
		Last Modified: Thu, 07 Feb 2019 08:57:31 GMT  
		Size: 1.3 KB (1310 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0731f8c65e9445f28adcadf136f3edba593d6240c02b8aa00560ef2401a728be`  
		Last Modified: Thu, 07 Feb 2019 08:57:36 GMT  
		Size: 19.5 MB (19547730 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50f673b0f581109c78e65ccc8221c1c83b7ccefde67786452d3907f388d2876b`  
		Last Modified: Thu, 07 Feb 2019 08:57:31 GMT  
		Size: 675.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `zookeeper:3.5.4-beta` - linux; 386

```console
$ docker pull zookeeper@sha256:f92982557be4bf0f8cf9356768570a6747896b97ce2ce1ab556fdac55a4ab524
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **79.1 MB (79107269 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:68eac9e7372806d17833c66213d39492cb3553c419a2dae45a4922aac41b5c4a`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["zkServer.sh","start-foreground"]`

```dockerfile
# Thu, 31 Jan 2019 11:38:57 GMT
ADD file:738a04760a9f9a1cd919954db42a0da78c644e7024240160c54723bf1dd479e9 in / 
# Thu, 31 Jan 2019 11:38:57 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Thu, 31 Jan 2019 11:38:57 GMT
CMD ["/bin/sh"]
# Wed, 06 Feb 2019 13:21:09 GMT
ENV LANG=C.UTF-8
# Wed, 06 Feb 2019 13:21:11 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 06 Feb 2019 13:22:07 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Wed, 06 Feb 2019 13:22:07 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 06 Feb 2019 13:22:08 GMT
ENV JAVA_VERSION=8u191
# Wed, 06 Feb 2019 13:22:08 GMT
ENV JAVA_ALPINE_VERSION=8.191.12-r0
# Wed, 06 Feb 2019 13:22:13 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Thu, 07 Feb 2019 06:57:06 GMT
RUN apk add --no-cache     bash     su-exec
# Thu, 07 Feb 2019 06:57:17 GMT
ENV ZOO_USER=zookeeper ZOO_CONF_DIR=/conf ZOO_DATA_DIR=/data ZOO_DATA_LOG_DIR=/datalog ZOO_LOG_DIR=/logs ZOO_PORT=2181 ZOO_TICK_TIME=2000 ZOO_INIT_LIMIT=5 ZOO_SYNC_LIMIT=2 ZOO_AUTOPURGE_PURGEINTERVAL=0 ZOO_AUTOPURGE_SNAPRETAINCOUNT=3 ZOO_MAX_CLIENT_CNXNS=60 ZOO_STANDALONE_ENABLED=false
# Thu, 07 Feb 2019 06:57:17 GMT
RUN set -ex;     adduser -D "$ZOO_USER";     mkdir -p "$ZOO_DATA_LOG_DIR" "$ZOO_DATA_DIR" "$ZOO_CONF_DIR" "$ZOO_LOG_DIR";     chown "$ZOO_USER:$ZOO_USER" "$ZOO_DATA_LOG_DIR" "$ZOO_DATA_DIR" "$ZOO_CONF_DIR" "$ZOO_LOG_DIR"
# Thu, 07 Feb 2019 06:57:18 GMT
ARG GPG_KEY=D0BC8D8A4E90A40AFDFC43B3E22A746A68E327C1
# Thu, 07 Feb 2019 06:57:18 GMT
ARG DISTRO_NAME=zookeeper-3.5.4-beta
# Thu, 07 Feb 2019 06:57:23 GMT
# ARGS: DISTRO_NAME=zookeeper-3.5.4-beta GPG_KEY=D0BC8D8A4E90A40AFDFC43B3E22A746A68E327C1
RUN set -ex;     apk add --no-cache --virtual .build-deps         ca-certificates         gnupg         libressl;     wget -q "https://www.apache.org/dist/zookeeper/$DISTRO_NAME/$DISTRO_NAME.tar.gz";     wget -q "https://www.apache.org/dist/zookeeper/$DISTRO_NAME/$DISTRO_NAME.tar.gz.asc";     export GNUPGHOME="$(mktemp -d)";     gpg --keyserver ha.pool.sks-keyservers.net --recv-key "$GPG_KEY" ||     gpg --keyserver pgp.mit.edu --recv-keys "$GPG_KEY" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$GPG_KEY";     gpg --batch --verify "$DISTRO_NAME.tar.gz.asc" "$DISTRO_NAME.tar.gz";     tar -zxf "$DISTRO_NAME.tar.gz";     mv "$DISTRO_NAME/conf/"* "$ZOO_CONF_DIR";     rm -rf "$GNUPGHOME" "$DISTRO_NAME.tar.gz" "$DISTRO_NAME.tar.gz.asc";     apk del .build-deps;     chown -R "$ZOO_USER:$ZOO_USER" "/$DISTRO_NAME"
# Thu, 07 Feb 2019 06:57:23 GMT
WORKDIR /zookeeper-3.5.4-beta
# Thu, 07 Feb 2019 06:57:23 GMT
VOLUME [/data /datalog /logs]
# Thu, 07 Feb 2019 06:57:24 GMT
EXPOSE 2181 2888 3888
# Thu, 07 Feb 2019 06:57:24 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin:/zookeeper-3.5.4-beta/bin ZOOCFGDIR=/conf
# Thu, 07 Feb 2019 06:57:24 GMT
COPY file:da4c1e7ba5b62f2d076bdffec939a64fb3c8a58676a7b139e17939a632a59a88 in / 
# Thu, 07 Feb 2019 06:57:24 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 07 Feb 2019 06:57:24 GMT
CMD ["zkServer.sh" "start-foreground"]
```

-	Layers:
	-	`sha256:bcb4f889a459d231e71d88c93174eec5edef928ab1e2481f8b0074076ee934a6`  
		Last Modified: Thu, 31 Jan 2019 11:39:11 GMT  
		Size: 2.7 MB (2749336 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4099db9edcf638f20df22a899890483f7c152af59ca7a2de9c3b24c53c509e7`  
		Last Modified: Thu, 31 Jan 2019 11:39:11 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce0f3d3b48a17ae1a2bcad376e638afbdf982a8d5949595c2e4a4007f4db3d0c`  
		Last Modified: Wed, 06 Feb 2019 13:42:46 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6f750ad7f5e8d95553682c05697501d8d94a636946715800825169fb5974036`  
		Last Modified: Wed, 06 Feb 2019 13:43:57 GMT  
		Size: 55.6 MB (55551309 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:644d973e06d17886800442ecd34535984052e10bd1a776f799b661e33714113e`  
		Last Modified: Thu, 07 Feb 2019 06:57:32 GMT  
		Size: 1.3 MB (1256186 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb3b1f05264d4d94ebf44a4a29d50f490c95bf74853e5986018482dd355df36c`  
		Last Modified: Thu, 07 Feb 2019 06:57:40 GMT  
		Size: 1.3 KB (1310 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f10b7260dbf97e0ee31508e7c6f3b55089675dc727b68a33c6c249af19f60778`  
		Last Modified: Thu, 07 Feb 2019 06:57:46 GMT  
		Size: 19.5 MB (19548040 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56f839dedede5677c3e4fb2f36eaf13c6a694df85056d142156d73a95cb1c95e`  
		Last Modified: Thu, 07 Feb 2019 06:57:40 GMT  
		Size: 673.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `zookeeper:3.5.4-beta` - linux; ppc64le

```console
$ docker pull zookeeper@sha256:5379a9af25d88f1d578b9400233073d4d11a119b5538daa66a46033e1c92b625
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **79.1 MB (79126508 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:22237d73e0f3b880cf34c663d280d033dbbfd0dc6bd8409a6156209c6b5d6bea`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["zkServer.sh","start-foreground"]`

```dockerfile
# Thu, 31 Jan 2019 09:21:00 GMT
ADD file:22eef5b6e842546e68660322c07723d9794ca0eb45ac3acf95381e2591f455c6 in / 
# Thu, 31 Jan 2019 09:21:01 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Thu, 31 Jan 2019 09:21:02 GMT
CMD ["/bin/sh"]
# Wed, 06 Feb 2019 11:30:19 GMT
ENV LANG=C.UTF-8
# Wed, 06 Feb 2019 11:30:24 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 06 Feb 2019 11:32:36 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Wed, 06 Feb 2019 11:32:40 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 06 Feb 2019 11:32:43 GMT
ENV JAVA_VERSION=8u191
# Wed, 06 Feb 2019 11:32:45 GMT
ENV JAVA_ALPINE_VERSION=8.191.12-r0
# Wed, 06 Feb 2019 11:32:56 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Thu, 07 Feb 2019 02:11:45 GMT
RUN apk add --no-cache     bash     su-exec
# Thu, 07 Feb 2019 02:12:43 GMT
ENV ZOO_USER=zookeeper ZOO_CONF_DIR=/conf ZOO_DATA_DIR=/data ZOO_DATA_LOG_DIR=/datalog ZOO_LOG_DIR=/logs ZOO_PORT=2181 ZOO_TICK_TIME=2000 ZOO_INIT_LIMIT=5 ZOO_SYNC_LIMIT=2 ZOO_AUTOPURGE_PURGEINTERVAL=0 ZOO_AUTOPURGE_SNAPRETAINCOUNT=3 ZOO_MAX_CLIENT_CNXNS=60 ZOO_STANDALONE_ENABLED=false
# Thu, 07 Feb 2019 02:12:47 GMT
RUN set -ex;     adduser -D "$ZOO_USER";     mkdir -p "$ZOO_DATA_LOG_DIR" "$ZOO_DATA_DIR" "$ZOO_CONF_DIR" "$ZOO_LOG_DIR";     chown "$ZOO_USER:$ZOO_USER" "$ZOO_DATA_LOG_DIR" "$ZOO_DATA_DIR" "$ZOO_CONF_DIR" "$ZOO_LOG_DIR"
# Thu, 07 Feb 2019 02:12:51 GMT
ARG GPG_KEY=D0BC8D8A4E90A40AFDFC43B3E22A746A68E327C1
# Thu, 07 Feb 2019 02:12:54 GMT
ARG DISTRO_NAME=zookeeper-3.5.4-beta
# Thu, 07 Feb 2019 02:13:03 GMT
# ARGS: DISTRO_NAME=zookeeper-3.5.4-beta GPG_KEY=D0BC8D8A4E90A40AFDFC43B3E22A746A68E327C1
RUN set -ex;     apk add --no-cache --virtual .build-deps         ca-certificates         gnupg         libressl;     wget -q "https://www.apache.org/dist/zookeeper/$DISTRO_NAME/$DISTRO_NAME.tar.gz";     wget -q "https://www.apache.org/dist/zookeeper/$DISTRO_NAME/$DISTRO_NAME.tar.gz.asc";     export GNUPGHOME="$(mktemp -d)";     gpg --keyserver ha.pool.sks-keyservers.net --recv-key "$GPG_KEY" ||     gpg --keyserver pgp.mit.edu --recv-keys "$GPG_KEY" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$GPG_KEY";     gpg --batch --verify "$DISTRO_NAME.tar.gz.asc" "$DISTRO_NAME.tar.gz";     tar -zxf "$DISTRO_NAME.tar.gz";     mv "$DISTRO_NAME/conf/"* "$ZOO_CONF_DIR";     rm -rf "$GNUPGHOME" "$DISTRO_NAME.tar.gz" "$DISTRO_NAME.tar.gz.asc";     apk del .build-deps;     chown -R "$ZOO_USER:$ZOO_USER" "/$DISTRO_NAME"
# Thu, 07 Feb 2019 02:13:07 GMT
WORKDIR /zookeeper-3.5.4-beta
# Thu, 07 Feb 2019 02:13:09 GMT
VOLUME [/data /datalog /logs]
# Thu, 07 Feb 2019 02:13:12 GMT
EXPOSE 2181 2888 3888
# Thu, 07 Feb 2019 02:13:16 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin:/zookeeper-3.5.4-beta/bin ZOOCFGDIR=/conf
# Thu, 07 Feb 2019 02:13:17 GMT
COPY file:da4c1e7ba5b62f2d076bdffec939a64fb3c8a58676a7b139e17939a632a59a88 in / 
# Thu, 07 Feb 2019 02:13:19 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 07 Feb 2019 02:13:22 GMT
CMD ["zkServer.sh" "start-foreground"]
```

-	Layers:
	-	`sha256:3261f066f954b13c338d7bebabcc22a2a4037bfe4c6989b60595b13ac629445f`  
		Last Modified: Thu, 31 Jan 2019 09:21:21 GMT  
		Size: 2.8 MB (2778665 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ff5f92c7db4d11f3356e3243a8a330a8eb64fcde5310599933270ad96a2e3dc`  
		Last Modified: Thu, 31 Jan 2019 09:21:22 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81ffc70c988f1eca134348f8c977a0a8eca65b127503f8a7d6561fd73acaf47f`  
		Last Modified: Wed, 06 Feb 2019 11:40:41 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8cf79593b1c96e6feabee87ffa86fac13485dfb07d9c3ee56aa9894c479e939c`  
		Last Modified: Wed, 06 Feb 2019 11:41:49 GMT  
		Size: 55.5 MB (55503724 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bcf618d30d4b960042b0b84f5bfcf2165c03302b93b04970d44451c8d738e094`  
		Last Modified: Thu, 07 Feb 2019 02:13:36 GMT  
		Size: 1.3 MB (1291401 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70dac0e55a62205e4343141de8215b2de50bedb4d6143740348417488a9b9b5d`  
		Last Modified: Thu, 07 Feb 2019 02:13:54 GMT  
		Size: 1.4 KB (1394 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:607ff6390b4dbcbfedf12aa91e2b8b66edfa95266813d64502f59cf280095fe5`  
		Last Modified: Thu, 07 Feb 2019 02:13:57 GMT  
		Size: 19.6 MB (19550235 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7962b98abff81bd8f3acbb6763e716b6376106120629b79813b97085d38e92dc`  
		Last Modified: Thu, 07 Feb 2019 02:13:54 GMT  
		Size: 675.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `zookeeper:3.5.4-beta` - linux; s390x

```console
$ docker pull zookeeper@sha256:72521f8fd7212ec6fe20af11ebbe9e8683985ca02c6e30a21ffed9fe7e9d1990
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **76.9 MB (76919096 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:de07e230296e366d60bd2d5a76665fb03bc3a73cbdd6abae3c39d1511c535977`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["zkServer.sh","start-foreground"]`

```dockerfile
# Thu, 31 Jan 2019 12:41:43 GMT
ADD file:fdc9dcc7d932bb46a3992371288a0f80814bfb29ae8c8f1d860b6aabf0e9f893 in / 
# Thu, 31 Jan 2019 12:41:44 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Thu, 31 Jan 2019 12:41:44 GMT
CMD ["/bin/sh"]
# Wed, 06 Feb 2019 13:20:18 GMT
ENV LANG=C.UTF-8
# Wed, 06 Feb 2019 13:20:18 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 06 Feb 2019 13:20:56 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Wed, 06 Feb 2019 13:20:56 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 06 Feb 2019 13:20:56 GMT
ENV JAVA_VERSION=8u191
# Wed, 06 Feb 2019 13:20:57 GMT
ENV JAVA_ALPINE_VERSION=8.191.12-r0
# Wed, 06 Feb 2019 13:20:59 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 06 Feb 2019 18:15:41 GMT
RUN apk add --no-cache     bash     su-exec
# Wed, 06 Feb 2019 18:15:57 GMT
ENV ZOO_USER=zookeeper ZOO_CONF_DIR=/conf ZOO_DATA_DIR=/data ZOO_DATA_LOG_DIR=/datalog ZOO_LOG_DIR=/logs ZOO_PORT=2181 ZOO_TICK_TIME=2000 ZOO_INIT_LIMIT=5 ZOO_SYNC_LIMIT=2 ZOO_AUTOPURGE_PURGEINTERVAL=0 ZOO_AUTOPURGE_SNAPRETAINCOUNT=3 ZOO_MAX_CLIENT_CNXNS=60 ZOO_STANDALONE_ENABLED=false
# Wed, 06 Feb 2019 18:15:58 GMT
RUN set -ex;     adduser -D "$ZOO_USER";     mkdir -p "$ZOO_DATA_LOG_DIR" "$ZOO_DATA_DIR" "$ZOO_CONF_DIR" "$ZOO_LOG_DIR";     chown "$ZOO_USER:$ZOO_USER" "$ZOO_DATA_LOG_DIR" "$ZOO_DATA_DIR" "$ZOO_CONF_DIR" "$ZOO_LOG_DIR"
# Wed, 06 Feb 2019 18:15:58 GMT
ARG GPG_KEY=D0BC8D8A4E90A40AFDFC43B3E22A746A68E327C1
# Wed, 06 Feb 2019 18:15:58 GMT
ARG DISTRO_NAME=zookeeper-3.5.4-beta
# Wed, 06 Feb 2019 18:16:01 GMT
# ARGS: DISTRO_NAME=zookeeper-3.5.4-beta GPG_KEY=D0BC8D8A4E90A40AFDFC43B3E22A746A68E327C1
RUN set -ex;     apk add --no-cache --virtual .build-deps         ca-certificates         gnupg         libressl;     wget -q "https://www.apache.org/dist/zookeeper/$DISTRO_NAME/$DISTRO_NAME.tar.gz";     wget -q "https://www.apache.org/dist/zookeeper/$DISTRO_NAME/$DISTRO_NAME.tar.gz.asc";     export GNUPGHOME="$(mktemp -d)";     gpg --keyserver ha.pool.sks-keyservers.net --recv-key "$GPG_KEY" ||     gpg --keyserver pgp.mit.edu --recv-keys "$GPG_KEY" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$GPG_KEY";     gpg --batch --verify "$DISTRO_NAME.tar.gz.asc" "$DISTRO_NAME.tar.gz";     tar -zxf "$DISTRO_NAME.tar.gz";     mv "$DISTRO_NAME/conf/"* "$ZOO_CONF_DIR";     rm -rf "$GNUPGHOME" "$DISTRO_NAME.tar.gz" "$DISTRO_NAME.tar.gz.asc";     apk del .build-deps;     chown -R "$ZOO_USER:$ZOO_USER" "/$DISTRO_NAME"
# Wed, 06 Feb 2019 18:16:02 GMT
WORKDIR /zookeeper-3.5.4-beta
# Wed, 06 Feb 2019 18:16:02 GMT
VOLUME [/data /datalog /logs]
# Wed, 06 Feb 2019 18:16:02 GMT
EXPOSE 2181 2888 3888
# Wed, 06 Feb 2019 18:16:02 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin:/zookeeper-3.5.4-beta/bin ZOOCFGDIR=/conf
# Wed, 06 Feb 2019 18:16:02 GMT
COPY file:da4c1e7ba5b62f2d076bdffec939a64fb3c8a58676a7b139e17939a632a59a88 in / 
# Wed, 06 Feb 2019 18:16:02 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 06 Feb 2019 18:16:03 GMT
CMD ["zkServer.sh" "start-foreground"]
```

-	Layers:
	-	`sha256:11396e2e564eba3ffa05ba6ea52a711025650a7cfe1387d6a59fdd9a90f2e024`  
		Last Modified: Thu, 31 Jan 2019 12:42:01 GMT  
		Size: 2.5 MB (2541348 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e33c309129e1ab066f8f8e65929ab8246c5ae9ec293c9522c706fa70dfa0a4c6`  
		Last Modified: Thu, 31 Jan 2019 12:42:01 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99d1a7308c276b4bfe36b12f01b7c57f79adfc7eb55e0263fd725e1308d13412`  
		Last Modified: Wed, 06 Feb 2019 13:25:05 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af546122d628f916df18308eef518892c9e8d4560ed0bb582389244f015942d6`  
		Last Modified: Wed, 06 Feb 2019 13:25:42 GMT  
		Size: 53.6 MB (53587740 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80468258aa44038e935f65d62d380ee9db866ea2a161f20f8adc28d22c736190`  
		Last Modified: Wed, 06 Feb 2019 18:16:11 GMT  
		Size: 1.2 MB (1240005 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15866067605bdbee81eba1a1e7f5bca14374841a970d09054e2f9a052f024913`  
		Last Modified: Wed, 06 Feb 2019 18:16:21 GMT  
		Size: 1.3 KB (1312 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f45583ce023ea67dc1882ff85e0ee3e6cd48e77a3af805898c72a754d48235f3`  
		Last Modified: Wed, 06 Feb 2019 18:16:23 GMT  
		Size: 19.5 MB (19547603 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eeb280343695f10445ab9bda5ed7d7f61a1b26a0c3b720f17926276722619821`  
		Last Modified: Wed, 06 Feb 2019 18:16:21 GMT  
		Size: 675.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `zookeeper:latest`

```console
$ docker pull zookeeper@sha256:3cdb36641a9c1bda682ceef85b23410a48a9c38b43716d99c11b5dae0eae8781
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
$ docker pull zookeeper@sha256:842a9e40d3b593ccf265e3f4ae55d112aa19869f662c42357e04b316cfe22791
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **96.5 MB (96451579 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:06b178591ab399724b7f41b4b1f20c024969b68b16b0b945c6f27da6e2247d26`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["zkServer.sh","start-foreground"]`

```dockerfile
# Wed, 30 Jan 2019 22:19:52 GMT
ADD file:2a1fc9351afe35698918545b2d466d9805c2e8afcec52f916785ee65bbafeced in / 
# Wed, 30 Jan 2019 22:19:52 GMT
CMD ["/bin/sh"]
# Tue, 05 Feb 2019 20:39:38 GMT
ENV LANG=C.UTF-8
# Tue, 05 Feb 2019 20:39:40 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 05 Feb 2019 20:39:59 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Tue, 05 Feb 2019 20:39:59 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 05 Feb 2019 20:39:59 GMT
ENV JAVA_VERSION=8u191
# Tue, 05 Feb 2019 20:39:59 GMT
ENV JAVA_ALPINE_VERSION=8.191.12-r0
# Tue, 05 Feb 2019 20:40:03 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 05 Feb 2019 21:37:21 GMT
RUN apk add --no-cache     bash     su-exec
# Tue, 05 Feb 2019 21:37:22 GMT
ENV ZOO_USER=zookeeper ZOO_CONF_DIR=/conf ZOO_DATA_DIR=/data ZOO_DATA_LOG_DIR=/datalog ZOO_LOG_DIR=/logs ZOO_PORT=2181 ZOO_TICK_TIME=2000 ZOO_INIT_LIMIT=5 ZOO_SYNC_LIMIT=2 ZOO_AUTOPURGE_PURGEINTERVAL=0 ZOO_AUTOPURGE_SNAPRETAINCOUNT=3 ZOO_MAX_CLIENT_CNXNS=60
# Tue, 05 Feb 2019 21:37:23 GMT
RUN set -ex;     adduser -D "$ZOO_USER";     mkdir -p "$ZOO_DATA_LOG_DIR" "$ZOO_DATA_DIR" "$ZOO_CONF_DIR" "$ZOO_LOG_DIR";     chown "$ZOO_USER:$ZOO_USER" "$ZOO_DATA_LOG_DIR" "$ZOO_DATA_DIR" "$ZOO_CONF_DIR" "$ZOO_LOG_DIR"
# Tue, 05 Feb 2019 21:37:23 GMT
ARG GPG_KEY=C61B346552DC5E0CB53AA84F59147497767E7473
# Tue, 05 Feb 2019 21:37:23 GMT
ARG DISTRO_NAME=zookeeper-3.4.13
# Tue, 05 Feb 2019 21:37:32 GMT
# ARGS: DISTRO_NAME=zookeeper-3.4.13 GPG_KEY=C61B346552DC5E0CB53AA84F59147497767E7473
RUN set -ex;     apk add --no-cache --virtual .build-deps         ca-certificates         gnupg         libressl;     wget -q "https://www.apache.org/dist/zookeeper/$DISTRO_NAME/$DISTRO_NAME.tar.gz";     wget -q "https://www.apache.org/dist/zookeeper/$DISTRO_NAME/$DISTRO_NAME.tar.gz.asc";     export GNUPGHOME="$(mktemp -d)";     gpg --keyserver ha.pool.sks-keyservers.net --recv-key "$GPG_KEY" ||     gpg --keyserver pgp.mit.edu --recv-keys "$GPG_KEY" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$GPG_KEY";     gpg --batch --verify "$DISTRO_NAME.tar.gz.asc" "$DISTRO_NAME.tar.gz";     tar -xzf "$DISTRO_NAME.tar.gz";     mv "$DISTRO_NAME/conf/"* "$ZOO_CONF_DIR";     rm -rf "$GNUPGHOME" "$DISTRO_NAME.tar.gz" "$DISTRO_NAME.tar.gz.asc";     apk del .build-deps
# Tue, 05 Feb 2019 21:37:32 GMT
WORKDIR /zookeeper-3.4.13
# Tue, 05 Feb 2019 21:37:32 GMT
VOLUME [/data /datalog /logs]
# Tue, 05 Feb 2019 21:37:33 GMT
EXPOSE 2181 2888 3888
# Tue, 05 Feb 2019 21:37:33 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin:/zookeeper-3.4.13/bin ZOOCFGDIR=/conf
# Tue, 05 Feb 2019 21:37:33 GMT
COPY file:e241c4b758b1c07187e9a94844ecbab8e37b4440f1e74109ed52835d8aa518be in / 
# Tue, 05 Feb 2019 21:37:33 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 05 Feb 2019 21:37:34 GMT
CMD ["zkServer.sh" "start-foreground"]
```

-	Layers:
	-	`sha256:6c40cc604d8e4c121adcb6b0bfe8bb038815c350980090e74aa5a6423f8f82c0`  
		Last Modified: Wed, 30 Jan 2019 22:21:08 GMT  
		Size: 2.8 MB (2754728 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e78b803852394d2b9aaa3ce93b0f2502b0bf8e063b1fa79734de0fc8ee55ee6e`  
		Last Modified: Tue, 05 Feb 2019 20:45:24 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f41fe1b6eee3555498a7e15b3bf048a7ec274302a92d0c8b34fda111c780fdcf`  
		Last Modified: Tue, 05 Feb 2019 20:45:56 GMT  
		Size: 54.9 MB (54922733 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:365a20fafc585c5a0a6b460b7293edaa4fabf9a42fd0fc17beb280de17788306`  
		Last Modified: Tue, 05 Feb 2019 21:38:00 GMT  
		Size: 1.2 MB (1209062 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e606d67ebbcfbc4921a86d4e070b2c9cf20df492016ae71233ce53b9e895967`  
		Last Modified: Tue, 05 Feb 2019 21:37:59 GMT  
		Size: 1.3 KB (1309 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36ef678bdfcf3764bb5d57ff73d11825653b6b4a0902454712036c174d48c4ff`  
		Last Modified: Tue, 05 Feb 2019 21:38:05 GMT  
		Size: 37.6 MB (37562891 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19d9db30b445fc2c0ab8a94ba2000ae5770f8908257798c7fe60e0a6008249a8`  
		Last Modified: Tue, 05 Feb 2019 21:37:59 GMT  
		Size: 617.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `zookeeper:latest` - linux; arm variant v6

```console
$ docker pull zookeeper@sha256:a2c30264c51f9387ccab5f2de1033b55170fb273b429f606a9203ec9b46917e2
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **93.6 MB (93576441 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:26de613a41e677e2494ef7813ca31382cc5005bdbf05579ca96a7a0fbf7feb09`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["zkServer.sh","start-foreground"]`

```dockerfile
# Thu, 31 Jan 2019 08:50:08 GMT
ADD file:64d5aa5dc08c958468e7c857c35d32a3e87c88800152264432930898defa10c5 in / 
# Thu, 31 Jan 2019 08:50:09 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Thu, 31 Jan 2019 08:50:09 GMT
CMD ["/bin/sh"]
# Wed, 06 Feb 2019 09:09:14 GMT
ENV LANG=C.UTF-8
# Wed, 06 Feb 2019 09:09:15 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 06 Feb 2019 09:09:34 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Wed, 06 Feb 2019 09:09:34 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 06 Feb 2019 09:09:34 GMT
ENV JAVA_VERSION=8u191
# Wed, 06 Feb 2019 09:09:35 GMT
ENV JAVA_ALPINE_VERSION=8.191.12-r0
# Wed, 06 Feb 2019 09:09:39 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Thu, 07 Feb 2019 09:46:35 GMT
RUN apk add --no-cache     bash     su-exec
# Thu, 07 Feb 2019 09:46:35 GMT
ENV ZOO_USER=zookeeper ZOO_CONF_DIR=/conf ZOO_DATA_DIR=/data ZOO_DATA_LOG_DIR=/datalog ZOO_LOG_DIR=/logs ZOO_PORT=2181 ZOO_TICK_TIME=2000 ZOO_INIT_LIMIT=5 ZOO_SYNC_LIMIT=2 ZOO_AUTOPURGE_PURGEINTERVAL=0 ZOO_AUTOPURGE_SNAPRETAINCOUNT=3 ZOO_MAX_CLIENT_CNXNS=60
# Thu, 07 Feb 2019 09:46:37 GMT
RUN set -ex;     adduser -D "$ZOO_USER";     mkdir -p "$ZOO_DATA_LOG_DIR" "$ZOO_DATA_DIR" "$ZOO_CONF_DIR" "$ZOO_LOG_DIR";     chown "$ZOO_USER:$ZOO_USER" "$ZOO_DATA_LOG_DIR" "$ZOO_DATA_DIR" "$ZOO_CONF_DIR" "$ZOO_LOG_DIR"
# Thu, 07 Feb 2019 09:46:37 GMT
ARG GPG_KEY=C61B346552DC5E0CB53AA84F59147497767E7473
# Thu, 07 Feb 2019 09:46:38 GMT
ARG DISTRO_NAME=zookeeper-3.4.13
# Thu, 07 Feb 2019 09:47:09 GMT
# ARGS: DISTRO_NAME=zookeeper-3.4.13 GPG_KEY=C61B346552DC5E0CB53AA84F59147497767E7473
RUN set -ex;     apk add --no-cache --virtual .build-deps         ca-certificates         gnupg         libressl;     wget -q "https://www.apache.org/dist/zookeeper/$DISTRO_NAME/$DISTRO_NAME.tar.gz";     wget -q "https://www.apache.org/dist/zookeeper/$DISTRO_NAME/$DISTRO_NAME.tar.gz.asc";     export GNUPGHOME="$(mktemp -d)";     gpg --keyserver ha.pool.sks-keyservers.net --recv-key "$GPG_KEY" ||     gpg --keyserver pgp.mit.edu --recv-keys "$GPG_KEY" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$GPG_KEY";     gpg --batch --verify "$DISTRO_NAME.tar.gz.asc" "$DISTRO_NAME.tar.gz";     tar -xzf "$DISTRO_NAME.tar.gz";     mv "$DISTRO_NAME/conf/"* "$ZOO_CONF_DIR";     rm -rf "$GNUPGHOME" "$DISTRO_NAME.tar.gz" "$DISTRO_NAME.tar.gz.asc";     apk del .build-deps
# Thu, 07 Feb 2019 09:47:10 GMT
WORKDIR /zookeeper-3.4.13
# Thu, 07 Feb 2019 09:47:10 GMT
VOLUME [/data /datalog /logs]
# Thu, 07 Feb 2019 09:47:11 GMT
EXPOSE 2181 2888 3888
# Thu, 07 Feb 2019 09:47:11 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin:/zookeeper-3.4.13/bin ZOOCFGDIR=/conf
# Thu, 07 Feb 2019 09:47:12 GMT
COPY file:e241c4b758b1c07187e9a94844ecbab8e37b4440f1e74109ed52835d8aa518be in / 
# Thu, 07 Feb 2019 09:47:12 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 07 Feb 2019 09:47:12 GMT
CMD ["zkServer.sh" "start-foreground"]
```

-	Layers:
	-	`sha256:05276f4299f299c4d5ca6776672dcf52f03189b7004e747fd1c2b759d9157831`  
		Last Modified: Thu, 31 Jan 2019 08:50:31 GMT  
		Size: 2.5 MB (2540746 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5657e63df53674891643732c236f7932524d1710ce42d916bb3c889a8652df67`  
		Last Modified: Thu, 31 Jan 2019 08:50:31 GMT  
		Size: 173.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:598092653ce578dc5f1728020fc7cea202bfd7c3694e321c61bdd914e0a1f5ec`  
		Last Modified: Wed, 06 Feb 2019 09:10:30 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89a4f55d20a64c757c23b9e9b1382fa744e666c57cb22ae208fa26f8724585c2`  
		Last Modified: Wed, 06 Feb 2019 09:11:13 GMT  
		Size: 52.3 MB (52316622 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3b5aeac4816e0601a214f22a41dc5258bc63084c40ea23450cc0e35b49ce182`  
		Last Modified: Thu, 07 Feb 2019 09:47:41 GMT  
		Size: 1.2 MB (1154133 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:791ac7f55f420d4cea35da1de70ded57c33bff85fca1fa4e00ce6d6837e4e9e3`  
		Last Modified: Thu, 07 Feb 2019 09:47:40 GMT  
		Size: 1.4 KB (1393 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f50c83c26d8a10b4836c1a4cc24b0bee68ced62ed84095197eb8f098ca4a86b6`  
		Last Modified: Thu, 07 Feb 2019 09:47:48 GMT  
		Size: 37.6 MB (37562521 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:782ba2840eea26ea3e723ea472d18b5644b531b22f34d56b7b529d70b3bd8f4f`  
		Last Modified: Thu, 07 Feb 2019 09:47:40 GMT  
		Size: 616.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `zookeeper:latest` - linux; arm64 variant v8

```console
$ docker pull zookeeper@sha256:8c91333e821622b9a010eab2850863b1fd67ef7e1717aa1ac7f61c2efddb4d5c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **96.3 MB (96335662 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bbcff02c15d0fcfdb8d7e62e492f6c1986e9313e7380dd26675aa9f4801d3e29`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["zkServer.sh","start-foreground"]`

```dockerfile
# Thu, 31 Jan 2019 09:40:55 GMT
ADD file:3c5f57c6644886bbb8164b9aa4cd60e233be7da48b7194a04963a8e7de058e28 in / 
# Thu, 31 Jan 2019 09:40:56 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Thu, 31 Jan 2019 09:40:57 GMT
CMD ["/bin/sh"]
# Wed, 06 Feb 2019 12:20:55 GMT
ENV LANG=C.UTF-8
# Wed, 06 Feb 2019 12:21:00 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 06 Feb 2019 12:31:59 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Wed, 06 Feb 2019 12:32:01 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 06 Feb 2019 12:32:04 GMT
ENV JAVA_VERSION=8u191
# Wed, 06 Feb 2019 12:32:07 GMT
ENV JAVA_ALPINE_VERSION=8.191.12-r0
# Wed, 06 Feb 2019 12:32:21 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Thu, 07 Feb 2019 08:55:52 GMT
RUN apk add --no-cache     bash     su-exec
# Thu, 07 Feb 2019 08:55:53 GMT
ENV ZOO_USER=zookeeper ZOO_CONF_DIR=/conf ZOO_DATA_DIR=/data ZOO_DATA_LOG_DIR=/datalog ZOO_LOG_DIR=/logs ZOO_PORT=2181 ZOO_TICK_TIME=2000 ZOO_INIT_LIMIT=5 ZOO_SYNC_LIMIT=2 ZOO_AUTOPURGE_PURGEINTERVAL=0 ZOO_AUTOPURGE_SNAPRETAINCOUNT=3 ZOO_MAX_CLIENT_CNXNS=60
# Thu, 07 Feb 2019 08:55:57 GMT
RUN set -ex;     adduser -D "$ZOO_USER";     mkdir -p "$ZOO_DATA_LOG_DIR" "$ZOO_DATA_DIR" "$ZOO_CONF_DIR" "$ZOO_LOG_DIR";     chown "$ZOO_USER:$ZOO_USER" "$ZOO_DATA_LOG_DIR" "$ZOO_DATA_DIR" "$ZOO_CONF_DIR" "$ZOO_LOG_DIR"
# Thu, 07 Feb 2019 08:55:58 GMT
ARG GPG_KEY=C61B346552DC5E0CB53AA84F59147497767E7473
# Thu, 07 Feb 2019 08:55:59 GMT
ARG DISTRO_NAME=zookeeper-3.4.13
# Thu, 07 Feb 2019 08:56:15 GMT
# ARGS: DISTRO_NAME=zookeeper-3.4.13 GPG_KEY=C61B346552DC5E0CB53AA84F59147497767E7473
RUN set -ex;     apk add --no-cache --virtual .build-deps         ca-certificates         gnupg         libressl;     wget -q "https://www.apache.org/dist/zookeeper/$DISTRO_NAME/$DISTRO_NAME.tar.gz";     wget -q "https://www.apache.org/dist/zookeeper/$DISTRO_NAME/$DISTRO_NAME.tar.gz.asc";     export GNUPGHOME="$(mktemp -d)";     gpg --keyserver ha.pool.sks-keyservers.net --recv-key "$GPG_KEY" ||     gpg --keyserver pgp.mit.edu --recv-keys "$GPG_KEY" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$GPG_KEY";     gpg --batch --verify "$DISTRO_NAME.tar.gz.asc" "$DISTRO_NAME.tar.gz";     tar -xzf "$DISTRO_NAME.tar.gz";     mv "$DISTRO_NAME/conf/"* "$ZOO_CONF_DIR";     rm -rf "$GNUPGHOME" "$DISTRO_NAME.tar.gz" "$DISTRO_NAME.tar.gz.asc";     apk del .build-deps
# Thu, 07 Feb 2019 08:56:16 GMT
WORKDIR /zookeeper-3.4.13
# Thu, 07 Feb 2019 08:56:17 GMT
VOLUME [/data /datalog /logs]
# Thu, 07 Feb 2019 08:56:19 GMT
EXPOSE 2181 2888 3888
# Thu, 07 Feb 2019 08:56:20 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin:/zookeeper-3.4.13/bin ZOOCFGDIR=/conf
# Thu, 07 Feb 2019 08:56:21 GMT
COPY file:e241c4b758b1c07187e9a94844ecbab8e37b4440f1e74109ed52835d8aa518be in / 
# Thu, 07 Feb 2019 08:56:23 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 07 Feb 2019 08:56:24 GMT
CMD ["zkServer.sh" "start-foreground"]
```

-	Layers:
	-	`sha256:ee02fa18913c824d1d1c9b680f1a43dad343b9d6c086a6bc62e3361c3d3a2d63`  
		Last Modified: Thu, 31 Jan 2019 09:41:23 GMT  
		Size: 2.7 MB (2687895 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afafa41235ea57b01b00eba47de1574777073a79c1d592c5709dfcbb3bd51f2a`  
		Last Modified: Thu, 31 Jan 2019 09:41:21 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd4dbd37ccf7cb48097dfc245c4c6f892eaf16d2ad47a0478302cf24d0a74911`  
		Last Modified: Wed, 06 Feb 2019 12:42:42 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a4c22261364cc479c308d041f6881688678f61995139006fbd24aa898f98a7f`  
		Last Modified: Wed, 06 Feb 2019 12:45:02 GMT  
		Size: 54.9 MB (54863256 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f19da5bbe7339eaca5e7037bbeab323f14c1c9869e2b501a85ce25b8c599313`  
		Last Modified: Thu, 07 Feb 2019 08:57:10 GMT  
		Size: 1.2 MB (1220003 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56acc5810a78bba805b35c4beaab70f2118210b0aa85757e9155e6aed2f64bf6`  
		Last Modified: Thu, 07 Feb 2019 08:57:09 GMT  
		Size: 1.3 KB (1314 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e78423a7b16a00c632ca90c0a31806970c78b03c9ea821f24ffebf4425a7c289`  
		Last Modified: Thu, 07 Feb 2019 08:57:20 GMT  
		Size: 37.6 MB (37562163 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c63a1a1eeb2bdb08eb5ae58e95d5f537600484e15b3a16413fe12bf16cf22b2`  
		Last Modified: Thu, 07 Feb 2019 08:57:09 GMT  
		Size: 616.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `zookeeper:latest` - linux; 386

```console
$ docker pull zookeeper@sha256:88774951841d6a6c62a89af09e67297abb428b716c70cbd10edfc0a6cb1b5ae8
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **97.1 MB (97121666 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e592f1baac27aa1d2fee39280c7ceb85f92fc09ffc2ab023ed3f46d676fa8404`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["zkServer.sh","start-foreground"]`

```dockerfile
# Thu, 31 Jan 2019 11:38:57 GMT
ADD file:738a04760a9f9a1cd919954db42a0da78c644e7024240160c54723bf1dd479e9 in / 
# Thu, 31 Jan 2019 11:38:57 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Thu, 31 Jan 2019 11:38:57 GMT
CMD ["/bin/sh"]
# Wed, 06 Feb 2019 13:21:09 GMT
ENV LANG=C.UTF-8
# Wed, 06 Feb 2019 13:21:11 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 06 Feb 2019 13:22:07 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Wed, 06 Feb 2019 13:22:07 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 06 Feb 2019 13:22:08 GMT
ENV JAVA_VERSION=8u191
# Wed, 06 Feb 2019 13:22:08 GMT
ENV JAVA_ALPINE_VERSION=8.191.12-r0
# Wed, 06 Feb 2019 13:22:13 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Thu, 07 Feb 2019 06:57:06 GMT
RUN apk add --no-cache     bash     su-exec
# Thu, 07 Feb 2019 06:57:06 GMT
ENV ZOO_USER=zookeeper ZOO_CONF_DIR=/conf ZOO_DATA_DIR=/data ZOO_DATA_LOG_DIR=/datalog ZOO_LOG_DIR=/logs ZOO_PORT=2181 ZOO_TICK_TIME=2000 ZOO_INIT_LIMIT=5 ZOO_SYNC_LIMIT=2 ZOO_AUTOPURGE_PURGEINTERVAL=0 ZOO_AUTOPURGE_SNAPRETAINCOUNT=3 ZOO_MAX_CLIENT_CNXNS=60
# Thu, 07 Feb 2019 06:57:07 GMT
RUN set -ex;     adduser -D "$ZOO_USER";     mkdir -p "$ZOO_DATA_LOG_DIR" "$ZOO_DATA_DIR" "$ZOO_CONF_DIR" "$ZOO_LOG_DIR";     chown "$ZOO_USER:$ZOO_USER" "$ZOO_DATA_LOG_DIR" "$ZOO_DATA_DIR" "$ZOO_CONF_DIR" "$ZOO_LOG_DIR"
# Thu, 07 Feb 2019 06:57:07 GMT
ARG GPG_KEY=C61B346552DC5E0CB53AA84F59147497767E7473
# Thu, 07 Feb 2019 06:57:07 GMT
ARG DISTRO_NAME=zookeeper-3.4.13
# Thu, 07 Feb 2019 06:57:12 GMT
# ARGS: DISTRO_NAME=zookeeper-3.4.13 GPG_KEY=C61B346552DC5E0CB53AA84F59147497767E7473
RUN set -ex;     apk add --no-cache --virtual .build-deps         ca-certificates         gnupg         libressl;     wget -q "https://www.apache.org/dist/zookeeper/$DISTRO_NAME/$DISTRO_NAME.tar.gz";     wget -q "https://www.apache.org/dist/zookeeper/$DISTRO_NAME/$DISTRO_NAME.tar.gz.asc";     export GNUPGHOME="$(mktemp -d)";     gpg --keyserver ha.pool.sks-keyservers.net --recv-key "$GPG_KEY" ||     gpg --keyserver pgp.mit.edu --recv-keys "$GPG_KEY" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$GPG_KEY";     gpg --batch --verify "$DISTRO_NAME.tar.gz.asc" "$DISTRO_NAME.tar.gz";     tar -xzf "$DISTRO_NAME.tar.gz";     mv "$DISTRO_NAME/conf/"* "$ZOO_CONF_DIR";     rm -rf "$GNUPGHOME" "$DISTRO_NAME.tar.gz" "$DISTRO_NAME.tar.gz.asc";     apk del .build-deps
# Thu, 07 Feb 2019 06:57:12 GMT
WORKDIR /zookeeper-3.4.13
# Thu, 07 Feb 2019 06:57:12 GMT
VOLUME [/data /datalog /logs]
# Thu, 07 Feb 2019 06:57:12 GMT
EXPOSE 2181 2888 3888
# Thu, 07 Feb 2019 06:57:13 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin:/zookeeper-3.4.13/bin ZOOCFGDIR=/conf
# Thu, 07 Feb 2019 06:57:13 GMT
COPY file:e241c4b758b1c07187e9a94844ecbab8e37b4440f1e74109ed52835d8aa518be in / 
# Thu, 07 Feb 2019 06:57:13 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 07 Feb 2019 06:57:13 GMT
CMD ["zkServer.sh" "start-foreground"]
```

-	Layers:
	-	`sha256:bcb4f889a459d231e71d88c93174eec5edef928ab1e2481f8b0074076ee934a6`  
		Last Modified: Thu, 31 Jan 2019 11:39:11 GMT  
		Size: 2.7 MB (2749336 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4099db9edcf638f20df22a899890483f7c152af59ca7a2de9c3b24c53c509e7`  
		Last Modified: Thu, 31 Jan 2019 11:39:11 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce0f3d3b48a17ae1a2bcad376e638afbdf982a8d5949595c2e4a4007f4db3d0c`  
		Last Modified: Wed, 06 Feb 2019 13:42:46 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6f750ad7f5e8d95553682c05697501d8d94a636946715800825169fb5974036`  
		Last Modified: Wed, 06 Feb 2019 13:43:57 GMT  
		Size: 55.6 MB (55551309 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:644d973e06d17886800442ecd34535984052e10bd1a776f799b661e33714113e`  
		Last Modified: Thu, 07 Feb 2019 06:57:32 GMT  
		Size: 1.3 MB (1256186 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:386b44d98c1341387a20bac6035fbae63cf9cf11709b465e08cbe85d72c289c2`  
		Last Modified: Thu, 07 Feb 2019 06:57:31 GMT  
		Size: 1.3 KB (1311 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d73bea42a24adef2279e1e50e259501e6ab9bfd4d74934012cafe7224907d5f8`  
		Last Modified: Thu, 07 Feb 2019 06:57:36 GMT  
		Size: 37.6 MB (37562495 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d876ff9798e926cfd5107ec500e44f44ee202a6f38f96219a55c38ef562ab8f`  
		Last Modified: Thu, 07 Feb 2019 06:57:32 GMT  
		Size: 614.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `zookeeper:latest` - linux; ppc64le

```console
$ docker pull zookeeper@sha256:ff8dd63d5d97b6219befdedd9551f058ac4e8a84dd8908d7d025c465356d7444
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **97.1 MB (97138895 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0c979873d8ec48b5fd545f6d9054eef2d1e32ce60b96a32ec4a95e43ab766b62`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["zkServer.sh","start-foreground"]`

```dockerfile
# Thu, 31 Jan 2019 09:21:00 GMT
ADD file:22eef5b6e842546e68660322c07723d9794ca0eb45ac3acf95381e2591f455c6 in / 
# Thu, 31 Jan 2019 09:21:01 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Thu, 31 Jan 2019 09:21:02 GMT
CMD ["/bin/sh"]
# Wed, 06 Feb 2019 11:30:19 GMT
ENV LANG=C.UTF-8
# Wed, 06 Feb 2019 11:30:24 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 06 Feb 2019 11:32:36 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Wed, 06 Feb 2019 11:32:40 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 06 Feb 2019 11:32:43 GMT
ENV JAVA_VERSION=8u191
# Wed, 06 Feb 2019 11:32:45 GMT
ENV JAVA_ALPINE_VERSION=8.191.12-r0
# Wed, 06 Feb 2019 11:32:56 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Thu, 07 Feb 2019 02:11:45 GMT
RUN apk add --no-cache     bash     su-exec
# Thu, 07 Feb 2019 02:11:46 GMT
ENV ZOO_USER=zookeeper ZOO_CONF_DIR=/conf ZOO_DATA_DIR=/data ZOO_DATA_LOG_DIR=/datalog ZOO_LOG_DIR=/logs ZOO_PORT=2181 ZOO_TICK_TIME=2000 ZOO_INIT_LIMIT=5 ZOO_SYNC_LIMIT=2 ZOO_AUTOPURGE_PURGEINTERVAL=0 ZOO_AUTOPURGE_SNAPRETAINCOUNT=3 ZOO_MAX_CLIENT_CNXNS=60
# Thu, 07 Feb 2019 02:11:52 GMT
RUN set -ex;     adduser -D "$ZOO_USER";     mkdir -p "$ZOO_DATA_LOG_DIR" "$ZOO_DATA_DIR" "$ZOO_CONF_DIR" "$ZOO_LOG_DIR";     chown "$ZOO_USER:$ZOO_USER" "$ZOO_DATA_LOG_DIR" "$ZOO_DATA_DIR" "$ZOO_CONF_DIR" "$ZOO_LOG_DIR"
# Thu, 07 Feb 2019 02:11:54 GMT
ARG GPG_KEY=C61B346552DC5E0CB53AA84F59147497767E7473
# Thu, 07 Feb 2019 02:11:56 GMT
ARG DISTRO_NAME=zookeeper-3.4.13
# Thu, 07 Feb 2019 02:12:07 GMT
# ARGS: DISTRO_NAME=zookeeper-3.4.13 GPG_KEY=C61B346552DC5E0CB53AA84F59147497767E7473
RUN set -ex;     apk add --no-cache --virtual .build-deps         ca-certificates         gnupg         libressl;     wget -q "https://www.apache.org/dist/zookeeper/$DISTRO_NAME/$DISTRO_NAME.tar.gz";     wget -q "https://www.apache.org/dist/zookeeper/$DISTRO_NAME/$DISTRO_NAME.tar.gz.asc";     export GNUPGHOME="$(mktemp -d)";     gpg --keyserver ha.pool.sks-keyservers.net --recv-key "$GPG_KEY" ||     gpg --keyserver pgp.mit.edu --recv-keys "$GPG_KEY" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$GPG_KEY";     gpg --batch --verify "$DISTRO_NAME.tar.gz.asc" "$DISTRO_NAME.tar.gz";     tar -xzf "$DISTRO_NAME.tar.gz";     mv "$DISTRO_NAME/conf/"* "$ZOO_CONF_DIR";     rm -rf "$GNUPGHOME" "$DISTRO_NAME.tar.gz" "$DISTRO_NAME.tar.gz.asc";     apk del .build-deps
# Thu, 07 Feb 2019 02:12:10 GMT
WORKDIR /zookeeper-3.4.13
# Thu, 07 Feb 2019 02:12:13 GMT
VOLUME [/data /datalog /logs]
# Thu, 07 Feb 2019 02:12:16 GMT
EXPOSE 2181 2888 3888
# Thu, 07 Feb 2019 02:12:20 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin:/zookeeper-3.4.13/bin ZOOCFGDIR=/conf
# Thu, 07 Feb 2019 02:12:21 GMT
COPY file:e241c4b758b1c07187e9a94844ecbab8e37b4440f1e74109ed52835d8aa518be in / 
# Thu, 07 Feb 2019 02:12:24 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 07 Feb 2019 02:12:28 GMT
CMD ["zkServer.sh" "start-foreground"]
```

-	Layers:
	-	`sha256:3261f066f954b13c338d7bebabcc22a2a4037bfe4c6989b60595b13ac629445f`  
		Last Modified: Thu, 31 Jan 2019 09:21:21 GMT  
		Size: 2.8 MB (2778665 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ff5f92c7db4d11f3356e3243a8a330a8eb64fcde5310599933270ad96a2e3dc`  
		Last Modified: Thu, 31 Jan 2019 09:21:22 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81ffc70c988f1eca134348f8c977a0a8eca65b127503f8a7d6561fd73acaf47f`  
		Last Modified: Wed, 06 Feb 2019 11:40:41 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8cf79593b1c96e6feabee87ffa86fac13485dfb07d9c3ee56aa9894c479e939c`  
		Last Modified: Wed, 06 Feb 2019 11:41:49 GMT  
		Size: 55.5 MB (55503724 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bcf618d30d4b960042b0b84f5bfcf2165c03302b93b04970d44451c8d738e094`  
		Last Modified: Thu, 07 Feb 2019 02:13:36 GMT  
		Size: 1.3 MB (1291401 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bfea78845b2748553f4dc154bbacb5d4376eea446e780971641128ef1594bb39`  
		Last Modified: Thu, 07 Feb 2019 02:13:35 GMT  
		Size: 1.4 KB (1395 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07e1d6ac3bd5267093b6588be5158296342b0b0dd2441ba13c27388a4aaea239`  
		Last Modified: Thu, 07 Feb 2019 02:13:40 GMT  
		Size: 37.6 MB (37562681 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f7227f16524e677e9c7aecf818e897fd90f1f49c60bdfed5027157b3853b274`  
		Last Modified: Thu, 07 Feb 2019 02:13:35 GMT  
		Size: 615.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `zookeeper:latest` - linux; s390x

```console
$ docker pull zookeeper@sha256:9a531d31fca52dc07c81dcb48a497bcb8a99ed3f11dff8f055bca6ff95b2fc77
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **94.9 MB (94933484 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ef7102de0c17606b5b9f957178e38e55d016c99bfebda10236c1d0a0f3d888bb`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["zkServer.sh","start-foreground"]`

```dockerfile
# Thu, 31 Jan 2019 12:41:43 GMT
ADD file:fdc9dcc7d932bb46a3992371288a0f80814bfb29ae8c8f1d860b6aabf0e9f893 in / 
# Thu, 31 Jan 2019 12:41:44 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Thu, 31 Jan 2019 12:41:44 GMT
CMD ["/bin/sh"]
# Wed, 06 Feb 2019 13:20:18 GMT
ENV LANG=C.UTF-8
# Wed, 06 Feb 2019 13:20:18 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 06 Feb 2019 13:20:56 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Wed, 06 Feb 2019 13:20:56 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 06 Feb 2019 13:20:56 GMT
ENV JAVA_VERSION=8u191
# Wed, 06 Feb 2019 13:20:57 GMT
ENV JAVA_ALPINE_VERSION=8.191.12-r0
# Wed, 06 Feb 2019 13:20:59 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 06 Feb 2019 18:15:41 GMT
RUN apk add --no-cache     bash     su-exec
# Wed, 06 Feb 2019 18:15:42 GMT
ENV ZOO_USER=zookeeper ZOO_CONF_DIR=/conf ZOO_DATA_DIR=/data ZOO_DATA_LOG_DIR=/datalog ZOO_LOG_DIR=/logs ZOO_PORT=2181 ZOO_TICK_TIME=2000 ZOO_INIT_LIMIT=5 ZOO_SYNC_LIMIT=2 ZOO_AUTOPURGE_PURGEINTERVAL=0 ZOO_AUTOPURGE_SNAPRETAINCOUNT=3 ZOO_MAX_CLIENT_CNXNS=60
# Wed, 06 Feb 2019 18:15:42 GMT
RUN set -ex;     adduser -D "$ZOO_USER";     mkdir -p "$ZOO_DATA_LOG_DIR" "$ZOO_DATA_DIR" "$ZOO_CONF_DIR" "$ZOO_LOG_DIR";     chown "$ZOO_USER:$ZOO_USER" "$ZOO_DATA_LOG_DIR" "$ZOO_DATA_DIR" "$ZOO_CONF_DIR" "$ZOO_LOG_DIR"
# Wed, 06 Feb 2019 18:15:42 GMT
ARG GPG_KEY=C61B346552DC5E0CB53AA84F59147497767E7473
# Wed, 06 Feb 2019 18:15:43 GMT
ARG DISTRO_NAME=zookeeper-3.4.13
# Wed, 06 Feb 2019 18:15:49 GMT
# ARGS: DISTRO_NAME=zookeeper-3.4.13 GPG_KEY=C61B346552DC5E0CB53AA84F59147497767E7473
RUN set -ex;     apk add --no-cache --virtual .build-deps         ca-certificates         gnupg         libressl;     wget -q "https://www.apache.org/dist/zookeeper/$DISTRO_NAME/$DISTRO_NAME.tar.gz";     wget -q "https://www.apache.org/dist/zookeeper/$DISTRO_NAME/$DISTRO_NAME.tar.gz.asc";     export GNUPGHOME="$(mktemp -d)";     gpg --keyserver ha.pool.sks-keyservers.net --recv-key "$GPG_KEY" ||     gpg --keyserver pgp.mit.edu --recv-keys "$GPG_KEY" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$GPG_KEY";     gpg --batch --verify "$DISTRO_NAME.tar.gz.asc" "$DISTRO_NAME.tar.gz";     tar -xzf "$DISTRO_NAME.tar.gz";     mv "$DISTRO_NAME/conf/"* "$ZOO_CONF_DIR";     rm -rf "$GNUPGHOME" "$DISTRO_NAME.tar.gz" "$DISTRO_NAME.tar.gz.asc";     apk del .build-deps
# Wed, 06 Feb 2019 18:15:49 GMT
WORKDIR /zookeeper-3.4.13
# Wed, 06 Feb 2019 18:15:49 GMT
VOLUME [/data /datalog /logs]
# Wed, 06 Feb 2019 18:15:49 GMT
EXPOSE 2181 2888 3888
# Wed, 06 Feb 2019 18:15:49 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin:/zookeeper-3.4.13/bin ZOOCFGDIR=/conf
# Wed, 06 Feb 2019 18:15:50 GMT
COPY file:e241c4b758b1c07187e9a94844ecbab8e37b4440f1e74109ed52835d8aa518be in / 
# Wed, 06 Feb 2019 18:15:50 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 06 Feb 2019 18:15:50 GMT
CMD ["zkServer.sh" "start-foreground"]
```

-	Layers:
	-	`sha256:11396e2e564eba3ffa05ba6ea52a711025650a7cfe1387d6a59fdd9a90f2e024`  
		Last Modified: Thu, 31 Jan 2019 12:42:01 GMT  
		Size: 2.5 MB (2541348 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e33c309129e1ab066f8f8e65929ab8246c5ae9ec293c9522c706fa70dfa0a4c6`  
		Last Modified: Thu, 31 Jan 2019 12:42:01 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99d1a7308c276b4bfe36b12f01b7c57f79adfc7eb55e0263fd725e1308d13412`  
		Last Modified: Wed, 06 Feb 2019 13:25:05 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af546122d628f916df18308eef518892c9e8d4560ed0bb582389244f015942d6`  
		Last Modified: Wed, 06 Feb 2019 13:25:42 GMT  
		Size: 53.6 MB (53587740 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80468258aa44038e935f65d62d380ee9db866ea2a161f20f8adc28d22c736190`  
		Last Modified: Wed, 06 Feb 2019 18:16:11 GMT  
		Size: 1.2 MB (1240005 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e640172b9ee5864b41bcfda6b09f47a096dcefb43bce087cb75c112fbec33473`  
		Last Modified: Wed, 06 Feb 2019 18:16:11 GMT  
		Size: 1.3 KB (1311 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82e669b57233facbd518cdaad542dadc693f922e013bf13e2281168675962c80`  
		Last Modified: Wed, 06 Feb 2019 18:16:15 GMT  
		Size: 37.6 MB (37562050 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23c57175780edba9613b96977cd4f4e47020262faafb524aed9df4f3c68eac60`  
		Last Modified: Wed, 06 Feb 2019 18:16:11 GMT  
		Size: 617.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
