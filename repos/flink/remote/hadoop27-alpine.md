## `flink:hadoop27-alpine`

```console
$ docker pull flink@sha256:e6aff95d311d3e7da5d89b123eb4cce23dac146992977c660af9c501414563c6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `flink:hadoop27-alpine` - linux; amd64

```console
$ docker pull flink@sha256:8472d4cdede1eba9da28ece1a87f6eb00c5e1177834a4ba5b1f2ba2d2c49ec0e
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **343.9 MB (343876037 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b4d1bb92676aee24acbf6195ab5331cee9784a8a2ce6664a96e33af3c5f0bf28`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["help"]`

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
# Tue, 05 Feb 2019 21:49:40 GMT
RUN apk add --no-cache bash libc6-compat snappy 'su-exec>=0.2'
# Tue, 05 Feb 2019 22:04:32 GMT
ENV FLINK_VERSION=1.7.1 HADOOP_SCALA_VARIANT=hadoop27-scala_2.12
# Tue, 05 Feb 2019 22:04:33 GMT
ENV FLINK_HOME=/opt/flink
# Tue, 05 Feb 2019 22:04:33 GMT
ENV PATH=/opt/flink/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 05 Feb 2019 22:04:34 GMT
RUN addgroup -S -g 9999 flink &&     adduser -D -S -H -u 9999 -G flink -h $FLINK_HOME flink
# Tue, 05 Feb 2019 22:04:34 GMT
WORKDIR /opt/flink
# Tue, 05 Feb 2019 22:04:34 GMT
ENV FLINK_URL_FILE_PATH=flink/flink-1.7.1/flink-1.7.1-bin-hadoop27-scala_2.12.tgz
# Tue, 05 Feb 2019 22:04:35 GMT
ENV FLINK_TGZ_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=flink/flink-1.7.1/flink-1.7.1-bin-hadoop27-scala_2.12.tgz FLINK_ASC_URL=https://www.apache.org/dist/flink/flink-1.7.1/flink-1.7.1-bin-hadoop27-scala_2.12.tgz.asc
# Tue, 05 Feb 2019 22:04:35 GMT
COPY file:48bb6014c3e97895005a1862074377ac24cf0d91f0034129ec7f3c4dd3e96a38 in /KEYS 
# Tue, 05 Feb 2019 22:05:33 GMT
RUN set -ex;   apk add --no-cache --virtual .build-deps     ca-certificates     gnupg     openssl     tar   ;     wget -nv -O flink.tgz "$FLINK_TGZ_URL";   wget -nv -O flink.tgz.asc "$FLINK_ASC_URL";     export GNUPGHOME="$(mktemp -d)";   gpg --batch --import /KEYS;   gpg --batch --verify flink.tgz.asc flink.tgz;   gpgconf --kill all;   rm -rf "$GNUPGHOME" flink.tgz.asc;     tar -xf flink.tgz --strip-components=1;   rm flink.tgz;     apk del .build-deps;     chown -R flink:flink .;
# Tue, 05 Feb 2019 22:05:34 GMT
COPY file:82b73e728dc4710cf6b0b2a4c3b0e39f061e57bb5a799dfaca9133014e5d2c63 in / 
# Tue, 05 Feb 2019 22:05:34 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 05 Feb 2019 22:05:34 GMT
EXPOSE 6123 8081
# Tue, 05 Feb 2019 22:05:34 GMT
CMD ["help"]
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
	-	`sha256:aa737bd246ca3f07ac9736092a774a493ada6a9dede8a571e91670847138f61f`  
		Last Modified: Tue, 05 Feb 2019 22:09:29 GMT  
		Size: 1.2 MB (1226819 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d6748239adec95a7dc60c71fc777ba407539d400b5d031ef7ecb653dad85f6b`  
		Last Modified: Tue, 05 Feb 2019 22:14:27 GMT  
		Size: 1.2 KB (1205 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4601398756ce6abf08b72c3deb171d6816cf8f73455911df32bfebef44fd1f7f`  
		Last Modified: Tue, 05 Feb 2019 22:14:27 GMT  
		Size: 114.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2db052ac0533d2282b6dda8df97577bc1f07d40406956f2f7281a4b90cf68e9`  
		Last Modified: Tue, 05 Feb 2019 22:14:27 GMT  
		Size: 61.6 KB (61620 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a1c16cd8078dcd14d78421bd4a2918bf7009246d22c3f23a7e008060c26697f`  
		Last Modified: Tue, 05 Feb 2019 22:14:53 GMT  
		Size: 284.9 MB (284907438 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:945bedb8a2c162eee78a4b993ae4fd9c0f980ed7b051f8acb3decf324b929eaa`  
		Last Modified: Tue, 05 Feb 2019 22:14:27 GMT  
		Size: 1.1 KB (1141 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `flink:hadoop27-alpine` - linux; arm variant v6

```console
$ docker pull flink@sha256:b037c12da2ea30418fd435b8af18432d1eb568b10d7f12ff5c649e95c86b0088
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **340.9 MB (340873289 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1806c447db31a448fc028143f841462464c5c4fef27e3e7ff1c377846fef5b6e`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["help"]`

```dockerfile
# Fri, 21 Dec 2018 08:49:49 GMT
ADD file:38d34e3ff051a263eab785aca5763d350b82063f0356752117e168349d9e3811 in / 
# Fri, 21 Dec 2018 08:49:50 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Fri, 21 Dec 2018 08:49:50 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 09:54:13 GMT
ENV LANG=C.UTF-8
# Fri, 21 Dec 2018 09:54:14 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 21 Dec 2018 09:54:26 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Fri, 21 Dec 2018 09:54:27 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Fri, 11 Jan 2019 08:52:43 GMT
ENV JAVA_VERSION=8u191
# Fri, 11 Jan 2019 08:52:44 GMT
ENV JAVA_ALPINE_VERSION=8.191.12-r0
# Fri, 11 Jan 2019 08:52:49 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Fri, 11 Jan 2019 09:19:26 GMT
RUN apk add --no-cache bash libc6-compat snappy 'su-exec>=0.2'
# Fri, 11 Jan 2019 09:32:00 GMT
ENV FLINK_VERSION=1.7.1 HADOOP_SCALA_VARIANT=hadoop27-scala_2.12
# Fri, 11 Jan 2019 09:32:00 GMT
ENV FLINK_HOME=/opt/flink
# Fri, 11 Jan 2019 09:32:00 GMT
ENV PATH=/opt/flink/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Fri, 11 Jan 2019 09:32:02 GMT
RUN addgroup -S -g 9999 flink &&     adduser -D -S -H -u 9999 -G flink -h $FLINK_HOME flink
# Fri, 11 Jan 2019 09:32:02 GMT
WORKDIR /opt/flink
# Fri, 11 Jan 2019 09:32:02 GMT
ENV FLINK_URL_FILE_PATH=flink/flink-1.7.1/flink-1.7.1-bin-hadoop27-scala_2.12.tgz
# Fri, 11 Jan 2019 09:32:03 GMT
ENV FLINK_TGZ_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=flink/flink-1.7.1/flink-1.7.1-bin-hadoop27-scala_2.12.tgz FLINK_ASC_URL=https://www.apache.org/dist/flink/flink-1.7.1/flink-1.7.1-bin-hadoop27-scala_2.12.tgz.asc
# Fri, 11 Jan 2019 09:32:03 GMT
COPY file:48bb6014c3e97895005a1862074377ac24cf0d91f0034129ec7f3c4dd3e96a38 in /KEYS 
# Fri, 11 Jan 2019 09:32:54 GMT
RUN set -ex;   apk add --no-cache --virtual .build-deps     ca-certificates     gnupg     openssl     tar   ;     wget -nv -O flink.tgz "$FLINK_TGZ_URL";   wget -nv -O flink.tgz.asc "$FLINK_ASC_URL";     export GNUPGHOME="$(mktemp -d)";   gpg --batch --import /KEYS;   gpg --batch --verify flink.tgz.asc flink.tgz;   gpgconf --kill all;   rm -rf "$GNUPGHOME" flink.tgz.asc;     tar -xf flink.tgz --strip-components=1;   rm flink.tgz;     apk del .build-deps;     chown -R flink:flink .;
# Thu, 17 Jan 2019 08:50:38 GMT
COPY file:82b73e728dc4710cf6b0b2a4c3b0e39f061e57bb5a799dfaca9133014e5d2c63 in / 
# Thu, 17 Jan 2019 08:50:38 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 17 Jan 2019 08:50:38 GMT
EXPOSE 6123 8081
# Thu, 17 Jan 2019 08:50:39 GMT
CMD ["help"]
```

-	Layers:
	-	`sha256:5b678b67777fc7983d3563839cc9d511de267ec6de1961f2b590d552d8bfa105`  
		Last Modified: Fri, 21 Dec 2018 08:50:18 GMT  
		Size: 2.1 MB (2145782 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9f0b2b885d968636a597331169fce72a69964c911558554f1b2a0d21959f34f`  
		Last Modified: Fri, 21 Dec 2018 08:50:17 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db946754b322adc3ac60fe5714a9c65ff7c92700903efa2f530018cbf95e2746`  
		Last Modified: Fri, 21 Dec 2018 09:55:28 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b747ae367a283db1307b30d3b9264cb69c982ab55c9ca7a7671811919ac10ea5`  
		Last Modified: Fri, 11 Jan 2019 08:53:50 GMT  
		Size: 52.3 MB (52326802 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:620f51d96c540042913343a52e3ca4273ed05cc36e6008cdd10473703a71ba0f`  
		Last Modified: Fri, 11 Jan 2019 09:40:45 GMT  
		Size: 1.2 MB (1172600 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22b02e2873cb2a8d00ca55a0a884eb03c3953b34e0574cee265b5cae6edd2097`  
		Last Modified: Fri, 11 Jan 2019 09:48:25 GMT  
		Size: 1.2 KB (1208 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cbf15d499f7428ff2857a0afb5bb3d8db01556c24ab5d2eb81fc7c6efd11ce3a`  
		Last Modified: Fri, 11 Jan 2019 09:48:24 GMT  
		Size: 145.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:749226e30fe65361465d18d02855b53ef9b4ba0b301f43656f23052acefe0cfb`  
		Last Modified: Fri, 11 Jan 2019 09:48:24 GMT  
		Size: 61.6 KB (61621 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:878e8e993b5787c3e2ccfd850a7df0852522eb0a580b2ab152223f4d44103396`  
		Last Modified: Fri, 11 Jan 2019 09:48:59 GMT  
		Size: 285.2 MB (285163577 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39b1184507ceff1a27fe8e8e9cf06972f10fefda350a3102082858d7efe75261`  
		Last Modified: Thu, 17 Jan 2019 08:52:28 GMT  
		Size: 1.1 KB (1141 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `flink:hadoop27-alpine` - linux; arm64 variant v8

```console
$ docker pull flink@sha256:4710c2416c4b5a6b9b9e7592647f2e97bac477af859b09116a492c6b13009985
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **341.9 MB (341871579 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1d6f790390492b6949444f34db902ce8012e3b016809d7dfe91273b8ec18d796`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["help"]`

```dockerfile
# Fri, 21 Dec 2018 09:43:06 GMT
ADD file:79419748674899ac7d5d699fe62f837c69d04af3ceaabbb7951c35c2f0ff46fa in / 
# Fri, 21 Dec 2018 09:43:07 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Fri, 21 Dec 2018 09:43:07 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 13:05:53 GMT
ENV LANG=C.UTF-8
# Fri, 21 Dec 2018 13:05:56 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 21 Dec 2018 13:06:35 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Fri, 21 Dec 2018 13:06:36 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Fri, 11 Jan 2019 09:55:45 GMT
ENV JAVA_VERSION=8u191
# Fri, 11 Jan 2019 09:55:46 GMT
ENV JAVA_ALPINE_VERSION=8.191.12-r0
# Fri, 11 Jan 2019 09:55:53 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Fri, 11 Jan 2019 11:56:21 GMT
RUN apk add --no-cache bash libc6-compat snappy 'su-exec>=0.2'
# Fri, 11 Jan 2019 12:42:43 GMT
ENV FLINK_VERSION=1.7.1 HADOOP_SCALA_VARIANT=hadoop27-scala_2.12
# Fri, 11 Jan 2019 12:42:44 GMT
ENV FLINK_HOME=/opt/flink
# Fri, 11 Jan 2019 12:42:46 GMT
ENV PATH=/opt/flink/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Fri, 11 Jan 2019 12:42:59 GMT
RUN addgroup -S -g 9999 flink &&     adduser -D -S -H -u 9999 -G flink -h $FLINK_HOME flink
# Fri, 11 Jan 2019 12:43:01 GMT
WORKDIR /opt/flink
# Fri, 11 Jan 2019 12:43:02 GMT
ENV FLINK_URL_FILE_PATH=flink/flink-1.7.1/flink-1.7.1-bin-hadoop27-scala_2.12.tgz
# Fri, 11 Jan 2019 12:43:04 GMT
ENV FLINK_TGZ_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=flink/flink-1.7.1/flink-1.7.1-bin-hadoop27-scala_2.12.tgz FLINK_ASC_URL=https://www.apache.org/dist/flink/flink-1.7.1/flink-1.7.1-bin-hadoop27-scala_2.12.tgz.asc
# Fri, 11 Jan 2019 12:43:06 GMT
COPY file:48bb6014c3e97895005a1862074377ac24cf0d91f0034129ec7f3c4dd3e96a38 in /KEYS 
# Fri, 11 Jan 2019 12:44:37 GMT
RUN set -ex;   apk add --no-cache --virtual .build-deps     ca-certificates     gnupg     openssl     tar   ;     wget -nv -O flink.tgz "$FLINK_TGZ_URL";   wget -nv -O flink.tgz.asc "$FLINK_ASC_URL";     export GNUPGHOME="$(mktemp -d)";   gpg --batch --import /KEYS;   gpg --batch --verify flink.tgz.asc flink.tgz;   gpgconf --kill all;   rm -rf "$GNUPGHOME" flink.tgz.asc;     tar -xf flink.tgz --strip-components=1;   rm flink.tgz;     apk del .build-deps;     chown -R flink:flink .;
# Thu, 17 Jan 2019 09:43:03 GMT
COPY file:82b73e728dc4710cf6b0b2a4c3b0e39f061e57bb5a799dfaca9133014e5d2c63 in / 
# Thu, 17 Jan 2019 09:43:04 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 17 Jan 2019 09:43:05 GMT
EXPOSE 6123 8081
# Thu, 17 Jan 2019 09:43:06 GMT
CMD ["help"]
```

-	Layers:
	-	`sha256:e3c488b39803d9194cf010f6127b1121d5387b90a1562d44b50b749d0e7a69bf`  
		Last Modified: Fri, 21 Dec 2018 09:43:51 GMT  
		Size: 2.1 MB (2099839 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05a63128803b1ea223f87244cb8d3faa97817f6cf3ca8249e485430218758510`  
		Last Modified: Fri, 21 Dec 2018 09:43:50 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1d8dfc4d0852b7a74d115eecd508b6a48a39664fe4129497ea3871524e33ce9`  
		Last Modified: Fri, 21 Dec 2018 13:09:35 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52d455313bbb0c73891a051ae66aef5dc2c403476dd089e389a2f7da1c424df4`  
		Last Modified: Fri, 11 Jan 2019 09:58:32 GMT  
		Size: 53.4 MB (53384098 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ecb47b173cc1db9e352061b6a9f8f20f35937ef2965ecc369f29edbfa701d6a`  
		Last Modified: Fri, 11 Jan 2019 12:55:27 GMT  
		Size: 1.2 MB (1161745 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c34cf858884f402c312c9b7336416e2617eb32e9b776e00ebb1b31005f74cc6f`  
		Last Modified: Fri, 11 Jan 2019 13:06:55 GMT  
		Size: 1.2 KB (1208 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45e58d2e9a331b493c90c16701d084cdd12a73cc31ea1a7bcd40be4913777091`  
		Last Modified: Fri, 11 Jan 2019 13:06:55 GMT  
		Size: 114.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1174f0842ddeeeab986108a575983b8c0026758c0620e07fd3e0c28e7d1efd2`  
		Last Modified: Fri, 11 Jan 2019 13:06:55 GMT  
		Size: 61.6 KB (61620 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93400b3048a98ae36786957fc800cbfaf5eb91c67153d7bfbf70ef7c75ef350e`  
		Last Modified: Fri, 11 Jan 2019 13:08:08 GMT  
		Size: 285.2 MB (285161402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04788b25ac25fe5487fd867a8417734889eda8a66e67f8afa2b8ebc3ad7e9d52`  
		Last Modified: Thu, 17 Jan 2019 09:50:32 GMT  
		Size: 1.1 KB (1140 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `flink:hadoop27-alpine` - linux; 386

```console
$ docker pull flink@sha256:646ab80edd64562ca5be35526bf0c38f60a53297b279d16281222cf97f26003b
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **344.3 MB (344265079 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c29d1a3ab9bdf886d78eb5c2049d2119b6b1748f108b2abf9ce151c6846e6436`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["help"]`

```dockerfile
# Fri, 21 Dec 2018 11:40:13 GMT
ADD file:38576b24298c124265c8fffb7bc8fdb0c144d99dcce4e9942bdcceb936830ba6 in / 
# Fri, 21 Dec 2018 11:40:14 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Fri, 21 Dec 2018 11:40:14 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 17:15:19 GMT
ENV LANG=C.UTF-8
# Fri, 21 Dec 2018 17:15:20 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 21 Dec 2018 17:15:33 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Fri, 21 Dec 2018 17:15:33 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Fri, 11 Jan 2019 12:03:09 GMT
ENV JAVA_VERSION=8u191
# Fri, 11 Jan 2019 12:03:09 GMT
ENV JAVA_ALPINE_VERSION=8.191.12-r0
# Fri, 11 Jan 2019 12:03:13 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Fri, 11 Jan 2019 15:59:16 GMT
RUN apk add --no-cache bash libc6-compat snappy 'su-exec>=0.2'
# Fri, 11 Jan 2019 16:07:56 GMT
ENV FLINK_VERSION=1.7.1 HADOOP_SCALA_VARIANT=hadoop27-scala_2.12
# Fri, 11 Jan 2019 16:07:56 GMT
ENV FLINK_HOME=/opt/flink
# Fri, 11 Jan 2019 16:07:57 GMT
ENV PATH=/opt/flink/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Fri, 11 Jan 2019 16:07:57 GMT
RUN addgroup -S -g 9999 flink &&     adduser -D -S -H -u 9999 -G flink -h $FLINK_HOME flink
# Fri, 11 Jan 2019 16:07:58 GMT
WORKDIR /opt/flink
# Fri, 11 Jan 2019 16:07:58 GMT
ENV FLINK_URL_FILE_PATH=flink/flink-1.7.1/flink-1.7.1-bin-hadoop27-scala_2.12.tgz
# Fri, 11 Jan 2019 16:07:58 GMT
ENV FLINK_TGZ_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=flink/flink-1.7.1/flink-1.7.1-bin-hadoop27-scala_2.12.tgz FLINK_ASC_URL=https://www.apache.org/dist/flink/flink-1.7.1/flink-1.7.1-bin-hadoop27-scala_2.12.tgz.asc
# Fri, 11 Jan 2019 16:07:58 GMT
COPY file:48bb6014c3e97895005a1862074377ac24cf0d91f0034129ec7f3c4dd3e96a38 in /KEYS 
# Fri, 11 Jan 2019 16:08:29 GMT
RUN set -ex;   apk add --no-cache --virtual .build-deps     ca-certificates     gnupg     openssl     tar   ;     wget -nv -O flink.tgz "$FLINK_TGZ_URL";   wget -nv -O flink.tgz.asc "$FLINK_ASC_URL";     export GNUPGHOME="$(mktemp -d)";   gpg --batch --import /KEYS;   gpg --batch --verify flink.tgz.asc flink.tgz;   gpgconf --kill all;   rm -rf "$GNUPGHOME" flink.tgz.asc;     tar -xf flink.tgz --strip-components=1;   rm flink.tgz;     apk del .build-deps;     chown -R flink:flink .;
# Thu, 17 Jan 2019 11:40:17 GMT
COPY file:82b73e728dc4710cf6b0b2a4c3b0e39f061e57bb5a799dfaca9133014e5d2c63 in / 
# Thu, 17 Jan 2019 11:40:17 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 17 Jan 2019 11:40:17 GMT
EXPOSE 6123 8081
# Thu, 17 Jan 2019 11:40:18 GMT
CMD ["help"]
```

-	Layers:
	-	`sha256:25bcd1068fdd02354e6b3fb4ebbad1a9c1df7f5ec2d61aa88a337345415dc102`  
		Last Modified: Fri, 21 Dec 2018 11:40:46 GMT  
		Size: 2.3 MB (2271567 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:795c3ef9c057ef60e7a4a088655adecaccd21d68099ad1f654bccd015ab319da`  
		Last Modified: Fri, 21 Dec 2018 11:40:46 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:efa5ad7015b94f77d17fc7434e4c4966902dcf6ddf7393a9e74d72a91e3a2f4b`  
		Last Modified: Fri, 21 Dec 2018 17:17:01 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e979183e786b5b87a7170e32b3d3966eb07ceca73bdd8e27103921955ca87ad`  
		Last Modified: Fri, 11 Jan 2019 12:04:45 GMT  
		Size: 55.5 MB (55501721 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5aeb743c28cbdce495d97f0af802ca818d2b646b8cc88e13cb97a7dd86e18eec`  
		Last Modified: Fri, 11 Jan 2019 16:12:18 GMT  
		Size: 1.3 MB (1265588 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:056f7c39a9307babc5592f42bb8f589cf7041d7ada5bdcf78287c7d31fccdebb`  
		Last Modified: Fri, 11 Jan 2019 16:17:04 GMT  
		Size: 1.2 KB (1205 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a2e24e9ac60fdaba07d5dec6dd28260debeadba2cd3f198e083e8e8b829149a`  
		Last Modified: Fri, 11 Jan 2019 16:17:04 GMT  
		Size: 114.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:837c107a94081c0718c52b6c980463f86c9614e99795e162f2cb8f5a6e48fe29`  
		Last Modified: Fri, 11 Jan 2019 16:17:04 GMT  
		Size: 61.6 KB (61620 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44141d9f344fbf60edb375c2d473235e6564a0b70fa33eadf9c447e9555d2289`  
		Last Modified: Fri, 11 Jan 2019 16:17:26 GMT  
		Size: 285.2 MB (285161708 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:537fcaf40fcb8fd19197c7208ef418d824f4ee64de858209002350c5c3b1decd`  
		Last Modified: Thu, 17 Jan 2019 11:43:01 GMT  
		Size: 1.1 KB (1141 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `flink:hadoop27-alpine` - linux; ppc64le

```console
$ docker pull flink@sha256:938a6873249a7a17aeb89068dacb1bddcc264395808420c276fe8fa3bdec9ad1
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **344.6 MB (344565519 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a8a48560d4c167d86690812b89ddbd695afd1a88e16ecdd5382d6d5cacbf3c8b`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["help"]`

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
# Wed, 06 Feb 2019 23:03:53 GMT
RUN apk add --no-cache bash libc6-compat snappy 'su-exec>=0.2'
# Wed, 06 Feb 2019 23:49:02 GMT
ENV FLINK_VERSION=1.7.1 HADOOP_SCALA_VARIANT=hadoop27-scala_2.12
# Wed, 06 Feb 2019 23:49:03 GMT
ENV FLINK_HOME=/opt/flink
# Wed, 06 Feb 2019 23:49:04 GMT
ENV PATH=/opt/flink/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 06 Feb 2019 23:49:07 GMT
RUN addgroup -S -g 9999 flink &&     adduser -D -S -H -u 9999 -G flink -h $FLINK_HOME flink
# Wed, 06 Feb 2019 23:49:08 GMT
WORKDIR /opt/flink
# Wed, 06 Feb 2019 23:49:09 GMT
ENV FLINK_URL_FILE_PATH=flink/flink-1.7.1/flink-1.7.1-bin-hadoop27-scala_2.12.tgz
# Wed, 06 Feb 2019 23:49:10 GMT
ENV FLINK_TGZ_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=flink/flink-1.7.1/flink-1.7.1-bin-hadoop27-scala_2.12.tgz FLINK_ASC_URL=https://www.apache.org/dist/flink/flink-1.7.1/flink-1.7.1-bin-hadoop27-scala_2.12.tgz.asc
# Wed, 06 Feb 2019 23:49:11 GMT
COPY file:48bb6014c3e97895005a1862074377ac24cf0d91f0034129ec7f3c4dd3e96a38 in /KEYS 
# Wed, 06 Feb 2019 23:49:40 GMT
RUN set -ex;   apk add --no-cache --virtual .build-deps     ca-certificates     gnupg     openssl     tar   ;     wget -nv -O flink.tgz "$FLINK_TGZ_URL";   wget -nv -O flink.tgz.asc "$FLINK_ASC_URL";     export GNUPGHOME="$(mktemp -d)";   gpg --batch --import /KEYS;   gpg --batch --verify flink.tgz.asc flink.tgz;   gpgconf --kill all;   rm -rf "$GNUPGHOME" flink.tgz.asc;     tar -xf flink.tgz --strip-components=1;   rm flink.tgz;     apk del .build-deps;     chown -R flink:flink .;
# Wed, 06 Feb 2019 23:49:42 GMT
COPY file:82b73e728dc4710cf6b0b2a4c3b0e39f061e57bb5a799dfaca9133014e5d2c63 in / 
# Wed, 06 Feb 2019 23:49:43 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 06 Feb 2019 23:49:46 GMT
EXPOSE 6123 8081
# Wed, 06 Feb 2019 23:49:48 GMT
CMD ["help"]
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
	-	`sha256:46cf11a65bc45ade58fe2261e83c78eff2322b4848ce90f8950a29bf92dda340`  
		Last Modified: Thu, 07 Feb 2019 00:11:13 GMT  
		Size: 1.3 MB (1310752 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e7c12e1978fefadc132018bec0fbe5fee49e628cc5b27d1eaadf6fae0817ed1`  
		Last Modified: Thu, 07 Feb 2019 00:34:12 GMT  
		Size: 1.2 KB (1209 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c467fa25221ac2f9cc5c5846db03b03a87098867784f11a8e08f596bf92e52b`  
		Last Modified: Thu, 07 Feb 2019 00:34:12 GMT  
		Size: 148.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:944f3bf8b1a3734ad34c01ad0fac9e40891e1e5962c6da03cfbbf7477eb6373f`  
		Last Modified: Thu, 07 Feb 2019 00:34:12 GMT  
		Size: 61.6 KB (61619 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6aa9271ce3472f64404217be1fa61ad10a72003415cae1c652e9e0c7b60ada17`  
		Last Modified: Thu, 07 Feb 2019 00:34:37 GMT  
		Size: 284.9 MB (284907849 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa2c71015d18ceefe11bb221833c83f10b9a671cd6408f3e296bcc3e568db0d2`  
		Last Modified: Thu, 07 Feb 2019 00:34:12 GMT  
		Size: 1.1 KB (1139 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `flink:hadoop27-alpine` - linux; s390x

```console
$ docker pull flink@sha256:cdbeea250f7c93c4f83b04df135fe8fcda8e95b00cd0b1adab1d504000c4eaf7
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **342.4 MB (342358860 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f56e7eb6fd8d1847611b73e2aead9e8e112aea3aafbdb1a5a47dad3bfac66b59`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["help"]`

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
# Wed, 06 Feb 2019 18:41:50 GMT
RUN apk add --no-cache bash libc6-compat snappy 'su-exec>=0.2'
# Wed, 06 Feb 2019 18:59:12 GMT
ENV FLINK_VERSION=1.7.1 HADOOP_SCALA_VARIANT=hadoop27-scala_2.12
# Wed, 06 Feb 2019 18:59:12 GMT
ENV FLINK_HOME=/opt/flink
# Wed, 06 Feb 2019 18:59:12 GMT
ENV PATH=/opt/flink/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 06 Feb 2019 18:59:13 GMT
RUN addgroup -S -g 9999 flink &&     adduser -D -S -H -u 9999 -G flink -h $FLINK_HOME flink
# Wed, 06 Feb 2019 18:59:13 GMT
WORKDIR /opt/flink
# Wed, 06 Feb 2019 18:59:13 GMT
ENV FLINK_URL_FILE_PATH=flink/flink-1.7.1/flink-1.7.1-bin-hadoop27-scala_2.12.tgz
# Wed, 06 Feb 2019 18:59:13 GMT
ENV FLINK_TGZ_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=flink/flink-1.7.1/flink-1.7.1-bin-hadoop27-scala_2.12.tgz FLINK_ASC_URL=https://www.apache.org/dist/flink/flink-1.7.1/flink-1.7.1-bin-hadoop27-scala_2.12.tgz.asc
# Wed, 06 Feb 2019 18:59:13 GMT
COPY file:48bb6014c3e97895005a1862074377ac24cf0d91f0034129ec7f3c4dd3e96a38 in /KEYS 
# Wed, 06 Feb 2019 19:00:28 GMT
RUN set -ex;   apk add --no-cache --virtual .build-deps     ca-certificates     gnupg     openssl     tar   ;     wget -nv -O flink.tgz "$FLINK_TGZ_URL";   wget -nv -O flink.tgz.asc "$FLINK_ASC_URL";     export GNUPGHOME="$(mktemp -d)";   gpg --batch --import /KEYS;   gpg --batch --verify flink.tgz.asc flink.tgz;   gpgconf --kill all;   rm -rf "$GNUPGHOME" flink.tgz.asc;     tar -xf flink.tgz --strip-components=1;   rm flink.tgz;     apk del .build-deps;     chown -R flink:flink .;
# Wed, 06 Feb 2019 19:00:29 GMT
COPY file:82b73e728dc4710cf6b0b2a4c3b0e39f061e57bb5a799dfaca9133014e5d2c63 in / 
# Wed, 06 Feb 2019 19:00:29 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 06 Feb 2019 19:00:29 GMT
EXPOSE 6123 8081
# Wed, 06 Feb 2019 19:00:29 GMT
CMD ["help"]
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
	-	`sha256:81b398722454704538906fd494471401bc355d67a262f239cd2c572a2f776028`  
		Last Modified: Wed, 06 Feb 2019 19:03:10 GMT  
		Size: 1.3 MB (1257403 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79c0cdf7847ac209321e0a06cc7d28990c596fd1014093659ca1ea51c230ee16`  
		Last Modified: Wed, 06 Feb 2019 19:07:37 GMT  
		Size: 1.2 KB (1204 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2cd508a14680190ecc6ff9c365c17904ffa014be573ec4b609d6f959194af5cb`  
		Last Modified: Wed, 06 Feb 2019 19:07:37 GMT  
		Size: 114.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb66c4028308d78f65eaf74530180384afe25a32458ac12bde2a81e5f57607a4`  
		Last Modified: Wed, 06 Feb 2019 19:07:37 GMT  
		Size: 61.6 KB (61619 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd6d15452df8850c4de3ec197660a9ad7fb19ff7ed421fa129c5ab449a01f730`  
		Last Modified: Wed, 06 Feb 2019 19:07:53 GMT  
		Size: 284.9 MB (284907878 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d0d3e3338cd1a13d98c92482a50afbc5a75c63dce3ad026f1e8e4919145680e`  
		Last Modified: Wed, 06 Feb 2019 19:07:37 GMT  
		Size: 1.1 KB (1141 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
