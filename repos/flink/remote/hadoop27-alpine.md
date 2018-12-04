## `flink:hadoop27-alpine`

```console
$ docker pull flink@sha256:328238149a60fb556022d851f67334634df2e92d478b19a9bb038f00090bf6c5
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
$ docker pull flink@sha256:65ce44e608b0631e57243ee2e9e32b69bb97203d5ddfb2771e453cfb2b2cde4e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **335.8 MB (335831665 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:80eea72f6e88f6d03bc3fa21d7c03b9e665bac647d640ce5937ff576855ff767`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["help"]`

```dockerfile
# Tue, 11 Sep 2018 22:19:50 GMT
ADD file:25c10b1d1b41d46a1827ad0b0d2389c24df6d31430005ff4e9a2d84ea23ebd42 in / 
# Tue, 11 Sep 2018 22:19:50 GMT
CMD ["/bin/sh"]
# Wed, 12 Sep 2018 00:06:51 GMT
ENV LANG=C.UTF-8
# Wed, 12 Sep 2018 00:06:51 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 12 Sep 2018 00:07:19 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Wed, 12 Sep 2018 00:07:19 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 24 Oct 2018 22:32:14 GMT
ENV JAVA_VERSION=8u181
# Wed, 24 Oct 2018 22:32:14 GMT
ENV JAVA_ALPINE_VERSION=8.181.13-r0
# Wed, 24 Oct 2018 22:32:17 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 24 Oct 2018 23:16:18 GMT
RUN apk add --no-cache bash libc6-compat snappy 'su-exec>=0.2'
# Tue, 04 Dec 2018 01:58:14 GMT
ENV FLINK_VERSION=1.7.0 HADOOP_SCALA_VARIANT=hadoop27-scala_2.12
# Tue, 04 Dec 2018 01:58:14 GMT
ENV FLINK_HOME=/opt/flink
# Tue, 04 Dec 2018 01:58:15 GMT
ENV PATH=/opt/flink/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 04 Dec 2018 01:58:15 GMT
RUN addgroup -S -g 9999 flink &&     adduser -D -S -H -u 9999 -G flink -h $FLINK_HOME flink
# Tue, 04 Dec 2018 01:58:16 GMT
WORKDIR /opt/flink
# Tue, 04 Dec 2018 01:58:16 GMT
ENV FLINK_URL_FILE_PATH=flink/flink-1.7.0/flink-1.7.0-bin-hadoop27-scala_2.12.tgz
# Tue, 04 Dec 2018 01:58:16 GMT
ENV FLINK_TGZ_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=flink/flink-1.7.0/flink-1.7.0-bin-hadoop27-scala_2.12.tgz FLINK_ASC_URL=https://www.apache.org/dist/flink/flink-1.7.0/flink-1.7.0-bin-hadoop27-scala_2.12.tgz.asc
# Tue, 04 Dec 2018 01:58:16 GMT
COPY file:d9b980b40ddcfab2700a72e4088616452368e14c4f8fbee56f3258ac7f5dd913 in /KEYS 
# Tue, 04 Dec 2018 01:58:55 GMT
RUN set -ex;   apk add --no-cache --virtual .build-deps     ca-certificates     gnupg     openssl     tar   ;     wget -nv -O flink.tgz "$FLINK_TGZ_URL";   wget -nv -O flink.tgz.asc "$FLINK_ASC_URL";     export GNUPGHOME="$(mktemp -d)";   gpg --batch --import /KEYS;   gpg --batch --verify flink.tgz.asc flink.tgz;   gpgconf --kill all;   rm -rf "$GNUPGHOME" flink.tgz.asc;     tar -xf flink.tgz --strip-components=1;   rm flink.tgz;     apk del .build-deps;     chown -R flink:flink .;
# Tue, 04 Dec 2018 01:58:55 GMT
COPY file:15d049520a883d1b2d6ad6d561d06e3024278246670c49143dfdd98a0057a86a in / 
# Tue, 04 Dec 2018 01:58:55 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 04 Dec 2018 01:58:56 GMT
EXPOSE 6123/tcp 8081/tcp
# Tue, 04 Dec 2018 01:58:56 GMT
CMD ["help"]
```

-	Layers:
	-	`sha256:4fe2ade4980c2dda4fc95858ebb981489baec8c1e4bd282ab1c3560be8ff9bde`  
		Last Modified: Tue, 11 Sep 2018 22:21:23 GMT  
		Size: 2.2 MB (2206931 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fc58a8d4ae4b3eeb215330632931dda9d60c645588c5750498ded35aa974c5a`  
		Last Modified: Wed, 12 Sep 2018 00:08:58 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:819f4a45746c3207fc5fa281ad62cf165d39c18de53a5bfd42eddfec32430d83`  
		Last Modified: Wed, 24 Oct 2018 22:45:47 GMT  
		Size: 54.8 MB (54829651 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58887d9de36a7847866039932ad062313408bd1d16a7a86fa5c45914dc35460c`  
		Last Modified: Wed, 24 Oct 2018 23:30:36 GMT  
		Size: 1.2 MB (1220594 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5595f07a36ac9610f5022ad499ee1c1fee5e340108758b56608e14710bcc9522`  
		Last Modified: Tue, 04 Dec 2018 02:37:20 GMT  
		Size: 1.2 KB (1207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d1650eea7d2a3cf29664bab600a31e695cf876a0634591354db14b42ad0b0f2`  
		Last Modified: Tue, 04 Dec 2018 02:37:20 GMT  
		Size: 114.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0f80e6f6e788ad4ce2877d69dedd40439b0007e9fd9b93b91ace6512a756439`  
		Last Modified: Tue, 04 Dec 2018 02:37:20 GMT  
		Size: 59.3 KB (59338 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6630020a88403fa337255fe632f788d88fba94f0548ba9905a9790fe59e7e48`  
		Last Modified: Tue, 04 Dec 2018 02:37:48 GMT  
		Size: 277.5 MB (277512491 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da8a1e6ddbba9f19ebd3937823ab5c547988c616d2bf7c57e44e047eb06e4421`  
		Last Modified: Tue, 04 Dec 2018 02:37:20 GMT  
		Size: 1.1 KB (1101 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `flink:hadoop27-alpine` - linux; arm variant v6

```console
$ docker pull flink@sha256:bf7a5cd03e732c35d3a4c34d50e1323a8383ad4abb1b474d6e0f38f8016acc8b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **333.2 MB (333185625 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c333eb4242c1be596d3709c05241c88f9948a01630af9b04365c2d7edebffa3b`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["help"]`

```dockerfile
# Wed, 12 Sep 2018 07:49:40 GMT
ADD file:9c713f2312a88f19529816851673353155f329a4b024d62b03f656b0ce32f2a6 in / 
# Wed, 12 Sep 2018 07:49:40 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 12 Sep 2018 07:49:40 GMT
CMD ["/bin/sh"]
# Wed, 12 Sep 2018 08:28:56 GMT
ENV LANG=C.UTF-8
# Wed, 12 Sep 2018 08:28:57 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 12 Sep 2018 08:29:10 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Wed, 12 Sep 2018 08:29:10 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Thu, 25 Oct 2018 07:53:14 GMT
ENV JAVA_VERSION=8u181
# Thu, 25 Oct 2018 07:53:15 GMT
ENV JAVA_ALPINE_VERSION=8.181.13-r0
# Thu, 25 Oct 2018 07:53:19 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Thu, 25 Oct 2018 08:10:13 GMT
RUN apk add --no-cache bash libc6-compat snappy 'su-exec>=0.2'
# Tue, 04 Dec 2018 09:10:32 GMT
ENV FLINK_VERSION=1.7.0 HADOOP_SCALA_VARIANT=hadoop27-scala_2.12
# Tue, 04 Dec 2018 09:10:32 GMT
ENV FLINK_HOME=/opt/flink
# Tue, 04 Dec 2018 09:10:32 GMT
ENV PATH=/opt/flink/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 04 Dec 2018 09:10:33 GMT
RUN addgroup -S -g 9999 flink &&     adduser -D -S -H -u 9999 -G flink -h $FLINK_HOME flink
# Tue, 04 Dec 2018 09:10:34 GMT
WORKDIR /opt/flink
# Tue, 04 Dec 2018 09:10:36 GMT
ENV FLINK_URL_FILE_PATH=flink/flink-1.7.0/flink-1.7.0-bin-hadoop27-scala_2.12.tgz
# Tue, 04 Dec 2018 09:10:37 GMT
ENV FLINK_TGZ_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=flink/flink-1.7.0/flink-1.7.0-bin-hadoop27-scala_2.12.tgz FLINK_ASC_URL=https://www.apache.org/dist/flink/flink-1.7.0/flink-1.7.0-bin-hadoop27-scala_2.12.tgz.asc
# Tue, 04 Dec 2018 09:10:37 GMT
COPY file:d9b980b40ddcfab2700a72e4088616452368e14c4f8fbee56f3258ac7f5dd913 in /KEYS 
# Tue, 04 Dec 2018 09:12:10 GMT
RUN set -ex;   apk add --no-cache --virtual .build-deps     ca-certificates     gnupg     openssl     tar   ;     wget -nv -O flink.tgz "$FLINK_TGZ_URL";   wget -nv -O flink.tgz.asc "$FLINK_ASC_URL";     export GNUPGHOME="$(mktemp -d)";   gpg --batch --import /KEYS;   gpg --batch --verify flink.tgz.asc flink.tgz;   gpgconf --kill all;   rm -rf "$GNUPGHOME" flink.tgz.asc;     tar -xf flink.tgz --strip-components=1;   rm flink.tgz;     apk del .build-deps;     chown -R flink:flink .;
# Tue, 04 Dec 2018 09:12:11 GMT
COPY file:15d049520a883d1b2d6ad6d561d06e3024278246670c49143dfdd98a0057a86a in / 
# Tue, 04 Dec 2018 09:12:11 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 04 Dec 2018 09:12:12 GMT
EXPOSE 6123/tcp 8081/tcp
# Tue, 04 Dec 2018 09:12:12 GMT
CMD ["help"]
```

-	Layers:
	-	`sha256:905674ea9d9448b14f15ae82e3c34138680bac1ef4fc29088aae8c9639b502fe`  
		Last Modified: Wed, 12 Sep 2018 07:50:09 GMT  
		Size: 2.1 MB (2146453 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d91fe322e1690c8fb3f2b684fd85335d36a45e509b1568683232aede6d8a5e2b`  
		Last Modified: Wed, 12 Sep 2018 07:50:09 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5330a9c830688a5533553fc6f68b39796b550d1e9e2adec9da6321849c3091f`  
		Last Modified: Wed, 12 Sep 2018 08:30:15 GMT  
		Size: 236.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6bc5e33e2886dcc3a99be4e4d5ad45dec02e660f7a1bac7f1fcdda33450b5417`  
		Last Modified: Thu, 25 Oct 2018 07:54:32 GMT  
		Size: 52.3 MB (52291258 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cee71599291b8fc4f63ff991b913957eee0d791e977c780a1e8028467940febd`  
		Last Modified: Thu, 25 Oct 2018 08:23:01 GMT  
		Size: 1.2 MB (1172570 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dfd5c6b9a0ea9404cd1785e1a529e3c90d37bc5ec6c395cc7caa430e4d9f6fc7`  
		Last Modified: Tue, 04 Dec 2018 09:29:19 GMT  
		Size: 1.2 KB (1209 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32336d47bf510d9f06b4ebc7d0c08609a2c59afd3ceed9cd98fbce256e285471`  
		Last Modified: Tue, 04 Dec 2018 09:29:19 GMT  
		Size: 145.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6999b3475528b2784fd190b3c27771a8da739be27a5bcace3542149e7c415f21`  
		Last Modified: Tue, 04 Dec 2018 09:29:19 GMT  
		Size: 59.3 KB (59338 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2c621793f3d8c5112bd6c71f5016e03ff0d62647902c59885df8d9066cfd743`  
		Last Modified: Tue, 04 Dec 2018 09:29:51 GMT  
		Size: 277.5 MB (277513140 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a96904e3f7dcc8be40b3a4a5fb4cc7825241a8d7f706cbc57df1697a8f8382b`  
		Last Modified: Tue, 04 Dec 2018 09:29:19 GMT  
		Size: 1.1 KB (1101 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `flink:hadoop27-alpine` - linux; arm64 variant v8

```console
$ docker pull flink@sha256:fe79ff95a19fc24e554e64957fdcb824348585541cbb8a5682e21cf1ddf108e5
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **334.2 MB (334180813 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eeacaec03b06d17ae5dbf1fbb5a5d1b1302cea89c7af1f690a054aa6fb5821d4`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["help"]`

```dockerfile
# Wed, 12 Sep 2018 08:42:24 GMT
ADD file:a4b53e2a2e207c5107a76c16d91b99cb1ed4ecb90b363913798e663426137d45 in / 
# Wed, 12 Sep 2018 08:42:24 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 12 Sep 2018 08:42:25 GMT
CMD ["/bin/sh"]
# Sat, 15 Sep 2018 10:31:14 GMT
ENV LANG=C.UTF-8
# Sat, 15 Sep 2018 10:31:22 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 15 Sep 2018 10:32:16 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Sat, 15 Sep 2018 10:32:23 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Thu, 25 Oct 2018 09:17:58 GMT
ENV JAVA_VERSION=8u181
# Thu, 25 Oct 2018 09:17:59 GMT
ENV JAVA_ALPINE_VERSION=8.181.13-r0
# Thu, 25 Oct 2018 09:18:08 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Thu, 25 Oct 2018 09:49:02 GMT
RUN apk add --no-cache bash libc6-compat snappy 'su-exec>=0.2'
# Tue, 04 Dec 2018 10:36:06 GMT
ENV FLINK_VERSION=1.7.0 HADOOP_SCALA_VARIANT=hadoop27-scala_2.12
# Tue, 04 Dec 2018 10:36:06 GMT
ENV FLINK_HOME=/opt/flink
# Tue, 04 Dec 2018 10:36:07 GMT
ENV PATH=/opt/flink/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 04 Dec 2018 10:36:09 GMT
RUN addgroup -S -g 9999 flink &&     adduser -D -S -H -u 9999 -G flink -h $FLINK_HOME flink
# Tue, 04 Dec 2018 10:36:09 GMT
WORKDIR /opt/flink
# Tue, 04 Dec 2018 10:36:10 GMT
ENV FLINK_URL_FILE_PATH=flink/flink-1.7.0/flink-1.7.0-bin-hadoop27-scala_2.12.tgz
# Tue, 04 Dec 2018 10:36:10 GMT
ENV FLINK_TGZ_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=flink/flink-1.7.0/flink-1.7.0-bin-hadoop27-scala_2.12.tgz FLINK_ASC_URL=https://www.apache.org/dist/flink/flink-1.7.0/flink-1.7.0-bin-hadoop27-scala_2.12.tgz.asc
# Tue, 04 Dec 2018 10:36:11 GMT
COPY file:d9b980b40ddcfab2700a72e4088616452368e14c4f8fbee56f3258ac7f5dd913 in /KEYS 
# Tue, 04 Dec 2018 10:38:17 GMT
RUN set -ex;   apk add --no-cache --virtual .build-deps     ca-certificates     gnupg     openssl     tar   ;     wget -nv -O flink.tgz "$FLINK_TGZ_URL";   wget -nv -O flink.tgz.asc "$FLINK_ASC_URL";     export GNUPGHOME="$(mktemp -d)";   gpg --batch --import /KEYS;   gpg --batch --verify flink.tgz.asc flink.tgz;   gpgconf --kill all;   rm -rf "$GNUPGHOME" flink.tgz.asc;     tar -xf flink.tgz --strip-components=1;   rm flink.tgz;     apk del .build-deps;     chown -R flink:flink .;
# Tue, 04 Dec 2018 10:38:18 GMT
COPY file:15d049520a883d1b2d6ad6d561d06e3024278246670c49143dfdd98a0057a86a in / 
# Tue, 04 Dec 2018 10:38:18 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 04 Dec 2018 10:38:19 GMT
EXPOSE 6123/tcp 8081/tcp
# Tue, 04 Dec 2018 10:38:20 GMT
CMD ["help"]
```

-	Layers:
	-	`sha256:9941776d74c9129fd585b6f0434ba48bd3a7112d6736bc02e6d12f41153cab26`  
		Last Modified: Wed, 12 Sep 2018 08:44:55 GMT  
		Size: 2.1 MB (2099762 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae94b3cb7a1b2cef0ceffe3303cd03f83434d283aab43389e586b42bea00b358`  
		Last Modified: Wed, 12 Sep 2018 08:44:55 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6f5ccd8840b9ed31daf1700ec6ed07458ba25d6734206c6c4c5910f09d8c0a6`  
		Last Modified: Sat, 15 Sep 2018 10:49:34 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c6a4067fe21d0e5d7bc2f00538e0f83c6d2c7c88299a7ae6f834d2213521d93`  
		Last Modified: Thu, 25 Oct 2018 09:32:23 GMT  
		Size: 53.3 MB (53345648 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15b7ed713cec1ac08bb0e0e020b82b2c47b8628a1e6aaefda9c9ec7b33e5b9d6`  
		Last Modified: Thu, 25 Oct 2018 10:08:05 GMT  
		Size: 1.2 MB (1161736 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c6c5d46f13956c6732e0e60602fd21c59e13ea8bdaeab542220226a30f5a2f6`  
		Last Modified: Tue, 04 Dec 2018 11:16:19 GMT  
		Size: 1.2 KB (1208 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d489f5e62de0a38b5f4edef067711601afff9227b034eb0ad8d73936f087d50`  
		Last Modified: Tue, 04 Dec 2018 11:16:19 GMT  
		Size: 114.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70fb304e12ca5f1d98b5894042f86adfec72ad6960d94e95253fb29919a1cf91`  
		Last Modified: Tue, 04 Dec 2018 11:16:19 GMT  
		Size: 59.3 KB (59338 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01994abdb41e9cdcb0dd00391d0f009d6d7a795de6cd3a34acdeb4bd21f198ea`  
		Last Modified: Tue, 04 Dec 2018 11:16:55 GMT  
		Size: 277.5 MB (277511493 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fcec2f4244a518ef527d2aadd3c4efc59b17c2cef3b532f70683331d8b5cc8c9`  
		Last Modified: Tue, 04 Dec 2018 11:16:19 GMT  
		Size: 1.1 KB (1100 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `flink:hadoop27-alpine` - linux; 386

```console
$ docker pull flink@sha256:6dab060b30c879b169bce4d15629d1f508431db1783c2704ec5322fd75fbaf21
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **336.6 MB (336569998 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0ef6e6db63ca62a981599473ab9dc882e600112cd95c6bc966c4899bb30236a7`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["help"]`

```dockerfile
# Wed, 12 Sep 2018 10:38:54 GMT
ADD file:b789aca08d6985c0bf373a2ca5f2a263d45e3a789aa6bbcd1fe1d47133f985d2 in / 
# Wed, 12 Sep 2018 10:38:54 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 12 Sep 2018 10:38:54 GMT
CMD ["/bin/sh"]
# Wed, 12 Sep 2018 12:26:37 GMT
ENV LANG=C.UTF-8
# Wed, 12 Sep 2018 12:26:38 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 12 Sep 2018 12:26:54 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Wed, 12 Sep 2018 12:26:54 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Thu, 25 Oct 2018 11:02:29 GMT
ENV JAVA_VERSION=8u181
# Thu, 25 Oct 2018 11:02:29 GMT
ENV JAVA_ALPINE_VERSION=8.181.13-r0
# Thu, 25 Oct 2018 11:02:33 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Thu, 25 Oct 2018 12:03:03 GMT
RUN apk add --no-cache bash libc6-compat snappy 'su-exec>=0.2'
# Tue, 04 Dec 2018 12:39:03 GMT
ENV FLINK_VERSION=1.7.0 HADOOP_SCALA_VARIANT=hadoop27-scala_2.12
# Tue, 04 Dec 2018 12:39:03 GMT
ENV FLINK_HOME=/opt/flink
# Tue, 04 Dec 2018 12:39:04 GMT
ENV PATH=/opt/flink/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 04 Dec 2018 12:39:04 GMT
RUN addgroup -S -g 9999 flink &&     adduser -D -S -H -u 9999 -G flink -h $FLINK_HOME flink
# Tue, 04 Dec 2018 12:39:05 GMT
WORKDIR /opt/flink
# Tue, 04 Dec 2018 12:39:05 GMT
ENV FLINK_URL_FILE_PATH=flink/flink-1.7.0/flink-1.7.0-bin-hadoop27-scala_2.12.tgz
# Tue, 04 Dec 2018 12:39:05 GMT
ENV FLINK_TGZ_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=flink/flink-1.7.0/flink-1.7.0-bin-hadoop27-scala_2.12.tgz FLINK_ASC_URL=https://www.apache.org/dist/flink/flink-1.7.0/flink-1.7.0-bin-hadoop27-scala_2.12.tgz.asc
# Tue, 04 Dec 2018 12:39:05 GMT
COPY file:d9b980b40ddcfab2700a72e4088616452368e14c4f8fbee56f3258ac7f5dd913 in /KEYS 
# Tue, 04 Dec 2018 12:39:34 GMT
RUN set -ex;   apk add --no-cache --virtual .build-deps     ca-certificates     gnupg     openssl     tar   ;     wget -nv -O flink.tgz "$FLINK_TGZ_URL";   wget -nv -O flink.tgz.asc "$FLINK_ASC_URL";     export GNUPGHOME="$(mktemp -d)";   gpg --batch --import /KEYS;   gpg --batch --verify flink.tgz.asc flink.tgz;   gpgconf --kill all;   rm -rf "$GNUPGHOME" flink.tgz.asc;     tar -xf flink.tgz --strip-components=1;   rm flink.tgz;     apk del .build-deps;     chown -R flink:flink .;
# Tue, 04 Dec 2018 12:39:35 GMT
COPY file:15d049520a883d1b2d6ad6d561d06e3024278246670c49143dfdd98a0057a86a in / 
# Tue, 04 Dec 2018 12:39:35 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 04 Dec 2018 12:39:35 GMT
EXPOSE 6123/tcp 8081/tcp
# Tue, 04 Dec 2018 12:39:35 GMT
CMD ["help"]
```

-	Layers:
	-	`sha256:6b5c2e9bbf9885ccefe772a5a1f471d7da4315b7bf43ec3b4c014a65d04073b1`  
		Last Modified: Wed, 12 Sep 2018 10:39:28 GMT  
		Size: 2.3 MB (2271460 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4d99e807699886f28203b3284584d7b093a61a84c40230f7094513bb2f84cd2`  
		Last Modified: Wed, 12 Sep 2018 10:39:28 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28e11b9507e2b27f5ba6cf1ca7a6129f7238ae95981ee1dce74b023e8fea1d68`  
		Last Modified: Wed, 12 Sep 2018 12:28:14 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a6eb6edcf6d903657109406b5f05e58764abef296cbccb245bb9a6892b07f9d`  
		Last Modified: Thu, 25 Oct 2018 11:13:24 GMT  
		Size: 55.5 MB (55458925 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3de741c40c1c7d096f0ea854e001d5dce27286bbc6d733fc9c73e953c36dcdc3`  
		Last Modified: Thu, 25 Oct 2018 12:15:45 GMT  
		Size: 1.3 MB (1265579 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2fc037982a89d1571bfabba1542245d7e2dbba64c71e038f548cc2ebcbd7f40a`  
		Last Modified: Tue, 04 Dec 2018 13:14:23 GMT  
		Size: 1.2 KB (1206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11b5c540107efc36540246d01479fde21df79c291e533e598fa605e210874a82`  
		Last Modified: Tue, 04 Dec 2018 13:14:23 GMT  
		Size: 114.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b53abebde9b5aaf06fea466d7de21415f1dfa9ddcfccfd28e00d6bbd7db3b2ad`  
		Last Modified: Tue, 04 Dec 2018 13:14:23 GMT  
		Size: 59.3 KB (59338 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2cd7d63713768b3b14aa6d7489242848fcc9d7d284e98d97cb1ae7ac48a52273`  
		Last Modified: Tue, 04 Dec 2018 13:14:43 GMT  
		Size: 277.5 MB (277511861 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68119c4eb5a4d443a2c687414bcada07a21b6ed83c56efe55d569ca7d1c1433c`  
		Last Modified: Tue, 04 Dec 2018 13:14:22 GMT  
		Size: 1.1 KB (1101 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `flink:hadoop27-alpine` - linux; ppc64le

```console
$ docker pull flink@sha256:1f45c290231ac0911a0984afb6169cd0338c793b88f18ee9281b69287e5bd1f9
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **334.9 MB (334938738 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:661329b7fb04ede71831441d5fc7cc4cffa332ba406947333d67c11555d49f68`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["help"]`

```dockerfile
# Wed, 12 Sep 2018 08:18:11 GMT
ADD file:0991fe2a00b8319ade0b97ea20b79708b45153da36419ca58378c8bece0f987c in / 
# Wed, 12 Sep 2018 08:18:13 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 12 Sep 2018 08:18:14 GMT
CMD ["/bin/sh"]
# Wed, 12 Sep 2018 10:42:47 GMT
ENV LANG=C.UTF-8
# Wed, 12 Sep 2018 10:42:49 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 12 Sep 2018 10:43:19 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Wed, 12 Sep 2018 10:43:22 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Thu, 25 Oct 2018 08:46:08 GMT
ENV JAVA_VERSION=8u181
# Thu, 25 Oct 2018 08:46:10 GMT
ENV JAVA_ALPINE_VERSION=8.181.13-r0
# Thu, 25 Oct 2018 08:46:15 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Thu, 25 Oct 2018 09:19:26 GMT
RUN apk add --no-cache bash libc6-compat snappy 'su-exec>=0.2'
# Tue, 04 Dec 2018 11:16:48 GMT
ENV FLINK_VERSION=1.7.0 HADOOP_SCALA_VARIANT=hadoop27-scala_2.12
# Tue, 04 Dec 2018 11:16:49 GMT
ENV FLINK_HOME=/opt/flink
# Tue, 04 Dec 2018 11:16:51 GMT
ENV PATH=/opt/flink/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 04 Dec 2018 11:16:54 GMT
RUN addgroup -S -g 9999 flink &&     adduser -D -S -H -u 9999 -G flink -h $FLINK_HOME flink
# Tue, 04 Dec 2018 11:16:55 GMT
WORKDIR /opt/flink
# Tue, 04 Dec 2018 11:16:56 GMT
ENV FLINK_URL_FILE_PATH=flink/flink-1.7.0/flink-1.7.0-bin-hadoop27-scala_2.12.tgz
# Tue, 04 Dec 2018 11:16:56 GMT
ENV FLINK_TGZ_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=flink/flink-1.7.0/flink-1.7.0-bin-hadoop27-scala_2.12.tgz FLINK_ASC_URL=https://www.apache.org/dist/flink/flink-1.7.0/flink-1.7.0-bin-hadoop27-scala_2.12.tgz.asc
# Tue, 04 Dec 2018 11:16:57 GMT
COPY file:d9b980b40ddcfab2700a72e4088616452368e14c4f8fbee56f3258ac7f5dd913 in /KEYS 
# Tue, 04 Dec 2018 11:19:16 GMT
RUN set -ex;   apk add --no-cache --virtual .build-deps     ca-certificates     gnupg     openssl     tar   ;     wget -nv -O flink.tgz "$FLINK_TGZ_URL";   wget -nv -O flink.tgz.asc "$FLINK_ASC_URL";     export GNUPGHOME="$(mktemp -d)";   gpg --batch --import /KEYS;   gpg --batch --verify flink.tgz.asc flink.tgz;   gpgconf --kill all;   rm -rf "$GNUPGHOME" flink.tgz.asc;     tar -xf flink.tgz --strip-components=1;   rm flink.tgz;     apk del .build-deps;     chown -R flink:flink .;
# Tue, 04 Dec 2018 11:19:27 GMT
COPY file:15d049520a883d1b2d6ad6d561d06e3024278246670c49143dfdd98a0057a86a in / 
# Tue, 04 Dec 2018 11:19:29 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 04 Dec 2018 11:19:30 GMT
EXPOSE 6123/tcp 8081/tcp
# Tue, 04 Dec 2018 11:19:31 GMT
CMD ["help"]
```

-	Layers:
	-	`sha256:d6201b52ea9b908d4d6e950e2a79ded27be48979d6f0f63bd3a57b16b621f188`  
		Last Modified: Wed, 12 Sep 2018 08:19:46 GMT  
		Size: 2.2 MB (2195226 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c5cedde51de1c8ffccd5521fd02fc1efc1cc44ece2d5dccb1e550a65366cd80`  
		Last Modified: Wed, 12 Sep 2018 08:19:44 GMT  
		Size: 177.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a54bbb0272d84bd92ba5131b652f8b30f8a037eb25502b09336b9879057a5b41`  
		Last Modified: Wed, 12 Sep 2018 10:45:39 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc787a32f675983007d832594a1f087ca89bc45fd2b42ff999fea4dbf5b975d3`  
		Last Modified: Thu, 25 Oct 2018 08:57:55 GMT  
		Size: 53.9 MB (53931450 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:903ed9453fa9a4739348eedf3e1c2301dd695ebfe3c3454f66111245b42640f1`  
		Last Modified: Thu, 25 Oct 2018 09:45:11 GMT  
		Size: 1.2 MB (1237065 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:532cd5998ac043e19f19bd7014f545be9862f5af7581316d05801fb1bd825a83`  
		Last Modified: Tue, 04 Dec 2018 12:30:15 GMT  
		Size: 1.2 KB (1208 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c6bc57a243c0ccfd6a3bc73518cce26cadb8d90ad1abe728adb45062c1545cd`  
		Last Modified: Tue, 04 Dec 2018 12:30:14 GMT  
		Size: 145.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63d138c7884d03b32b9232ef06f8b15b080750c064fdb1982aeb3532122d1276`  
		Last Modified: Tue, 04 Dec 2018 12:30:15 GMT  
		Size: 59.3 KB (59338 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96344babd3f960f9f97ea54f04322e66df5ecc339074c2510a58ff51d5f7abd3`  
		Last Modified: Tue, 04 Dec 2018 12:31:16 GMT  
		Size: 277.5 MB (277512790 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21599b96e07afa9080cfe199748c8d1f7f9dbad3dd6df9a11df403e06de66e93`  
		Last Modified: Tue, 04 Dec 2018 12:30:15 GMT  
		Size: 1.1 KB (1101 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `flink:hadoop27-alpine` - linux; s390x

```console
$ docker pull flink@sha256:3d26bad3efd5d8dd6afdc92178b4f402012cf3c8087979655651728eca307d25
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **334.8 MB (334750215 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:87d72855a42c7e90e31a4b2c4ba9ec9e178c3a99fabaf3614dfb7c14e29a0ee0`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["help"]`

```dockerfile
# Wed, 12 Sep 2018 11:42:25 GMT
ADD file:532f451315fcf5c4077ef91f62d9838cf5681b4a348af2d78f6edd825146612c in / 
# Wed, 12 Sep 2018 11:42:25 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 12 Sep 2018 11:42:25 GMT
CMD ["/bin/sh"]
# Wed, 12 Sep 2018 13:14:33 GMT
ENV LANG=C.UTF-8
# Wed, 12 Sep 2018 13:14:33 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 12 Sep 2018 13:15:01 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Wed, 12 Sep 2018 13:15:01 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Thu, 25 Oct 2018 11:51:37 GMT
ENV JAVA_VERSION=8u181
# Thu, 25 Oct 2018 11:51:37 GMT
ENV JAVA_ALPINE_VERSION=8.181.13-r0
# Thu, 25 Oct 2018 11:51:39 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Thu, 25 Oct 2018 12:23:34 GMT
RUN apk add --no-cache bash libc6-compat snappy 'su-exec>=0.2'
# Tue, 04 Dec 2018 12:56:40 GMT
ENV FLINK_VERSION=1.7.0 HADOOP_SCALA_VARIANT=hadoop27-scala_2.12
# Tue, 04 Dec 2018 12:56:40 GMT
ENV FLINK_HOME=/opt/flink
# Tue, 04 Dec 2018 12:56:41 GMT
ENV PATH=/opt/flink/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 04 Dec 2018 12:56:41 GMT
RUN addgroup -S -g 9999 flink &&     adduser -D -S -H -u 9999 -G flink -h $FLINK_HOME flink
# Tue, 04 Dec 2018 12:56:41 GMT
WORKDIR /opt/flink
# Tue, 04 Dec 2018 12:56:42 GMT
ENV FLINK_URL_FILE_PATH=flink/flink-1.7.0/flink-1.7.0-bin-hadoop27-scala_2.12.tgz
# Tue, 04 Dec 2018 12:56:42 GMT
ENV FLINK_TGZ_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=flink/flink-1.7.0/flink-1.7.0-bin-hadoop27-scala_2.12.tgz FLINK_ASC_URL=https://www.apache.org/dist/flink/flink-1.7.0/flink-1.7.0-bin-hadoop27-scala_2.12.tgz.asc
# Tue, 04 Dec 2018 12:56:42 GMT
COPY file:d9b980b40ddcfab2700a72e4088616452368e14c4f8fbee56f3258ac7f5dd913 in /KEYS 
# Tue, 04 Dec 2018 12:56:55 GMT
RUN set -ex;   apk add --no-cache --virtual .build-deps     ca-certificates     gnupg     openssl     tar   ;     wget -nv -O flink.tgz "$FLINK_TGZ_URL";   wget -nv -O flink.tgz.asc "$FLINK_ASC_URL";     export GNUPGHOME="$(mktemp -d)";   gpg --batch --import /KEYS;   gpg --batch --verify flink.tgz.asc flink.tgz;   gpgconf --kill all;   rm -rf "$GNUPGHOME" flink.tgz.asc;     tar -xf flink.tgz --strip-components=1;   rm flink.tgz;     apk del .build-deps;     chown -R flink:flink .;
# Tue, 04 Dec 2018 12:56:55 GMT
COPY file:15d049520a883d1b2d6ad6d561d06e3024278246670c49143dfdd98a0057a86a in / 
# Tue, 04 Dec 2018 12:56:55 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 04 Dec 2018 12:56:55 GMT
EXPOSE 6123/tcp 8081/tcp
# Tue, 04 Dec 2018 12:56:56 GMT
CMD ["help"]
```

-	Layers:
	-	`sha256:e5d7a290acc264d66e5c29923d4b8a79135ffd15887225581968bf7df22fb281`  
		Last Modified: Wed, 12 Sep 2018 11:43:25 GMT  
		Size: 2.3 MB (2307746 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad01149bcd3bd207c03ab0c38897be9653222644a37b651c399c24f1e9170313`  
		Last Modified: Wed, 12 Sep 2018 11:43:24 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d467c81155dfdb8e21d7a7abb5210cdfe51c5e8336b7a58bf0fecf06d36633e`  
		Last Modified: Wed, 12 Sep 2018 13:16:20 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be4eac2f407330d8a16da46e42d046231caaa181a8e57ad4088168d7f8db140c`  
		Last Modified: Thu, 25 Oct 2018 11:56:23 GMT  
		Size: 53.6 MB (53601165 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6bc02375660183ac48702216564c848b88fafda27b799e510bd4350a382c1d30`  
		Last Modified: Thu, 25 Oct 2018 12:50:27 GMT  
		Size: 1.3 MB (1267776 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61b36d156fbc550205110d4395ad5b42cc9f770c8ad731a02ea5bd4f5a698543`  
		Last Modified: Tue, 04 Dec 2018 13:06:01 GMT  
		Size: 1.2 KB (1209 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3556c33fde139cea6e53878664e79870a1faf4f1cc17326ecdb68bf5affea6fd`  
		Last Modified: Tue, 04 Dec 2018 13:06:00 GMT  
		Size: 114.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5908f2859de21248a6152ba26e81311e11125cb4d668f5b22135b57ce254dc76`  
		Last Modified: Tue, 04 Dec 2018 13:06:00 GMT  
		Size: 59.3 KB (59337 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c11eab84e4b70f3d16ea0079e156905c6ab452cb74ba79b576a1d91c46990f0`  
		Last Modified: Tue, 04 Dec 2018 13:06:17 GMT  
		Size: 277.5 MB (277511353 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:caa7d2af76d5addfdf5ccd93d028afffbf6493de768d1141b01314340efc6d23`  
		Last Modified: Tue, 04 Dec 2018 13:06:00 GMT  
		Size: 1.1 KB (1100 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
