## `flink:scala_2.12-alpine`

```console
$ docker pull flink@sha256:e0645bd5a541efabee24ea60dab273741f138aa23847d8b269f636840e7c019c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `flink:scala_2.12-alpine` - linux; amd64

```console
$ docker pull flink@sha256:17e351881b3ddfe29e4b9e08c8c44bfc7b531f1c44935429d092621e1e01e4f7
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **346.2 MB (346203680 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7cdfea26d960dc9cc0b459c7d70a4560b22441a75a4e9d2ad78f51d8e107ed2a`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["help"]`

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
# Sat, 11 May 2019 03:50:11 GMT
RUN apk add --no-cache bash libc6-compat snappy 'su-exec>=0.2'
# Sat, 11 May 2019 03:58:32 GMT
ENV FLINK_VERSION=1.8.0 HADOOP_SCALA_VARIANT=scala_2.12
# Sat, 11 May 2019 03:58:32 GMT
ENV FLINK_HOME=/opt/flink
# Sat, 11 May 2019 03:58:32 GMT
ENV PATH=/opt/flink/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Sat, 11 May 2019 03:58:33 GMT
RUN addgroup -S -g 9999 flink &&     adduser -D -S -H -u 9999 -G flink -h $FLINK_HOME flink
# Sat, 11 May 2019 03:58:33 GMT
WORKDIR /opt/flink
# Sat, 11 May 2019 03:58:34 GMT
ENV FLINK_URL_FILE_PATH=flink/flink-1.8.0/flink-1.8.0-bin-scala_2.12.tgz
# Sat, 11 May 2019 03:58:34 GMT
ENV FLINK_TGZ_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=flink/flink-1.8.0/flink-1.8.0-bin-scala_2.12.tgz FLINK_ASC_URL=https://www.apache.org/dist/flink/flink-1.8.0/flink-1.8.0-bin-scala_2.12.tgz.asc
# Sat, 11 May 2019 03:58:34 GMT
COPY file:6080d226172b47d9372bfe1905f1a2ac9e15ee46ef2f939add669902b31da9ae in /KEYS 
# Sat, 11 May 2019 03:58:52 GMT
RUN set -ex;   apk add --no-cache --virtual .build-deps     ca-certificates     gnupg     openssl     tar   ;     wget -nv -O flink.tgz "$FLINK_TGZ_URL";   wget -nv -O flink.tgz.asc "$FLINK_ASC_URL";     export GNUPGHOME="$(mktemp -d)";   gpg --batch --import /KEYS;   gpg --batch --verify flink.tgz.asc flink.tgz;   gpgconf --kill all;   rm -rf "$GNUPGHOME" flink.tgz.asc;     tar -xf flink.tgz --strip-components=1;   rm flink.tgz;     apk del .build-deps;     chown -R flink:flink .;
# Sat, 11 May 2019 03:58:54 GMT
COPY file:52e8c12e536aa08e39c4f96f47155e1dcf2ab878ce6da844d94e239302d89fe1 in / 
# Sat, 11 May 2019 03:58:54 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 11 May 2019 03:58:55 GMT
EXPOSE 6123 8081
# Sat, 11 May 2019 03:58:55 GMT
CMD ["help"]
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
	-	`sha256:4bcac370b162e0e5dab2e1fe51c3f5fcf594a6af5853ee6e8eca31151d62cb16`  
		Last Modified: Sat, 11 May 2019 03:59:56 GMT  
		Size: 1.2 MB (1226910 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f10298c4a7abb29e00e9ee8851bd680a54e0558847029b86c43d9ccdad004653`  
		Last Modified: Sat, 11 May 2019 04:06:08 GMT  
		Size: 1.2 KB (1209 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6315984246dd6ff5149460f58acc795e1ed23a06c307e5ff9e7b2e9dc3b12f1c`  
		Last Modified: Sat, 11 May 2019 04:06:08 GMT  
		Size: 114.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67964f60be72c73c7531997f95c460f86f1602dfd4890814ef35828b6994c991`  
		Last Modified: Sat, 11 May 2019 04:06:09 GMT  
		Size: 64.0 KB (63967 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e66590ad0bbed60603bf5ac502e586c8c1c16becfc118c29be8543c011c6767`  
		Last Modified: Sat, 11 May 2019 04:06:35 GMT  
		Size: 287.2 MB (287217336 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29e7db16caf7c747cc16fc4af30bf70a74d65d3f3bec36c70517ab2c926fafa3`  
		Last Modified: Sat, 11 May 2019 04:06:08 GMT  
		Size: 1.2 KB (1238 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `flink:scala_2.12-alpine` - linux; arm variant v6

```console
$ docker pull flink@sha256:fcbe541434c6f8ebde59e677aeb3f132aa5aae0bb756a74bf8a3ef08f5f393d9
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **343.4 MB (343398778 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d6e538aa9d76807c11038fcd59bce65177e2cbfa564ad4c46d7d48b4d822131f`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["help"]`

```dockerfile
# Sat, 11 May 2019 07:49:31 GMT
ADD file:202469fe868f49927884e8dd109fb8bb596ab6e435dc1bfc9f75f03e50e82325 in / 
# Sat, 11 May 2019 07:49:31 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 08:47:14 GMT
ENV LANG=C.UTF-8
# Sat, 11 May 2019 08:47:16 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 11 May 2019 08:47:35 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Sat, 11 May 2019 08:47:36 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Sat, 11 May 2019 08:47:37 GMT
ENV JAVA_VERSION=8u212
# Sat, 11 May 2019 08:47:37 GMT
ENV JAVA_ALPINE_VERSION=8.212.04-r0
# Sat, 11 May 2019 08:47:44 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Sat, 11 May 2019 10:17:27 GMT
RUN apk add --no-cache bash libc6-compat snappy 'su-exec>=0.2'
# Sat, 11 May 2019 10:30:03 GMT
ENV FLINK_VERSION=1.8.0 HADOOP_SCALA_VARIANT=scala_2.12
# Sat, 11 May 2019 10:30:04 GMT
ENV FLINK_HOME=/opt/flink
# Sat, 11 May 2019 10:30:04 GMT
ENV PATH=/opt/flink/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Sat, 11 May 2019 10:30:05 GMT
RUN addgroup -S -g 9999 flink &&     adduser -D -S -H -u 9999 -G flink -h $FLINK_HOME flink
# Sat, 11 May 2019 10:30:06 GMT
WORKDIR /opt/flink
# Sat, 11 May 2019 10:30:06 GMT
ENV FLINK_URL_FILE_PATH=flink/flink-1.8.0/flink-1.8.0-bin-scala_2.12.tgz
# Sat, 11 May 2019 10:30:06 GMT
ENV FLINK_TGZ_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=flink/flink-1.8.0/flink-1.8.0-bin-scala_2.12.tgz FLINK_ASC_URL=https://www.apache.org/dist/flink/flink-1.8.0/flink-1.8.0-bin-scala_2.12.tgz.asc
# Sat, 11 May 2019 10:30:07 GMT
COPY file:6080d226172b47d9372bfe1905f1a2ac9e15ee46ef2f939add669902b31da9ae in /KEYS 
# Sat, 11 May 2019 10:31:14 GMT
RUN set -ex;   apk add --no-cache --virtual .build-deps     ca-certificates     gnupg     openssl     tar   ;     wget -nv -O flink.tgz "$FLINK_TGZ_URL";   wget -nv -O flink.tgz.asc "$FLINK_ASC_URL";     export GNUPGHOME="$(mktemp -d)";   gpg --batch --import /KEYS;   gpg --batch --verify flink.tgz.asc flink.tgz;   gpgconf --kill all;   rm -rf "$GNUPGHOME" flink.tgz.asc;     tar -xf flink.tgz --strip-components=1;   rm flink.tgz;     apk del .build-deps;     chown -R flink:flink .;
# Sat, 11 May 2019 10:31:16 GMT
COPY file:52e8c12e536aa08e39c4f96f47155e1dcf2ab878ce6da844d94e239302d89fe1 in / 
# Sat, 11 May 2019 10:31:16 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 11 May 2019 10:31:17 GMT
EXPOSE 6123 8081
# Sat, 11 May 2019 10:31:17 GMT
CMD ["help"]
```

-	Layers:
	-	`sha256:6e39823df636e42cc4ea056843af98c9bec31b5ae0a75cdc5628cd19b589189c`  
		Last Modified: Sat, 11 May 2019 07:50:08 GMT  
		Size: 2.5 MB (2543427 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab2b204f0fc5c4fd136771b708ddfd60e2bdc3cc56eff6e6e3d4ee5440b4c930`  
		Last Modified: Sat, 11 May 2019 08:48:45 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89395c9328f57513fe72be19d67c664b40bf3fc50c1770846eeac95042f3a5a6`  
		Last Modified: Sat, 11 May 2019 08:49:18 GMT  
		Size: 52.4 MB (52399849 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5083fc03284ac3b33293e6680737357736ff14748e84c8226bb10bf8c3b45360`  
		Last Modified: Sat, 11 May 2019 10:31:51 GMT  
		Size: 1.2 MB (1170627 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d106c44a1a4f2d203e22ed64771c1cd670eb22c63b834b0d64e3290c3a759cc7`  
		Last Modified: Sat, 11 May 2019 10:40:19 GMT  
		Size: 1.2 KB (1210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59718795e427105896607a12cad5b1bd6b528d6121bb97b42c0cb4117eca1f74`  
		Last Modified: Sat, 11 May 2019 10:40:19 GMT  
		Size: 148.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94e866a6a95babd1f587c49b514f01860d051efd3819aee8d07d9c07b13b5342`  
		Last Modified: Sat, 11 May 2019 10:40:19 GMT  
		Size: 64.0 KB (63969 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad6cf3c92b5c9fcefcb4bced92431935d6587810641b5dbe1aa6e31a03dd774c`  
		Last Modified: Sat, 11 May 2019 10:40:56 GMT  
		Size: 287.2 MB (287218071 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f564d3853a3ae00e8df7650894d132e1a28fa6dc4ce7cfa451447f686fd1a21`  
		Last Modified: Sat, 11 May 2019 10:40:19 GMT  
		Size: 1.2 KB (1238 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `flink:scala_2.12-alpine` - linux; arm variant v7

```console
$ docker pull flink@sha256:f51b14397390fe87f2f992dabefc0aa2e153b0d588cd791630bf894c86a64e86
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **342.3 MB (342337356 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e3aaa1308fb621376825e1c37855bca22f4e6c3d68623aa40ba2ebe52c28940a`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["help"]`

```dockerfile
# Sat, 11 May 2019 11:57:33 GMT
ADD file:6a887e546cc71145f8be9285950befcf2a4095b97ba44c66550b31165f7a02b5 in / 
# Sat, 11 May 2019 11:57:34 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 12:16:43 GMT
ENV LANG=C.UTF-8
# Sat, 11 May 2019 12:16:45 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 11 May 2019 12:17:07 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Sat, 11 May 2019 12:17:07 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Sat, 11 May 2019 12:17:08 GMT
ENV JAVA_VERSION=8u212
# Sat, 11 May 2019 12:17:08 GMT
ENV JAVA_ALPINE_VERSION=8.212.04-r0
# Sat, 11 May 2019 12:17:13 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Sat, 11 May 2019 13:09:57 GMT
RUN apk add --no-cache bash libc6-compat snappy 'su-exec>=0.2'
# Sat, 11 May 2019 13:26:33 GMT
ENV FLINK_VERSION=1.8.0 HADOOP_SCALA_VARIANT=scala_2.12
# Sat, 11 May 2019 13:26:33 GMT
ENV FLINK_HOME=/opt/flink
# Sat, 11 May 2019 13:26:34 GMT
ENV PATH=/opt/flink/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Sat, 11 May 2019 13:26:35 GMT
RUN addgroup -S -g 9999 flink &&     adduser -D -S -H -u 9999 -G flink -h $FLINK_HOME flink
# Sat, 11 May 2019 13:26:36 GMT
WORKDIR /opt/flink
# Sat, 11 May 2019 13:26:36 GMT
ENV FLINK_URL_FILE_PATH=flink/flink-1.8.0/flink-1.8.0-bin-scala_2.12.tgz
# Sat, 11 May 2019 13:26:37 GMT
ENV FLINK_TGZ_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=flink/flink-1.8.0/flink-1.8.0-bin-scala_2.12.tgz FLINK_ASC_URL=https://www.apache.org/dist/flink/flink-1.8.0/flink-1.8.0-bin-scala_2.12.tgz.asc
# Sat, 11 May 2019 13:26:37 GMT
COPY file:6080d226172b47d9372bfe1905f1a2ac9e15ee46ef2f939add669902b31da9ae in /KEYS 
# Sat, 11 May 2019 13:27:19 GMT
RUN set -ex;   apk add --no-cache --virtual .build-deps     ca-certificates     gnupg     openssl     tar   ;     wget -nv -O flink.tgz "$FLINK_TGZ_URL";   wget -nv -O flink.tgz.asc "$FLINK_ASC_URL";     export GNUPGHOME="$(mktemp -d)";   gpg --batch --import /KEYS;   gpg --batch --verify flink.tgz.asc flink.tgz;   gpgconf --kill all;   rm -rf "$GNUPGHOME" flink.tgz.asc;     tar -xf flink.tgz --strip-components=1;   rm flink.tgz;     apk del .build-deps;     chown -R flink:flink .;
# Sat, 11 May 2019 13:27:20 GMT
COPY file:52e8c12e536aa08e39c4f96f47155e1dcf2ab878ce6da844d94e239302d89fe1 in / 
# Sat, 11 May 2019 13:27:20 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 11 May 2019 13:27:21 GMT
EXPOSE 6123 8081
# Sat, 11 May 2019 13:27:21 GMT
CMD ["help"]
```

-	Layers:
	-	`sha256:856f4240f8dba160c5323506c1e9a4dbaaca840bf1b0c244af3b8d1b42b0f43b`  
		Last Modified: Sat, 11 May 2019 11:57:49 GMT  
		Size: 2.4 MB (2350666 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:962e53e3f8337e63290eb26703e31f0e87d70db371afae581ad3898b1dccb972`  
		Last Modified: Sat, 11 May 2019 12:19:01 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d8ace359c0d2fa79f0bdd59958d9f9e62edf19eb3e0921197b5779ca16b284c`  
		Last Modified: Sat, 11 May 2019 12:19:35 GMT  
		Size: 51.6 MB (51593580 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68b4136ece6de8db27d01153105ceb9338ff52e90ae25a14117d3ea5e361529e`  
		Last Modified: Sat, 11 May 2019 13:28:06 GMT  
		Size: 1.1 MB (1108247 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be15368d9bac222f0facc16821aec5dc3f2a6e0c3344a442504e4664ec88e2d3`  
		Last Modified: Sat, 11 May 2019 13:36:51 GMT  
		Size: 1.2 KB (1211 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b896480e23b9074cc821e40a18eea03ecf277c3447aa8d994705f6b64c9167f8`  
		Last Modified: Sat, 11 May 2019 13:36:51 GMT  
		Size: 148.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f02c72e261bf59d718e45a8d0d346696393fcf19423f3efca5f6a7209d505192`  
		Last Modified: Sat, 11 May 2019 13:36:51 GMT  
		Size: 64.0 KB (63966 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:205a6a1811dddc60256b1b4d82779d0d39a8d99bf801b04be8d89041d947f490`  
		Last Modified: Sat, 11 May 2019 13:37:30 GMT  
		Size: 287.2 MB (287218061 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd6b2311e5a97156c53e21f4d4a9512a058e83b4c5815896a5c85b79b1e95ad6`  
		Last Modified: Sat, 11 May 2019 13:36:51 GMT  
		Size: 1.2 KB (1239 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `flink:scala_2.12-alpine` - linux; arm64 variant v8

```console
$ docker pull flink@sha256:f786fd281bf68a0d8c9f6e17b92a010a9d4c32dfc464dc448e389fc07a625ff4
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **346.2 MB (346153015 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9d14f30fa77396a47f2cf7903fe249392d32faa2899ed231eefd2458745053af`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["help"]`

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
# Sat, 11 May 2019 16:30:09 GMT
RUN apk add --no-cache bash libc6-compat snappy 'su-exec>=0.2'
# Sat, 11 May 2019 17:18:22 GMT
ENV FLINK_VERSION=1.8.0 HADOOP_SCALA_VARIANT=scala_2.12
# Sat, 11 May 2019 17:18:23 GMT
ENV FLINK_HOME=/opt/flink
# Sat, 11 May 2019 17:18:24 GMT
ENV PATH=/opt/flink/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Sat, 11 May 2019 17:18:26 GMT
RUN addgroup -S -g 9999 flink &&     adduser -D -S -H -u 9999 -G flink -h $FLINK_HOME flink
# Sat, 11 May 2019 17:18:27 GMT
WORKDIR /opt/flink
# Sat, 11 May 2019 17:18:28 GMT
ENV FLINK_URL_FILE_PATH=flink/flink-1.8.0/flink-1.8.0-bin-scala_2.12.tgz
# Sat, 11 May 2019 17:18:28 GMT
ENV FLINK_TGZ_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=flink/flink-1.8.0/flink-1.8.0-bin-scala_2.12.tgz FLINK_ASC_URL=https://www.apache.org/dist/flink/flink-1.8.0/flink-1.8.0-bin-scala_2.12.tgz.asc
# Sat, 11 May 2019 17:18:29 GMT
COPY file:6080d226172b47d9372bfe1905f1a2ac9e15ee46ef2f939add669902b31da9ae in /KEYS 
# Sat, 11 May 2019 17:20:02 GMT
RUN set -ex;   apk add --no-cache --virtual .build-deps     ca-certificates     gnupg     openssl     tar   ;     wget -nv -O flink.tgz "$FLINK_TGZ_URL";   wget -nv -O flink.tgz.asc "$FLINK_ASC_URL";     export GNUPGHOME="$(mktemp -d)";   gpg --batch --import /KEYS;   gpg --batch --verify flink.tgz.asc flink.tgz;   gpgconf --kill all;   rm -rf "$GNUPGHOME" flink.tgz.asc;     tar -xf flink.tgz --strip-components=1;   rm flink.tgz;     apk del .build-deps;     chown -R flink:flink .;
# Sat, 11 May 2019 17:20:03 GMT
COPY file:52e8c12e536aa08e39c4f96f47155e1dcf2ab878ce6da844d94e239302d89fe1 in / 
# Sat, 11 May 2019 17:20:04 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 11 May 2019 17:20:04 GMT
EXPOSE 6123 8081
# Sat, 11 May 2019 17:20:05 GMT
CMD ["help"]
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
	-	`sha256:1664686b1cb2280bf62d0e4d3274a59c6dc6cf05606687ae72c1de3173a59767`  
		Last Modified: Sat, 11 May 2019 17:21:21 GMT  
		Size: 1.2 MB (1237571 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00dae2edb437ebad335d8c19700344acbd9aa8a553d7ffa16c9f9c15f12b8230`  
		Last Modified: Sat, 11 May 2019 17:31:17 GMT  
		Size: 1.2 KB (1210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48712440c40c2d2cc85f773e2502d2330003beaa36b52fa0d4755a26ee93ecdd`  
		Last Modified: Sat, 11 May 2019 17:31:17 GMT  
		Size: 114.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d3f0845538923ddfe85604e535d781420a8bc96f87c9c6d4e868026db32809e`  
		Last Modified: Sat, 11 May 2019 17:31:17 GMT  
		Size: 64.0 KB (63969 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b37694307cb434ec34ae4ffc6eda2d73e92291964a4a8d2f64115da0c72b73ef`  
		Last Modified: Sat, 11 May 2019 17:31:58 GMT  
		Size: 287.2 MB (287217367 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8574f36ab38d4aa4d7ee924842c5849769038ca73cf2551a4fe770669a57ccd4`  
		Last Modified: Sat, 11 May 2019 17:31:17 GMT  
		Size: 1.2 KB (1238 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `flink:scala_2.12-alpine` - linux; 386

```console
$ docker pull flink@sha256:a9f6d20f3c647e806b5ddf63dd23df2c87159f82d643cc63a48bc8eb810e66a4
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **346.9 MB (346866844 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2ed2faed648b7ed7a5923d7df8f8d58a76f640eefb55dfcad9a8f464605f8c8d`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["help"]`

```dockerfile
# Sat, 11 May 2019 10:39:25 GMT
ADD file:6bcacb93c2814cb9c833dfb82a5ef000ef21e6864d9f0b20a7a68b6e16801700 in / 
# Sat, 11 May 2019 10:39:25 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 15:28:39 GMT
ENV LANG=C.UTF-8
# Sat, 11 May 2019 15:28:39 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 11 May 2019 15:28:53 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Sat, 11 May 2019 15:28:53 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Sat, 11 May 2019 15:28:53 GMT
ENV JAVA_VERSION=8u212
# Sat, 11 May 2019 15:28:54 GMT
ENV JAVA_ALPINE_VERSION=8.212.04-r0
# Sat, 11 May 2019 15:28:57 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Sat, 11 May 2019 16:50:19 GMT
RUN apk add --no-cache bash libc6-compat snappy 'su-exec>=0.2'
# Sat, 11 May 2019 16:58:32 GMT
ENV FLINK_VERSION=1.8.0 HADOOP_SCALA_VARIANT=scala_2.12
# Sat, 11 May 2019 16:58:32 GMT
ENV FLINK_HOME=/opt/flink
# Sat, 11 May 2019 16:58:33 GMT
ENV PATH=/opt/flink/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Sat, 11 May 2019 16:58:33 GMT
RUN addgroup -S -g 9999 flink &&     adduser -D -S -H -u 9999 -G flink -h $FLINK_HOME flink
# Sat, 11 May 2019 16:58:33 GMT
WORKDIR /opt/flink
# Sat, 11 May 2019 16:58:34 GMT
ENV FLINK_URL_FILE_PATH=flink/flink-1.8.0/flink-1.8.0-bin-scala_2.12.tgz
# Sat, 11 May 2019 16:58:34 GMT
ENV FLINK_TGZ_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=flink/flink-1.8.0/flink-1.8.0-bin-scala_2.12.tgz FLINK_ASC_URL=https://www.apache.org/dist/flink/flink-1.8.0/flink-1.8.0-bin-scala_2.12.tgz.asc
# Sat, 11 May 2019 16:58:34 GMT
COPY file:6080d226172b47d9372bfe1905f1a2ac9e15ee46ef2f939add669902b31da9ae in /KEYS 
# Sat, 11 May 2019 16:58:54 GMT
RUN set -ex;   apk add --no-cache --virtual .build-deps     ca-certificates     gnupg     openssl     tar   ;     wget -nv -O flink.tgz "$FLINK_TGZ_URL";   wget -nv -O flink.tgz.asc "$FLINK_ASC_URL";     export GNUPGHOME="$(mktemp -d)";   gpg --batch --import /KEYS;   gpg --batch --verify flink.tgz.asc flink.tgz;   gpgconf --kill all;   rm -rf "$GNUPGHOME" flink.tgz.asc;     tar -xf flink.tgz --strip-components=1;   rm flink.tgz;     apk del .build-deps;     chown -R flink:flink .;
# Sat, 11 May 2019 16:58:54 GMT
COPY file:52e8c12e536aa08e39c4f96f47155e1dcf2ab878ce6da844d94e239302d89fe1 in / 
# Sat, 11 May 2019 16:58:54 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 11 May 2019 16:58:54 GMT
EXPOSE 6123 8081
# Sat, 11 May 2019 16:58:55 GMT
CMD ["help"]
```

-	Layers:
	-	`sha256:d0c434c0359e2da36b788ae4f5a3a70015d83ee20070aa412e714c7feecca465`  
		Last Modified: Sat, 11 May 2019 10:39:46 GMT  
		Size: 2.8 MB (2752091 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78a94db5087f7f8bcd0cadca9c6d446a22a96182ec9c08d67fda830b278e8dc2`  
		Last Modified: Sat, 11 May 2019 15:30:11 GMT  
		Size: 236.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cca1537ab582bec5eed73622e871888861f80509db0e2ec3b0150007b8ac52c3`  
		Last Modified: Sat, 11 May 2019 15:30:38 GMT  
		Size: 55.6 MB (55555506 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d00733469ed62be1569b99216ccd6059a5b6ec69762045fb89e6be17886256f8`  
		Last Modified: Sat, 11 May 2019 16:59:26 GMT  
		Size: 1.3 MB (1275091 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77691ab8e2f13df7a8a1c076331c5bd862120d90c8565b818784cb84547854df`  
		Last Modified: Sat, 11 May 2019 17:05:05 GMT  
		Size: 1.2 KB (1210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8a19424f229fec432ca191e42e4112d9c4519d1a98e317d3d66e691525c0430`  
		Last Modified: Sat, 11 May 2019 17:05:05 GMT  
		Size: 113.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a56c67a0609fc0dd8aa55aefa23ba4e3573c24f8f1d0b872a6ccdc85f47b0c9`  
		Last Modified: Sat, 11 May 2019 17:05:05 GMT  
		Size: 64.0 KB (63966 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc28e9f6d2773d4b4625f74211e2393c4e31cc5e8ca8a7b6ea912f46d47e6c6a`  
		Last Modified: Sat, 11 May 2019 17:05:26 GMT  
		Size: 287.2 MB (287217392 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00dd4392f3cbb8e712a2ca3e2c6c5d159685220985755d5349148ba35d9fc2be`  
		Last Modified: Sat, 11 May 2019 17:05:05 GMT  
		Size: 1.2 KB (1239 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `flink:scala_2.12-alpine` - linux; ppc64le

```console
$ docker pull flink@sha256:ad1a679e1249a57b3373e44436611bad33d33e5ce7dd95c35e0ef4c3afcc4fe9
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **347.0 MB (346968696 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:91180a2967c0c7f0d1a1305bb15550120dac065f4d5e79979e02807db3aaa14f`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["help"]`

```dockerfile
# Sat, 11 May 2019 08:29:33 GMT
ADD file:109b3a992e029fdd5c3d6b378474c32a2c36cc5e549c83c3df3330dbc4eb7dd7 in / 
# Sat, 11 May 2019 08:29:34 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 09:44:37 GMT
ENV LANG=C.UTF-8
# Sat, 11 May 2019 09:44:48 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 11 May 2019 09:45:40 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Sat, 11 May 2019 09:45:41 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Sat, 11 May 2019 09:45:43 GMT
ENV JAVA_VERSION=8u212
# Sat, 11 May 2019 09:45:45 GMT
ENV JAVA_ALPINE_VERSION=8.212.04-r0
# Tue, 14 May 2019 00:19:13 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 14 May 2019 01:14:43 GMT
RUN apk add --no-cache bash libc6-compat snappy 'su-exec>=0.2'
# Tue, 14 May 2019 01:41:45 GMT
ENV FLINK_VERSION=1.8.0 HADOOP_SCALA_VARIANT=scala_2.12
# Tue, 14 May 2019 01:41:47 GMT
ENV FLINK_HOME=/opt/flink
# Tue, 14 May 2019 01:41:49 GMT
ENV PATH=/opt/flink/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 14 May 2019 01:41:53 GMT
RUN addgroup -S -g 9999 flink &&     adduser -D -S -H -u 9999 -G flink -h $FLINK_HOME flink
# Tue, 14 May 2019 01:41:55 GMT
WORKDIR /opt/flink
# Tue, 14 May 2019 01:41:56 GMT
ENV FLINK_URL_FILE_PATH=flink/flink-1.8.0/flink-1.8.0-bin-scala_2.12.tgz
# Tue, 14 May 2019 01:41:58 GMT
ENV FLINK_TGZ_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=flink/flink-1.8.0/flink-1.8.0-bin-scala_2.12.tgz FLINK_ASC_URL=https://www.apache.org/dist/flink/flink-1.8.0/flink-1.8.0-bin-scala_2.12.tgz.asc
# Tue, 14 May 2019 01:41:59 GMT
COPY file:6080d226172b47d9372bfe1905f1a2ac9e15ee46ef2f939add669902b31da9ae in /KEYS 
# Tue, 14 May 2019 01:42:56 GMT
RUN set -ex;   apk add --no-cache --virtual .build-deps     ca-certificates     gnupg     openssl     tar   ;     wget -nv -O flink.tgz "$FLINK_TGZ_URL";   wget -nv -O flink.tgz.asc "$FLINK_ASC_URL";     export GNUPGHOME="$(mktemp -d)";   gpg --batch --import /KEYS;   gpg --batch --verify flink.tgz.asc flink.tgz;   gpgconf --kill all;   rm -rf "$GNUPGHOME" flink.tgz.asc;     tar -xf flink.tgz --strip-components=1;   rm flink.tgz;     apk del .build-deps;     chown -R flink:flink .;
# Tue, 14 May 2019 01:42:58 GMT
COPY file:52e8c12e536aa08e39c4f96f47155e1dcf2ab878ce6da844d94e239302d89fe1 in / 
# Tue, 14 May 2019 01:43:01 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 14 May 2019 01:43:03 GMT
EXPOSE 6123 8081
# Tue, 14 May 2019 01:43:05 GMT
CMD ["help"]
```

-	Layers:
	-	`sha256:221c32b360a801e69a8aac598d495aaac3512642f967704a9d9bc5d6b4b4709e`  
		Last Modified: Sat, 11 May 2019 08:30:16 GMT  
		Size: 2.8 MB (2781019 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a97b7b4784d132b1e215acf6612c7852271c10c4ff9f096f9847f16559741c5e`  
		Last Modified: Tue, 14 May 2019 00:26:09 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c3e5548354bbdda75469be7096c7b47d15194f61d016e87a8878b9c0a117e46`  
		Last Modified: Tue, 14 May 2019 00:28:10 GMT  
		Size: 55.6 MB (55592060 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f3b1b0193e1ea842789dd80b5f3b4b6174cb3f64ba76d9f1562d5cf1ece4712`  
		Last Modified: Tue, 14 May 2019 01:44:26 GMT  
		Size: 1.3 MB (1310752 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64994733d36d9348804feb9ce026c761f6e837df60dab9b25021314bd546426e`  
		Last Modified: Tue, 14 May 2019 01:53:29 GMT  
		Size: 1.2 KB (1209 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9996257fbc7d83a439b27e687483d508bd280fec1aaafacf6262ca8fa4b5b579`  
		Last Modified: Tue, 14 May 2019 01:53:29 GMT  
		Size: 148.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c577daf6dfab3c095e0bf6a372c30e4d8c5b8280bcd08065fbefc6db731f304`  
		Last Modified: Tue, 14 May 2019 01:53:28 GMT  
		Size: 64.0 KB (63967 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:667e6adcaabe3f528c1842100f279e53323cfff07cd97205a151751da70dd032`  
		Last Modified: Tue, 14 May 2019 01:53:59 GMT  
		Size: 287.2 MB (287218065 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c37f812fffca33f01da687af1e1063012c0afda8ad6dd2b80aff099706b85c84`  
		Last Modified: Tue, 14 May 2019 01:53:28 GMT  
		Size: 1.2 KB (1238 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `flink:scala_2.12-alpine` - linux; s390x

```console
$ docker pull flink@sha256:4ff5ea608ace6e183a378d466cb622b9a5ba89e55a68ec9a0515b4c79943736e
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **344.8 MB (344769026 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6f7663bd07a81a3d9eeea8b0ca97b53c558bb46cee3cd7c9b634a7461564214a`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["help"]`

```dockerfile
# Sat, 11 May 2019 11:41:43 GMT
ADD file:6b519ed40566a3088c7bf57b3f1624dadc83f9e56839d5cde42489b54a0a1e90 in / 
# Sat, 11 May 2019 11:41:43 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 14:04:28 GMT
ENV LANG=C.UTF-8
# Sat, 11 May 2019 14:04:29 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 11 May 2019 14:04:47 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Sat, 11 May 2019 14:04:47 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Sat, 11 May 2019 14:04:48 GMT
ENV JAVA_VERSION=8u212
# Sat, 11 May 2019 14:04:48 GMT
ENV JAVA_ALPINE_VERSION=8.212.04-r0
# Sat, 11 May 2019 14:04:51 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Sat, 11 May 2019 14:24:51 GMT
RUN apk add --no-cache bash libc6-compat snappy 'su-exec>=0.2'
# Sat, 11 May 2019 14:32:06 GMT
ENV FLINK_VERSION=1.8.0 HADOOP_SCALA_VARIANT=scala_2.12
# Sat, 11 May 2019 14:32:06 GMT
ENV FLINK_HOME=/opt/flink
# Sat, 11 May 2019 14:32:06 GMT
ENV PATH=/opt/flink/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Sat, 11 May 2019 14:32:07 GMT
RUN addgroup -S -g 9999 flink &&     adduser -D -S -H -u 9999 -G flink -h $FLINK_HOME flink
# Sat, 11 May 2019 14:32:07 GMT
WORKDIR /opt/flink
# Sat, 11 May 2019 14:32:08 GMT
ENV FLINK_URL_FILE_PATH=flink/flink-1.8.0/flink-1.8.0-bin-scala_2.12.tgz
# Sat, 11 May 2019 14:32:08 GMT
ENV FLINK_TGZ_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=flink/flink-1.8.0/flink-1.8.0-bin-scala_2.12.tgz FLINK_ASC_URL=https://www.apache.org/dist/flink/flink-1.8.0/flink-1.8.0-bin-scala_2.12.tgz.asc
# Sat, 11 May 2019 14:32:08 GMT
COPY file:6080d226172b47d9372bfe1905f1a2ac9e15ee46ef2f939add669902b31da9ae in /KEYS 
# Sat, 11 May 2019 14:33:10 GMT
RUN set -ex;   apk add --no-cache --virtual .build-deps     ca-certificates     gnupg     openssl     tar   ;     wget -nv -O flink.tgz "$FLINK_TGZ_URL";   wget -nv -O flink.tgz.asc "$FLINK_ASC_URL";     export GNUPGHOME="$(mktemp -d)";   gpg --batch --import /KEYS;   gpg --batch --verify flink.tgz.asc flink.tgz;   gpgconf --kill all;   rm -rf "$GNUPGHOME" flink.tgz.asc;     tar -xf flink.tgz --strip-components=1;   rm flink.tgz;     apk del .build-deps;     chown -R flink:flink .;
# Sat, 11 May 2019 14:33:10 GMT
COPY file:52e8c12e536aa08e39c4f96f47155e1dcf2ab878ce6da844d94e239302d89fe1 in / 
# Sat, 11 May 2019 14:33:10 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 11 May 2019 14:33:11 GMT
EXPOSE 6123 8081
# Sat, 11 May 2019 14:33:11 GMT
CMD ["help"]
```

-	Layers:
	-	`sha256:bea4f04d8b33c5bd68ccb34849e615333c5ef00958b400841a03970dd2d5e9ae`  
		Last Modified: Sat, 11 May 2019 11:42:13 GMT  
		Size: 2.5 MB (2543331 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:beaa0ca3e410795baed0978b91dcb428e9f31c46e39a429f31aa4c833592476a`  
		Last Modified: Sat, 11 May 2019 14:06:07 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5af7c2c80927bdfb59bf08ec75eb6365291f3209fb2ea435e845d1aa703723bd`  
		Last Modified: Sat, 11 May 2019 14:06:29 GMT  
		Size: 53.7 MB (53684176 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f88e5814bb2d3a8bae228f462d540f9e91a384cf25fa4071c25735b2d53fd043`  
		Last Modified: Sat, 11 May 2019 14:33:35 GMT  
		Size: 1.3 MB (1257564 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c634e44658a06fab74f3c153e198f6f634f9f54ccce1e2838eaf76cf3a7a4d6`  
		Last Modified: Sat, 11 May 2019 14:38:01 GMT  
		Size: 1.2 KB (1211 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36c09d246b2a7b124d6d2c48bce3e1102b211d996863b8adbc12283dcbee8225`  
		Last Modified: Sat, 11 May 2019 14:38:01 GMT  
		Size: 114.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e946579ea4616394fc842eb9f8e47292c3fa9e5c49a26147dfc68fa05ba2b29d`  
		Last Modified: Sat, 11 May 2019 14:38:01 GMT  
		Size: 64.0 KB (63966 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d0ad917ef7196e61d3c44ef8030cb6f991b7aad51d56a6481042df5ae1541a2`  
		Last Modified: Sat, 11 May 2019 14:38:24 GMT  
		Size: 287.2 MB (287217189 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e597a9c7898a1137b30191f8652207b6ed2c5e2d59cf78d626e7c456aa8f512`  
		Last Modified: Sat, 11 May 2019 14:38:01 GMT  
		Size: 1.2 KB (1238 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
