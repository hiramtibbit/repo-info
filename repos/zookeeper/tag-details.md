<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `zookeeper`

-	[`zookeeper:3.4`](#zookeeper34)
-	[`zookeeper:3.4.14`](#zookeeper3414)
-	[`zookeeper:3.5`](#zookeeper35)
-	[`zookeeper:3.5.4-beta`](#zookeeper354-beta)
-	[`zookeeper:latest`](#zookeeperlatest)

## `zookeeper:3.4`

```console
$ docker pull zookeeper@sha256:d7fb4ce74a9f38d9a671558230feb37b8b6380c29c3f5c4fd3f671d471d1cd40
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `zookeeper:3.4` - linux; amd64

```console
$ docker pull zookeeper@sha256:a465f571909a5a76e620ae0392456f0993ecddc122163b202dc115f764f895fa
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **97.0 MB (96963691 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:711a5ebdf2bdce4eefd101710b25cff7308556aebfeca08331413ab2c6979db4`
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
# Wed, 27 Mar 2019 23:29:04 GMT
ENV JAVA_VERSION=8u201
# Tue, 02 Apr 2019 23:45:43 GMT
ENV JAVA_ALPINE_VERSION=8.201.08-r1
# Tue, 02 Apr 2019 23:45:46 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 03 Apr 2019 00:15:35 GMT
RUN apk add --no-cache     bash     su-exec
# Wed, 03 Apr 2019 00:15:35 GMT
ENV ZOO_USER=zookeeper ZOO_CONF_DIR=/conf ZOO_DATA_DIR=/data ZOO_DATA_LOG_DIR=/datalog ZOO_LOG_DIR=/logs ZOO_PORT=2181 ZOO_TICK_TIME=2000 ZOO_INIT_LIMIT=5 ZOO_SYNC_LIMIT=2 ZOO_AUTOPURGE_PURGEINTERVAL=0 ZOO_AUTOPURGE_SNAPRETAINCOUNT=3 ZOO_MAX_CLIENT_CNXNS=60
# Wed, 03 Apr 2019 00:15:36 GMT
RUN set -ex;     adduser -D "$ZOO_USER";     mkdir -p "$ZOO_DATA_LOG_DIR" "$ZOO_DATA_DIR" "$ZOO_CONF_DIR" "$ZOO_LOG_DIR";     chown "$ZOO_USER:$ZOO_USER" "$ZOO_DATA_LOG_DIR" "$ZOO_DATA_DIR" "$ZOO_CONF_DIR" "$ZOO_LOG_DIR"
# Mon, 08 Apr 2019 22:20:12 GMT
ARG GPG_KEY=3F7A1D16FA4217B1DC75E1C9FFE35B7F15DFA1BA
# Mon, 08 Apr 2019 22:20:12 GMT
ARG DISTRO_NAME=zookeeper-3.4.14
# Mon, 08 Apr 2019 22:20:19 GMT
# ARGS: DISTRO_NAME=zookeeper-3.4.14 GPG_KEY=3F7A1D16FA4217B1DC75E1C9FFE35B7F15DFA1BA
RUN set -ex;     apk add --no-cache --virtual .build-deps         ca-certificates         gnupg         libressl;     wget -q "https://www.apache.org/dist/zookeeper/$DISTRO_NAME/$DISTRO_NAME.tar.gz";     wget -q "https://www.apache.org/dist/zookeeper/$DISTRO_NAME/$DISTRO_NAME.tar.gz.asc";     export GNUPGHOME="$(mktemp -d)";     gpg --keyserver ha.pool.sks-keyservers.net --recv-key "$GPG_KEY" ||     gpg --keyserver pgp.mit.edu --recv-keys "$GPG_KEY" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$GPG_KEY";     gpg --batch --verify "$DISTRO_NAME.tar.gz.asc" "$DISTRO_NAME.tar.gz";     tar -xzf "$DISTRO_NAME.tar.gz";     mv "$DISTRO_NAME/conf/"* "$ZOO_CONF_DIR";     rm -rf "$GNUPGHOME" "$DISTRO_NAME.tar.gz" "$DISTRO_NAME.tar.gz.asc";     apk del .build-deps
# Mon, 08 Apr 2019 22:20:19 GMT
WORKDIR /zookeeper-3.4.14
# Mon, 08 Apr 2019 22:20:19 GMT
VOLUME [/data /datalog /logs]
# Mon, 08 Apr 2019 22:20:20 GMT
EXPOSE 2181 2888 3888
# Mon, 08 Apr 2019 22:20:20 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin:/zookeeper-3.4.14/bin ZOOCFGDIR=/conf
# Mon, 08 Apr 2019 22:20:20 GMT
COPY file:e241c4b758b1c07187e9a94844ecbab8e37b4440f1e74109ed52835d8aa518be in / 
# Mon, 08 Apr 2019 22:20:20 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 08 Apr 2019 22:20:20 GMT
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
	-	`sha256:0c5bd74861e4346a0beed670ef2a6613f3594b458820c50efc5e1044d865e134`  
		Last Modified: Tue, 02 Apr 2019 23:47:30 GMT  
		Size: 54.9 MB (54918577 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f695c11a6f1bd9fd0c86ae139b216e40b0e64bb1e47c0ba6be76eb0d7ef5799`  
		Last Modified: Wed, 03 Apr 2019 00:16:03 GMT  
		Size: 1.2 MB (1209084 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82a5ce24103471f3bee8d1503a28bcc793dac613d9de2af13cab28337758b2de`  
		Last Modified: Mon, 08 Apr 2019 22:20:30 GMT  
		Size: 1.3 KB (1321 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8937518d5a2eafdb4cbe9d7d7ba2f3a3473950369ee0b3d1849ad9dff976cfd8`  
		Last Modified: Mon, 08 Apr 2019 22:20:34 GMT  
		Size: 38.1 MB (38079124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6c388fecb811c3fd3e50b966f2735d194a113b0c06202aacc7cad065dbc794c`  
		Last Modified: Mon, 08 Apr 2019 22:20:30 GMT  
		Size: 617.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `zookeeper:3.4` - linux; arm variant v6

```console
$ docker pull zookeeper@sha256:362f42658f91314091ca3cabfd34d9ad299c22cbaa98b64a6c7cddbe6fbfc008
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **94.2 MB (94162426 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:160ffd84cc7119847aba8cfb1336959757604c1b9b4cb48d058d8fdbadabeb54`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["zkServer.sh","start-foreground"]`

```dockerfile
# Fri, 08 Mar 2019 03:36:05 GMT
ADD file:2bf8ccaacb388ca6271670ed8a86b8bc4450823156917d29d9d9ec0a07fd64a7 in / 
# Fri, 08 Mar 2019 03:36:06 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 04:39:53 GMT
ENV LANG=C.UTF-8
# Fri, 08 Mar 2019 04:39:55 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 08 Mar 2019 04:40:07 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Fri, 08 Mar 2019 04:40:08 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Thu, 28 Mar 2019 07:49:41 GMT
ENV JAVA_VERSION=8u201
# Wed, 03 Apr 2019 07:52:46 GMT
ENV JAVA_ALPINE_VERSION=8.201.08-r1
# Wed, 03 Apr 2019 07:52:51 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 03 Apr 2019 08:49:18 GMT
RUN apk add --no-cache     bash     su-exec
# Wed, 03 Apr 2019 08:49:19 GMT
ENV ZOO_USER=zookeeper ZOO_CONF_DIR=/conf ZOO_DATA_DIR=/data ZOO_DATA_LOG_DIR=/datalog ZOO_LOG_DIR=/logs ZOO_PORT=2181 ZOO_TICK_TIME=2000 ZOO_INIT_LIMIT=5 ZOO_SYNC_LIMIT=2 ZOO_AUTOPURGE_PURGEINTERVAL=0 ZOO_AUTOPURGE_SNAPRETAINCOUNT=3 ZOO_MAX_CLIENT_CNXNS=60
# Wed, 03 Apr 2019 08:49:21 GMT
RUN set -ex;     adduser -D "$ZOO_USER";     mkdir -p "$ZOO_DATA_LOG_DIR" "$ZOO_DATA_DIR" "$ZOO_CONF_DIR" "$ZOO_LOG_DIR";     chown "$ZOO_USER:$ZOO_USER" "$ZOO_DATA_LOG_DIR" "$ZOO_DATA_DIR" "$ZOO_CONF_DIR" "$ZOO_LOG_DIR"
# Tue, 09 Apr 2019 07:50:38 GMT
ARG GPG_KEY=3F7A1D16FA4217B1DC75E1C9FFE35B7F15DFA1BA
# Tue, 09 Apr 2019 07:50:38 GMT
ARG DISTRO_NAME=zookeeper-3.4.14
# Tue, 09 Apr 2019 07:51:07 GMT
# ARGS: DISTRO_NAME=zookeeper-3.4.14 GPG_KEY=3F7A1D16FA4217B1DC75E1C9FFE35B7F15DFA1BA
RUN set -ex;     apk add --no-cache --virtual .build-deps         ca-certificates         gnupg         libressl;     wget -q "https://www.apache.org/dist/zookeeper/$DISTRO_NAME/$DISTRO_NAME.tar.gz";     wget -q "https://www.apache.org/dist/zookeeper/$DISTRO_NAME/$DISTRO_NAME.tar.gz.asc";     export GNUPGHOME="$(mktemp -d)";     gpg --keyserver ha.pool.sks-keyservers.net --recv-key "$GPG_KEY" ||     gpg --keyserver pgp.mit.edu --recv-keys "$GPG_KEY" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$GPG_KEY";     gpg --batch --verify "$DISTRO_NAME.tar.gz.asc" "$DISTRO_NAME.tar.gz";     tar -xzf "$DISTRO_NAME.tar.gz";     mv "$DISTRO_NAME/conf/"* "$ZOO_CONF_DIR";     rm -rf "$GNUPGHOME" "$DISTRO_NAME.tar.gz" "$DISTRO_NAME.tar.gz.asc";     apk del .build-deps
# Tue, 09 Apr 2019 07:51:08 GMT
WORKDIR /zookeeper-3.4.14
# Tue, 09 Apr 2019 07:51:09 GMT
VOLUME [/data /datalog /logs]
# Tue, 09 Apr 2019 07:51:09 GMT
EXPOSE 2181 2888 3888
# Tue, 09 Apr 2019 07:51:09 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin:/zookeeper-3.4.14/bin ZOOCFGDIR=/conf
# Tue, 09 Apr 2019 07:51:10 GMT
COPY file:e241c4b758b1c07187e9a94844ecbab8e37b4440f1e74109ed52835d8aa518be in / 
# Tue, 09 Apr 2019 07:51:10 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 09 Apr 2019 07:51:11 GMT
CMD ["zkServer.sh" "start-foreground"]
```

-	Layers:
	-	`sha256:d33b53ae0340b7490b486edd65310a4333d7e0057854aadd12a5006faf7fa576`  
		Last Modified: Fri, 08 Mar 2019 03:36:43 GMT  
		Size: 2.5 MB (2540673 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4cb8e265594b5112bd474ac92c9c83497fc535a27624c2798c8817a01b28328c`  
		Last Modified: Fri, 08 Mar 2019 04:41:11 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:972acb4c659fffab6be0f752b78857f78dbda522970cf7946a5a622cf65f4797`  
		Last Modified: Wed, 03 Apr 2019 07:53:52 GMT  
		Size: 52.4 MB (52387444 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab1d104cdd9100d06a50a0db588a5efbf08fadb926ba551df6b67b87e3e4172a`  
		Last Modified: Wed, 03 Apr 2019 08:49:57 GMT  
		Size: 1.2 MB (1154065 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0309b54855dfa7b03af4f737171e1654a32d32bb1a5612f26d2273c59c7cdd88`  
		Last Modified: Tue, 09 Apr 2019 07:51:27 GMT  
		Size: 1.4 KB (1403 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1096df65b569d63a768e4f5bce213b3cc57f350868c6e2ade7d1b05e795e9b3`  
		Last Modified: Tue, 09 Apr 2019 07:51:35 GMT  
		Size: 38.1 MB (38077986 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42d8bd66f888f0abd5d7eee8d8e9bb9e7540e36c07c3b0cd1f21a21bb195b880`  
		Last Modified: Tue, 09 Apr 2019 07:51:27 GMT  
		Size: 615.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `zookeeper:3.4` - linux; 386

```console
$ docker pull zookeeper@sha256:9ac325959e51b6d5f868c3ca337be47ac4950080bb49caf62b6357892f392300
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **97.6 MB (97623219 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ec9ae31b801d724308f62c1739941ce63353dfe08f6da14dd91c364f69b29620`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["zkServer.sh","start-foreground"]`

```dockerfile
# Fri, 08 Mar 2019 03:35:50 GMT
ADD file:98a0f92574b6a8592a131ccb07c4f516694e053d610a1701fde2d5e7c65c2175 in / 
# Fri, 08 Mar 2019 03:35:50 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 06:52:02 GMT
ENV LANG=C.UTF-8
# Fri, 08 Mar 2019 06:52:03 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 08 Mar 2019 06:52:17 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Fri, 08 Mar 2019 06:52:17 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Thu, 28 Mar 2019 01:00:58 GMT
ENV JAVA_VERSION=8u201
# Wed, 03 Apr 2019 11:35:25 GMT
ENV JAVA_ALPINE_VERSION=8.201.08-r1
# Wed, 03 Apr 2019 11:35:29 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 03 Apr 2019 13:38:55 GMT
RUN apk add --no-cache     bash     su-exec
# Wed, 03 Apr 2019 13:38:55 GMT
ENV ZOO_USER=zookeeper ZOO_CONF_DIR=/conf ZOO_DATA_DIR=/data ZOO_DATA_LOG_DIR=/datalog ZOO_LOG_DIR=/logs ZOO_PORT=2181 ZOO_TICK_TIME=2000 ZOO_INIT_LIMIT=5 ZOO_SYNC_LIMIT=2 ZOO_AUTOPURGE_PURGEINTERVAL=0 ZOO_AUTOPURGE_SNAPRETAINCOUNT=3 ZOO_MAX_CLIENT_CNXNS=60
# Wed, 03 Apr 2019 13:38:56 GMT
RUN set -ex;     adduser -D "$ZOO_USER";     mkdir -p "$ZOO_DATA_LOG_DIR" "$ZOO_DATA_DIR" "$ZOO_CONF_DIR" "$ZOO_LOG_DIR";     chown "$ZOO_USER:$ZOO_USER" "$ZOO_DATA_LOG_DIR" "$ZOO_DATA_DIR" "$ZOO_CONF_DIR" "$ZOO_LOG_DIR"
# Tue, 09 Apr 2019 10:51:44 GMT
ARG GPG_KEY=3F7A1D16FA4217B1DC75E1C9FFE35B7F15DFA1BA
# Tue, 09 Apr 2019 10:51:44 GMT
ARG DISTRO_NAME=zookeeper-3.4.14
# Tue, 09 Apr 2019 10:51:52 GMT
# ARGS: DISTRO_NAME=zookeeper-3.4.14 GPG_KEY=3F7A1D16FA4217B1DC75E1C9FFE35B7F15DFA1BA
RUN set -ex;     apk add --no-cache --virtual .build-deps         ca-certificates         gnupg         libressl;     wget -q "https://www.apache.org/dist/zookeeper/$DISTRO_NAME/$DISTRO_NAME.tar.gz";     wget -q "https://www.apache.org/dist/zookeeper/$DISTRO_NAME/$DISTRO_NAME.tar.gz.asc";     export GNUPGHOME="$(mktemp -d)";     gpg --keyserver ha.pool.sks-keyservers.net --recv-key "$GPG_KEY" ||     gpg --keyserver pgp.mit.edu --recv-keys "$GPG_KEY" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$GPG_KEY";     gpg --batch --verify "$DISTRO_NAME.tar.gz.asc" "$DISTRO_NAME.tar.gz";     tar -xzf "$DISTRO_NAME.tar.gz";     mv "$DISTRO_NAME/conf/"* "$ZOO_CONF_DIR";     rm -rf "$GNUPGHOME" "$DISTRO_NAME.tar.gz" "$DISTRO_NAME.tar.gz.asc";     apk del .build-deps
# Tue, 09 Apr 2019 10:51:52 GMT
WORKDIR /zookeeper-3.4.14
# Tue, 09 Apr 2019 10:51:52 GMT
VOLUME [/data /datalog /logs]
# Tue, 09 Apr 2019 10:51:52 GMT
EXPOSE 2181 2888 3888
# Tue, 09 Apr 2019 10:51:53 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin:/zookeeper-3.4.14/bin ZOOCFGDIR=/conf
# Tue, 09 Apr 2019 10:51:53 GMT
COPY file:e241c4b758b1c07187e9a94844ecbab8e37b4440f1e74109ed52835d8aa518be in / 
# Tue, 09 Apr 2019 10:51:53 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 09 Apr 2019 10:51:53 GMT
CMD ["zkServer.sh" "start-foreground"]
```

-	Layers:
	-	`sha256:a4c1e43a7431a562d92c5eb6e09e96b4731a474af51cad1c46e2d305ede29005`  
		Last Modified: Fri, 08 Mar 2019 03:36:34 GMT  
		Size: 2.7 MB (2749355 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe95f117badec568caa0381ef010c1d9df00d3c0870ebab8187a0017d68c5f8b`  
		Last Modified: Fri, 08 Mar 2019 06:53:37 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a47b2ea4dcb1b036ea9c07141df2ea81e99b070085f09fec057458ca4139b596`  
		Last Modified: Wed, 03 Apr 2019 11:36:48 GMT  
		Size: 55.5 MB (55538598 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ddbd8e9c73f73df2a2f21af78af53144eac7d4769e27d28f466efa15c8039149`  
		Last Modified: Wed, 03 Apr 2019 13:39:19 GMT  
		Size: 1.3 MB (1256243 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f4291098cf531b99caf9b6a95af47a1a77ad6e62336112aba563833e4597e3a`  
		Last Modified: Tue, 09 Apr 2019 10:52:02 GMT  
		Size: 1.3 KB (1323 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a671cdaf47f145336812e91acadffd722af7cbfccf1395967ceb6b9ad150b1fe`  
		Last Modified: Tue, 09 Apr 2019 10:52:07 GMT  
		Size: 38.1 MB (38076847 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be67ee32a0bbada2d5fabf51b6445d23e9d81d8a740b34db1966fcd10d9b4597`  
		Last Modified: Tue, 09 Apr 2019 10:52:02 GMT  
		Size: 615.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `zookeeper:3.4` - linux; ppc64le

```console
$ docker pull zookeeper@sha256:5157aee9aa5d611c4a44814a7e465bc8cfed653dc750db7407d9fb6361d68a93
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **97.7 MB (97739871 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:068edde6125a152126cc94fee85d306d610241c3e4fd1082577395c14101f300`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["zkServer.sh","start-foreground"]`

```dockerfile
# Fri, 08 Mar 2019 03:37:33 GMT
ADD file:6dfaec9befa64397af571d1da2e766c694148f7a025b9411404a924d3de64bd3 in / 
# Fri, 08 Mar 2019 03:37:36 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 04:13:23 GMT
ENV LANG=C.UTF-8
# Fri, 08 Mar 2019 04:13:28 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 08 Mar 2019 04:14:02 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Fri, 08 Mar 2019 04:14:04 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Thu, 28 Mar 2019 08:37:47 GMT
ENV JAVA_VERSION=8u201
# Wed, 03 Apr 2019 09:10:25 GMT
ENV JAVA_ALPINE_VERSION=8.201.08-r1
# Wed, 03 Apr 2019 09:10:33 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 03 Apr 2019 10:58:29 GMT
RUN apk add --no-cache     bash     su-exec
# Wed, 03 Apr 2019 10:58:32 GMT
ENV ZOO_USER=zookeeper ZOO_CONF_DIR=/conf ZOO_DATA_DIR=/data ZOO_DATA_LOG_DIR=/datalog ZOO_LOG_DIR=/logs ZOO_PORT=2181 ZOO_TICK_TIME=2000 ZOO_INIT_LIMIT=5 ZOO_SYNC_LIMIT=2 ZOO_AUTOPURGE_PURGEINTERVAL=0 ZOO_AUTOPURGE_SNAPRETAINCOUNT=3 ZOO_MAX_CLIENT_CNXNS=60
# Wed, 03 Apr 2019 10:58:39 GMT
RUN set -ex;     adduser -D "$ZOO_USER";     mkdir -p "$ZOO_DATA_LOG_DIR" "$ZOO_DATA_DIR" "$ZOO_CONF_DIR" "$ZOO_LOG_DIR";     chown "$ZOO_USER:$ZOO_USER" "$ZOO_DATA_LOG_DIR" "$ZOO_DATA_DIR" "$ZOO_CONF_DIR" "$ZOO_LOG_DIR"
# Tue, 09 Apr 2019 08:40:01 GMT
ARG GPG_KEY=3F7A1D16FA4217B1DC75E1C9FFE35B7F15DFA1BA
# Tue, 09 Apr 2019 08:40:06 GMT
ARG DISTRO_NAME=zookeeper-3.4.14
# Tue, 09 Apr 2019 08:40:26 GMT
# ARGS: DISTRO_NAME=zookeeper-3.4.14 GPG_KEY=3F7A1D16FA4217B1DC75E1C9FFE35B7F15DFA1BA
RUN set -ex;     apk add --no-cache --virtual .build-deps         ca-certificates         gnupg         libressl;     wget -q "https://www.apache.org/dist/zookeeper/$DISTRO_NAME/$DISTRO_NAME.tar.gz";     wget -q "https://www.apache.org/dist/zookeeper/$DISTRO_NAME/$DISTRO_NAME.tar.gz.asc";     export GNUPGHOME="$(mktemp -d)";     gpg --keyserver ha.pool.sks-keyservers.net --recv-key "$GPG_KEY" ||     gpg --keyserver pgp.mit.edu --recv-keys "$GPG_KEY" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$GPG_KEY";     gpg --batch --verify "$DISTRO_NAME.tar.gz.asc" "$DISTRO_NAME.tar.gz";     tar -xzf "$DISTRO_NAME.tar.gz";     mv "$DISTRO_NAME/conf/"* "$ZOO_CONF_DIR";     rm -rf "$GNUPGHOME" "$DISTRO_NAME.tar.gz" "$DISTRO_NAME.tar.gz.asc";     apk del .build-deps
# Tue, 09 Apr 2019 08:40:29 GMT
WORKDIR /zookeeper-3.4.14
# Tue, 09 Apr 2019 08:40:34 GMT
VOLUME [/data /datalog /logs]
# Tue, 09 Apr 2019 08:40:39 GMT
EXPOSE 2181 2888 3888
# Tue, 09 Apr 2019 08:40:43 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin:/zookeeper-3.4.14/bin ZOOCFGDIR=/conf
# Tue, 09 Apr 2019 08:40:46 GMT
COPY file:e241c4b758b1c07187e9a94844ecbab8e37b4440f1e74109ed52835d8aa518be in / 
# Tue, 09 Apr 2019 08:40:49 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 09 Apr 2019 08:40:53 GMT
CMD ["zkServer.sh" "start-foreground"]
```

-	Layers:
	-	`sha256:611bce2a4fa9a0e18025e088381d26f1dda2e1c02160c4d24a2720f9dbca9eaf`  
		Last Modified: Fri, 08 Mar 2019 03:38:31 GMT  
		Size: 2.8 MB (2778638 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b37b96605d1a56e30ef6132daa2faa08064df25ac1042a5b799c96028716bf7`  
		Last Modified: Fri, 08 Mar 2019 04:17:12 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf8f629dab1143ca48d3450e3e249d44bce82649250f91638bb3af77b98c63f2`  
		Last Modified: Wed, 03 Apr 2019 09:13:03 GMT  
		Size: 55.6 MB (55588718 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0171dca4a8ce7f903b3964084c630681202ddec5ae2ec0ea37c4d82b8d5ee15f`  
		Last Modified: Wed, 03 Apr 2019 11:00:17 GMT  
		Size: 1.3 MB (1291410 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae009f04c841d810a2412d3ae64a4e83a3c78d41603727e4d48652fd57362cc1`  
		Last Modified: Tue, 09 Apr 2019 08:41:11 GMT  
		Size: 1.4 KB (1405 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5aca25e0897c9e6f22c3377a371352159f1c53bca21340aef3f6c2e1d054640c`  
		Last Modified: Tue, 09 Apr 2019 08:41:17 GMT  
		Size: 38.1 MB (38078843 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cae2284e1bc94061b245b12eac8fc101b50c5cc9677ac739f1df36196c33367c`  
		Last Modified: Tue, 09 Apr 2019 08:41:11 GMT  
		Size: 617.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `zookeeper:3.4` - linux; s390x

```console
$ docker pull zookeeper@sha256:5a1250d65938fb61208e8fa77c74907963e0552eabdd42d7ce6df76406ce2836
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **95.5 MB (95519869 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e36275dc8e4853d043c65c1aebcd30c8258f49db82586c57202aae24e3547437`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["zkServer.sh","start-foreground"]`

```dockerfile
# Fri, 08 Mar 2019 03:35:46 GMT
ADD file:3f769e5ff31fbae6ea6b835fa878b05d6c6920ca4313aa63be7d057e29241d87 in / 
# Fri, 08 Mar 2019 03:35:46 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 04:02:40 GMT
ENV LANG=C.UTF-8
# Fri, 08 Mar 2019 04:02:40 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 08 Mar 2019 04:02:56 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Fri, 08 Mar 2019 04:02:57 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Thu, 28 Mar 2019 11:49:46 GMT
ENV JAVA_VERSION=8u201
# Thu, 04 Apr 2019 11:57:24 GMT
ENV JAVA_ALPINE_VERSION=8.201.08-r1
# Thu, 04 Apr 2019 11:57:28 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Thu, 04 Apr 2019 13:38:06 GMT
RUN apk add --no-cache     bash     su-exec
# Thu, 04 Apr 2019 13:38:06 GMT
ENV ZOO_USER=zookeeper ZOO_CONF_DIR=/conf ZOO_DATA_DIR=/data ZOO_DATA_LOG_DIR=/datalog ZOO_LOG_DIR=/logs ZOO_PORT=2181 ZOO_TICK_TIME=2000 ZOO_INIT_LIMIT=5 ZOO_SYNC_LIMIT=2 ZOO_AUTOPURGE_PURGEINTERVAL=0 ZOO_AUTOPURGE_SNAPRETAINCOUNT=3 ZOO_MAX_CLIENT_CNXNS=60
# Thu, 04 Apr 2019 13:38:07 GMT
RUN set -ex;     adduser -D "$ZOO_USER";     mkdir -p "$ZOO_DATA_LOG_DIR" "$ZOO_DATA_DIR" "$ZOO_CONF_DIR" "$ZOO_LOG_DIR";     chown "$ZOO_USER:$ZOO_USER" "$ZOO_DATA_LOG_DIR" "$ZOO_DATA_DIR" "$ZOO_CONF_DIR" "$ZOO_LOG_DIR"
# Tue, 09 Apr 2019 11:51:41 GMT
ARG GPG_KEY=3F7A1D16FA4217B1DC75E1C9FFE35B7F15DFA1BA
# Tue, 09 Apr 2019 11:51:41 GMT
ARG DISTRO_NAME=zookeeper-3.4.14
# Tue, 09 Apr 2019 11:51:47 GMT
# ARGS: DISTRO_NAME=zookeeper-3.4.14 GPG_KEY=3F7A1D16FA4217B1DC75E1C9FFE35B7F15DFA1BA
RUN set -ex;     apk add --no-cache --virtual .build-deps         ca-certificates         gnupg         libressl;     wget -q "https://www.apache.org/dist/zookeeper/$DISTRO_NAME/$DISTRO_NAME.tar.gz";     wget -q "https://www.apache.org/dist/zookeeper/$DISTRO_NAME/$DISTRO_NAME.tar.gz.asc";     export GNUPGHOME="$(mktemp -d)";     gpg --keyserver ha.pool.sks-keyservers.net --recv-key "$GPG_KEY" ||     gpg --keyserver pgp.mit.edu --recv-keys "$GPG_KEY" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$GPG_KEY";     gpg --batch --verify "$DISTRO_NAME.tar.gz.asc" "$DISTRO_NAME.tar.gz";     tar -xzf "$DISTRO_NAME.tar.gz";     mv "$DISTRO_NAME/conf/"* "$ZOO_CONF_DIR";     rm -rf "$GNUPGHOME" "$DISTRO_NAME.tar.gz" "$DISTRO_NAME.tar.gz.asc";     apk del .build-deps
# Tue, 09 Apr 2019 11:51:47 GMT
WORKDIR /zookeeper-3.4.14
# Tue, 09 Apr 2019 11:51:48 GMT
VOLUME [/data /datalog /logs]
# Tue, 09 Apr 2019 11:51:48 GMT
EXPOSE 2181 2888 3888
# Tue, 09 Apr 2019 11:51:48 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin:/zookeeper-3.4.14/bin ZOOCFGDIR=/conf
# Tue, 09 Apr 2019 11:51:48 GMT
COPY file:e241c4b758b1c07187e9a94844ecbab8e37b4440f1e74109ed52835d8aa518be in / 
# Tue, 09 Apr 2019 11:51:49 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 09 Apr 2019 11:51:49 GMT
CMD ["zkServer.sh" "start-foreground"]
```

-	Layers:
	-	`sha256:d981dc59d98dcf79c1920d433d8d56f9892f229da716de64280980f317a80ef1`  
		Last Modified: Fri, 08 Mar 2019 03:36:19 GMT  
		Size: 2.5 MB (2541305 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5fc974726c47232f0d4a4664c4fe09841c9a948a3e4a56abfe98770208fcc645`  
		Last Modified: Fri, 08 Mar 2019 04:04:06 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7742b04873b403dd6576fe37e0a6e7c391ae124437941c50ffe52260f269aafe`  
		Last Modified: Thu, 04 Apr 2019 11:59:12 GMT  
		Size: 53.7 MB (53660002 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd84862d2c4168b5d8bf7a7d9e51a6f2e6c9546b27c040522b794b8568b7da04`  
		Last Modified: Thu, 04 Apr 2019 13:40:34 GMT  
		Size: 1.2 MB (1240075 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2cabc48ffc0999799fa8fb8a8d3fdbe006de814d1f3d95def04ec5d5856bef50`  
		Last Modified: Tue, 09 Apr 2019 11:52:01 GMT  
		Size: 1.3 KB (1322 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02e77cb70b50ae4d7445b89c216c18e8f1785a1b4a4e14ae49d62e0c447b9f3f`  
		Last Modified: Tue, 09 Apr 2019 11:52:06 GMT  
		Size: 38.1 MB (38076309 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:924bd0fc2a80404b75504da58979c25174d2a8e36d53427a3ea276a7a31f8d37`  
		Last Modified: Tue, 09 Apr 2019 11:52:01 GMT  
		Size: 617.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `zookeeper:3.4.14`

```console
$ docker pull zookeeper@sha256:d7fb4ce74a9f38d9a671558230feb37b8b6380c29c3f5c4fd3f671d471d1cd40
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `zookeeper:3.4.14` - linux; amd64

```console
$ docker pull zookeeper@sha256:a465f571909a5a76e620ae0392456f0993ecddc122163b202dc115f764f895fa
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **97.0 MB (96963691 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:711a5ebdf2bdce4eefd101710b25cff7308556aebfeca08331413ab2c6979db4`
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
# Wed, 27 Mar 2019 23:29:04 GMT
ENV JAVA_VERSION=8u201
# Tue, 02 Apr 2019 23:45:43 GMT
ENV JAVA_ALPINE_VERSION=8.201.08-r1
# Tue, 02 Apr 2019 23:45:46 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 03 Apr 2019 00:15:35 GMT
RUN apk add --no-cache     bash     su-exec
# Wed, 03 Apr 2019 00:15:35 GMT
ENV ZOO_USER=zookeeper ZOO_CONF_DIR=/conf ZOO_DATA_DIR=/data ZOO_DATA_LOG_DIR=/datalog ZOO_LOG_DIR=/logs ZOO_PORT=2181 ZOO_TICK_TIME=2000 ZOO_INIT_LIMIT=5 ZOO_SYNC_LIMIT=2 ZOO_AUTOPURGE_PURGEINTERVAL=0 ZOO_AUTOPURGE_SNAPRETAINCOUNT=3 ZOO_MAX_CLIENT_CNXNS=60
# Wed, 03 Apr 2019 00:15:36 GMT
RUN set -ex;     adduser -D "$ZOO_USER";     mkdir -p "$ZOO_DATA_LOG_DIR" "$ZOO_DATA_DIR" "$ZOO_CONF_DIR" "$ZOO_LOG_DIR";     chown "$ZOO_USER:$ZOO_USER" "$ZOO_DATA_LOG_DIR" "$ZOO_DATA_DIR" "$ZOO_CONF_DIR" "$ZOO_LOG_DIR"
# Mon, 08 Apr 2019 22:20:12 GMT
ARG GPG_KEY=3F7A1D16FA4217B1DC75E1C9FFE35B7F15DFA1BA
# Mon, 08 Apr 2019 22:20:12 GMT
ARG DISTRO_NAME=zookeeper-3.4.14
# Mon, 08 Apr 2019 22:20:19 GMT
# ARGS: DISTRO_NAME=zookeeper-3.4.14 GPG_KEY=3F7A1D16FA4217B1DC75E1C9FFE35B7F15DFA1BA
RUN set -ex;     apk add --no-cache --virtual .build-deps         ca-certificates         gnupg         libressl;     wget -q "https://www.apache.org/dist/zookeeper/$DISTRO_NAME/$DISTRO_NAME.tar.gz";     wget -q "https://www.apache.org/dist/zookeeper/$DISTRO_NAME/$DISTRO_NAME.tar.gz.asc";     export GNUPGHOME="$(mktemp -d)";     gpg --keyserver ha.pool.sks-keyservers.net --recv-key "$GPG_KEY" ||     gpg --keyserver pgp.mit.edu --recv-keys "$GPG_KEY" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$GPG_KEY";     gpg --batch --verify "$DISTRO_NAME.tar.gz.asc" "$DISTRO_NAME.tar.gz";     tar -xzf "$DISTRO_NAME.tar.gz";     mv "$DISTRO_NAME/conf/"* "$ZOO_CONF_DIR";     rm -rf "$GNUPGHOME" "$DISTRO_NAME.tar.gz" "$DISTRO_NAME.tar.gz.asc";     apk del .build-deps
# Mon, 08 Apr 2019 22:20:19 GMT
WORKDIR /zookeeper-3.4.14
# Mon, 08 Apr 2019 22:20:19 GMT
VOLUME [/data /datalog /logs]
# Mon, 08 Apr 2019 22:20:20 GMT
EXPOSE 2181 2888 3888
# Mon, 08 Apr 2019 22:20:20 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin:/zookeeper-3.4.14/bin ZOOCFGDIR=/conf
# Mon, 08 Apr 2019 22:20:20 GMT
COPY file:e241c4b758b1c07187e9a94844ecbab8e37b4440f1e74109ed52835d8aa518be in / 
# Mon, 08 Apr 2019 22:20:20 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 08 Apr 2019 22:20:20 GMT
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
	-	`sha256:0c5bd74861e4346a0beed670ef2a6613f3594b458820c50efc5e1044d865e134`  
		Last Modified: Tue, 02 Apr 2019 23:47:30 GMT  
		Size: 54.9 MB (54918577 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f695c11a6f1bd9fd0c86ae139b216e40b0e64bb1e47c0ba6be76eb0d7ef5799`  
		Last Modified: Wed, 03 Apr 2019 00:16:03 GMT  
		Size: 1.2 MB (1209084 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82a5ce24103471f3bee8d1503a28bcc793dac613d9de2af13cab28337758b2de`  
		Last Modified: Mon, 08 Apr 2019 22:20:30 GMT  
		Size: 1.3 KB (1321 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8937518d5a2eafdb4cbe9d7d7ba2f3a3473950369ee0b3d1849ad9dff976cfd8`  
		Last Modified: Mon, 08 Apr 2019 22:20:34 GMT  
		Size: 38.1 MB (38079124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6c388fecb811c3fd3e50b966f2735d194a113b0c06202aacc7cad065dbc794c`  
		Last Modified: Mon, 08 Apr 2019 22:20:30 GMT  
		Size: 617.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `zookeeper:3.4.14` - linux; arm variant v6

```console
$ docker pull zookeeper@sha256:362f42658f91314091ca3cabfd34d9ad299c22cbaa98b64a6c7cddbe6fbfc008
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **94.2 MB (94162426 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:160ffd84cc7119847aba8cfb1336959757604c1b9b4cb48d058d8fdbadabeb54`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["zkServer.sh","start-foreground"]`

```dockerfile
# Fri, 08 Mar 2019 03:36:05 GMT
ADD file:2bf8ccaacb388ca6271670ed8a86b8bc4450823156917d29d9d9ec0a07fd64a7 in / 
# Fri, 08 Mar 2019 03:36:06 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 04:39:53 GMT
ENV LANG=C.UTF-8
# Fri, 08 Mar 2019 04:39:55 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 08 Mar 2019 04:40:07 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Fri, 08 Mar 2019 04:40:08 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Thu, 28 Mar 2019 07:49:41 GMT
ENV JAVA_VERSION=8u201
# Wed, 03 Apr 2019 07:52:46 GMT
ENV JAVA_ALPINE_VERSION=8.201.08-r1
# Wed, 03 Apr 2019 07:52:51 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 03 Apr 2019 08:49:18 GMT
RUN apk add --no-cache     bash     su-exec
# Wed, 03 Apr 2019 08:49:19 GMT
ENV ZOO_USER=zookeeper ZOO_CONF_DIR=/conf ZOO_DATA_DIR=/data ZOO_DATA_LOG_DIR=/datalog ZOO_LOG_DIR=/logs ZOO_PORT=2181 ZOO_TICK_TIME=2000 ZOO_INIT_LIMIT=5 ZOO_SYNC_LIMIT=2 ZOO_AUTOPURGE_PURGEINTERVAL=0 ZOO_AUTOPURGE_SNAPRETAINCOUNT=3 ZOO_MAX_CLIENT_CNXNS=60
# Wed, 03 Apr 2019 08:49:21 GMT
RUN set -ex;     adduser -D "$ZOO_USER";     mkdir -p "$ZOO_DATA_LOG_DIR" "$ZOO_DATA_DIR" "$ZOO_CONF_DIR" "$ZOO_LOG_DIR";     chown "$ZOO_USER:$ZOO_USER" "$ZOO_DATA_LOG_DIR" "$ZOO_DATA_DIR" "$ZOO_CONF_DIR" "$ZOO_LOG_DIR"
# Tue, 09 Apr 2019 07:50:38 GMT
ARG GPG_KEY=3F7A1D16FA4217B1DC75E1C9FFE35B7F15DFA1BA
# Tue, 09 Apr 2019 07:50:38 GMT
ARG DISTRO_NAME=zookeeper-3.4.14
# Tue, 09 Apr 2019 07:51:07 GMT
# ARGS: DISTRO_NAME=zookeeper-3.4.14 GPG_KEY=3F7A1D16FA4217B1DC75E1C9FFE35B7F15DFA1BA
RUN set -ex;     apk add --no-cache --virtual .build-deps         ca-certificates         gnupg         libressl;     wget -q "https://www.apache.org/dist/zookeeper/$DISTRO_NAME/$DISTRO_NAME.tar.gz";     wget -q "https://www.apache.org/dist/zookeeper/$DISTRO_NAME/$DISTRO_NAME.tar.gz.asc";     export GNUPGHOME="$(mktemp -d)";     gpg --keyserver ha.pool.sks-keyservers.net --recv-key "$GPG_KEY" ||     gpg --keyserver pgp.mit.edu --recv-keys "$GPG_KEY" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$GPG_KEY";     gpg --batch --verify "$DISTRO_NAME.tar.gz.asc" "$DISTRO_NAME.tar.gz";     tar -xzf "$DISTRO_NAME.tar.gz";     mv "$DISTRO_NAME/conf/"* "$ZOO_CONF_DIR";     rm -rf "$GNUPGHOME" "$DISTRO_NAME.tar.gz" "$DISTRO_NAME.tar.gz.asc";     apk del .build-deps
# Tue, 09 Apr 2019 07:51:08 GMT
WORKDIR /zookeeper-3.4.14
# Tue, 09 Apr 2019 07:51:09 GMT
VOLUME [/data /datalog /logs]
# Tue, 09 Apr 2019 07:51:09 GMT
EXPOSE 2181 2888 3888
# Tue, 09 Apr 2019 07:51:09 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin:/zookeeper-3.4.14/bin ZOOCFGDIR=/conf
# Tue, 09 Apr 2019 07:51:10 GMT
COPY file:e241c4b758b1c07187e9a94844ecbab8e37b4440f1e74109ed52835d8aa518be in / 
# Tue, 09 Apr 2019 07:51:10 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 09 Apr 2019 07:51:11 GMT
CMD ["zkServer.sh" "start-foreground"]
```

-	Layers:
	-	`sha256:d33b53ae0340b7490b486edd65310a4333d7e0057854aadd12a5006faf7fa576`  
		Last Modified: Fri, 08 Mar 2019 03:36:43 GMT  
		Size: 2.5 MB (2540673 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4cb8e265594b5112bd474ac92c9c83497fc535a27624c2798c8817a01b28328c`  
		Last Modified: Fri, 08 Mar 2019 04:41:11 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:972acb4c659fffab6be0f752b78857f78dbda522970cf7946a5a622cf65f4797`  
		Last Modified: Wed, 03 Apr 2019 07:53:52 GMT  
		Size: 52.4 MB (52387444 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab1d104cdd9100d06a50a0db588a5efbf08fadb926ba551df6b67b87e3e4172a`  
		Last Modified: Wed, 03 Apr 2019 08:49:57 GMT  
		Size: 1.2 MB (1154065 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0309b54855dfa7b03af4f737171e1654a32d32bb1a5612f26d2273c59c7cdd88`  
		Last Modified: Tue, 09 Apr 2019 07:51:27 GMT  
		Size: 1.4 KB (1403 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1096df65b569d63a768e4f5bce213b3cc57f350868c6e2ade7d1b05e795e9b3`  
		Last Modified: Tue, 09 Apr 2019 07:51:35 GMT  
		Size: 38.1 MB (38077986 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42d8bd66f888f0abd5d7eee8d8e9bb9e7540e36c07c3b0cd1f21a21bb195b880`  
		Last Modified: Tue, 09 Apr 2019 07:51:27 GMT  
		Size: 615.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `zookeeper:3.4.14` - linux; 386

```console
$ docker pull zookeeper@sha256:9ac325959e51b6d5f868c3ca337be47ac4950080bb49caf62b6357892f392300
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **97.6 MB (97623219 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ec9ae31b801d724308f62c1739941ce63353dfe08f6da14dd91c364f69b29620`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["zkServer.sh","start-foreground"]`

```dockerfile
# Fri, 08 Mar 2019 03:35:50 GMT
ADD file:98a0f92574b6a8592a131ccb07c4f516694e053d610a1701fde2d5e7c65c2175 in / 
# Fri, 08 Mar 2019 03:35:50 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 06:52:02 GMT
ENV LANG=C.UTF-8
# Fri, 08 Mar 2019 06:52:03 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 08 Mar 2019 06:52:17 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Fri, 08 Mar 2019 06:52:17 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Thu, 28 Mar 2019 01:00:58 GMT
ENV JAVA_VERSION=8u201
# Wed, 03 Apr 2019 11:35:25 GMT
ENV JAVA_ALPINE_VERSION=8.201.08-r1
# Wed, 03 Apr 2019 11:35:29 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 03 Apr 2019 13:38:55 GMT
RUN apk add --no-cache     bash     su-exec
# Wed, 03 Apr 2019 13:38:55 GMT
ENV ZOO_USER=zookeeper ZOO_CONF_DIR=/conf ZOO_DATA_DIR=/data ZOO_DATA_LOG_DIR=/datalog ZOO_LOG_DIR=/logs ZOO_PORT=2181 ZOO_TICK_TIME=2000 ZOO_INIT_LIMIT=5 ZOO_SYNC_LIMIT=2 ZOO_AUTOPURGE_PURGEINTERVAL=0 ZOO_AUTOPURGE_SNAPRETAINCOUNT=3 ZOO_MAX_CLIENT_CNXNS=60
# Wed, 03 Apr 2019 13:38:56 GMT
RUN set -ex;     adduser -D "$ZOO_USER";     mkdir -p "$ZOO_DATA_LOG_DIR" "$ZOO_DATA_DIR" "$ZOO_CONF_DIR" "$ZOO_LOG_DIR";     chown "$ZOO_USER:$ZOO_USER" "$ZOO_DATA_LOG_DIR" "$ZOO_DATA_DIR" "$ZOO_CONF_DIR" "$ZOO_LOG_DIR"
# Tue, 09 Apr 2019 10:51:44 GMT
ARG GPG_KEY=3F7A1D16FA4217B1DC75E1C9FFE35B7F15DFA1BA
# Tue, 09 Apr 2019 10:51:44 GMT
ARG DISTRO_NAME=zookeeper-3.4.14
# Tue, 09 Apr 2019 10:51:52 GMT
# ARGS: DISTRO_NAME=zookeeper-3.4.14 GPG_KEY=3F7A1D16FA4217B1DC75E1C9FFE35B7F15DFA1BA
RUN set -ex;     apk add --no-cache --virtual .build-deps         ca-certificates         gnupg         libressl;     wget -q "https://www.apache.org/dist/zookeeper/$DISTRO_NAME/$DISTRO_NAME.tar.gz";     wget -q "https://www.apache.org/dist/zookeeper/$DISTRO_NAME/$DISTRO_NAME.tar.gz.asc";     export GNUPGHOME="$(mktemp -d)";     gpg --keyserver ha.pool.sks-keyservers.net --recv-key "$GPG_KEY" ||     gpg --keyserver pgp.mit.edu --recv-keys "$GPG_KEY" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$GPG_KEY";     gpg --batch --verify "$DISTRO_NAME.tar.gz.asc" "$DISTRO_NAME.tar.gz";     tar -xzf "$DISTRO_NAME.tar.gz";     mv "$DISTRO_NAME/conf/"* "$ZOO_CONF_DIR";     rm -rf "$GNUPGHOME" "$DISTRO_NAME.tar.gz" "$DISTRO_NAME.tar.gz.asc";     apk del .build-deps
# Tue, 09 Apr 2019 10:51:52 GMT
WORKDIR /zookeeper-3.4.14
# Tue, 09 Apr 2019 10:51:52 GMT
VOLUME [/data /datalog /logs]
# Tue, 09 Apr 2019 10:51:52 GMT
EXPOSE 2181 2888 3888
# Tue, 09 Apr 2019 10:51:53 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin:/zookeeper-3.4.14/bin ZOOCFGDIR=/conf
# Tue, 09 Apr 2019 10:51:53 GMT
COPY file:e241c4b758b1c07187e9a94844ecbab8e37b4440f1e74109ed52835d8aa518be in / 
# Tue, 09 Apr 2019 10:51:53 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 09 Apr 2019 10:51:53 GMT
CMD ["zkServer.sh" "start-foreground"]
```

-	Layers:
	-	`sha256:a4c1e43a7431a562d92c5eb6e09e96b4731a474af51cad1c46e2d305ede29005`  
		Last Modified: Fri, 08 Mar 2019 03:36:34 GMT  
		Size: 2.7 MB (2749355 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe95f117badec568caa0381ef010c1d9df00d3c0870ebab8187a0017d68c5f8b`  
		Last Modified: Fri, 08 Mar 2019 06:53:37 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a47b2ea4dcb1b036ea9c07141df2ea81e99b070085f09fec057458ca4139b596`  
		Last Modified: Wed, 03 Apr 2019 11:36:48 GMT  
		Size: 55.5 MB (55538598 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ddbd8e9c73f73df2a2f21af78af53144eac7d4769e27d28f466efa15c8039149`  
		Last Modified: Wed, 03 Apr 2019 13:39:19 GMT  
		Size: 1.3 MB (1256243 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f4291098cf531b99caf9b6a95af47a1a77ad6e62336112aba563833e4597e3a`  
		Last Modified: Tue, 09 Apr 2019 10:52:02 GMT  
		Size: 1.3 KB (1323 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a671cdaf47f145336812e91acadffd722af7cbfccf1395967ceb6b9ad150b1fe`  
		Last Modified: Tue, 09 Apr 2019 10:52:07 GMT  
		Size: 38.1 MB (38076847 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be67ee32a0bbada2d5fabf51b6445d23e9d81d8a740b34db1966fcd10d9b4597`  
		Last Modified: Tue, 09 Apr 2019 10:52:02 GMT  
		Size: 615.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `zookeeper:3.4.14` - linux; ppc64le

```console
$ docker pull zookeeper@sha256:5157aee9aa5d611c4a44814a7e465bc8cfed653dc750db7407d9fb6361d68a93
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **97.7 MB (97739871 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:068edde6125a152126cc94fee85d306d610241c3e4fd1082577395c14101f300`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["zkServer.sh","start-foreground"]`

```dockerfile
# Fri, 08 Mar 2019 03:37:33 GMT
ADD file:6dfaec9befa64397af571d1da2e766c694148f7a025b9411404a924d3de64bd3 in / 
# Fri, 08 Mar 2019 03:37:36 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 04:13:23 GMT
ENV LANG=C.UTF-8
# Fri, 08 Mar 2019 04:13:28 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 08 Mar 2019 04:14:02 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Fri, 08 Mar 2019 04:14:04 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Thu, 28 Mar 2019 08:37:47 GMT
ENV JAVA_VERSION=8u201
# Wed, 03 Apr 2019 09:10:25 GMT
ENV JAVA_ALPINE_VERSION=8.201.08-r1
# Wed, 03 Apr 2019 09:10:33 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 03 Apr 2019 10:58:29 GMT
RUN apk add --no-cache     bash     su-exec
# Wed, 03 Apr 2019 10:58:32 GMT
ENV ZOO_USER=zookeeper ZOO_CONF_DIR=/conf ZOO_DATA_DIR=/data ZOO_DATA_LOG_DIR=/datalog ZOO_LOG_DIR=/logs ZOO_PORT=2181 ZOO_TICK_TIME=2000 ZOO_INIT_LIMIT=5 ZOO_SYNC_LIMIT=2 ZOO_AUTOPURGE_PURGEINTERVAL=0 ZOO_AUTOPURGE_SNAPRETAINCOUNT=3 ZOO_MAX_CLIENT_CNXNS=60
# Wed, 03 Apr 2019 10:58:39 GMT
RUN set -ex;     adduser -D "$ZOO_USER";     mkdir -p "$ZOO_DATA_LOG_DIR" "$ZOO_DATA_DIR" "$ZOO_CONF_DIR" "$ZOO_LOG_DIR";     chown "$ZOO_USER:$ZOO_USER" "$ZOO_DATA_LOG_DIR" "$ZOO_DATA_DIR" "$ZOO_CONF_DIR" "$ZOO_LOG_DIR"
# Tue, 09 Apr 2019 08:40:01 GMT
ARG GPG_KEY=3F7A1D16FA4217B1DC75E1C9FFE35B7F15DFA1BA
# Tue, 09 Apr 2019 08:40:06 GMT
ARG DISTRO_NAME=zookeeper-3.4.14
# Tue, 09 Apr 2019 08:40:26 GMT
# ARGS: DISTRO_NAME=zookeeper-3.4.14 GPG_KEY=3F7A1D16FA4217B1DC75E1C9FFE35B7F15DFA1BA
RUN set -ex;     apk add --no-cache --virtual .build-deps         ca-certificates         gnupg         libressl;     wget -q "https://www.apache.org/dist/zookeeper/$DISTRO_NAME/$DISTRO_NAME.tar.gz";     wget -q "https://www.apache.org/dist/zookeeper/$DISTRO_NAME/$DISTRO_NAME.tar.gz.asc";     export GNUPGHOME="$(mktemp -d)";     gpg --keyserver ha.pool.sks-keyservers.net --recv-key "$GPG_KEY" ||     gpg --keyserver pgp.mit.edu --recv-keys "$GPG_KEY" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$GPG_KEY";     gpg --batch --verify "$DISTRO_NAME.tar.gz.asc" "$DISTRO_NAME.tar.gz";     tar -xzf "$DISTRO_NAME.tar.gz";     mv "$DISTRO_NAME/conf/"* "$ZOO_CONF_DIR";     rm -rf "$GNUPGHOME" "$DISTRO_NAME.tar.gz" "$DISTRO_NAME.tar.gz.asc";     apk del .build-deps
# Tue, 09 Apr 2019 08:40:29 GMT
WORKDIR /zookeeper-3.4.14
# Tue, 09 Apr 2019 08:40:34 GMT
VOLUME [/data /datalog /logs]
# Tue, 09 Apr 2019 08:40:39 GMT
EXPOSE 2181 2888 3888
# Tue, 09 Apr 2019 08:40:43 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin:/zookeeper-3.4.14/bin ZOOCFGDIR=/conf
# Tue, 09 Apr 2019 08:40:46 GMT
COPY file:e241c4b758b1c07187e9a94844ecbab8e37b4440f1e74109ed52835d8aa518be in / 
# Tue, 09 Apr 2019 08:40:49 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 09 Apr 2019 08:40:53 GMT
CMD ["zkServer.sh" "start-foreground"]
```

-	Layers:
	-	`sha256:611bce2a4fa9a0e18025e088381d26f1dda2e1c02160c4d24a2720f9dbca9eaf`  
		Last Modified: Fri, 08 Mar 2019 03:38:31 GMT  
		Size: 2.8 MB (2778638 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b37b96605d1a56e30ef6132daa2faa08064df25ac1042a5b799c96028716bf7`  
		Last Modified: Fri, 08 Mar 2019 04:17:12 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf8f629dab1143ca48d3450e3e249d44bce82649250f91638bb3af77b98c63f2`  
		Last Modified: Wed, 03 Apr 2019 09:13:03 GMT  
		Size: 55.6 MB (55588718 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0171dca4a8ce7f903b3964084c630681202ddec5ae2ec0ea37c4d82b8d5ee15f`  
		Last Modified: Wed, 03 Apr 2019 11:00:17 GMT  
		Size: 1.3 MB (1291410 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae009f04c841d810a2412d3ae64a4e83a3c78d41603727e4d48652fd57362cc1`  
		Last Modified: Tue, 09 Apr 2019 08:41:11 GMT  
		Size: 1.4 KB (1405 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5aca25e0897c9e6f22c3377a371352159f1c53bca21340aef3f6c2e1d054640c`  
		Last Modified: Tue, 09 Apr 2019 08:41:17 GMT  
		Size: 38.1 MB (38078843 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cae2284e1bc94061b245b12eac8fc101b50c5cc9677ac739f1df36196c33367c`  
		Last Modified: Tue, 09 Apr 2019 08:41:11 GMT  
		Size: 617.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `zookeeper:3.4.14` - linux; s390x

```console
$ docker pull zookeeper@sha256:5a1250d65938fb61208e8fa77c74907963e0552eabdd42d7ce6df76406ce2836
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **95.5 MB (95519869 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e36275dc8e4853d043c65c1aebcd30c8258f49db82586c57202aae24e3547437`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["zkServer.sh","start-foreground"]`

```dockerfile
# Fri, 08 Mar 2019 03:35:46 GMT
ADD file:3f769e5ff31fbae6ea6b835fa878b05d6c6920ca4313aa63be7d057e29241d87 in / 
# Fri, 08 Mar 2019 03:35:46 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 04:02:40 GMT
ENV LANG=C.UTF-8
# Fri, 08 Mar 2019 04:02:40 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 08 Mar 2019 04:02:56 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Fri, 08 Mar 2019 04:02:57 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Thu, 28 Mar 2019 11:49:46 GMT
ENV JAVA_VERSION=8u201
# Thu, 04 Apr 2019 11:57:24 GMT
ENV JAVA_ALPINE_VERSION=8.201.08-r1
# Thu, 04 Apr 2019 11:57:28 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Thu, 04 Apr 2019 13:38:06 GMT
RUN apk add --no-cache     bash     su-exec
# Thu, 04 Apr 2019 13:38:06 GMT
ENV ZOO_USER=zookeeper ZOO_CONF_DIR=/conf ZOO_DATA_DIR=/data ZOO_DATA_LOG_DIR=/datalog ZOO_LOG_DIR=/logs ZOO_PORT=2181 ZOO_TICK_TIME=2000 ZOO_INIT_LIMIT=5 ZOO_SYNC_LIMIT=2 ZOO_AUTOPURGE_PURGEINTERVAL=0 ZOO_AUTOPURGE_SNAPRETAINCOUNT=3 ZOO_MAX_CLIENT_CNXNS=60
# Thu, 04 Apr 2019 13:38:07 GMT
RUN set -ex;     adduser -D "$ZOO_USER";     mkdir -p "$ZOO_DATA_LOG_DIR" "$ZOO_DATA_DIR" "$ZOO_CONF_DIR" "$ZOO_LOG_DIR";     chown "$ZOO_USER:$ZOO_USER" "$ZOO_DATA_LOG_DIR" "$ZOO_DATA_DIR" "$ZOO_CONF_DIR" "$ZOO_LOG_DIR"
# Tue, 09 Apr 2019 11:51:41 GMT
ARG GPG_KEY=3F7A1D16FA4217B1DC75E1C9FFE35B7F15DFA1BA
# Tue, 09 Apr 2019 11:51:41 GMT
ARG DISTRO_NAME=zookeeper-3.4.14
# Tue, 09 Apr 2019 11:51:47 GMT
# ARGS: DISTRO_NAME=zookeeper-3.4.14 GPG_KEY=3F7A1D16FA4217B1DC75E1C9FFE35B7F15DFA1BA
RUN set -ex;     apk add --no-cache --virtual .build-deps         ca-certificates         gnupg         libressl;     wget -q "https://www.apache.org/dist/zookeeper/$DISTRO_NAME/$DISTRO_NAME.tar.gz";     wget -q "https://www.apache.org/dist/zookeeper/$DISTRO_NAME/$DISTRO_NAME.tar.gz.asc";     export GNUPGHOME="$(mktemp -d)";     gpg --keyserver ha.pool.sks-keyservers.net --recv-key "$GPG_KEY" ||     gpg --keyserver pgp.mit.edu --recv-keys "$GPG_KEY" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$GPG_KEY";     gpg --batch --verify "$DISTRO_NAME.tar.gz.asc" "$DISTRO_NAME.tar.gz";     tar -xzf "$DISTRO_NAME.tar.gz";     mv "$DISTRO_NAME/conf/"* "$ZOO_CONF_DIR";     rm -rf "$GNUPGHOME" "$DISTRO_NAME.tar.gz" "$DISTRO_NAME.tar.gz.asc";     apk del .build-deps
# Tue, 09 Apr 2019 11:51:47 GMT
WORKDIR /zookeeper-3.4.14
# Tue, 09 Apr 2019 11:51:48 GMT
VOLUME [/data /datalog /logs]
# Tue, 09 Apr 2019 11:51:48 GMT
EXPOSE 2181 2888 3888
# Tue, 09 Apr 2019 11:51:48 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin:/zookeeper-3.4.14/bin ZOOCFGDIR=/conf
# Tue, 09 Apr 2019 11:51:48 GMT
COPY file:e241c4b758b1c07187e9a94844ecbab8e37b4440f1e74109ed52835d8aa518be in / 
# Tue, 09 Apr 2019 11:51:49 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 09 Apr 2019 11:51:49 GMT
CMD ["zkServer.sh" "start-foreground"]
```

-	Layers:
	-	`sha256:d981dc59d98dcf79c1920d433d8d56f9892f229da716de64280980f317a80ef1`  
		Last Modified: Fri, 08 Mar 2019 03:36:19 GMT  
		Size: 2.5 MB (2541305 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5fc974726c47232f0d4a4664c4fe09841c9a948a3e4a56abfe98770208fcc645`  
		Last Modified: Fri, 08 Mar 2019 04:04:06 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7742b04873b403dd6576fe37e0a6e7c391ae124437941c50ffe52260f269aafe`  
		Last Modified: Thu, 04 Apr 2019 11:59:12 GMT  
		Size: 53.7 MB (53660002 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd84862d2c4168b5d8bf7a7d9e51a6f2e6c9546b27c040522b794b8568b7da04`  
		Last Modified: Thu, 04 Apr 2019 13:40:34 GMT  
		Size: 1.2 MB (1240075 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2cabc48ffc0999799fa8fb8a8d3fdbe006de814d1f3d95def04ec5d5856bef50`  
		Last Modified: Tue, 09 Apr 2019 11:52:01 GMT  
		Size: 1.3 KB (1322 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02e77cb70b50ae4d7445b89c216c18e8f1785a1b4a4e14ae49d62e0c447b9f3f`  
		Last Modified: Tue, 09 Apr 2019 11:52:06 GMT  
		Size: 38.1 MB (38076309 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:924bd0fc2a80404b75504da58979c25174d2a8e36d53427a3ea276a7a31f8d37`  
		Last Modified: Tue, 09 Apr 2019 11:52:01 GMT  
		Size: 617.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `zookeeper:3.5`

```console
$ docker pull zookeeper@sha256:7fcd272d2555ab0fca2bdc2f28f66b66589d309688e58951fe0f69c8704f8e17
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
$ docker pull zookeeper@sha256:d614417373404f1cd77bf61ba1b556a559feb82f1f6a8a05146a340d9a5072b8
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **78.4 MB (78435617 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a01eec39633766e340d70d3e17dc280afac4280de0412fe532cb92b4175ed635`
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
# Wed, 27 Mar 2019 23:29:04 GMT
ENV JAVA_VERSION=8u201
# Tue, 02 Apr 2019 23:45:43 GMT
ENV JAVA_ALPINE_VERSION=8.201.08-r1
# Tue, 02 Apr 2019 23:45:46 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 03 Apr 2019 00:15:35 GMT
RUN apk add --no-cache     bash     su-exec
# Wed, 03 Apr 2019 00:15:45 GMT
ENV ZOO_USER=zookeeper ZOO_CONF_DIR=/conf ZOO_DATA_DIR=/data ZOO_DATA_LOG_DIR=/datalog ZOO_LOG_DIR=/logs ZOO_PORT=2181 ZOO_TICK_TIME=2000 ZOO_INIT_LIMIT=5 ZOO_SYNC_LIMIT=2 ZOO_AUTOPURGE_PURGEINTERVAL=0 ZOO_AUTOPURGE_SNAPRETAINCOUNT=3 ZOO_MAX_CLIENT_CNXNS=60 ZOO_STANDALONE_ENABLED=false
# Wed, 03 Apr 2019 00:15:46 GMT
RUN set -ex;     adduser -D "$ZOO_USER";     mkdir -p "$ZOO_DATA_LOG_DIR" "$ZOO_DATA_DIR" "$ZOO_CONF_DIR" "$ZOO_LOG_DIR";     chown "$ZOO_USER:$ZOO_USER" "$ZOO_DATA_LOG_DIR" "$ZOO_DATA_DIR" "$ZOO_CONF_DIR" "$ZOO_LOG_DIR"
# Wed, 03 Apr 2019 00:15:46 GMT
ARG GPG_KEY=D0BC8D8A4E90A40AFDFC43B3E22A746A68E327C1
# Wed, 03 Apr 2019 00:15:46 GMT
ARG DISTRO_NAME=zookeeper-3.5.4-beta
# Wed, 03 Apr 2019 00:15:50 GMT
# ARGS: DISTRO_NAME=zookeeper-3.5.4-beta GPG_KEY=D0BC8D8A4E90A40AFDFC43B3E22A746A68E327C1
RUN set -ex;     apk add --no-cache --virtual .build-deps         ca-certificates         gnupg         libressl;     wget -q "https://www.apache.org/dist/zookeeper/$DISTRO_NAME/$DISTRO_NAME.tar.gz";     wget -q "https://www.apache.org/dist/zookeeper/$DISTRO_NAME/$DISTRO_NAME.tar.gz.asc";     export GNUPGHOME="$(mktemp -d)";     gpg --keyserver ha.pool.sks-keyservers.net --recv-key "$GPG_KEY" ||     gpg --keyserver pgp.mit.edu --recv-keys "$GPG_KEY" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$GPG_KEY";     gpg --batch --verify "$DISTRO_NAME.tar.gz.asc" "$DISTRO_NAME.tar.gz";     tar -zxf "$DISTRO_NAME.tar.gz";     mv "$DISTRO_NAME/conf/"* "$ZOO_CONF_DIR";     rm -rf "$GNUPGHOME" "$DISTRO_NAME.tar.gz" "$DISTRO_NAME.tar.gz.asc";     apk del .build-deps;     chown -R "$ZOO_USER:$ZOO_USER" "/$DISTRO_NAME"
# Wed, 03 Apr 2019 00:15:50 GMT
WORKDIR /zookeeper-3.5.4-beta
# Wed, 03 Apr 2019 00:15:50 GMT
VOLUME [/data /datalog /logs]
# Wed, 03 Apr 2019 00:15:51 GMT
EXPOSE 2181 2888 3888
# Wed, 03 Apr 2019 00:15:51 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin:/zookeeper-3.5.4-beta/bin ZOOCFGDIR=/conf
# Wed, 03 Apr 2019 00:15:51 GMT
COPY file:da4c1e7ba5b62f2d076bdffec939a64fb3c8a58676a7b139e17939a632a59a88 in / 
# Wed, 03 Apr 2019 00:15:51 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 03 Apr 2019 00:15:51 GMT
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
	-	`sha256:0c5bd74861e4346a0beed670ef2a6613f3594b458820c50efc5e1044d865e134`  
		Last Modified: Tue, 02 Apr 2019 23:47:30 GMT  
		Size: 54.9 MB (54918577 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f695c11a6f1bd9fd0c86ae139b216e40b0e64bb1e47c0ba6be76eb0d7ef5799`  
		Last Modified: Wed, 03 Apr 2019 00:16:03 GMT  
		Size: 1.2 MB (1209084 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e76a366760b84fd0c520a87d3cffeeb34caf1061fef3b5bb6c412d89da5e948d`  
		Last Modified: Wed, 03 Apr 2019 00:16:03 GMT  
		Size: 1.3 KB (1322 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf8ce865704cd2176e42dfaefd4e2e4127a67b690402458a7d84e3a5ee53a6ed`  
		Last Modified: Wed, 03 Apr 2019 00:16:05 GMT  
		Size: 19.6 MB (19550992 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1ad2e451a72b0edc9239b37bdeba102376fa4f275bd9d3fd9bf339bc12c5814`  
		Last Modified: Wed, 03 Apr 2019 00:16:03 GMT  
		Size: 674.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `zookeeper:3.5` - linux; arm variant v6

```console
$ docker pull zookeeper@sha256:6193a4e236b11ad7060b1999479fb551b4ad3ddeacd93c0b24e0a8a7fed20ca9
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **75.6 MB (75633417 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5e1bff0c79f3aeb07449a144a29c79ce3f8b5dc42a8443e3aa78a51be3efb09b`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["zkServer.sh","start-foreground"]`

```dockerfile
# Fri, 08 Mar 2019 03:36:05 GMT
ADD file:2bf8ccaacb388ca6271670ed8a86b8bc4450823156917d29d9d9ec0a07fd64a7 in / 
# Fri, 08 Mar 2019 03:36:06 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 04:39:53 GMT
ENV LANG=C.UTF-8
# Fri, 08 Mar 2019 04:39:55 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 08 Mar 2019 04:40:07 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Fri, 08 Mar 2019 04:40:08 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Thu, 28 Mar 2019 07:49:41 GMT
ENV JAVA_VERSION=8u201
# Wed, 03 Apr 2019 07:52:46 GMT
ENV JAVA_ALPINE_VERSION=8.201.08-r1
# Wed, 03 Apr 2019 07:52:51 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 03 Apr 2019 08:49:18 GMT
RUN apk add --no-cache     bash     su-exec
# Wed, 03 Apr 2019 08:49:35 GMT
ENV ZOO_USER=zookeeper ZOO_CONF_DIR=/conf ZOO_DATA_DIR=/data ZOO_DATA_LOG_DIR=/datalog ZOO_LOG_DIR=/logs ZOO_PORT=2181 ZOO_TICK_TIME=2000 ZOO_INIT_LIMIT=5 ZOO_SYNC_LIMIT=2 ZOO_AUTOPURGE_PURGEINTERVAL=0 ZOO_AUTOPURGE_SNAPRETAINCOUNT=3 ZOO_MAX_CLIENT_CNXNS=60 ZOO_STANDALONE_ENABLED=false
# Wed, 03 Apr 2019 08:49:36 GMT
RUN set -ex;     adduser -D "$ZOO_USER";     mkdir -p "$ZOO_DATA_LOG_DIR" "$ZOO_DATA_DIR" "$ZOO_CONF_DIR" "$ZOO_LOG_DIR";     chown "$ZOO_USER:$ZOO_USER" "$ZOO_DATA_LOG_DIR" "$ZOO_DATA_DIR" "$ZOO_CONF_DIR" "$ZOO_LOG_DIR"
# Wed, 03 Apr 2019 08:49:36 GMT
ARG GPG_KEY=D0BC8D8A4E90A40AFDFC43B3E22A746A68E327C1
# Wed, 03 Apr 2019 08:49:37 GMT
ARG DISTRO_NAME=zookeeper-3.5.4-beta
# Wed, 03 Apr 2019 08:49:43 GMT
# ARGS: DISTRO_NAME=zookeeper-3.5.4-beta GPG_KEY=D0BC8D8A4E90A40AFDFC43B3E22A746A68E327C1
RUN set -ex;     apk add --no-cache --virtual .build-deps         ca-certificates         gnupg         libressl;     wget -q "https://www.apache.org/dist/zookeeper/$DISTRO_NAME/$DISTRO_NAME.tar.gz";     wget -q "https://www.apache.org/dist/zookeeper/$DISTRO_NAME/$DISTRO_NAME.tar.gz.asc";     export GNUPGHOME="$(mktemp -d)";     gpg --keyserver ha.pool.sks-keyservers.net --recv-key "$GPG_KEY" ||     gpg --keyserver pgp.mit.edu --recv-keys "$GPG_KEY" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$GPG_KEY";     gpg --batch --verify "$DISTRO_NAME.tar.gz.asc" "$DISTRO_NAME.tar.gz";     tar -zxf "$DISTRO_NAME.tar.gz";     mv "$DISTRO_NAME/conf/"* "$ZOO_CONF_DIR";     rm -rf "$GNUPGHOME" "$DISTRO_NAME.tar.gz" "$DISTRO_NAME.tar.gz.asc";     apk del .build-deps;     chown -R "$ZOO_USER:$ZOO_USER" "/$DISTRO_NAME"
# Wed, 03 Apr 2019 08:49:44 GMT
WORKDIR /zookeeper-3.5.4-beta
# Wed, 03 Apr 2019 08:49:45 GMT
VOLUME [/data /datalog /logs]
# Wed, 03 Apr 2019 08:49:45 GMT
EXPOSE 2181 2888 3888
# Wed, 03 Apr 2019 08:49:45 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin:/zookeeper-3.5.4-beta/bin ZOOCFGDIR=/conf
# Wed, 03 Apr 2019 08:49:46 GMT
COPY file:da4c1e7ba5b62f2d076bdffec939a64fb3c8a58676a7b139e17939a632a59a88 in / 
# Wed, 03 Apr 2019 08:49:46 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 03 Apr 2019 08:49:47 GMT
CMD ["zkServer.sh" "start-foreground"]
```

-	Layers:
	-	`sha256:d33b53ae0340b7490b486edd65310a4333d7e0057854aadd12a5006faf7fa576`  
		Last Modified: Fri, 08 Mar 2019 03:36:43 GMT  
		Size: 2.5 MB (2540673 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4cb8e265594b5112bd474ac92c9c83497fc535a27624c2798c8817a01b28328c`  
		Last Modified: Fri, 08 Mar 2019 04:41:11 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:972acb4c659fffab6be0f752b78857f78dbda522970cf7946a5a622cf65f4797`  
		Last Modified: Wed, 03 Apr 2019 07:53:52 GMT  
		Size: 52.4 MB (52387444 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab1d104cdd9100d06a50a0db588a5efbf08fadb926ba551df6b67b87e3e4172a`  
		Last Modified: Wed, 03 Apr 2019 08:49:57 GMT  
		Size: 1.2 MB (1154065 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64f40614913aaebbbd38331bfd89b42e9bb0790e8ba8bbd4662e0befed46c10a`  
		Last Modified: Wed, 03 Apr 2019 08:49:56 GMT  
		Size: 1.4 KB (1402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:589150ca665326f14ce3f1fdb4587fb994f337249d48425e43d99d1192e8cd12`  
		Last Modified: Wed, 03 Apr 2019 08:50:01 GMT  
		Size: 19.5 MB (19548918 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9bcf509c1bf56428447627ce1ebf94a9071627ad07f40f42c7d2d55c123b263`  
		Last Modified: Wed, 03 Apr 2019 08:49:56 GMT  
		Size: 675.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `zookeeper:3.5` - linux; arm64 variant v8

```console
$ docker pull zookeeper@sha256:718286b63c6a5da03b08666dc0dd856dde44abe593fcf5603b8b6ab1afc90a80
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **78.4 MB (78387144 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3b0037b1b78a8a780083920c568159a675cb8b2a2619205b621146d69059a349`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["zkServer.sh","start-foreground"]`

```dockerfile
# Fri, 08 Mar 2019 03:37:01 GMT
ADD file:2e80d7b240ac8c544a868180a2a08b2533c450061e0ec276ceacaff7b87a380c in / 
# Fri, 08 Mar 2019 03:37:02 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 09:49:55 GMT
ENV LANG=C.UTF-8
# Fri, 08 Mar 2019 09:49:59 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 08 Mar 2019 09:50:47 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Fri, 08 Mar 2019 09:50:48 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Thu, 28 Mar 2019 04:09:03 GMT
ENV JAVA_VERSION=8u201
# Wed, 03 Apr 2019 09:37:52 GMT
ENV JAVA_ALPINE_VERSION=8.201.08-r1
# Wed, 03 Apr 2019 09:38:07 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 03 Apr 2019 11:10:22 GMT
RUN apk add --no-cache     bash     su-exec
# Wed, 03 Apr 2019 11:10:43 GMT
ENV ZOO_USER=zookeeper ZOO_CONF_DIR=/conf ZOO_DATA_DIR=/data ZOO_DATA_LOG_DIR=/datalog ZOO_LOG_DIR=/logs ZOO_PORT=2181 ZOO_TICK_TIME=2000 ZOO_INIT_LIMIT=5 ZOO_SYNC_LIMIT=2 ZOO_AUTOPURGE_PURGEINTERVAL=0 ZOO_AUTOPURGE_SNAPRETAINCOUNT=3 ZOO_MAX_CLIENT_CNXNS=60 ZOO_STANDALONE_ENABLED=false
# Wed, 03 Apr 2019 11:10:45 GMT
RUN set -ex;     adduser -D "$ZOO_USER";     mkdir -p "$ZOO_DATA_LOG_DIR" "$ZOO_DATA_DIR" "$ZOO_CONF_DIR" "$ZOO_LOG_DIR";     chown "$ZOO_USER:$ZOO_USER" "$ZOO_DATA_LOG_DIR" "$ZOO_DATA_DIR" "$ZOO_CONF_DIR" "$ZOO_LOG_DIR"
# Wed, 03 Apr 2019 11:10:46 GMT
ARG GPG_KEY=D0BC8D8A4E90A40AFDFC43B3E22A746A68E327C1
# Wed, 03 Apr 2019 11:10:48 GMT
ARG DISTRO_NAME=zookeeper-3.5.4-beta
# Wed, 03 Apr 2019 11:10:59 GMT
# ARGS: DISTRO_NAME=zookeeper-3.5.4-beta GPG_KEY=D0BC8D8A4E90A40AFDFC43B3E22A746A68E327C1
RUN set -ex;     apk add --no-cache --virtual .build-deps         ca-certificates         gnupg         libressl;     wget -q "https://www.apache.org/dist/zookeeper/$DISTRO_NAME/$DISTRO_NAME.tar.gz";     wget -q "https://www.apache.org/dist/zookeeper/$DISTRO_NAME/$DISTRO_NAME.tar.gz.asc";     export GNUPGHOME="$(mktemp -d)";     gpg --keyserver ha.pool.sks-keyservers.net --recv-key "$GPG_KEY" ||     gpg --keyserver pgp.mit.edu --recv-keys "$GPG_KEY" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$GPG_KEY";     gpg --batch --verify "$DISTRO_NAME.tar.gz.asc" "$DISTRO_NAME.tar.gz";     tar -zxf "$DISTRO_NAME.tar.gz";     mv "$DISTRO_NAME/conf/"* "$ZOO_CONF_DIR";     rm -rf "$GNUPGHOME" "$DISTRO_NAME.tar.gz" "$DISTRO_NAME.tar.gz.asc";     apk del .build-deps;     chown -R "$ZOO_USER:$ZOO_USER" "/$DISTRO_NAME"
# Wed, 03 Apr 2019 11:11:00 GMT
WORKDIR /zookeeper-3.5.4-beta
# Wed, 03 Apr 2019 11:11:01 GMT
VOLUME [/data /datalog /logs]
# Wed, 03 Apr 2019 11:11:01 GMT
EXPOSE 2181 2888 3888
# Wed, 03 Apr 2019 11:11:02 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin:/zookeeper-3.5.4-beta/bin ZOOCFGDIR=/conf
# Wed, 03 Apr 2019 11:11:03 GMT
COPY file:da4c1e7ba5b62f2d076bdffec939a64fb3c8a58676a7b139e17939a632a59a88 in / 
# Wed, 03 Apr 2019 11:11:04 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 03 Apr 2019 11:11:04 GMT
CMD ["zkServer.sh" "start-foreground"]
```

-	Layers:
	-	`sha256:3b00a3925ee4b356facd24aea8ece58982a66577023cb3596ce3a321aef976f9`  
		Last Modified: Fri, 08 Mar 2019 03:37:55 GMT  
		Size: 2.7 MB (2687939 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9dc35c571266c194f6068f0540d063943a44ec79726311c42950083e6ab2460`  
		Last Modified: Fri, 08 Mar 2019 09:55:35 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d966274452f0f08a7fa71690eb7a8d0847f389e523c9842ad51121d5439b6a3d`  
		Last Modified: Wed, 03 Apr 2019 09:40:42 GMT  
		Size: 54.9 MB (54929195 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c90d7ad8eaff378787eadffa1c7ccbb2e11e7feabe8831d7257d4d597d2de521`  
		Last Modified: Wed, 03 Apr 2019 11:11:19 GMT  
		Size: 1.2 MB (1220029 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23af09e049a23696d270daa3932ac9f63dde32393f56dc3b5364c5e345c57c9a`  
		Last Modified: Wed, 03 Apr 2019 11:11:18 GMT  
		Size: 1.3 KB (1324 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e75e010ba32a01807e5526fdff3c643b491eafa3ccf9b79965846282d54194b1`  
		Last Modified: Wed, 03 Apr 2019 11:11:24 GMT  
		Size: 19.5 MB (19547745 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06deeab3603a95d76a0be90bb7c92f85ceebcfd09760faae6aff3330eba4eebb`  
		Last Modified: Wed, 03 Apr 2019 11:11:18 GMT  
		Size: 674.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `zookeeper:3.5` - linux; 386

```console
$ docker pull zookeeper@sha256:c8a717d3712b10b5ed543e674c700a1e92477f2a1c3e1768b4e752a3afc9d8a7
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **79.1 MB (79094613 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:58ad031fd0f99eee9e74e23b9d95a7ecf5415e96eba0801f475899606fa4249f`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["zkServer.sh","start-foreground"]`

```dockerfile
# Fri, 08 Mar 2019 03:35:50 GMT
ADD file:98a0f92574b6a8592a131ccb07c4f516694e053d610a1701fde2d5e7c65c2175 in / 
# Fri, 08 Mar 2019 03:35:50 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 06:52:02 GMT
ENV LANG=C.UTF-8
# Fri, 08 Mar 2019 06:52:03 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 08 Mar 2019 06:52:17 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Fri, 08 Mar 2019 06:52:17 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Thu, 28 Mar 2019 01:00:58 GMT
ENV JAVA_VERSION=8u201
# Wed, 03 Apr 2019 11:35:25 GMT
ENV JAVA_ALPINE_VERSION=8.201.08-r1
# Wed, 03 Apr 2019 11:35:29 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 03 Apr 2019 13:38:55 GMT
RUN apk add --no-cache     bash     su-exec
# Wed, 03 Apr 2019 13:39:05 GMT
ENV ZOO_USER=zookeeper ZOO_CONF_DIR=/conf ZOO_DATA_DIR=/data ZOO_DATA_LOG_DIR=/datalog ZOO_LOG_DIR=/logs ZOO_PORT=2181 ZOO_TICK_TIME=2000 ZOO_INIT_LIMIT=5 ZOO_SYNC_LIMIT=2 ZOO_AUTOPURGE_PURGEINTERVAL=0 ZOO_AUTOPURGE_SNAPRETAINCOUNT=3 ZOO_MAX_CLIENT_CNXNS=60 ZOO_STANDALONE_ENABLED=false
# Wed, 03 Apr 2019 13:39:06 GMT
RUN set -ex;     adduser -D "$ZOO_USER";     mkdir -p "$ZOO_DATA_LOG_DIR" "$ZOO_DATA_DIR" "$ZOO_CONF_DIR" "$ZOO_LOG_DIR";     chown "$ZOO_USER:$ZOO_USER" "$ZOO_DATA_LOG_DIR" "$ZOO_DATA_DIR" "$ZOO_CONF_DIR" "$ZOO_LOG_DIR"
# Wed, 03 Apr 2019 13:39:06 GMT
ARG GPG_KEY=D0BC8D8A4E90A40AFDFC43B3E22A746A68E327C1
# Wed, 03 Apr 2019 13:39:06 GMT
ARG DISTRO_NAME=zookeeper-3.5.4-beta
# Wed, 03 Apr 2019 13:39:10 GMT
# ARGS: DISTRO_NAME=zookeeper-3.5.4-beta GPG_KEY=D0BC8D8A4E90A40AFDFC43B3E22A746A68E327C1
RUN set -ex;     apk add --no-cache --virtual .build-deps         ca-certificates         gnupg         libressl;     wget -q "https://www.apache.org/dist/zookeeper/$DISTRO_NAME/$DISTRO_NAME.tar.gz";     wget -q "https://www.apache.org/dist/zookeeper/$DISTRO_NAME/$DISTRO_NAME.tar.gz.asc";     export GNUPGHOME="$(mktemp -d)";     gpg --keyserver ha.pool.sks-keyservers.net --recv-key "$GPG_KEY" ||     gpg --keyserver pgp.mit.edu --recv-keys "$GPG_KEY" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$GPG_KEY";     gpg --batch --verify "$DISTRO_NAME.tar.gz.asc" "$DISTRO_NAME.tar.gz";     tar -zxf "$DISTRO_NAME.tar.gz";     mv "$DISTRO_NAME/conf/"* "$ZOO_CONF_DIR";     rm -rf "$GNUPGHOME" "$DISTRO_NAME.tar.gz" "$DISTRO_NAME.tar.gz.asc";     apk del .build-deps;     chown -R "$ZOO_USER:$ZOO_USER" "/$DISTRO_NAME"
# Wed, 03 Apr 2019 13:39:10 GMT
WORKDIR /zookeeper-3.5.4-beta
# Wed, 03 Apr 2019 13:39:10 GMT
VOLUME [/data /datalog /logs]
# Wed, 03 Apr 2019 13:39:11 GMT
EXPOSE 2181 2888 3888
# Wed, 03 Apr 2019 13:39:11 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin:/zookeeper-3.5.4-beta/bin ZOOCFGDIR=/conf
# Wed, 03 Apr 2019 13:39:11 GMT
COPY file:da4c1e7ba5b62f2d076bdffec939a64fb3c8a58676a7b139e17939a632a59a88 in / 
# Wed, 03 Apr 2019 13:39:11 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 03 Apr 2019 13:39:11 GMT
CMD ["zkServer.sh" "start-foreground"]
```

-	Layers:
	-	`sha256:a4c1e43a7431a562d92c5eb6e09e96b4731a474af51cad1c46e2d305ede29005`  
		Last Modified: Fri, 08 Mar 2019 03:36:34 GMT  
		Size: 2.7 MB (2749355 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe95f117badec568caa0381ef010c1d9df00d3c0870ebab8187a0017d68c5f8b`  
		Last Modified: Fri, 08 Mar 2019 06:53:37 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a47b2ea4dcb1b036ea9c07141df2ea81e99b070085f09fec057458ca4139b596`  
		Last Modified: Wed, 03 Apr 2019 11:36:48 GMT  
		Size: 55.5 MB (55538598 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ddbd8e9c73f73df2a2f21af78af53144eac7d4769e27d28f466efa15c8039149`  
		Last Modified: Wed, 03 Apr 2019 13:39:19 GMT  
		Size: 1.3 MB (1256243 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e34ed07c5f1103ef759c7fbd1258f71d60d5676cc85ab8aad52d8c43c0c4c98`  
		Last Modified: Wed, 03 Apr 2019 13:39:18 GMT  
		Size: 1.3 KB (1322 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e0c9e460fb48d171b514f7f8b7ffdc297a875c42bb8a56d517ca545cf604af0`  
		Last Modified: Wed, 03 Apr 2019 13:39:21 GMT  
		Size: 19.5 MB (19548183 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c24a873ea6debeaa04d5824c3779927cf95a826cd38132b0a8e088750012594e`  
		Last Modified: Wed, 03 Apr 2019 13:39:18 GMT  
		Size: 674.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `zookeeper:3.5` - linux; ppc64le

```console
$ docker pull zookeeper@sha256:08e7db1cbf56588cb7ceef8321b4b7e41f08949c9b3f1af9ac847b7f2eb76521
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **79.2 MB (79211390 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bbe82ef959d08a393b0cc59bca492c1fd3bbc95109f1c81c65b43135ce69afaf`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["zkServer.sh","start-foreground"]`

```dockerfile
# Fri, 08 Mar 2019 03:37:33 GMT
ADD file:6dfaec9befa64397af571d1da2e766c694148f7a025b9411404a924d3de64bd3 in / 
# Fri, 08 Mar 2019 03:37:36 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 04:13:23 GMT
ENV LANG=C.UTF-8
# Fri, 08 Mar 2019 04:13:28 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 08 Mar 2019 04:14:02 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Fri, 08 Mar 2019 04:14:04 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Thu, 28 Mar 2019 08:37:47 GMT
ENV JAVA_VERSION=8u201
# Wed, 03 Apr 2019 09:10:25 GMT
ENV JAVA_ALPINE_VERSION=8.201.08-r1
# Wed, 03 Apr 2019 09:10:33 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 03 Apr 2019 10:58:29 GMT
RUN apk add --no-cache     bash     su-exec
# Wed, 03 Apr 2019 10:59:08 GMT
ENV ZOO_USER=zookeeper ZOO_CONF_DIR=/conf ZOO_DATA_DIR=/data ZOO_DATA_LOG_DIR=/datalog ZOO_LOG_DIR=/logs ZOO_PORT=2181 ZOO_TICK_TIME=2000 ZOO_INIT_LIMIT=5 ZOO_SYNC_LIMIT=2 ZOO_AUTOPURGE_PURGEINTERVAL=0 ZOO_AUTOPURGE_SNAPRETAINCOUNT=3 ZOO_MAX_CLIENT_CNXNS=60 ZOO_STANDALONE_ENABLED=false
# Wed, 03 Apr 2019 10:59:14 GMT
RUN set -ex;     adduser -D "$ZOO_USER";     mkdir -p "$ZOO_DATA_LOG_DIR" "$ZOO_DATA_DIR" "$ZOO_CONF_DIR" "$ZOO_LOG_DIR";     chown "$ZOO_USER:$ZOO_USER" "$ZOO_DATA_LOG_DIR" "$ZOO_DATA_DIR" "$ZOO_CONF_DIR" "$ZOO_LOG_DIR"
# Wed, 03 Apr 2019 10:59:16 GMT
ARG GPG_KEY=D0BC8D8A4E90A40AFDFC43B3E22A746A68E327C1
# Wed, 03 Apr 2019 10:59:19 GMT
ARG DISTRO_NAME=zookeeper-3.5.4-beta
# Wed, 03 Apr 2019 10:59:40 GMT
# ARGS: DISTRO_NAME=zookeeper-3.5.4-beta GPG_KEY=D0BC8D8A4E90A40AFDFC43B3E22A746A68E327C1
RUN set -ex;     apk add --no-cache --virtual .build-deps         ca-certificates         gnupg         libressl;     wget -q "https://www.apache.org/dist/zookeeper/$DISTRO_NAME/$DISTRO_NAME.tar.gz";     wget -q "https://www.apache.org/dist/zookeeper/$DISTRO_NAME/$DISTRO_NAME.tar.gz.asc";     export GNUPGHOME="$(mktemp -d)";     gpg --keyserver ha.pool.sks-keyservers.net --recv-key "$GPG_KEY" ||     gpg --keyserver pgp.mit.edu --recv-keys "$GPG_KEY" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$GPG_KEY";     gpg --batch --verify "$DISTRO_NAME.tar.gz.asc" "$DISTRO_NAME.tar.gz";     tar -zxf "$DISTRO_NAME.tar.gz";     mv "$DISTRO_NAME/conf/"* "$ZOO_CONF_DIR";     rm -rf "$GNUPGHOME" "$DISTRO_NAME.tar.gz" "$DISTRO_NAME.tar.gz.asc";     apk del .build-deps;     chown -R "$ZOO_USER:$ZOO_USER" "/$DISTRO_NAME"
# Wed, 03 Apr 2019 10:59:42 GMT
WORKDIR /zookeeper-3.5.4-beta
# Wed, 03 Apr 2019 10:59:44 GMT
VOLUME [/data /datalog /logs]
# Wed, 03 Apr 2019 10:59:47 GMT
EXPOSE 2181 2888 3888
# Wed, 03 Apr 2019 10:59:51 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin:/zookeeper-3.5.4-beta/bin ZOOCFGDIR=/conf
# Wed, 03 Apr 2019 10:59:53 GMT
COPY file:da4c1e7ba5b62f2d076bdffec939a64fb3c8a58676a7b139e17939a632a59a88 in / 
# Wed, 03 Apr 2019 10:59:56 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 03 Apr 2019 10:59:58 GMT
CMD ["zkServer.sh" "start-foreground"]
```

-	Layers:
	-	`sha256:611bce2a4fa9a0e18025e088381d26f1dda2e1c02160c4d24a2720f9dbca9eaf`  
		Last Modified: Fri, 08 Mar 2019 03:38:31 GMT  
		Size: 2.8 MB (2778638 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b37b96605d1a56e30ef6132daa2faa08064df25ac1042a5b799c96028716bf7`  
		Last Modified: Fri, 08 Mar 2019 04:17:12 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf8f629dab1143ca48d3450e3e249d44bce82649250f91638bb3af77b98c63f2`  
		Last Modified: Wed, 03 Apr 2019 09:13:03 GMT  
		Size: 55.6 MB (55588718 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0171dca4a8ce7f903b3964084c630681202ddec5ae2ec0ea37c4d82b8d5ee15f`  
		Last Modified: Wed, 03 Apr 2019 11:00:17 GMT  
		Size: 1.3 MB (1291410 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26cca3958bedaf1fa70ec41df3a54ad743753679988c31eb68e7d50072555af4`  
		Last Modified: Wed, 03 Apr 2019 11:00:12 GMT  
		Size: 1.4 KB (1402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3713948a60288941798082ef7f06fd21b5e483cdf994c73d13551a2ea02b561a`  
		Last Modified: Wed, 03 Apr 2019 11:00:15 GMT  
		Size: 19.6 MB (19550309 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:187cee955f0e07ef39a29afe32859e298cf3620a955a949f0a73d039e01de1ed`  
		Last Modified: Wed, 03 Apr 2019 11:00:12 GMT  
		Size: 673.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `zookeeper:3.5` - linux; s390x

```console
$ docker pull zookeeper@sha256:98592aed449a4ac525bc475e883ff6dfbf915f10bb2b456552422a75a6845a58
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **77.0 MB (76991387 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:14763bd832803905ade0dd1b8150fcf7ac0355c30bbcc2870c497ce461c73bff`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["zkServer.sh","start-foreground"]`

```dockerfile
# Fri, 08 Mar 2019 03:35:46 GMT
ADD file:3f769e5ff31fbae6ea6b835fa878b05d6c6920ca4313aa63be7d057e29241d87 in / 
# Fri, 08 Mar 2019 03:35:46 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 04:02:40 GMT
ENV LANG=C.UTF-8
# Fri, 08 Mar 2019 04:02:40 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 08 Mar 2019 04:02:56 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Fri, 08 Mar 2019 04:02:57 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Thu, 28 Mar 2019 11:49:46 GMT
ENV JAVA_VERSION=8u201
# Thu, 04 Apr 2019 11:57:24 GMT
ENV JAVA_ALPINE_VERSION=8.201.08-r1
# Thu, 04 Apr 2019 11:57:28 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Thu, 04 Apr 2019 13:38:06 GMT
RUN apk add --no-cache     bash     su-exec
# Thu, 04 Apr 2019 13:38:37 GMT
ENV ZOO_USER=zookeeper ZOO_CONF_DIR=/conf ZOO_DATA_DIR=/data ZOO_DATA_LOG_DIR=/datalog ZOO_LOG_DIR=/logs ZOO_PORT=2181 ZOO_TICK_TIME=2000 ZOO_INIT_LIMIT=5 ZOO_SYNC_LIMIT=2 ZOO_AUTOPURGE_PURGEINTERVAL=0 ZOO_AUTOPURGE_SNAPRETAINCOUNT=3 ZOO_MAX_CLIENT_CNXNS=60 ZOO_STANDALONE_ENABLED=false
# Thu, 04 Apr 2019 13:38:38 GMT
RUN set -ex;     adduser -D "$ZOO_USER";     mkdir -p "$ZOO_DATA_LOG_DIR" "$ZOO_DATA_DIR" "$ZOO_CONF_DIR" "$ZOO_LOG_DIR";     chown "$ZOO_USER:$ZOO_USER" "$ZOO_DATA_LOG_DIR" "$ZOO_DATA_DIR" "$ZOO_CONF_DIR" "$ZOO_LOG_DIR"
# Thu, 04 Apr 2019 13:38:38 GMT
ARG GPG_KEY=D0BC8D8A4E90A40AFDFC43B3E22A746A68E327C1
# Thu, 04 Apr 2019 13:38:38 GMT
ARG DISTRO_NAME=zookeeper-3.5.4-beta
# Thu, 04 Apr 2019 13:40:19 GMT
# ARGS: DISTRO_NAME=zookeeper-3.5.4-beta GPG_KEY=D0BC8D8A4E90A40AFDFC43B3E22A746A68E327C1
RUN set -ex;     apk add --no-cache --virtual .build-deps         ca-certificates         gnupg         libressl;     wget -q "https://www.apache.org/dist/zookeeper/$DISTRO_NAME/$DISTRO_NAME.tar.gz";     wget -q "https://www.apache.org/dist/zookeeper/$DISTRO_NAME/$DISTRO_NAME.tar.gz.asc";     export GNUPGHOME="$(mktemp -d)";     gpg --keyserver ha.pool.sks-keyservers.net --recv-key "$GPG_KEY" ||     gpg --keyserver pgp.mit.edu --recv-keys "$GPG_KEY" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$GPG_KEY";     gpg --batch --verify "$DISTRO_NAME.tar.gz.asc" "$DISTRO_NAME.tar.gz";     tar -zxf "$DISTRO_NAME.tar.gz";     mv "$DISTRO_NAME/conf/"* "$ZOO_CONF_DIR";     rm -rf "$GNUPGHOME" "$DISTRO_NAME.tar.gz" "$DISTRO_NAME.tar.gz.asc";     apk del .build-deps;     chown -R "$ZOO_USER:$ZOO_USER" "/$DISTRO_NAME"
# Thu, 04 Apr 2019 13:40:19 GMT
WORKDIR /zookeeper-3.5.4-beta
# Thu, 04 Apr 2019 13:40:19 GMT
VOLUME [/data /datalog /logs]
# Thu, 04 Apr 2019 13:40:20 GMT
EXPOSE 2181 2888 3888
# Thu, 04 Apr 2019 13:40:20 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin:/zookeeper-3.5.4-beta/bin ZOOCFGDIR=/conf
# Thu, 04 Apr 2019 13:40:20 GMT
COPY file:da4c1e7ba5b62f2d076bdffec939a64fb3c8a58676a7b139e17939a632a59a88 in / 
# Thu, 04 Apr 2019 13:40:20 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 04 Apr 2019 13:40:21 GMT
CMD ["zkServer.sh" "start-foreground"]
```

-	Layers:
	-	`sha256:d981dc59d98dcf79c1920d433d8d56f9892f229da716de64280980f317a80ef1`  
		Last Modified: Fri, 08 Mar 2019 03:36:19 GMT  
		Size: 2.5 MB (2541305 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5fc974726c47232f0d4a4664c4fe09841c9a948a3e4a56abfe98770208fcc645`  
		Last Modified: Fri, 08 Mar 2019 04:04:06 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7742b04873b403dd6576fe37e0a6e7c391ae124437941c50ffe52260f269aafe`  
		Last Modified: Thu, 04 Apr 2019 11:59:12 GMT  
		Size: 53.7 MB (53660002 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd84862d2c4168b5d8bf7a7d9e51a6f2e6c9546b27c040522b794b8568b7da04`  
		Last Modified: Thu, 04 Apr 2019 13:40:34 GMT  
		Size: 1.2 MB (1240075 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28e3df34e2967c790065c995f98e5319215e2074cde45417fbfd6d0a263739fa`  
		Last Modified: Thu, 04 Apr 2019 13:40:33 GMT  
		Size: 1.3 KB (1322 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50269efa39420a38c2551ef9fa5ec6e9c23127721adf5ce7efc5c1793c984985`  
		Last Modified: Thu, 04 Apr 2019 13:40:36 GMT  
		Size: 19.5 MB (19547770 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0259b20253162624bf362a393bffa9d5477953c6f4950679af7457618784a3f`  
		Last Modified: Thu, 04 Apr 2019 13:40:34 GMT  
		Size: 674.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `zookeeper:3.5.4-beta`

```console
$ docker pull zookeeper@sha256:7fcd272d2555ab0fca2bdc2f28f66b66589d309688e58951fe0f69c8704f8e17
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
$ docker pull zookeeper@sha256:d614417373404f1cd77bf61ba1b556a559feb82f1f6a8a05146a340d9a5072b8
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **78.4 MB (78435617 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a01eec39633766e340d70d3e17dc280afac4280de0412fe532cb92b4175ed635`
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
# Wed, 27 Mar 2019 23:29:04 GMT
ENV JAVA_VERSION=8u201
# Tue, 02 Apr 2019 23:45:43 GMT
ENV JAVA_ALPINE_VERSION=8.201.08-r1
# Tue, 02 Apr 2019 23:45:46 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 03 Apr 2019 00:15:35 GMT
RUN apk add --no-cache     bash     su-exec
# Wed, 03 Apr 2019 00:15:45 GMT
ENV ZOO_USER=zookeeper ZOO_CONF_DIR=/conf ZOO_DATA_DIR=/data ZOO_DATA_LOG_DIR=/datalog ZOO_LOG_DIR=/logs ZOO_PORT=2181 ZOO_TICK_TIME=2000 ZOO_INIT_LIMIT=5 ZOO_SYNC_LIMIT=2 ZOO_AUTOPURGE_PURGEINTERVAL=0 ZOO_AUTOPURGE_SNAPRETAINCOUNT=3 ZOO_MAX_CLIENT_CNXNS=60 ZOO_STANDALONE_ENABLED=false
# Wed, 03 Apr 2019 00:15:46 GMT
RUN set -ex;     adduser -D "$ZOO_USER";     mkdir -p "$ZOO_DATA_LOG_DIR" "$ZOO_DATA_DIR" "$ZOO_CONF_DIR" "$ZOO_LOG_DIR";     chown "$ZOO_USER:$ZOO_USER" "$ZOO_DATA_LOG_DIR" "$ZOO_DATA_DIR" "$ZOO_CONF_DIR" "$ZOO_LOG_DIR"
# Wed, 03 Apr 2019 00:15:46 GMT
ARG GPG_KEY=D0BC8D8A4E90A40AFDFC43B3E22A746A68E327C1
# Wed, 03 Apr 2019 00:15:46 GMT
ARG DISTRO_NAME=zookeeper-3.5.4-beta
# Wed, 03 Apr 2019 00:15:50 GMT
# ARGS: DISTRO_NAME=zookeeper-3.5.4-beta GPG_KEY=D0BC8D8A4E90A40AFDFC43B3E22A746A68E327C1
RUN set -ex;     apk add --no-cache --virtual .build-deps         ca-certificates         gnupg         libressl;     wget -q "https://www.apache.org/dist/zookeeper/$DISTRO_NAME/$DISTRO_NAME.tar.gz";     wget -q "https://www.apache.org/dist/zookeeper/$DISTRO_NAME/$DISTRO_NAME.tar.gz.asc";     export GNUPGHOME="$(mktemp -d)";     gpg --keyserver ha.pool.sks-keyservers.net --recv-key "$GPG_KEY" ||     gpg --keyserver pgp.mit.edu --recv-keys "$GPG_KEY" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$GPG_KEY";     gpg --batch --verify "$DISTRO_NAME.tar.gz.asc" "$DISTRO_NAME.tar.gz";     tar -zxf "$DISTRO_NAME.tar.gz";     mv "$DISTRO_NAME/conf/"* "$ZOO_CONF_DIR";     rm -rf "$GNUPGHOME" "$DISTRO_NAME.tar.gz" "$DISTRO_NAME.tar.gz.asc";     apk del .build-deps;     chown -R "$ZOO_USER:$ZOO_USER" "/$DISTRO_NAME"
# Wed, 03 Apr 2019 00:15:50 GMT
WORKDIR /zookeeper-3.5.4-beta
# Wed, 03 Apr 2019 00:15:50 GMT
VOLUME [/data /datalog /logs]
# Wed, 03 Apr 2019 00:15:51 GMT
EXPOSE 2181 2888 3888
# Wed, 03 Apr 2019 00:15:51 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin:/zookeeper-3.5.4-beta/bin ZOOCFGDIR=/conf
# Wed, 03 Apr 2019 00:15:51 GMT
COPY file:da4c1e7ba5b62f2d076bdffec939a64fb3c8a58676a7b139e17939a632a59a88 in / 
# Wed, 03 Apr 2019 00:15:51 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 03 Apr 2019 00:15:51 GMT
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
	-	`sha256:0c5bd74861e4346a0beed670ef2a6613f3594b458820c50efc5e1044d865e134`  
		Last Modified: Tue, 02 Apr 2019 23:47:30 GMT  
		Size: 54.9 MB (54918577 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f695c11a6f1bd9fd0c86ae139b216e40b0e64bb1e47c0ba6be76eb0d7ef5799`  
		Last Modified: Wed, 03 Apr 2019 00:16:03 GMT  
		Size: 1.2 MB (1209084 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e76a366760b84fd0c520a87d3cffeeb34caf1061fef3b5bb6c412d89da5e948d`  
		Last Modified: Wed, 03 Apr 2019 00:16:03 GMT  
		Size: 1.3 KB (1322 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf8ce865704cd2176e42dfaefd4e2e4127a67b690402458a7d84e3a5ee53a6ed`  
		Last Modified: Wed, 03 Apr 2019 00:16:05 GMT  
		Size: 19.6 MB (19550992 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1ad2e451a72b0edc9239b37bdeba102376fa4f275bd9d3fd9bf339bc12c5814`  
		Last Modified: Wed, 03 Apr 2019 00:16:03 GMT  
		Size: 674.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `zookeeper:3.5.4-beta` - linux; arm variant v6

```console
$ docker pull zookeeper@sha256:6193a4e236b11ad7060b1999479fb551b4ad3ddeacd93c0b24e0a8a7fed20ca9
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **75.6 MB (75633417 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5e1bff0c79f3aeb07449a144a29c79ce3f8b5dc42a8443e3aa78a51be3efb09b`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["zkServer.sh","start-foreground"]`

```dockerfile
# Fri, 08 Mar 2019 03:36:05 GMT
ADD file:2bf8ccaacb388ca6271670ed8a86b8bc4450823156917d29d9d9ec0a07fd64a7 in / 
# Fri, 08 Mar 2019 03:36:06 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 04:39:53 GMT
ENV LANG=C.UTF-8
# Fri, 08 Mar 2019 04:39:55 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 08 Mar 2019 04:40:07 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Fri, 08 Mar 2019 04:40:08 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Thu, 28 Mar 2019 07:49:41 GMT
ENV JAVA_VERSION=8u201
# Wed, 03 Apr 2019 07:52:46 GMT
ENV JAVA_ALPINE_VERSION=8.201.08-r1
# Wed, 03 Apr 2019 07:52:51 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 03 Apr 2019 08:49:18 GMT
RUN apk add --no-cache     bash     su-exec
# Wed, 03 Apr 2019 08:49:35 GMT
ENV ZOO_USER=zookeeper ZOO_CONF_DIR=/conf ZOO_DATA_DIR=/data ZOO_DATA_LOG_DIR=/datalog ZOO_LOG_DIR=/logs ZOO_PORT=2181 ZOO_TICK_TIME=2000 ZOO_INIT_LIMIT=5 ZOO_SYNC_LIMIT=2 ZOO_AUTOPURGE_PURGEINTERVAL=0 ZOO_AUTOPURGE_SNAPRETAINCOUNT=3 ZOO_MAX_CLIENT_CNXNS=60 ZOO_STANDALONE_ENABLED=false
# Wed, 03 Apr 2019 08:49:36 GMT
RUN set -ex;     adduser -D "$ZOO_USER";     mkdir -p "$ZOO_DATA_LOG_DIR" "$ZOO_DATA_DIR" "$ZOO_CONF_DIR" "$ZOO_LOG_DIR";     chown "$ZOO_USER:$ZOO_USER" "$ZOO_DATA_LOG_DIR" "$ZOO_DATA_DIR" "$ZOO_CONF_DIR" "$ZOO_LOG_DIR"
# Wed, 03 Apr 2019 08:49:36 GMT
ARG GPG_KEY=D0BC8D8A4E90A40AFDFC43B3E22A746A68E327C1
# Wed, 03 Apr 2019 08:49:37 GMT
ARG DISTRO_NAME=zookeeper-3.5.4-beta
# Wed, 03 Apr 2019 08:49:43 GMT
# ARGS: DISTRO_NAME=zookeeper-3.5.4-beta GPG_KEY=D0BC8D8A4E90A40AFDFC43B3E22A746A68E327C1
RUN set -ex;     apk add --no-cache --virtual .build-deps         ca-certificates         gnupg         libressl;     wget -q "https://www.apache.org/dist/zookeeper/$DISTRO_NAME/$DISTRO_NAME.tar.gz";     wget -q "https://www.apache.org/dist/zookeeper/$DISTRO_NAME/$DISTRO_NAME.tar.gz.asc";     export GNUPGHOME="$(mktemp -d)";     gpg --keyserver ha.pool.sks-keyservers.net --recv-key "$GPG_KEY" ||     gpg --keyserver pgp.mit.edu --recv-keys "$GPG_KEY" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$GPG_KEY";     gpg --batch --verify "$DISTRO_NAME.tar.gz.asc" "$DISTRO_NAME.tar.gz";     tar -zxf "$DISTRO_NAME.tar.gz";     mv "$DISTRO_NAME/conf/"* "$ZOO_CONF_DIR";     rm -rf "$GNUPGHOME" "$DISTRO_NAME.tar.gz" "$DISTRO_NAME.tar.gz.asc";     apk del .build-deps;     chown -R "$ZOO_USER:$ZOO_USER" "/$DISTRO_NAME"
# Wed, 03 Apr 2019 08:49:44 GMT
WORKDIR /zookeeper-3.5.4-beta
# Wed, 03 Apr 2019 08:49:45 GMT
VOLUME [/data /datalog /logs]
# Wed, 03 Apr 2019 08:49:45 GMT
EXPOSE 2181 2888 3888
# Wed, 03 Apr 2019 08:49:45 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin:/zookeeper-3.5.4-beta/bin ZOOCFGDIR=/conf
# Wed, 03 Apr 2019 08:49:46 GMT
COPY file:da4c1e7ba5b62f2d076bdffec939a64fb3c8a58676a7b139e17939a632a59a88 in / 
# Wed, 03 Apr 2019 08:49:46 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 03 Apr 2019 08:49:47 GMT
CMD ["zkServer.sh" "start-foreground"]
```

-	Layers:
	-	`sha256:d33b53ae0340b7490b486edd65310a4333d7e0057854aadd12a5006faf7fa576`  
		Last Modified: Fri, 08 Mar 2019 03:36:43 GMT  
		Size: 2.5 MB (2540673 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4cb8e265594b5112bd474ac92c9c83497fc535a27624c2798c8817a01b28328c`  
		Last Modified: Fri, 08 Mar 2019 04:41:11 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:972acb4c659fffab6be0f752b78857f78dbda522970cf7946a5a622cf65f4797`  
		Last Modified: Wed, 03 Apr 2019 07:53:52 GMT  
		Size: 52.4 MB (52387444 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab1d104cdd9100d06a50a0db588a5efbf08fadb926ba551df6b67b87e3e4172a`  
		Last Modified: Wed, 03 Apr 2019 08:49:57 GMT  
		Size: 1.2 MB (1154065 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64f40614913aaebbbd38331bfd89b42e9bb0790e8ba8bbd4662e0befed46c10a`  
		Last Modified: Wed, 03 Apr 2019 08:49:56 GMT  
		Size: 1.4 KB (1402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:589150ca665326f14ce3f1fdb4587fb994f337249d48425e43d99d1192e8cd12`  
		Last Modified: Wed, 03 Apr 2019 08:50:01 GMT  
		Size: 19.5 MB (19548918 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9bcf509c1bf56428447627ce1ebf94a9071627ad07f40f42c7d2d55c123b263`  
		Last Modified: Wed, 03 Apr 2019 08:49:56 GMT  
		Size: 675.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `zookeeper:3.5.4-beta` - linux; arm64 variant v8

```console
$ docker pull zookeeper@sha256:718286b63c6a5da03b08666dc0dd856dde44abe593fcf5603b8b6ab1afc90a80
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **78.4 MB (78387144 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3b0037b1b78a8a780083920c568159a675cb8b2a2619205b621146d69059a349`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["zkServer.sh","start-foreground"]`

```dockerfile
# Fri, 08 Mar 2019 03:37:01 GMT
ADD file:2e80d7b240ac8c544a868180a2a08b2533c450061e0ec276ceacaff7b87a380c in / 
# Fri, 08 Mar 2019 03:37:02 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 09:49:55 GMT
ENV LANG=C.UTF-8
# Fri, 08 Mar 2019 09:49:59 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 08 Mar 2019 09:50:47 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Fri, 08 Mar 2019 09:50:48 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Thu, 28 Mar 2019 04:09:03 GMT
ENV JAVA_VERSION=8u201
# Wed, 03 Apr 2019 09:37:52 GMT
ENV JAVA_ALPINE_VERSION=8.201.08-r1
# Wed, 03 Apr 2019 09:38:07 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 03 Apr 2019 11:10:22 GMT
RUN apk add --no-cache     bash     su-exec
# Wed, 03 Apr 2019 11:10:43 GMT
ENV ZOO_USER=zookeeper ZOO_CONF_DIR=/conf ZOO_DATA_DIR=/data ZOO_DATA_LOG_DIR=/datalog ZOO_LOG_DIR=/logs ZOO_PORT=2181 ZOO_TICK_TIME=2000 ZOO_INIT_LIMIT=5 ZOO_SYNC_LIMIT=2 ZOO_AUTOPURGE_PURGEINTERVAL=0 ZOO_AUTOPURGE_SNAPRETAINCOUNT=3 ZOO_MAX_CLIENT_CNXNS=60 ZOO_STANDALONE_ENABLED=false
# Wed, 03 Apr 2019 11:10:45 GMT
RUN set -ex;     adduser -D "$ZOO_USER";     mkdir -p "$ZOO_DATA_LOG_DIR" "$ZOO_DATA_DIR" "$ZOO_CONF_DIR" "$ZOO_LOG_DIR";     chown "$ZOO_USER:$ZOO_USER" "$ZOO_DATA_LOG_DIR" "$ZOO_DATA_DIR" "$ZOO_CONF_DIR" "$ZOO_LOG_DIR"
# Wed, 03 Apr 2019 11:10:46 GMT
ARG GPG_KEY=D0BC8D8A4E90A40AFDFC43B3E22A746A68E327C1
# Wed, 03 Apr 2019 11:10:48 GMT
ARG DISTRO_NAME=zookeeper-3.5.4-beta
# Wed, 03 Apr 2019 11:10:59 GMT
# ARGS: DISTRO_NAME=zookeeper-3.5.4-beta GPG_KEY=D0BC8D8A4E90A40AFDFC43B3E22A746A68E327C1
RUN set -ex;     apk add --no-cache --virtual .build-deps         ca-certificates         gnupg         libressl;     wget -q "https://www.apache.org/dist/zookeeper/$DISTRO_NAME/$DISTRO_NAME.tar.gz";     wget -q "https://www.apache.org/dist/zookeeper/$DISTRO_NAME/$DISTRO_NAME.tar.gz.asc";     export GNUPGHOME="$(mktemp -d)";     gpg --keyserver ha.pool.sks-keyservers.net --recv-key "$GPG_KEY" ||     gpg --keyserver pgp.mit.edu --recv-keys "$GPG_KEY" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$GPG_KEY";     gpg --batch --verify "$DISTRO_NAME.tar.gz.asc" "$DISTRO_NAME.tar.gz";     tar -zxf "$DISTRO_NAME.tar.gz";     mv "$DISTRO_NAME/conf/"* "$ZOO_CONF_DIR";     rm -rf "$GNUPGHOME" "$DISTRO_NAME.tar.gz" "$DISTRO_NAME.tar.gz.asc";     apk del .build-deps;     chown -R "$ZOO_USER:$ZOO_USER" "/$DISTRO_NAME"
# Wed, 03 Apr 2019 11:11:00 GMT
WORKDIR /zookeeper-3.5.4-beta
# Wed, 03 Apr 2019 11:11:01 GMT
VOLUME [/data /datalog /logs]
# Wed, 03 Apr 2019 11:11:01 GMT
EXPOSE 2181 2888 3888
# Wed, 03 Apr 2019 11:11:02 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin:/zookeeper-3.5.4-beta/bin ZOOCFGDIR=/conf
# Wed, 03 Apr 2019 11:11:03 GMT
COPY file:da4c1e7ba5b62f2d076bdffec939a64fb3c8a58676a7b139e17939a632a59a88 in / 
# Wed, 03 Apr 2019 11:11:04 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 03 Apr 2019 11:11:04 GMT
CMD ["zkServer.sh" "start-foreground"]
```

-	Layers:
	-	`sha256:3b00a3925ee4b356facd24aea8ece58982a66577023cb3596ce3a321aef976f9`  
		Last Modified: Fri, 08 Mar 2019 03:37:55 GMT  
		Size: 2.7 MB (2687939 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9dc35c571266c194f6068f0540d063943a44ec79726311c42950083e6ab2460`  
		Last Modified: Fri, 08 Mar 2019 09:55:35 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d966274452f0f08a7fa71690eb7a8d0847f389e523c9842ad51121d5439b6a3d`  
		Last Modified: Wed, 03 Apr 2019 09:40:42 GMT  
		Size: 54.9 MB (54929195 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c90d7ad8eaff378787eadffa1c7ccbb2e11e7feabe8831d7257d4d597d2de521`  
		Last Modified: Wed, 03 Apr 2019 11:11:19 GMT  
		Size: 1.2 MB (1220029 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23af09e049a23696d270daa3932ac9f63dde32393f56dc3b5364c5e345c57c9a`  
		Last Modified: Wed, 03 Apr 2019 11:11:18 GMT  
		Size: 1.3 KB (1324 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e75e010ba32a01807e5526fdff3c643b491eafa3ccf9b79965846282d54194b1`  
		Last Modified: Wed, 03 Apr 2019 11:11:24 GMT  
		Size: 19.5 MB (19547745 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06deeab3603a95d76a0be90bb7c92f85ceebcfd09760faae6aff3330eba4eebb`  
		Last Modified: Wed, 03 Apr 2019 11:11:18 GMT  
		Size: 674.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `zookeeper:3.5.4-beta` - linux; 386

```console
$ docker pull zookeeper@sha256:c8a717d3712b10b5ed543e674c700a1e92477f2a1c3e1768b4e752a3afc9d8a7
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **79.1 MB (79094613 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:58ad031fd0f99eee9e74e23b9d95a7ecf5415e96eba0801f475899606fa4249f`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["zkServer.sh","start-foreground"]`

```dockerfile
# Fri, 08 Mar 2019 03:35:50 GMT
ADD file:98a0f92574b6a8592a131ccb07c4f516694e053d610a1701fde2d5e7c65c2175 in / 
# Fri, 08 Mar 2019 03:35:50 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 06:52:02 GMT
ENV LANG=C.UTF-8
# Fri, 08 Mar 2019 06:52:03 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 08 Mar 2019 06:52:17 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Fri, 08 Mar 2019 06:52:17 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Thu, 28 Mar 2019 01:00:58 GMT
ENV JAVA_VERSION=8u201
# Wed, 03 Apr 2019 11:35:25 GMT
ENV JAVA_ALPINE_VERSION=8.201.08-r1
# Wed, 03 Apr 2019 11:35:29 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 03 Apr 2019 13:38:55 GMT
RUN apk add --no-cache     bash     su-exec
# Wed, 03 Apr 2019 13:39:05 GMT
ENV ZOO_USER=zookeeper ZOO_CONF_DIR=/conf ZOO_DATA_DIR=/data ZOO_DATA_LOG_DIR=/datalog ZOO_LOG_DIR=/logs ZOO_PORT=2181 ZOO_TICK_TIME=2000 ZOO_INIT_LIMIT=5 ZOO_SYNC_LIMIT=2 ZOO_AUTOPURGE_PURGEINTERVAL=0 ZOO_AUTOPURGE_SNAPRETAINCOUNT=3 ZOO_MAX_CLIENT_CNXNS=60 ZOO_STANDALONE_ENABLED=false
# Wed, 03 Apr 2019 13:39:06 GMT
RUN set -ex;     adduser -D "$ZOO_USER";     mkdir -p "$ZOO_DATA_LOG_DIR" "$ZOO_DATA_DIR" "$ZOO_CONF_DIR" "$ZOO_LOG_DIR";     chown "$ZOO_USER:$ZOO_USER" "$ZOO_DATA_LOG_DIR" "$ZOO_DATA_DIR" "$ZOO_CONF_DIR" "$ZOO_LOG_DIR"
# Wed, 03 Apr 2019 13:39:06 GMT
ARG GPG_KEY=D0BC8D8A4E90A40AFDFC43B3E22A746A68E327C1
# Wed, 03 Apr 2019 13:39:06 GMT
ARG DISTRO_NAME=zookeeper-3.5.4-beta
# Wed, 03 Apr 2019 13:39:10 GMT
# ARGS: DISTRO_NAME=zookeeper-3.5.4-beta GPG_KEY=D0BC8D8A4E90A40AFDFC43B3E22A746A68E327C1
RUN set -ex;     apk add --no-cache --virtual .build-deps         ca-certificates         gnupg         libressl;     wget -q "https://www.apache.org/dist/zookeeper/$DISTRO_NAME/$DISTRO_NAME.tar.gz";     wget -q "https://www.apache.org/dist/zookeeper/$DISTRO_NAME/$DISTRO_NAME.tar.gz.asc";     export GNUPGHOME="$(mktemp -d)";     gpg --keyserver ha.pool.sks-keyservers.net --recv-key "$GPG_KEY" ||     gpg --keyserver pgp.mit.edu --recv-keys "$GPG_KEY" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$GPG_KEY";     gpg --batch --verify "$DISTRO_NAME.tar.gz.asc" "$DISTRO_NAME.tar.gz";     tar -zxf "$DISTRO_NAME.tar.gz";     mv "$DISTRO_NAME/conf/"* "$ZOO_CONF_DIR";     rm -rf "$GNUPGHOME" "$DISTRO_NAME.tar.gz" "$DISTRO_NAME.tar.gz.asc";     apk del .build-deps;     chown -R "$ZOO_USER:$ZOO_USER" "/$DISTRO_NAME"
# Wed, 03 Apr 2019 13:39:10 GMT
WORKDIR /zookeeper-3.5.4-beta
# Wed, 03 Apr 2019 13:39:10 GMT
VOLUME [/data /datalog /logs]
# Wed, 03 Apr 2019 13:39:11 GMT
EXPOSE 2181 2888 3888
# Wed, 03 Apr 2019 13:39:11 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin:/zookeeper-3.5.4-beta/bin ZOOCFGDIR=/conf
# Wed, 03 Apr 2019 13:39:11 GMT
COPY file:da4c1e7ba5b62f2d076bdffec939a64fb3c8a58676a7b139e17939a632a59a88 in / 
# Wed, 03 Apr 2019 13:39:11 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 03 Apr 2019 13:39:11 GMT
CMD ["zkServer.sh" "start-foreground"]
```

-	Layers:
	-	`sha256:a4c1e43a7431a562d92c5eb6e09e96b4731a474af51cad1c46e2d305ede29005`  
		Last Modified: Fri, 08 Mar 2019 03:36:34 GMT  
		Size: 2.7 MB (2749355 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe95f117badec568caa0381ef010c1d9df00d3c0870ebab8187a0017d68c5f8b`  
		Last Modified: Fri, 08 Mar 2019 06:53:37 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a47b2ea4dcb1b036ea9c07141df2ea81e99b070085f09fec057458ca4139b596`  
		Last Modified: Wed, 03 Apr 2019 11:36:48 GMT  
		Size: 55.5 MB (55538598 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ddbd8e9c73f73df2a2f21af78af53144eac7d4769e27d28f466efa15c8039149`  
		Last Modified: Wed, 03 Apr 2019 13:39:19 GMT  
		Size: 1.3 MB (1256243 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e34ed07c5f1103ef759c7fbd1258f71d60d5676cc85ab8aad52d8c43c0c4c98`  
		Last Modified: Wed, 03 Apr 2019 13:39:18 GMT  
		Size: 1.3 KB (1322 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e0c9e460fb48d171b514f7f8b7ffdc297a875c42bb8a56d517ca545cf604af0`  
		Last Modified: Wed, 03 Apr 2019 13:39:21 GMT  
		Size: 19.5 MB (19548183 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c24a873ea6debeaa04d5824c3779927cf95a826cd38132b0a8e088750012594e`  
		Last Modified: Wed, 03 Apr 2019 13:39:18 GMT  
		Size: 674.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `zookeeper:3.5.4-beta` - linux; ppc64le

```console
$ docker pull zookeeper@sha256:08e7db1cbf56588cb7ceef8321b4b7e41f08949c9b3f1af9ac847b7f2eb76521
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **79.2 MB (79211390 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bbe82ef959d08a393b0cc59bca492c1fd3bbc95109f1c81c65b43135ce69afaf`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["zkServer.sh","start-foreground"]`

```dockerfile
# Fri, 08 Mar 2019 03:37:33 GMT
ADD file:6dfaec9befa64397af571d1da2e766c694148f7a025b9411404a924d3de64bd3 in / 
# Fri, 08 Mar 2019 03:37:36 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 04:13:23 GMT
ENV LANG=C.UTF-8
# Fri, 08 Mar 2019 04:13:28 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 08 Mar 2019 04:14:02 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Fri, 08 Mar 2019 04:14:04 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Thu, 28 Mar 2019 08:37:47 GMT
ENV JAVA_VERSION=8u201
# Wed, 03 Apr 2019 09:10:25 GMT
ENV JAVA_ALPINE_VERSION=8.201.08-r1
# Wed, 03 Apr 2019 09:10:33 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 03 Apr 2019 10:58:29 GMT
RUN apk add --no-cache     bash     su-exec
# Wed, 03 Apr 2019 10:59:08 GMT
ENV ZOO_USER=zookeeper ZOO_CONF_DIR=/conf ZOO_DATA_DIR=/data ZOO_DATA_LOG_DIR=/datalog ZOO_LOG_DIR=/logs ZOO_PORT=2181 ZOO_TICK_TIME=2000 ZOO_INIT_LIMIT=5 ZOO_SYNC_LIMIT=2 ZOO_AUTOPURGE_PURGEINTERVAL=0 ZOO_AUTOPURGE_SNAPRETAINCOUNT=3 ZOO_MAX_CLIENT_CNXNS=60 ZOO_STANDALONE_ENABLED=false
# Wed, 03 Apr 2019 10:59:14 GMT
RUN set -ex;     adduser -D "$ZOO_USER";     mkdir -p "$ZOO_DATA_LOG_DIR" "$ZOO_DATA_DIR" "$ZOO_CONF_DIR" "$ZOO_LOG_DIR";     chown "$ZOO_USER:$ZOO_USER" "$ZOO_DATA_LOG_DIR" "$ZOO_DATA_DIR" "$ZOO_CONF_DIR" "$ZOO_LOG_DIR"
# Wed, 03 Apr 2019 10:59:16 GMT
ARG GPG_KEY=D0BC8D8A4E90A40AFDFC43B3E22A746A68E327C1
# Wed, 03 Apr 2019 10:59:19 GMT
ARG DISTRO_NAME=zookeeper-3.5.4-beta
# Wed, 03 Apr 2019 10:59:40 GMT
# ARGS: DISTRO_NAME=zookeeper-3.5.4-beta GPG_KEY=D0BC8D8A4E90A40AFDFC43B3E22A746A68E327C1
RUN set -ex;     apk add --no-cache --virtual .build-deps         ca-certificates         gnupg         libressl;     wget -q "https://www.apache.org/dist/zookeeper/$DISTRO_NAME/$DISTRO_NAME.tar.gz";     wget -q "https://www.apache.org/dist/zookeeper/$DISTRO_NAME/$DISTRO_NAME.tar.gz.asc";     export GNUPGHOME="$(mktemp -d)";     gpg --keyserver ha.pool.sks-keyservers.net --recv-key "$GPG_KEY" ||     gpg --keyserver pgp.mit.edu --recv-keys "$GPG_KEY" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$GPG_KEY";     gpg --batch --verify "$DISTRO_NAME.tar.gz.asc" "$DISTRO_NAME.tar.gz";     tar -zxf "$DISTRO_NAME.tar.gz";     mv "$DISTRO_NAME/conf/"* "$ZOO_CONF_DIR";     rm -rf "$GNUPGHOME" "$DISTRO_NAME.tar.gz" "$DISTRO_NAME.tar.gz.asc";     apk del .build-deps;     chown -R "$ZOO_USER:$ZOO_USER" "/$DISTRO_NAME"
# Wed, 03 Apr 2019 10:59:42 GMT
WORKDIR /zookeeper-3.5.4-beta
# Wed, 03 Apr 2019 10:59:44 GMT
VOLUME [/data /datalog /logs]
# Wed, 03 Apr 2019 10:59:47 GMT
EXPOSE 2181 2888 3888
# Wed, 03 Apr 2019 10:59:51 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin:/zookeeper-3.5.4-beta/bin ZOOCFGDIR=/conf
# Wed, 03 Apr 2019 10:59:53 GMT
COPY file:da4c1e7ba5b62f2d076bdffec939a64fb3c8a58676a7b139e17939a632a59a88 in / 
# Wed, 03 Apr 2019 10:59:56 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 03 Apr 2019 10:59:58 GMT
CMD ["zkServer.sh" "start-foreground"]
```

-	Layers:
	-	`sha256:611bce2a4fa9a0e18025e088381d26f1dda2e1c02160c4d24a2720f9dbca9eaf`  
		Last Modified: Fri, 08 Mar 2019 03:38:31 GMT  
		Size: 2.8 MB (2778638 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b37b96605d1a56e30ef6132daa2faa08064df25ac1042a5b799c96028716bf7`  
		Last Modified: Fri, 08 Mar 2019 04:17:12 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf8f629dab1143ca48d3450e3e249d44bce82649250f91638bb3af77b98c63f2`  
		Last Modified: Wed, 03 Apr 2019 09:13:03 GMT  
		Size: 55.6 MB (55588718 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0171dca4a8ce7f903b3964084c630681202ddec5ae2ec0ea37c4d82b8d5ee15f`  
		Last Modified: Wed, 03 Apr 2019 11:00:17 GMT  
		Size: 1.3 MB (1291410 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26cca3958bedaf1fa70ec41df3a54ad743753679988c31eb68e7d50072555af4`  
		Last Modified: Wed, 03 Apr 2019 11:00:12 GMT  
		Size: 1.4 KB (1402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3713948a60288941798082ef7f06fd21b5e483cdf994c73d13551a2ea02b561a`  
		Last Modified: Wed, 03 Apr 2019 11:00:15 GMT  
		Size: 19.6 MB (19550309 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:187cee955f0e07ef39a29afe32859e298cf3620a955a949f0a73d039e01de1ed`  
		Last Modified: Wed, 03 Apr 2019 11:00:12 GMT  
		Size: 673.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `zookeeper:3.5.4-beta` - linux; s390x

```console
$ docker pull zookeeper@sha256:98592aed449a4ac525bc475e883ff6dfbf915f10bb2b456552422a75a6845a58
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **77.0 MB (76991387 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:14763bd832803905ade0dd1b8150fcf7ac0355c30bbcc2870c497ce461c73bff`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["zkServer.sh","start-foreground"]`

```dockerfile
# Fri, 08 Mar 2019 03:35:46 GMT
ADD file:3f769e5ff31fbae6ea6b835fa878b05d6c6920ca4313aa63be7d057e29241d87 in / 
# Fri, 08 Mar 2019 03:35:46 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 04:02:40 GMT
ENV LANG=C.UTF-8
# Fri, 08 Mar 2019 04:02:40 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 08 Mar 2019 04:02:56 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Fri, 08 Mar 2019 04:02:57 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Thu, 28 Mar 2019 11:49:46 GMT
ENV JAVA_VERSION=8u201
# Thu, 04 Apr 2019 11:57:24 GMT
ENV JAVA_ALPINE_VERSION=8.201.08-r1
# Thu, 04 Apr 2019 11:57:28 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Thu, 04 Apr 2019 13:38:06 GMT
RUN apk add --no-cache     bash     su-exec
# Thu, 04 Apr 2019 13:38:37 GMT
ENV ZOO_USER=zookeeper ZOO_CONF_DIR=/conf ZOO_DATA_DIR=/data ZOO_DATA_LOG_DIR=/datalog ZOO_LOG_DIR=/logs ZOO_PORT=2181 ZOO_TICK_TIME=2000 ZOO_INIT_LIMIT=5 ZOO_SYNC_LIMIT=2 ZOO_AUTOPURGE_PURGEINTERVAL=0 ZOO_AUTOPURGE_SNAPRETAINCOUNT=3 ZOO_MAX_CLIENT_CNXNS=60 ZOO_STANDALONE_ENABLED=false
# Thu, 04 Apr 2019 13:38:38 GMT
RUN set -ex;     adduser -D "$ZOO_USER";     mkdir -p "$ZOO_DATA_LOG_DIR" "$ZOO_DATA_DIR" "$ZOO_CONF_DIR" "$ZOO_LOG_DIR";     chown "$ZOO_USER:$ZOO_USER" "$ZOO_DATA_LOG_DIR" "$ZOO_DATA_DIR" "$ZOO_CONF_DIR" "$ZOO_LOG_DIR"
# Thu, 04 Apr 2019 13:38:38 GMT
ARG GPG_KEY=D0BC8D8A4E90A40AFDFC43B3E22A746A68E327C1
# Thu, 04 Apr 2019 13:38:38 GMT
ARG DISTRO_NAME=zookeeper-3.5.4-beta
# Thu, 04 Apr 2019 13:40:19 GMT
# ARGS: DISTRO_NAME=zookeeper-3.5.4-beta GPG_KEY=D0BC8D8A4E90A40AFDFC43B3E22A746A68E327C1
RUN set -ex;     apk add --no-cache --virtual .build-deps         ca-certificates         gnupg         libressl;     wget -q "https://www.apache.org/dist/zookeeper/$DISTRO_NAME/$DISTRO_NAME.tar.gz";     wget -q "https://www.apache.org/dist/zookeeper/$DISTRO_NAME/$DISTRO_NAME.tar.gz.asc";     export GNUPGHOME="$(mktemp -d)";     gpg --keyserver ha.pool.sks-keyservers.net --recv-key "$GPG_KEY" ||     gpg --keyserver pgp.mit.edu --recv-keys "$GPG_KEY" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$GPG_KEY";     gpg --batch --verify "$DISTRO_NAME.tar.gz.asc" "$DISTRO_NAME.tar.gz";     tar -zxf "$DISTRO_NAME.tar.gz";     mv "$DISTRO_NAME/conf/"* "$ZOO_CONF_DIR";     rm -rf "$GNUPGHOME" "$DISTRO_NAME.tar.gz" "$DISTRO_NAME.tar.gz.asc";     apk del .build-deps;     chown -R "$ZOO_USER:$ZOO_USER" "/$DISTRO_NAME"
# Thu, 04 Apr 2019 13:40:19 GMT
WORKDIR /zookeeper-3.5.4-beta
# Thu, 04 Apr 2019 13:40:19 GMT
VOLUME [/data /datalog /logs]
# Thu, 04 Apr 2019 13:40:20 GMT
EXPOSE 2181 2888 3888
# Thu, 04 Apr 2019 13:40:20 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin:/zookeeper-3.5.4-beta/bin ZOOCFGDIR=/conf
# Thu, 04 Apr 2019 13:40:20 GMT
COPY file:da4c1e7ba5b62f2d076bdffec939a64fb3c8a58676a7b139e17939a632a59a88 in / 
# Thu, 04 Apr 2019 13:40:20 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 04 Apr 2019 13:40:21 GMT
CMD ["zkServer.sh" "start-foreground"]
```

-	Layers:
	-	`sha256:d981dc59d98dcf79c1920d433d8d56f9892f229da716de64280980f317a80ef1`  
		Last Modified: Fri, 08 Mar 2019 03:36:19 GMT  
		Size: 2.5 MB (2541305 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5fc974726c47232f0d4a4664c4fe09841c9a948a3e4a56abfe98770208fcc645`  
		Last Modified: Fri, 08 Mar 2019 04:04:06 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7742b04873b403dd6576fe37e0a6e7c391ae124437941c50ffe52260f269aafe`  
		Last Modified: Thu, 04 Apr 2019 11:59:12 GMT  
		Size: 53.7 MB (53660002 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd84862d2c4168b5d8bf7a7d9e51a6f2e6c9546b27c040522b794b8568b7da04`  
		Last Modified: Thu, 04 Apr 2019 13:40:34 GMT  
		Size: 1.2 MB (1240075 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28e3df34e2967c790065c995f98e5319215e2074cde45417fbfd6d0a263739fa`  
		Last Modified: Thu, 04 Apr 2019 13:40:33 GMT  
		Size: 1.3 KB (1322 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50269efa39420a38c2551ef9fa5ec6e9c23127721adf5ce7efc5c1793c984985`  
		Last Modified: Thu, 04 Apr 2019 13:40:36 GMT  
		Size: 19.5 MB (19547770 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0259b20253162624bf362a393bffa9d5477953c6f4950679af7457618784a3f`  
		Last Modified: Thu, 04 Apr 2019 13:40:34 GMT  
		Size: 674.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `zookeeper:latest`

```console
$ docker pull zookeeper@sha256:d7fb4ce74a9f38d9a671558230feb37b8b6380c29c3f5c4fd3f671d471d1cd40
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `zookeeper:latest` - linux; amd64

```console
$ docker pull zookeeper@sha256:a465f571909a5a76e620ae0392456f0993ecddc122163b202dc115f764f895fa
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **97.0 MB (96963691 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:711a5ebdf2bdce4eefd101710b25cff7308556aebfeca08331413ab2c6979db4`
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
# Wed, 27 Mar 2019 23:29:04 GMT
ENV JAVA_VERSION=8u201
# Tue, 02 Apr 2019 23:45:43 GMT
ENV JAVA_ALPINE_VERSION=8.201.08-r1
# Tue, 02 Apr 2019 23:45:46 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 03 Apr 2019 00:15:35 GMT
RUN apk add --no-cache     bash     su-exec
# Wed, 03 Apr 2019 00:15:35 GMT
ENV ZOO_USER=zookeeper ZOO_CONF_DIR=/conf ZOO_DATA_DIR=/data ZOO_DATA_LOG_DIR=/datalog ZOO_LOG_DIR=/logs ZOO_PORT=2181 ZOO_TICK_TIME=2000 ZOO_INIT_LIMIT=5 ZOO_SYNC_LIMIT=2 ZOO_AUTOPURGE_PURGEINTERVAL=0 ZOO_AUTOPURGE_SNAPRETAINCOUNT=3 ZOO_MAX_CLIENT_CNXNS=60
# Wed, 03 Apr 2019 00:15:36 GMT
RUN set -ex;     adduser -D "$ZOO_USER";     mkdir -p "$ZOO_DATA_LOG_DIR" "$ZOO_DATA_DIR" "$ZOO_CONF_DIR" "$ZOO_LOG_DIR";     chown "$ZOO_USER:$ZOO_USER" "$ZOO_DATA_LOG_DIR" "$ZOO_DATA_DIR" "$ZOO_CONF_DIR" "$ZOO_LOG_DIR"
# Mon, 08 Apr 2019 22:20:12 GMT
ARG GPG_KEY=3F7A1D16FA4217B1DC75E1C9FFE35B7F15DFA1BA
# Mon, 08 Apr 2019 22:20:12 GMT
ARG DISTRO_NAME=zookeeper-3.4.14
# Mon, 08 Apr 2019 22:20:19 GMT
# ARGS: DISTRO_NAME=zookeeper-3.4.14 GPG_KEY=3F7A1D16FA4217B1DC75E1C9FFE35B7F15DFA1BA
RUN set -ex;     apk add --no-cache --virtual .build-deps         ca-certificates         gnupg         libressl;     wget -q "https://www.apache.org/dist/zookeeper/$DISTRO_NAME/$DISTRO_NAME.tar.gz";     wget -q "https://www.apache.org/dist/zookeeper/$DISTRO_NAME/$DISTRO_NAME.tar.gz.asc";     export GNUPGHOME="$(mktemp -d)";     gpg --keyserver ha.pool.sks-keyservers.net --recv-key "$GPG_KEY" ||     gpg --keyserver pgp.mit.edu --recv-keys "$GPG_KEY" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$GPG_KEY";     gpg --batch --verify "$DISTRO_NAME.tar.gz.asc" "$DISTRO_NAME.tar.gz";     tar -xzf "$DISTRO_NAME.tar.gz";     mv "$DISTRO_NAME/conf/"* "$ZOO_CONF_DIR";     rm -rf "$GNUPGHOME" "$DISTRO_NAME.tar.gz" "$DISTRO_NAME.tar.gz.asc";     apk del .build-deps
# Mon, 08 Apr 2019 22:20:19 GMT
WORKDIR /zookeeper-3.4.14
# Mon, 08 Apr 2019 22:20:19 GMT
VOLUME [/data /datalog /logs]
# Mon, 08 Apr 2019 22:20:20 GMT
EXPOSE 2181 2888 3888
# Mon, 08 Apr 2019 22:20:20 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin:/zookeeper-3.4.14/bin ZOOCFGDIR=/conf
# Mon, 08 Apr 2019 22:20:20 GMT
COPY file:e241c4b758b1c07187e9a94844ecbab8e37b4440f1e74109ed52835d8aa518be in / 
# Mon, 08 Apr 2019 22:20:20 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 08 Apr 2019 22:20:20 GMT
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
	-	`sha256:0c5bd74861e4346a0beed670ef2a6613f3594b458820c50efc5e1044d865e134`  
		Last Modified: Tue, 02 Apr 2019 23:47:30 GMT  
		Size: 54.9 MB (54918577 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f695c11a6f1bd9fd0c86ae139b216e40b0e64bb1e47c0ba6be76eb0d7ef5799`  
		Last Modified: Wed, 03 Apr 2019 00:16:03 GMT  
		Size: 1.2 MB (1209084 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82a5ce24103471f3bee8d1503a28bcc793dac613d9de2af13cab28337758b2de`  
		Last Modified: Mon, 08 Apr 2019 22:20:30 GMT  
		Size: 1.3 KB (1321 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8937518d5a2eafdb4cbe9d7d7ba2f3a3473950369ee0b3d1849ad9dff976cfd8`  
		Last Modified: Mon, 08 Apr 2019 22:20:34 GMT  
		Size: 38.1 MB (38079124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6c388fecb811c3fd3e50b966f2735d194a113b0c06202aacc7cad065dbc794c`  
		Last Modified: Mon, 08 Apr 2019 22:20:30 GMT  
		Size: 617.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `zookeeper:latest` - linux; arm variant v6

```console
$ docker pull zookeeper@sha256:362f42658f91314091ca3cabfd34d9ad299c22cbaa98b64a6c7cddbe6fbfc008
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **94.2 MB (94162426 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:160ffd84cc7119847aba8cfb1336959757604c1b9b4cb48d058d8fdbadabeb54`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["zkServer.sh","start-foreground"]`

```dockerfile
# Fri, 08 Mar 2019 03:36:05 GMT
ADD file:2bf8ccaacb388ca6271670ed8a86b8bc4450823156917d29d9d9ec0a07fd64a7 in / 
# Fri, 08 Mar 2019 03:36:06 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 04:39:53 GMT
ENV LANG=C.UTF-8
# Fri, 08 Mar 2019 04:39:55 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 08 Mar 2019 04:40:07 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Fri, 08 Mar 2019 04:40:08 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Thu, 28 Mar 2019 07:49:41 GMT
ENV JAVA_VERSION=8u201
# Wed, 03 Apr 2019 07:52:46 GMT
ENV JAVA_ALPINE_VERSION=8.201.08-r1
# Wed, 03 Apr 2019 07:52:51 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 03 Apr 2019 08:49:18 GMT
RUN apk add --no-cache     bash     su-exec
# Wed, 03 Apr 2019 08:49:19 GMT
ENV ZOO_USER=zookeeper ZOO_CONF_DIR=/conf ZOO_DATA_DIR=/data ZOO_DATA_LOG_DIR=/datalog ZOO_LOG_DIR=/logs ZOO_PORT=2181 ZOO_TICK_TIME=2000 ZOO_INIT_LIMIT=5 ZOO_SYNC_LIMIT=2 ZOO_AUTOPURGE_PURGEINTERVAL=0 ZOO_AUTOPURGE_SNAPRETAINCOUNT=3 ZOO_MAX_CLIENT_CNXNS=60
# Wed, 03 Apr 2019 08:49:21 GMT
RUN set -ex;     adduser -D "$ZOO_USER";     mkdir -p "$ZOO_DATA_LOG_DIR" "$ZOO_DATA_DIR" "$ZOO_CONF_DIR" "$ZOO_LOG_DIR";     chown "$ZOO_USER:$ZOO_USER" "$ZOO_DATA_LOG_DIR" "$ZOO_DATA_DIR" "$ZOO_CONF_DIR" "$ZOO_LOG_DIR"
# Tue, 09 Apr 2019 07:50:38 GMT
ARG GPG_KEY=3F7A1D16FA4217B1DC75E1C9FFE35B7F15DFA1BA
# Tue, 09 Apr 2019 07:50:38 GMT
ARG DISTRO_NAME=zookeeper-3.4.14
# Tue, 09 Apr 2019 07:51:07 GMT
# ARGS: DISTRO_NAME=zookeeper-3.4.14 GPG_KEY=3F7A1D16FA4217B1DC75E1C9FFE35B7F15DFA1BA
RUN set -ex;     apk add --no-cache --virtual .build-deps         ca-certificates         gnupg         libressl;     wget -q "https://www.apache.org/dist/zookeeper/$DISTRO_NAME/$DISTRO_NAME.tar.gz";     wget -q "https://www.apache.org/dist/zookeeper/$DISTRO_NAME/$DISTRO_NAME.tar.gz.asc";     export GNUPGHOME="$(mktemp -d)";     gpg --keyserver ha.pool.sks-keyservers.net --recv-key "$GPG_KEY" ||     gpg --keyserver pgp.mit.edu --recv-keys "$GPG_KEY" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$GPG_KEY";     gpg --batch --verify "$DISTRO_NAME.tar.gz.asc" "$DISTRO_NAME.tar.gz";     tar -xzf "$DISTRO_NAME.tar.gz";     mv "$DISTRO_NAME/conf/"* "$ZOO_CONF_DIR";     rm -rf "$GNUPGHOME" "$DISTRO_NAME.tar.gz" "$DISTRO_NAME.tar.gz.asc";     apk del .build-deps
# Tue, 09 Apr 2019 07:51:08 GMT
WORKDIR /zookeeper-3.4.14
# Tue, 09 Apr 2019 07:51:09 GMT
VOLUME [/data /datalog /logs]
# Tue, 09 Apr 2019 07:51:09 GMT
EXPOSE 2181 2888 3888
# Tue, 09 Apr 2019 07:51:09 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin:/zookeeper-3.4.14/bin ZOOCFGDIR=/conf
# Tue, 09 Apr 2019 07:51:10 GMT
COPY file:e241c4b758b1c07187e9a94844ecbab8e37b4440f1e74109ed52835d8aa518be in / 
# Tue, 09 Apr 2019 07:51:10 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 09 Apr 2019 07:51:11 GMT
CMD ["zkServer.sh" "start-foreground"]
```

-	Layers:
	-	`sha256:d33b53ae0340b7490b486edd65310a4333d7e0057854aadd12a5006faf7fa576`  
		Last Modified: Fri, 08 Mar 2019 03:36:43 GMT  
		Size: 2.5 MB (2540673 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4cb8e265594b5112bd474ac92c9c83497fc535a27624c2798c8817a01b28328c`  
		Last Modified: Fri, 08 Mar 2019 04:41:11 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:972acb4c659fffab6be0f752b78857f78dbda522970cf7946a5a622cf65f4797`  
		Last Modified: Wed, 03 Apr 2019 07:53:52 GMT  
		Size: 52.4 MB (52387444 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab1d104cdd9100d06a50a0db588a5efbf08fadb926ba551df6b67b87e3e4172a`  
		Last Modified: Wed, 03 Apr 2019 08:49:57 GMT  
		Size: 1.2 MB (1154065 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0309b54855dfa7b03af4f737171e1654a32d32bb1a5612f26d2273c59c7cdd88`  
		Last Modified: Tue, 09 Apr 2019 07:51:27 GMT  
		Size: 1.4 KB (1403 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1096df65b569d63a768e4f5bce213b3cc57f350868c6e2ade7d1b05e795e9b3`  
		Last Modified: Tue, 09 Apr 2019 07:51:35 GMT  
		Size: 38.1 MB (38077986 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42d8bd66f888f0abd5d7eee8d8e9bb9e7540e36c07c3b0cd1f21a21bb195b880`  
		Last Modified: Tue, 09 Apr 2019 07:51:27 GMT  
		Size: 615.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `zookeeper:latest` - linux; 386

```console
$ docker pull zookeeper@sha256:9ac325959e51b6d5f868c3ca337be47ac4950080bb49caf62b6357892f392300
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **97.6 MB (97623219 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ec9ae31b801d724308f62c1739941ce63353dfe08f6da14dd91c364f69b29620`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["zkServer.sh","start-foreground"]`

```dockerfile
# Fri, 08 Mar 2019 03:35:50 GMT
ADD file:98a0f92574b6a8592a131ccb07c4f516694e053d610a1701fde2d5e7c65c2175 in / 
# Fri, 08 Mar 2019 03:35:50 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 06:52:02 GMT
ENV LANG=C.UTF-8
# Fri, 08 Mar 2019 06:52:03 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 08 Mar 2019 06:52:17 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Fri, 08 Mar 2019 06:52:17 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Thu, 28 Mar 2019 01:00:58 GMT
ENV JAVA_VERSION=8u201
# Wed, 03 Apr 2019 11:35:25 GMT
ENV JAVA_ALPINE_VERSION=8.201.08-r1
# Wed, 03 Apr 2019 11:35:29 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 03 Apr 2019 13:38:55 GMT
RUN apk add --no-cache     bash     su-exec
# Wed, 03 Apr 2019 13:38:55 GMT
ENV ZOO_USER=zookeeper ZOO_CONF_DIR=/conf ZOO_DATA_DIR=/data ZOO_DATA_LOG_DIR=/datalog ZOO_LOG_DIR=/logs ZOO_PORT=2181 ZOO_TICK_TIME=2000 ZOO_INIT_LIMIT=5 ZOO_SYNC_LIMIT=2 ZOO_AUTOPURGE_PURGEINTERVAL=0 ZOO_AUTOPURGE_SNAPRETAINCOUNT=3 ZOO_MAX_CLIENT_CNXNS=60
# Wed, 03 Apr 2019 13:38:56 GMT
RUN set -ex;     adduser -D "$ZOO_USER";     mkdir -p "$ZOO_DATA_LOG_DIR" "$ZOO_DATA_DIR" "$ZOO_CONF_DIR" "$ZOO_LOG_DIR";     chown "$ZOO_USER:$ZOO_USER" "$ZOO_DATA_LOG_DIR" "$ZOO_DATA_DIR" "$ZOO_CONF_DIR" "$ZOO_LOG_DIR"
# Tue, 09 Apr 2019 10:51:44 GMT
ARG GPG_KEY=3F7A1D16FA4217B1DC75E1C9FFE35B7F15DFA1BA
# Tue, 09 Apr 2019 10:51:44 GMT
ARG DISTRO_NAME=zookeeper-3.4.14
# Tue, 09 Apr 2019 10:51:52 GMT
# ARGS: DISTRO_NAME=zookeeper-3.4.14 GPG_KEY=3F7A1D16FA4217B1DC75E1C9FFE35B7F15DFA1BA
RUN set -ex;     apk add --no-cache --virtual .build-deps         ca-certificates         gnupg         libressl;     wget -q "https://www.apache.org/dist/zookeeper/$DISTRO_NAME/$DISTRO_NAME.tar.gz";     wget -q "https://www.apache.org/dist/zookeeper/$DISTRO_NAME/$DISTRO_NAME.tar.gz.asc";     export GNUPGHOME="$(mktemp -d)";     gpg --keyserver ha.pool.sks-keyservers.net --recv-key "$GPG_KEY" ||     gpg --keyserver pgp.mit.edu --recv-keys "$GPG_KEY" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$GPG_KEY";     gpg --batch --verify "$DISTRO_NAME.tar.gz.asc" "$DISTRO_NAME.tar.gz";     tar -xzf "$DISTRO_NAME.tar.gz";     mv "$DISTRO_NAME/conf/"* "$ZOO_CONF_DIR";     rm -rf "$GNUPGHOME" "$DISTRO_NAME.tar.gz" "$DISTRO_NAME.tar.gz.asc";     apk del .build-deps
# Tue, 09 Apr 2019 10:51:52 GMT
WORKDIR /zookeeper-3.4.14
# Tue, 09 Apr 2019 10:51:52 GMT
VOLUME [/data /datalog /logs]
# Tue, 09 Apr 2019 10:51:52 GMT
EXPOSE 2181 2888 3888
# Tue, 09 Apr 2019 10:51:53 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin:/zookeeper-3.4.14/bin ZOOCFGDIR=/conf
# Tue, 09 Apr 2019 10:51:53 GMT
COPY file:e241c4b758b1c07187e9a94844ecbab8e37b4440f1e74109ed52835d8aa518be in / 
# Tue, 09 Apr 2019 10:51:53 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 09 Apr 2019 10:51:53 GMT
CMD ["zkServer.sh" "start-foreground"]
```

-	Layers:
	-	`sha256:a4c1e43a7431a562d92c5eb6e09e96b4731a474af51cad1c46e2d305ede29005`  
		Last Modified: Fri, 08 Mar 2019 03:36:34 GMT  
		Size: 2.7 MB (2749355 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe95f117badec568caa0381ef010c1d9df00d3c0870ebab8187a0017d68c5f8b`  
		Last Modified: Fri, 08 Mar 2019 06:53:37 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a47b2ea4dcb1b036ea9c07141df2ea81e99b070085f09fec057458ca4139b596`  
		Last Modified: Wed, 03 Apr 2019 11:36:48 GMT  
		Size: 55.5 MB (55538598 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ddbd8e9c73f73df2a2f21af78af53144eac7d4769e27d28f466efa15c8039149`  
		Last Modified: Wed, 03 Apr 2019 13:39:19 GMT  
		Size: 1.3 MB (1256243 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f4291098cf531b99caf9b6a95af47a1a77ad6e62336112aba563833e4597e3a`  
		Last Modified: Tue, 09 Apr 2019 10:52:02 GMT  
		Size: 1.3 KB (1323 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a671cdaf47f145336812e91acadffd722af7cbfccf1395967ceb6b9ad150b1fe`  
		Last Modified: Tue, 09 Apr 2019 10:52:07 GMT  
		Size: 38.1 MB (38076847 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be67ee32a0bbada2d5fabf51b6445d23e9d81d8a740b34db1966fcd10d9b4597`  
		Last Modified: Tue, 09 Apr 2019 10:52:02 GMT  
		Size: 615.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `zookeeper:latest` - linux; ppc64le

```console
$ docker pull zookeeper@sha256:5157aee9aa5d611c4a44814a7e465bc8cfed653dc750db7407d9fb6361d68a93
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **97.7 MB (97739871 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:068edde6125a152126cc94fee85d306d610241c3e4fd1082577395c14101f300`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["zkServer.sh","start-foreground"]`

```dockerfile
# Fri, 08 Mar 2019 03:37:33 GMT
ADD file:6dfaec9befa64397af571d1da2e766c694148f7a025b9411404a924d3de64bd3 in / 
# Fri, 08 Mar 2019 03:37:36 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 04:13:23 GMT
ENV LANG=C.UTF-8
# Fri, 08 Mar 2019 04:13:28 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 08 Mar 2019 04:14:02 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Fri, 08 Mar 2019 04:14:04 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Thu, 28 Mar 2019 08:37:47 GMT
ENV JAVA_VERSION=8u201
# Wed, 03 Apr 2019 09:10:25 GMT
ENV JAVA_ALPINE_VERSION=8.201.08-r1
# Wed, 03 Apr 2019 09:10:33 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 03 Apr 2019 10:58:29 GMT
RUN apk add --no-cache     bash     su-exec
# Wed, 03 Apr 2019 10:58:32 GMT
ENV ZOO_USER=zookeeper ZOO_CONF_DIR=/conf ZOO_DATA_DIR=/data ZOO_DATA_LOG_DIR=/datalog ZOO_LOG_DIR=/logs ZOO_PORT=2181 ZOO_TICK_TIME=2000 ZOO_INIT_LIMIT=5 ZOO_SYNC_LIMIT=2 ZOO_AUTOPURGE_PURGEINTERVAL=0 ZOO_AUTOPURGE_SNAPRETAINCOUNT=3 ZOO_MAX_CLIENT_CNXNS=60
# Wed, 03 Apr 2019 10:58:39 GMT
RUN set -ex;     adduser -D "$ZOO_USER";     mkdir -p "$ZOO_DATA_LOG_DIR" "$ZOO_DATA_DIR" "$ZOO_CONF_DIR" "$ZOO_LOG_DIR";     chown "$ZOO_USER:$ZOO_USER" "$ZOO_DATA_LOG_DIR" "$ZOO_DATA_DIR" "$ZOO_CONF_DIR" "$ZOO_LOG_DIR"
# Tue, 09 Apr 2019 08:40:01 GMT
ARG GPG_KEY=3F7A1D16FA4217B1DC75E1C9FFE35B7F15DFA1BA
# Tue, 09 Apr 2019 08:40:06 GMT
ARG DISTRO_NAME=zookeeper-3.4.14
# Tue, 09 Apr 2019 08:40:26 GMT
# ARGS: DISTRO_NAME=zookeeper-3.4.14 GPG_KEY=3F7A1D16FA4217B1DC75E1C9FFE35B7F15DFA1BA
RUN set -ex;     apk add --no-cache --virtual .build-deps         ca-certificates         gnupg         libressl;     wget -q "https://www.apache.org/dist/zookeeper/$DISTRO_NAME/$DISTRO_NAME.tar.gz";     wget -q "https://www.apache.org/dist/zookeeper/$DISTRO_NAME/$DISTRO_NAME.tar.gz.asc";     export GNUPGHOME="$(mktemp -d)";     gpg --keyserver ha.pool.sks-keyservers.net --recv-key "$GPG_KEY" ||     gpg --keyserver pgp.mit.edu --recv-keys "$GPG_KEY" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$GPG_KEY";     gpg --batch --verify "$DISTRO_NAME.tar.gz.asc" "$DISTRO_NAME.tar.gz";     tar -xzf "$DISTRO_NAME.tar.gz";     mv "$DISTRO_NAME/conf/"* "$ZOO_CONF_DIR";     rm -rf "$GNUPGHOME" "$DISTRO_NAME.tar.gz" "$DISTRO_NAME.tar.gz.asc";     apk del .build-deps
# Tue, 09 Apr 2019 08:40:29 GMT
WORKDIR /zookeeper-3.4.14
# Tue, 09 Apr 2019 08:40:34 GMT
VOLUME [/data /datalog /logs]
# Tue, 09 Apr 2019 08:40:39 GMT
EXPOSE 2181 2888 3888
# Tue, 09 Apr 2019 08:40:43 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin:/zookeeper-3.4.14/bin ZOOCFGDIR=/conf
# Tue, 09 Apr 2019 08:40:46 GMT
COPY file:e241c4b758b1c07187e9a94844ecbab8e37b4440f1e74109ed52835d8aa518be in / 
# Tue, 09 Apr 2019 08:40:49 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 09 Apr 2019 08:40:53 GMT
CMD ["zkServer.sh" "start-foreground"]
```

-	Layers:
	-	`sha256:611bce2a4fa9a0e18025e088381d26f1dda2e1c02160c4d24a2720f9dbca9eaf`  
		Last Modified: Fri, 08 Mar 2019 03:38:31 GMT  
		Size: 2.8 MB (2778638 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b37b96605d1a56e30ef6132daa2faa08064df25ac1042a5b799c96028716bf7`  
		Last Modified: Fri, 08 Mar 2019 04:17:12 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf8f629dab1143ca48d3450e3e249d44bce82649250f91638bb3af77b98c63f2`  
		Last Modified: Wed, 03 Apr 2019 09:13:03 GMT  
		Size: 55.6 MB (55588718 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0171dca4a8ce7f903b3964084c630681202ddec5ae2ec0ea37c4d82b8d5ee15f`  
		Last Modified: Wed, 03 Apr 2019 11:00:17 GMT  
		Size: 1.3 MB (1291410 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae009f04c841d810a2412d3ae64a4e83a3c78d41603727e4d48652fd57362cc1`  
		Last Modified: Tue, 09 Apr 2019 08:41:11 GMT  
		Size: 1.4 KB (1405 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5aca25e0897c9e6f22c3377a371352159f1c53bca21340aef3f6c2e1d054640c`  
		Last Modified: Tue, 09 Apr 2019 08:41:17 GMT  
		Size: 38.1 MB (38078843 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cae2284e1bc94061b245b12eac8fc101b50c5cc9677ac739f1df36196c33367c`  
		Last Modified: Tue, 09 Apr 2019 08:41:11 GMT  
		Size: 617.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `zookeeper:latest` - linux; s390x

```console
$ docker pull zookeeper@sha256:5a1250d65938fb61208e8fa77c74907963e0552eabdd42d7ce6df76406ce2836
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **95.5 MB (95519869 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e36275dc8e4853d043c65c1aebcd30c8258f49db82586c57202aae24e3547437`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["zkServer.sh","start-foreground"]`

```dockerfile
# Fri, 08 Mar 2019 03:35:46 GMT
ADD file:3f769e5ff31fbae6ea6b835fa878b05d6c6920ca4313aa63be7d057e29241d87 in / 
# Fri, 08 Mar 2019 03:35:46 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 04:02:40 GMT
ENV LANG=C.UTF-8
# Fri, 08 Mar 2019 04:02:40 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 08 Mar 2019 04:02:56 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Fri, 08 Mar 2019 04:02:57 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Thu, 28 Mar 2019 11:49:46 GMT
ENV JAVA_VERSION=8u201
# Thu, 04 Apr 2019 11:57:24 GMT
ENV JAVA_ALPINE_VERSION=8.201.08-r1
# Thu, 04 Apr 2019 11:57:28 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Thu, 04 Apr 2019 13:38:06 GMT
RUN apk add --no-cache     bash     su-exec
# Thu, 04 Apr 2019 13:38:06 GMT
ENV ZOO_USER=zookeeper ZOO_CONF_DIR=/conf ZOO_DATA_DIR=/data ZOO_DATA_LOG_DIR=/datalog ZOO_LOG_DIR=/logs ZOO_PORT=2181 ZOO_TICK_TIME=2000 ZOO_INIT_LIMIT=5 ZOO_SYNC_LIMIT=2 ZOO_AUTOPURGE_PURGEINTERVAL=0 ZOO_AUTOPURGE_SNAPRETAINCOUNT=3 ZOO_MAX_CLIENT_CNXNS=60
# Thu, 04 Apr 2019 13:38:07 GMT
RUN set -ex;     adduser -D "$ZOO_USER";     mkdir -p "$ZOO_DATA_LOG_DIR" "$ZOO_DATA_DIR" "$ZOO_CONF_DIR" "$ZOO_LOG_DIR";     chown "$ZOO_USER:$ZOO_USER" "$ZOO_DATA_LOG_DIR" "$ZOO_DATA_DIR" "$ZOO_CONF_DIR" "$ZOO_LOG_DIR"
# Tue, 09 Apr 2019 11:51:41 GMT
ARG GPG_KEY=3F7A1D16FA4217B1DC75E1C9FFE35B7F15DFA1BA
# Tue, 09 Apr 2019 11:51:41 GMT
ARG DISTRO_NAME=zookeeper-3.4.14
# Tue, 09 Apr 2019 11:51:47 GMT
# ARGS: DISTRO_NAME=zookeeper-3.4.14 GPG_KEY=3F7A1D16FA4217B1DC75E1C9FFE35B7F15DFA1BA
RUN set -ex;     apk add --no-cache --virtual .build-deps         ca-certificates         gnupg         libressl;     wget -q "https://www.apache.org/dist/zookeeper/$DISTRO_NAME/$DISTRO_NAME.tar.gz";     wget -q "https://www.apache.org/dist/zookeeper/$DISTRO_NAME/$DISTRO_NAME.tar.gz.asc";     export GNUPGHOME="$(mktemp -d)";     gpg --keyserver ha.pool.sks-keyservers.net --recv-key "$GPG_KEY" ||     gpg --keyserver pgp.mit.edu --recv-keys "$GPG_KEY" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$GPG_KEY";     gpg --batch --verify "$DISTRO_NAME.tar.gz.asc" "$DISTRO_NAME.tar.gz";     tar -xzf "$DISTRO_NAME.tar.gz";     mv "$DISTRO_NAME/conf/"* "$ZOO_CONF_DIR";     rm -rf "$GNUPGHOME" "$DISTRO_NAME.tar.gz" "$DISTRO_NAME.tar.gz.asc";     apk del .build-deps
# Tue, 09 Apr 2019 11:51:47 GMT
WORKDIR /zookeeper-3.4.14
# Tue, 09 Apr 2019 11:51:48 GMT
VOLUME [/data /datalog /logs]
# Tue, 09 Apr 2019 11:51:48 GMT
EXPOSE 2181 2888 3888
# Tue, 09 Apr 2019 11:51:48 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin:/zookeeper-3.4.14/bin ZOOCFGDIR=/conf
# Tue, 09 Apr 2019 11:51:48 GMT
COPY file:e241c4b758b1c07187e9a94844ecbab8e37b4440f1e74109ed52835d8aa518be in / 
# Tue, 09 Apr 2019 11:51:49 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 09 Apr 2019 11:51:49 GMT
CMD ["zkServer.sh" "start-foreground"]
```

-	Layers:
	-	`sha256:d981dc59d98dcf79c1920d433d8d56f9892f229da716de64280980f317a80ef1`  
		Last Modified: Fri, 08 Mar 2019 03:36:19 GMT  
		Size: 2.5 MB (2541305 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5fc974726c47232f0d4a4664c4fe09841c9a948a3e4a56abfe98770208fcc645`  
		Last Modified: Fri, 08 Mar 2019 04:04:06 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7742b04873b403dd6576fe37e0a6e7c391ae124437941c50ffe52260f269aafe`  
		Last Modified: Thu, 04 Apr 2019 11:59:12 GMT  
		Size: 53.7 MB (53660002 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd84862d2c4168b5d8bf7a7d9e51a6f2e6c9546b27c040522b794b8568b7da04`  
		Last Modified: Thu, 04 Apr 2019 13:40:34 GMT  
		Size: 1.2 MB (1240075 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2cabc48ffc0999799fa8fb8a8d3fdbe006de814d1f3d95def04ec5d5856bef50`  
		Last Modified: Tue, 09 Apr 2019 11:52:01 GMT  
		Size: 1.3 KB (1322 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02e77cb70b50ae4d7445b89c216c18e8f1785a1b4a4e14ae49d62e0c447b9f3f`  
		Last Modified: Tue, 09 Apr 2019 11:52:06 GMT  
		Size: 38.1 MB (38076309 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:924bd0fc2a80404b75504da58979c25174d2a8e36d53427a3ea276a7a31f8d37`  
		Last Modified: Tue, 09 Apr 2019 11:52:01 GMT  
		Size: 617.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
