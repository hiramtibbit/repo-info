## `flink:hadoop27-alpine`

```console
$ docker pull flink@sha256:fbe5575c1c05ca59dc7f08acd3811146e51c93e291ce0966f557697a46260e9c
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

### `flink:hadoop27-alpine` - linux; amd64

```console
$ docker pull flink@sha256:86fc1ca31c7e62146a6277d4c9266fa5f0d92353da9f96aa40f39a55695cad26
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **348.9 MB (348863497 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:52c76b614f3c6a4d6daec09a7c8de261ba983257a54c6898560f75d9667577c0`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["help"]`

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
# Wed, 27 Mar 2019 23:29:05 GMT
ENV JAVA_ALPINE_VERSION=8.201.08-r0
# Wed, 27 Mar 2019 23:29:09 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 27 Mar 2019 23:29:10 GMT
RUN apk add --no-cache so:libnss3.so
# Thu, 28 Mar 2019 00:47:30 GMT
RUN apk add --no-cache bash libc6-compat snappy 'su-exec>=0.2'
# Thu, 28 Mar 2019 03:00:16 GMT
ENV FLINK_VERSION=1.7.2 HADOOP_SCALA_VARIANT=hadoop27-scala_2.12
# Thu, 28 Mar 2019 03:00:16 GMT
ENV FLINK_HOME=/opt/flink
# Thu, 28 Mar 2019 03:00:16 GMT
ENV PATH=/opt/flink/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Thu, 28 Mar 2019 03:00:17 GMT
RUN addgroup -S -g 9999 flink &&     adduser -D -S -H -u 9999 -G flink -h $FLINK_HOME flink
# Thu, 28 Mar 2019 03:00:17 GMT
WORKDIR /opt/flink
# Thu, 28 Mar 2019 03:00:18 GMT
ENV FLINK_URL_FILE_PATH=flink/flink-1.7.2/flink-1.7.2-bin-hadoop27-scala_2.12.tgz
# Thu, 28 Mar 2019 03:00:18 GMT
ENV FLINK_TGZ_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=flink/flink-1.7.2/flink-1.7.2-bin-hadoop27-scala_2.12.tgz FLINK_ASC_URL=https://www.apache.org/dist/flink/flink-1.7.2/flink-1.7.2-bin-hadoop27-scala_2.12.tgz.asc
# Thu, 28 Mar 2019 03:00:18 GMT
COPY file:6080d226172b47d9372bfe1905f1a2ac9e15ee46ef2f939add669902b31da9ae in /KEYS 
# Thu, 28 Mar 2019 03:00:50 GMT
RUN set -ex;   apk add --no-cache --virtual .build-deps     ca-certificates     gnupg     openssl     tar   ;     wget -nv -O flink.tgz "$FLINK_TGZ_URL";   wget -nv -O flink.tgz.asc "$FLINK_ASC_URL";     export GNUPGHOME="$(mktemp -d)";   gpg --batch --import /KEYS;   gpg --batch --verify flink.tgz.asc flink.tgz;   gpgconf --kill all;   rm -rf "$GNUPGHOME" flink.tgz.asc;     tar -xf flink.tgz --strip-components=1;   rm flink.tgz;     apk del .build-deps;     chown -R flink:flink .;
# Thu, 28 Mar 2019 03:00:50 GMT
COPY file:52e8c12e536aa08e39c4f96f47155e1dcf2ab878ce6da844d94e239302d89fe1 in / 
# Thu, 28 Mar 2019 03:00:50 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 28 Mar 2019 03:00:51 GMT
EXPOSE 6123 8081
# Thu, 28 Mar 2019 03:00:51 GMT
CMD ["help"]
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
	-	`sha256:cf419f3f41ff266b1903731d3ff085a6855171b7fd823a93d15cd052dc73a0ea`  
		Last Modified: Wed, 27 Mar 2019 23:47:37 GMT  
		Size: 52.7 MB (52739115 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88430b15d43fccea92a728c80080963cf49cb06c31f196900ecbe56e0a85c007`  
		Last Modified: Wed, 27 Mar 2019 23:47:30 GMT  
		Size: 2.2 MB (2221565 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad982c233211cf17b9439c2d94ab1f071ca4a9f7b5038dcf9a573ae68e426e9c`  
		Last Modified: Thu, 28 Mar 2019 03:09:01 GMT  
		Size: 1.6 MB (1637315 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5cec7e81c24e52ca0790f4869c308d0156455671e02fa0abda6fcb80fb0d24a`  
		Last Modified: Thu, 28 Mar 2019 03:17:39 GMT  
		Size: 1.2 KB (1214 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31cdaaa3c0fae33ab96a9a25b4b90a75a6cedafaa11e8c85640886c9330485e4`  
		Last Modified: Thu, 28 Mar 2019 03:17:38 GMT  
		Size: 114.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf619ca8c24a82648c9ea852f882d918a6c99c2ff493985dac50c646f8484067`  
		Last Modified: Thu, 28 Mar 2019 03:17:38 GMT  
		Size: 64.0 KB (63969 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6532c0ded1189c1fdbd312e8f345eeb102cb9dd93dcb8d22b01a834d8aada599`  
		Last Modified: Thu, 28 Mar 2019 03:17:55 GMT  
		Size: 289.4 MB (289443999 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4d53cbf5e95b8a6d067b04ab4e1b66a165b60df6d88aee8be23fda35d01e1aa`  
		Last Modified: Thu, 28 Mar 2019 03:17:39 GMT  
		Size: 1.2 KB (1238 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `flink:hadoop27-alpine` - linux; arm variant v6

```console
$ docker pull flink@sha256:053433c0a1a3339d52a8591ad420f5617f52dfd5f4e774eefb017154fb6a1a38
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **345.5 MB (345538521 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:91165446635e62b7ce26c6df849bb5e48cad394d9b9bac2a6998171c21829c79`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["help"]`

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
# Fri, 08 Mar 2019 04:40:08 GMT
ENV JAVA_VERSION=8u191
# Fri, 08 Mar 2019 04:40:08 GMT
ENV JAVA_ALPINE_VERSION=8.191.12-r0
# Fri, 08 Mar 2019 04:40:13 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Fri, 08 Mar 2019 05:55:18 GMT
RUN apk add --no-cache bash libc6-compat snappy 'su-exec>=0.2'
# Fri, 08 Mar 2019 06:15:49 GMT
ENV FLINK_VERSION=1.7.2 HADOOP_SCALA_VARIANT=hadoop27-scala_2.12
# Fri, 08 Mar 2019 06:15:50 GMT
ENV FLINK_HOME=/opt/flink
# Fri, 08 Mar 2019 06:15:50 GMT
ENV PATH=/opt/flink/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Fri, 08 Mar 2019 06:15:51 GMT
RUN addgroup -S -g 9999 flink &&     adduser -D -S -H -u 9999 -G flink -h $FLINK_HOME flink
# Fri, 08 Mar 2019 06:15:52 GMT
WORKDIR /opt/flink
# Fri, 08 Mar 2019 06:15:52 GMT
ENV FLINK_URL_FILE_PATH=flink/flink-1.7.2/flink-1.7.2-bin-hadoop27-scala_2.12.tgz
# Fri, 08 Mar 2019 06:15:53 GMT
ENV FLINK_TGZ_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=flink/flink-1.7.2/flink-1.7.2-bin-hadoop27-scala_2.12.tgz FLINK_ASC_URL=https://www.apache.org/dist/flink/flink-1.7.2/flink-1.7.2-bin-hadoop27-scala_2.12.tgz.asc
# Sat, 23 Mar 2019 07:59:51 GMT
COPY file:6080d226172b47d9372bfe1905f1a2ac9e15ee46ef2f939add669902b31da9ae in /KEYS 
# Sat, 23 Mar 2019 08:00:29 GMT
RUN set -ex;   apk add --no-cache --virtual .build-deps     ca-certificates     gnupg     openssl     tar   ;     wget -nv -O flink.tgz "$FLINK_TGZ_URL";   wget -nv -O flink.tgz.asc "$FLINK_ASC_URL";     export GNUPGHOME="$(mktemp -d)";   gpg --batch --import /KEYS;   gpg --batch --verify flink.tgz.asc flink.tgz;   gpgconf --kill all;   rm -rf "$GNUPGHOME" flink.tgz.asc;     tar -xf flink.tgz --strip-components=1;   rm flink.tgz;     apk del .build-deps;     chown -R flink:flink .;
# Sat, 23 Mar 2019 08:00:30 GMT
COPY file:52e8c12e536aa08e39c4f96f47155e1dcf2ab878ce6da844d94e239302d89fe1 in / 
# Sat, 23 Mar 2019 08:00:31 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 23 Mar 2019 08:00:31 GMT
EXPOSE 6123 8081
# Sat, 23 Mar 2019 08:00:31 GMT
CMD ["help"]
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
	-	`sha256:f437760c09bd73230093ad3dd719c2d7b0e4b013869d13c73129fcb1e70e1e8a`  
		Last Modified: Fri, 08 Mar 2019 04:41:46 GMT  
		Size: 52.3 MB (52316587 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33370b1318b55ffe526ce50bf4f613c34e54f6bd10dbe0a0145df22493eeac24`  
		Last Modified: Fri, 08 Mar 2019 06:23:00 GMT  
		Size: 1.2 MB (1170628 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bfc8a47089bbd5fd9d94b48c86fe45b177329f26229fec441e8a5fcbb599405d`  
		Last Modified: Fri, 08 Mar 2019 06:32:21 GMT  
		Size: 1.2 KB (1213 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:396aa3e1b00347c86f9bbe21ae1a0ecd432f49994c10ded9ac13e7cda9c8992c`  
		Last Modified: Fri, 08 Mar 2019 06:32:21 GMT  
		Size: 148.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4249517cc1b5cf9b416922bce08bfa9c2d5ec615edc7a4ba1ebaa0e8dce33fd8`  
		Last Modified: Sat, 23 Mar 2019 08:14:51 GMT  
		Size: 64.0 KB (63966 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ec16e3ac5fd850b882d85c6ae304948362802881d17978188cfcdb3e4856d61`  
		Last Modified: Sat, 23 Mar 2019 08:15:28 GMT  
		Size: 289.4 MB (289443830 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf14f3e2fbf696695643fbc3d5c7e8fcc513d9f88ccf2aa7026a4efd53d2952c`  
		Last Modified: Sat, 23 Mar 2019 08:14:51 GMT  
		Size: 1.2 KB (1236 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `flink:hadoop27-alpine` - linux; arm variant v7

```console
$ docker pull flink@sha256:4e38feb5047258f88bd3b10340fa43c8ce865f5f2cd98fde6e59c5e13da36d04
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **344.9 MB (344855486 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:94a3011a8fe0456f142484c70074bc61ed3e014cd61811f20d1962e5b862d1e1`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["help"]`

```dockerfile
# Fri, 08 Mar 2019 03:35:52 GMT
ADD file:e9ae09c8f3973b62bf7e10dd8b9251e50f5479c0d8d1644f632f3886e02c7323 in / 
# Fri, 08 Mar 2019 03:35:52 GMT
CMD ["/bin/sh"]
# Tue, 12 Mar 2019 12:24:30 GMT
ENV LANG=C.UTF-8
# Tue, 12 Mar 2019 12:24:31 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 12 Mar 2019 12:24:51 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Tue, 12 Mar 2019 12:24:52 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 12 Mar 2019 12:24:52 GMT
ENV JAVA_VERSION=8u191
# Tue, 12 Mar 2019 12:24:53 GMT
ENV JAVA_ALPINE_VERSION=8.191.12-r0
# Tue, 12 Mar 2019 12:24:58 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Sat, 23 Mar 2019 11:58:42 GMT
RUN apk add --no-cache bash libc6-compat snappy 'su-exec>=0.2'
# Sat, 23 Mar 2019 12:32:23 GMT
ENV FLINK_VERSION=1.7.2 HADOOP_SCALA_VARIANT=hadoop27-scala_2.12
# Sat, 23 Mar 2019 12:32:24 GMT
ENV FLINK_HOME=/opt/flink
# Sat, 23 Mar 2019 12:32:24 GMT
ENV PATH=/opt/flink/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Sat, 23 Mar 2019 12:32:26 GMT
RUN addgroup -S -g 9999 flink &&     adduser -D -S -H -u 9999 -G flink -h $FLINK_HOME flink
# Sat, 23 Mar 2019 12:32:26 GMT
WORKDIR /opt/flink
# Sat, 23 Mar 2019 12:32:27 GMT
ENV FLINK_URL_FILE_PATH=flink/flink-1.7.2/flink-1.7.2-bin-hadoop27-scala_2.12.tgz
# Sat, 23 Mar 2019 12:32:27 GMT
ENV FLINK_TGZ_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=flink/flink-1.7.2/flink-1.7.2-bin-hadoop27-scala_2.12.tgz FLINK_ASC_URL=https://www.apache.org/dist/flink/flink-1.7.2/flink-1.7.2-bin-hadoop27-scala_2.12.tgz.asc
# Sat, 23 Mar 2019 12:32:28 GMT
COPY file:6080d226172b47d9372bfe1905f1a2ac9e15ee46ef2f939add669902b31da9ae in /KEYS 
# Sat, 23 Mar 2019 12:37:05 GMT
RUN set -ex;   apk add --no-cache --virtual .build-deps     ca-certificates     gnupg     openssl     tar   ;     wget -nv -O flink.tgz "$FLINK_TGZ_URL";   wget -nv -O flink.tgz.asc "$FLINK_ASC_URL";     export GNUPGHOME="$(mktemp -d)";   gpg --batch --import /KEYS;   gpg --batch --verify flink.tgz.asc flink.tgz;   gpgconf --kill all;   rm -rf "$GNUPGHOME" flink.tgz.asc;     tar -xf flink.tgz --strip-components=1;   rm flink.tgz;     apk del .build-deps;     chown -R flink:flink .;
# Sat, 23 Mar 2019 12:37:06 GMT
COPY file:52e8c12e536aa08e39c4f96f47155e1dcf2ab878ce6da844d94e239302d89fe1 in / 
# Sat, 23 Mar 2019 12:37:07 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 23 Mar 2019 12:37:07 GMT
EXPOSE 6123 8081
# Sat, 23 Mar 2019 12:37:08 GMT
CMD ["help"]
```

-	Layers:
	-	`sha256:d8d287cbc5740a5d49f37493eecadafc220fee4fd570329023344cad978c4272`  
		Last Modified: Tue, 05 Mar 2019 08:53:06 GMT  
		Size: 2.3 MB (2348580 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef530e96fd6306ed7c7499028d70bd5f7c35e5a97be4d8ba61cc50bdd03e6478`  
		Last Modified: Tue, 12 Mar 2019 12:26:39 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01c8c8703a8ee394a5297656c58b382605b09fa989b929b2f4242864352d6b21`  
		Last Modified: Tue, 12 Mar 2019 12:27:15 GMT  
		Size: 51.5 MB (51512731 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2a807b2ea559600b17bc611f517eacd52e6d94d41bbb717b422a480027e3dd6`  
		Last Modified: Sat, 23 Mar 2019 12:43:39 GMT  
		Size: 1.5 MB (1483675 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42a2bcf5f106516ba3de0151249224fdb95944cfd924244ee93d96749dd85751`  
		Last Modified: Sat, 23 Mar 2019 12:59:10 GMT  
		Size: 1.2 KB (1212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1f1e03413b5621f2ed917edbd3bd438a7d1ed1f85257002f61d4dee65368702`  
		Last Modified: Sat, 23 Mar 2019 12:59:10 GMT  
		Size: 148.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e68ba44e12d345ffced0f586ade5075bae7639eec5b0fc9e60def4b29dfb932`  
		Last Modified: Sat, 23 Mar 2019 12:59:10 GMT  
		Size: 64.0 KB (63969 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f62bca16ecd1c233a563a8dbb9b45b4bdde673f0ceb778056ef9eddb4d8a67cf`  
		Last Modified: Sat, 23 Mar 2019 12:59:52 GMT  
		Size: 289.4 MB (289443693 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9893562ebef361a99c3c1391b74a3827168b6f2f31f47c1e5076f1329af9c39a`  
		Last Modified: Sat, 23 Mar 2019 12:59:10 GMT  
		Size: 1.2 KB (1239 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `flink:hadoop27-alpine` - linux; arm64 variant v8

```console
$ docker pull flink@sha256:8c8269b6dcc6c04848e70aeee6a9d108e7cf19654bcdc4dfd8fb47bbad2e08d1
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **348.3 MB (348298278 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d9d70747400fe53e7ba0cc3029bc9d31024dcad4a28e70f244a664038bafad2d`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["help"]`

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
# Fri, 08 Mar 2019 09:50:49 GMT
ENV JAVA_VERSION=8u191
# Fri, 08 Mar 2019 09:50:50 GMT
ENV JAVA_ALPINE_VERSION=8.191.12-r0
# Fri, 08 Mar 2019 09:51:06 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Fri, 08 Mar 2019 12:38:58 GMT
RUN apk add --no-cache bash libc6-compat snappy 'su-exec>=0.2'
# Fri, 08 Mar 2019 13:12:55 GMT
ENV FLINK_VERSION=1.7.2 HADOOP_SCALA_VARIANT=hadoop27-scala_2.12
# Fri, 08 Mar 2019 13:12:56 GMT
ENV FLINK_HOME=/opt/flink
# Fri, 08 Mar 2019 13:12:56 GMT
ENV PATH=/opt/flink/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Fri, 08 Mar 2019 13:12:59 GMT
RUN addgroup -S -g 9999 flink &&     adduser -D -S -H -u 9999 -G flink -h $FLINK_HOME flink
# Fri, 08 Mar 2019 13:12:59 GMT
WORKDIR /opt/flink
# Fri, 08 Mar 2019 13:13:00 GMT
ENV FLINK_URL_FILE_PATH=flink/flink-1.7.2/flink-1.7.2-bin-hadoop27-scala_2.12.tgz
# Fri, 08 Mar 2019 13:13:00 GMT
ENV FLINK_TGZ_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=flink/flink-1.7.2/flink-1.7.2-bin-hadoop27-scala_2.12.tgz FLINK_ASC_URL=https://www.apache.org/dist/flink/flink-1.7.2/flink-1.7.2-bin-hadoop27-scala_2.12.tgz.asc
# Sat, 23 Mar 2019 10:16:41 GMT
COPY file:6080d226172b47d9372bfe1905f1a2ac9e15ee46ef2f939add669902b31da9ae in /KEYS 
# Sat, 23 Mar 2019 10:18:32 GMT
RUN set -ex;   apk add --no-cache --virtual .build-deps     ca-certificates     gnupg     openssl     tar   ;     wget -nv -O flink.tgz "$FLINK_TGZ_URL";   wget -nv -O flink.tgz.asc "$FLINK_ASC_URL";     export GNUPGHOME="$(mktemp -d)";   gpg --batch --import /KEYS;   gpg --batch --verify flink.tgz.asc flink.tgz;   gpgconf --kill all;   rm -rf "$GNUPGHOME" flink.tgz.asc;     tar -xf flink.tgz --strip-components=1;   rm flink.tgz;     apk del .build-deps;     chown -R flink:flink .;
# Sat, 23 Mar 2019 10:18:32 GMT
COPY file:52e8c12e536aa08e39c4f96f47155e1dcf2ab878ce6da844d94e239302d89fe1 in / 
# Sat, 23 Mar 2019 10:18:33 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 23 Mar 2019 10:18:34 GMT
EXPOSE 6123 8081
# Sat, 23 Mar 2019 10:18:34 GMT
CMD ["help"]
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
	-	`sha256:6a0e92b48a3a7e439bc2c9a12c51191b28bfcf8bf3cd4bed485084963934e9f2`  
		Last Modified: Fri, 08 Mar 2019 09:57:49 GMT  
		Size: 54.9 MB (54863172 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3afa3950312245b12c956a4384b663441640f50665a92ebe5e6030863be96cbb`  
		Last Modified: Fri, 08 Mar 2019 13:20:39 GMT  
		Size: 1.2 MB (1237475 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:724a54a9f300abcadd155e9103feb5fd83f3c55adf31e3f176ee3e14bd84c47c`  
		Last Modified: Sat, 23 Mar 2019 10:50:25 GMT  
		Size: 1.2 KB (1214 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:765ac1ddcc7449d8687147a30bdc17ab4eded4a7fad1ee01ad86fa293e9c5b57`  
		Last Modified: Sat, 23 Mar 2019 10:50:25 GMT  
		Size: 113.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa32d4ba89d6cd2f32e464cf137040aff7c8bfb4d80b91767875e789c94ea6f2`  
		Last Modified: Sat, 23 Mar 2019 10:50:25 GMT  
		Size: 64.0 KB (63967 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a9df853c6a44091cf323b48b22d16c73cfc355590302ee4d3cbddacce43a406`  
		Last Modified: Sat, 23 Mar 2019 10:51:11 GMT  
		Size: 289.4 MB (289442921 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:750b82b415e012f4f4859d0b70a68f7d9fe1ea68deefe6aeb81d719bfe4575b5`  
		Last Modified: Sat, 23 Mar 2019 10:50:25 GMT  
		Size: 1.2 KB (1239 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `flink:hadoop27-alpine` - linux; 386

```console
$ docker pull flink@sha256:1f1aea75054d1cd155dfda882532bb06df7bb800c99b62bdde0953a57394c55f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **349.5 MB (349505310 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d95012f6146a6921df1f983f1a679bdb61cbcd11dc4496edcc01ca40d50a2c11`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["help"]`

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
# Thu, 28 Mar 2019 01:00:58 GMT
ENV JAVA_ALPINE_VERSION=8.201.08-r0
# Thu, 28 Mar 2019 01:01:01 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Thu, 28 Mar 2019 01:01:03 GMT
RUN apk add --no-cache so:libnss3.so
# Thu, 28 Mar 2019 01:37:26 GMT
RUN apk add --no-cache bash libc6-compat snappy 'su-exec>=0.2'
# Thu, 28 Mar 2019 02:49:23 GMT
ENV FLINK_VERSION=1.7.2 HADOOP_SCALA_VARIANT=hadoop27-scala_2.12
# Thu, 28 Mar 2019 02:49:23 GMT
ENV FLINK_HOME=/opt/flink
# Thu, 28 Mar 2019 02:49:23 GMT
ENV PATH=/opt/flink/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Thu, 28 Mar 2019 02:49:24 GMT
RUN addgroup -S -g 9999 flink &&     adduser -D -S -H -u 9999 -G flink -h $FLINK_HOME flink
# Thu, 28 Mar 2019 02:49:24 GMT
WORKDIR /opt/flink
# Thu, 28 Mar 2019 02:49:24 GMT
ENV FLINK_URL_FILE_PATH=flink/flink-1.7.2/flink-1.7.2-bin-hadoop27-scala_2.12.tgz
# Thu, 28 Mar 2019 02:49:25 GMT
ENV FLINK_TGZ_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=flink/flink-1.7.2/flink-1.7.2-bin-hadoop27-scala_2.12.tgz FLINK_ASC_URL=https://www.apache.org/dist/flink/flink-1.7.2/flink-1.7.2-bin-hadoop27-scala_2.12.tgz.asc
# Thu, 28 Mar 2019 02:49:25 GMT
COPY file:6080d226172b47d9372bfe1905f1a2ac9e15ee46ef2f939add669902b31da9ae in /KEYS 
# Thu, 28 Mar 2019 02:49:51 GMT
RUN set -ex;   apk add --no-cache --virtual .build-deps     ca-certificates     gnupg     openssl     tar   ;     wget -nv -O flink.tgz "$FLINK_TGZ_URL";   wget -nv -O flink.tgz.asc "$FLINK_ASC_URL";     export GNUPGHOME="$(mktemp -d)";   gpg --batch --import /KEYS;   gpg --batch --verify flink.tgz.asc flink.tgz;   gpgconf --kill all;   rm -rf "$GNUPGHOME" flink.tgz.asc;     tar -xf flink.tgz --strip-components=1;   rm flink.tgz;     apk del .build-deps;     chown -R flink:flink .;
# Thu, 28 Mar 2019 02:49:51 GMT
COPY file:52e8c12e536aa08e39c4f96f47155e1dcf2ab878ce6da844d94e239302d89fe1 in / 
# Thu, 28 Mar 2019 02:49:52 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 28 Mar 2019 02:49:52 GMT
EXPOSE 6123 8081
# Thu, 28 Mar 2019 02:49:52 GMT
CMD ["help"]
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
	-	`sha256:9976f4b52d6d29fb39677efd0fb01778ff46cb26cc4d357a67003fdbde4ee910`  
		Last Modified: Thu, 28 Mar 2019 01:18:53 GMT  
		Size: 53.2 MB (53175691 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0533fd93d55b543cbcb5f415482cc1aab7b763461c9a22e9e0c41f5a95ec71c9`  
		Last Modified: Thu, 28 Mar 2019 01:18:46 GMT  
		Size: 2.4 MB (2394852 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ff97fb51706b9da6b260f49eb8662d63e1fd22d61981ce6d21488d5270b7be5`  
		Last Modified: Thu, 28 Mar 2019 02:55:34 GMT  
		Size: 1.7 MB (1675386 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2675c27dfb326f8f11aa5f8a784176e73ca6198e5e71ae590c637df77638e370`  
		Last Modified: Thu, 28 Mar 2019 03:06:03 GMT  
		Size: 1.2 KB (1213 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2dfbe820d8660181ac7f332c7703d0ba94674e06e7e9518201bc106788e442f2`  
		Last Modified: Thu, 28 Mar 2019 03:06:02 GMT  
		Size: 114.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d1708dafafcff74053e70760a7df306ec857c38f2843f28117c306ab3076070`  
		Last Modified: Thu, 28 Mar 2019 03:06:02 GMT  
		Size: 64.0 KB (63969 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:237ec0c1ddb98f1db0ad4c77ebabaa03571975f25f82c6e2f92fac87d26d459f`  
		Last Modified: Thu, 28 Mar 2019 03:06:29 GMT  
		Size: 289.4 MB (289443253 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f88728610780ada20fedc8c1b146edaa645438f79378a91e065927c37a92b22`  
		Last Modified: Thu, 28 Mar 2019 03:06:02 GMT  
		Size: 1.2 KB (1239 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `flink:hadoop27-alpine` - linux; ppc64le

```console
$ docker pull flink@sha256:2873aba1919b8a4699063face1db7e805901d291b4edba092e1b30725e3171bf
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **349.1 MB (349104038 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8feceffaad761c98008ca28c30615a2c05a7d6cd310b946d85490d63e72dc98b`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["help"]`

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
# Fri, 08 Mar 2019 04:14:06 GMT
ENV JAVA_VERSION=8u191
# Fri, 08 Mar 2019 04:14:07 GMT
ENV JAVA_ALPINE_VERSION=8.191.12-r0
# Fri, 08 Mar 2019 04:14:14 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Fri, 08 Mar 2019 07:38:50 GMT
RUN apk add --no-cache bash libc6-compat snappy 'su-exec>=0.2'
# Fri, 08 Mar 2019 08:06:50 GMT
ENV FLINK_VERSION=1.7.2 HADOOP_SCALA_VARIANT=hadoop27-scala_2.12
# Fri, 08 Mar 2019 08:06:54 GMT
ENV FLINK_HOME=/opt/flink
# Fri, 08 Mar 2019 08:06:56 GMT
ENV PATH=/opt/flink/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Fri, 08 Mar 2019 08:07:04 GMT
RUN addgroup -S -g 9999 flink &&     adduser -D -S -H -u 9999 -G flink -h $FLINK_HOME flink
# Fri, 08 Mar 2019 08:07:09 GMT
WORKDIR /opt/flink
# Fri, 08 Mar 2019 08:07:12 GMT
ENV FLINK_URL_FILE_PATH=flink/flink-1.7.2/flink-1.7.2-bin-hadoop27-scala_2.12.tgz
# Fri, 08 Mar 2019 08:07:15 GMT
ENV FLINK_TGZ_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=flink/flink-1.7.2/flink-1.7.2-bin-hadoop27-scala_2.12.tgz FLINK_ASC_URL=https://www.apache.org/dist/flink/flink-1.7.2/flink-1.7.2-bin-hadoop27-scala_2.12.tgz.asc
# Sat, 23 Mar 2019 08:51:00 GMT
COPY file:6080d226172b47d9372bfe1905f1a2ac9e15ee46ef2f939add669902b31da9ae in /KEYS 
# Sat, 23 Mar 2019 08:53:31 GMT
RUN set -ex;   apk add --no-cache --virtual .build-deps     ca-certificates     gnupg     openssl     tar   ;     wget -nv -O flink.tgz "$FLINK_TGZ_URL";   wget -nv -O flink.tgz.asc "$FLINK_ASC_URL";     export GNUPGHOME="$(mktemp -d)";   gpg --batch --import /KEYS;   gpg --batch --verify flink.tgz.asc flink.tgz;   gpgconf --kill all;   rm -rf "$GNUPGHOME" flink.tgz.asc;     tar -xf flink.tgz --strip-components=1;   rm flink.tgz;     apk del .build-deps;     chown -R flink:flink .;
# Sat, 23 Mar 2019 08:53:36 GMT
COPY file:52e8c12e536aa08e39c4f96f47155e1dcf2ab878ce6da844d94e239302d89fe1 in / 
# Sat, 23 Mar 2019 08:53:40 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 23 Mar 2019 08:53:47 GMT
EXPOSE 6123 8081
# Sat, 23 Mar 2019 08:53:50 GMT
CMD ["help"]
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
	-	`sha256:52f9e479942ab40414f57c40400e46690c9e3fa041ee89b911ecc82d3df13ed6`  
		Last Modified: Fri, 08 Mar 2019 04:17:58 GMT  
		Size: 55.5 MB (55503663 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3f7ff43a0db7c138a9f99326ebfd109202af60282b207392aa0415488299e53`  
		Last Modified: Fri, 08 Mar 2019 08:27:28 GMT  
		Size: 1.3 MB (1310722 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6992eee1b6d632c113c71e59beb778441b99417cbf46d12906a6ae1596a1c5af`  
		Last Modified: Fri, 08 Mar 2019 08:38:20 GMT  
		Size: 1.2 KB (1213 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7cb5fc402dc94535efdc268c0b71da4f82de40705944073322d8335ce8817c9`  
		Last Modified: Fri, 08 Mar 2019 08:38:20 GMT  
		Size: 148.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea87ff2bfaf1f7b1f5f1384194afc535c2d97dc26679b30a2d1e6de40dbe2d0a`  
		Last Modified: Sat, 23 Mar 2019 09:30:16 GMT  
		Size: 64.0 KB (63969 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:728386dda2f43426cdfe857ef79866f39ce18d721cfaac5bcf3735abfa3279e8`  
		Last Modified: Sat, 23 Mar 2019 09:31:17 GMT  
		Size: 289.4 MB (289444207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff8b6d44dddb3553540b85485de897f3958178db5c0b9437f1a3c571e88418ee`  
		Last Modified: Sat, 23 Mar 2019 09:30:16 GMT  
		Size: 1.2 KB (1238 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `flink:hadoop27-alpine` - linux; s390x

```console
$ docker pull flink@sha256:1b7032a3a17dbc94976c2274dfc3c8e2e168d497833fc03f38bf057884c2d5b1
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **346.9 MB (346895977 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5d6e28a23902e70f69d538803ffa93cfb98334372c9576abd4fa92c9ae7cd5c3`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["help"]`

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
# Fri, 08 Mar 2019 04:02:57 GMT
ENV JAVA_VERSION=8u191
# Fri, 08 Mar 2019 04:02:57 GMT
ENV JAVA_ALPINE_VERSION=8.191.12-r0
# Fri, 08 Mar 2019 04:02:59 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Fri, 08 Mar 2019 06:06:57 GMT
RUN apk add --no-cache bash libc6-compat snappy 'su-exec>=0.2'
# Fri, 08 Mar 2019 06:13:11 GMT
ENV FLINK_VERSION=1.7.2 HADOOP_SCALA_VARIANT=hadoop27-scala_2.12
# Fri, 08 Mar 2019 06:13:11 GMT
ENV FLINK_HOME=/opt/flink
# Fri, 08 Mar 2019 06:13:11 GMT
ENV PATH=/opt/flink/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Fri, 08 Mar 2019 06:13:12 GMT
RUN addgroup -S -g 9999 flink &&     adduser -D -S -H -u 9999 -G flink -h $FLINK_HOME flink
# Fri, 08 Mar 2019 06:13:12 GMT
WORKDIR /opt/flink
# Fri, 08 Mar 2019 06:13:13 GMT
ENV FLINK_URL_FILE_PATH=flink/flink-1.7.2/flink-1.7.2-bin-hadoop27-scala_2.12.tgz
# Fri, 08 Mar 2019 06:13:13 GMT
ENV FLINK_TGZ_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=flink/flink-1.7.2/flink-1.7.2-bin-hadoop27-scala_2.12.tgz FLINK_ASC_URL=https://www.apache.org/dist/flink/flink-1.7.2/flink-1.7.2-bin-hadoop27-scala_2.12.tgz.asc
# Sat, 23 Mar 2019 11:47:40 GMT
COPY file:6080d226172b47d9372bfe1905f1a2ac9e15ee46ef2f939add669902b31da9ae in /KEYS 
# Sat, 23 Mar 2019 11:47:54 GMT
RUN set -ex;   apk add --no-cache --virtual .build-deps     ca-certificates     gnupg     openssl     tar   ;     wget -nv -O flink.tgz "$FLINK_TGZ_URL";   wget -nv -O flink.tgz.asc "$FLINK_ASC_URL";     export GNUPGHOME="$(mktemp -d)";   gpg --batch --import /KEYS;   gpg --batch --verify flink.tgz.asc flink.tgz;   gpgconf --kill all;   rm -rf "$GNUPGHOME" flink.tgz.asc;     tar -xf flink.tgz --strip-components=1;   rm flink.tgz;     apk del .build-deps;     chown -R flink:flink .;
# Sat, 23 Mar 2019 11:47:55 GMT
COPY file:52e8c12e536aa08e39c4f96f47155e1dcf2ab878ce6da844d94e239302d89fe1 in / 
# Sat, 23 Mar 2019 11:47:55 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 23 Mar 2019 11:47:55 GMT
EXPOSE 6123 8081
# Sat, 23 Mar 2019 11:47:56 GMT
CMD ["help"]
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
	-	`sha256:ac265199f8ca9e617cd7b18ea5c6a78f28aa2b82c1b71e28007fed5a24621c49`  
		Last Modified: Fri, 08 Mar 2019 04:04:53 GMT  
		Size: 53.6 MB (53587707 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41e26fdfc6ea21c7f32996d65f7e6fb6ce818bd42212ab594dd3e71fb828dce0`  
		Last Modified: Fri, 08 Mar 2019 06:17:10 GMT  
		Size: 1.3 MB (1257387 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77881146f3b2bac80601e7330a91a5bf2f9fe5909d3d6aa267c55810b39f94d4`  
		Last Modified: Fri, 08 Mar 2019 06:21:57 GMT  
		Size: 1.2 KB (1214 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa20034dc493922a9bb54ebd2ca22bd61272e6dcaf640e3ca76216e61f727558`  
		Last Modified: Fri, 08 Mar 2019 06:21:57 GMT  
		Size: 113.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6dcded658fffac87740052b3abe3d5c324053d297b60eeb3565ee107c449f6f9`  
		Last Modified: Sat, 23 Mar 2019 11:52:56 GMT  
		Size: 64.0 KB (63969 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5690970a4d94d9674dc0204543c20eeb9be45e42e3cd096bf3b9606a40afedf3`  
		Last Modified: Sat, 23 Mar 2019 11:53:14 GMT  
		Size: 289.4 MB (289442804 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17adbb6c422fa324c9bfbf02321df78a9e02e740e15abae9c3d6b9d994ac3c73`  
		Last Modified: Sat, 23 Mar 2019 11:52:56 GMT  
		Size: 1.2 KB (1239 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
