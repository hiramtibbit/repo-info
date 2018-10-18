## `flink:hadoop26-alpine`

```console
$ docker pull flink@sha256:c739e00bc873f9769f18e9c94d8332895e4458c62f2f99ace7b8ebb970ca544e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `flink:hadoop26-alpine` - linux; amd64

```console
$ docker pull flink@sha256:67af95e67dcb6b5d9168eacf21073e8488df5c93497939f81fbb1ec767a2505c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **356.4 MB (356439347 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:852392dc4fdc7a74abaac76e350538e8c2c5e71a1f6cd5a4ce8285e77c54e8c0`
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
# Wed, 12 Sep 2018 00:07:20 GMT
ENV JAVA_VERSION=8u171
# Wed, 12 Sep 2018 00:07:20 GMT
ENV JAVA_ALPINE_VERSION=8.171.11-r0
# Wed, 12 Sep 2018 00:07:22 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 12 Sep 2018 04:01:16 GMT
RUN apk add --no-cache bash libc6-compat snappy 'su-exec>=0.2'
# Wed, 26 Sep 2018 00:38:17 GMT
ENV FLINK_VERSION=1.6.1 HADOOP_SCALA_VARIANT=hadoop26-scala_2.11
# Wed, 26 Sep 2018 00:38:17 GMT
ENV FLINK_HOME=/opt/flink
# Wed, 26 Sep 2018 00:38:17 GMT
ENV PATH=/opt/flink/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 26 Sep 2018 00:38:18 GMT
RUN addgroup -S -g 9999 flink &&     adduser -D -S -H -u 9999 -G flink -h $FLINK_HOME flink
# Wed, 26 Sep 2018 00:38:18 GMT
WORKDIR /opt/flink
# Wed, 26 Sep 2018 00:38:19 GMT
ENV FLINK_URL_FILE_PATH=flink/flink-1.6.1/flink-1.6.1-bin-hadoop26-scala_2.11.tgz
# Wed, 26 Sep 2018 00:38:19 GMT
ENV FLINK_TGZ_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=flink/flink-1.6.1/flink-1.6.1-bin-hadoop26-scala_2.11.tgz FLINK_ASC_URL=https://www.apache.org/dist/flink/flink-1.6.1/flink-1.6.1-bin-hadoop26-scala_2.11.tgz.asc
# Wed, 26 Sep 2018 00:38:19 GMT
COPY file:d9b980b40ddcfab2700a72e4088616452368e14c4f8fbee56f3258ac7f5dd913 in /KEYS 
# Wed, 26 Sep 2018 00:38:51 GMT
RUN set -ex;   apk add --no-cache --virtual .build-deps     ca-certificates     gnupg     openssl     tar   ;     wget -nv -O flink.tgz "$FLINK_TGZ_URL";   wget -nv -O flink.tgz.asc "$FLINK_ASC_URL";     export GNUPGHOME="$(mktemp -d)";   gpg --import /KEYS;   gpg --batch --verify flink.tgz.asc flink.tgz;   rm -rf "$GNUPGHOME" flink.tgz.asc;     tar -xf flink.tgz --strip-components=1;   rm flink.tgz;     apk del .build-deps;     chown -R flink:flink .;
# Wed, 17 Oct 2018 21:25:12 GMT
COPY file:15d049520a883d1b2d6ad6d561d06e3024278246670c49143dfdd98a0057a86a in / 
# Wed, 17 Oct 2018 21:25:12 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 17 Oct 2018 21:25:13 GMT
EXPOSE 6123/tcp 8081/tcp
# Wed, 17 Oct 2018 21:25:13 GMT
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
	-	`sha256:d3e6d7e9702afb6c02946a1861b0a3d48b06c6614df4dd382ad81b20da30a0dc`  
		Last Modified: Wed, 12 Sep 2018 00:10:38 GMT  
		Size: 54.8 MB (54798258 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08994173baa9ca87e8d85df6f6e0faf777862a5fd9b35d998d5b8ea5176aa432`  
		Last Modified: Wed, 12 Sep 2018 04:11:42 GMT  
		Size: 1.2 MB (1220577 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83fe7377036d340a75ffcb7b7172af6d3e7e5c5d9f57a297c0046dd6746b4b41`  
		Last Modified: Wed, 26 Sep 2018 00:58:36 GMT  
		Size: 1.2 KB (1205 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5de76545f687bc6694f2b62e3e70c1dee4092fbf67af6356b566b8e8c6e018a`  
		Last Modified: Wed, 26 Sep 2018 00:58:46 GMT  
		Size: 114.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7c12679f5aa3729c58933b0bf4130e80156c11c70b0783fef020786e3b3bd03`  
		Last Modified: Wed, 26 Sep 2018 00:58:37 GMT  
		Size: 59.3 KB (59338 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6cb7418396d6b48da6af85340b121eafb5240aefedbe0ce93d8bb7a5429e7dc`  
		Last Modified: Wed, 26 Sep 2018 00:58:56 GMT  
		Size: 298.2 MB (298151585 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62f57a1446621f5f16ab67bcc637b3b9d2e40fca596dea384b9be8465ff87c1b`  
		Last Modified: Wed, 17 Oct 2018 21:41:49 GMT  
		Size: 1.1 KB (1101 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `flink:hadoop26-alpine` - linux; arm variant v6

```console
$ docker pull flink@sha256:87b308b1e7d35fddbf943e2979208c26da68b62a7aa7513324e5131fa9b12c22
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **353.8 MB (353811001 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b9737818ddc254218a30da83358135e73b70b8b396a73b698b8a377d0890d821`
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
# Wed, 12 Sep 2018 08:29:11 GMT
ENV JAVA_VERSION=8u171
# Wed, 12 Sep 2018 08:29:11 GMT
ENV JAVA_ALPINE_VERSION=8.171.11-r0
# Wed, 12 Sep 2018 08:29:15 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 12 Sep 2018 08:46:44 GMT
RUN apk add --no-cache bash libc6-compat snappy 'su-exec>=0.2'
# Wed, 26 Sep 2018 07:57:28 GMT
ENV FLINK_VERSION=1.6.1 HADOOP_SCALA_VARIANT=hadoop26-scala_2.11
# Wed, 26 Sep 2018 07:57:28 GMT
ENV FLINK_HOME=/opt/flink
# Wed, 26 Sep 2018 07:57:29 GMT
ENV PATH=/opt/flink/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 26 Sep 2018 07:57:30 GMT
RUN addgroup -S -g 9999 flink &&     adduser -D -S -H -u 9999 -G flink -h $FLINK_HOME flink
# Wed, 26 Sep 2018 07:57:30 GMT
WORKDIR /opt/flink
# Wed, 26 Sep 2018 07:57:31 GMT
ENV FLINK_URL_FILE_PATH=flink/flink-1.6.1/flink-1.6.1-bin-hadoop26-scala_2.11.tgz
# Wed, 26 Sep 2018 07:57:31 GMT
ENV FLINK_TGZ_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=flink/flink-1.6.1/flink-1.6.1-bin-hadoop26-scala_2.11.tgz FLINK_ASC_URL=https://www.apache.org/dist/flink/flink-1.6.1/flink-1.6.1-bin-hadoop26-scala_2.11.tgz.asc
# Wed, 26 Sep 2018 07:57:31 GMT
COPY file:d9b980b40ddcfab2700a72e4088616452368e14c4f8fbee56f3258ac7f5dd913 in /KEYS 
# Wed, 26 Sep 2018 07:58:16 GMT
RUN set -ex;   apk add --no-cache --virtual .build-deps     ca-certificates     gnupg     openssl     tar   ;     wget -nv -O flink.tgz "$FLINK_TGZ_URL";   wget -nv -O flink.tgz.asc "$FLINK_ASC_URL";     export GNUPGHOME="$(mktemp -d)";   gpg --import /KEYS;   gpg --batch --verify flink.tgz.asc flink.tgz;   rm -rf "$GNUPGHOME" flink.tgz.asc;     tar -xf flink.tgz --strip-components=1;   rm flink.tgz;     apk del .build-deps;     chown -R flink:flink .;
# Thu, 18 Oct 2018 07:50:06 GMT
COPY file:15d049520a883d1b2d6ad6d561d06e3024278246670c49143dfdd98a0057a86a in / 
# Thu, 18 Oct 2018 07:50:07 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 18 Oct 2018 07:50:07 GMT
EXPOSE 6123/tcp 8081/tcp
# Thu, 18 Oct 2018 07:50:07 GMT
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
	-	`sha256:00747677db18ac2063a80d62c65eb527d42e50b3d18451ed46e66a4695c28ce1`  
		Last Modified: Wed, 12 Sep 2018 08:31:08 GMT  
		Size: 52.3 MB (52277680 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01dfbb7af7cb46e3eb745ab7a603014dcf3e5cbf98e4b847be4f74bd2e02471e`  
		Last Modified: Wed, 12 Sep 2018 08:58:22 GMT  
		Size: 1.2 MB (1172502 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:200aa1be0ed0924d6a5fd5697e2a2f3ff85b5f8ab7dbbfa657c268bfdd76a9de`  
		Last Modified: Wed, 26 Sep 2018 08:07:36 GMT  
		Size: 1.2 KB (1207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:161faa21e6f0da904b584c124be95b3f5ab3a17cb9c2c6c91b78377a262ad731`  
		Last Modified: Wed, 26 Sep 2018 08:07:36 GMT  
		Size: 145.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96a09b1f56e404bc14ee774f9613c21d21d683eb290a3c8fbe5fd65479469793`  
		Last Modified: Wed, 26 Sep 2018 08:07:36 GMT  
		Size: 59.3 KB (59338 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9dcd807cf9c701258ed013d68b4e8bc6efe09a31d64863660cc3e342272d66b3`  
		Last Modified: Wed, 26 Sep 2018 08:08:09 GMT  
		Size: 298.2 MB (298152164 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e4dd0186e449a528967ef51104d730441557596a5f8755e95917e27b0239b79`  
		Last Modified: Thu, 18 Oct 2018 07:52:10 GMT  
		Size: 1.1 KB (1101 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `flink:hadoop26-alpine` - linux; arm64 variant v8

```console
$ docker pull flink@sha256:2f7d7fb390b57bdd1684bbedf1eb689fa4a44ec06615506cc0638b67177ca583
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **354.8 MB (354807623 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:39d4ce8a6bff3cd837c274ec2972f05d6cc115fb6003c3773954517a5c48f802`
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
# Sat, 15 Sep 2018 10:32:24 GMT
ENV JAVA_VERSION=8u171
# Sat, 15 Sep 2018 10:32:25 GMT
ENV JAVA_ALPINE_VERSION=8.171.11-r0
# Sat, 15 Sep 2018 10:32:34 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Sat, 15 Sep 2018 14:57:03 GMT
RUN apk add --no-cache bash libc6-compat snappy 'su-exec>=0.2'
# Wed, 26 Sep 2018 09:19:33 GMT
ENV FLINK_VERSION=1.6.1 HADOOP_SCALA_VARIANT=hadoop26-scala_2.11
# Wed, 26 Sep 2018 09:19:33 GMT
ENV FLINK_HOME=/opt/flink
# Wed, 26 Sep 2018 09:19:34 GMT
ENV PATH=/opt/flink/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 26 Sep 2018 09:19:36 GMT
RUN addgroup -S -g 9999 flink &&     adduser -D -S -H -u 9999 -G flink -h $FLINK_HOME flink
# Wed, 26 Sep 2018 09:19:37 GMT
WORKDIR /opt/flink
# Wed, 26 Sep 2018 09:19:38 GMT
ENV FLINK_URL_FILE_PATH=flink/flink-1.6.1/flink-1.6.1-bin-hadoop26-scala_2.11.tgz
# Wed, 26 Sep 2018 09:19:39 GMT
ENV FLINK_TGZ_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=flink/flink-1.6.1/flink-1.6.1-bin-hadoop26-scala_2.11.tgz FLINK_ASC_URL=https://www.apache.org/dist/flink/flink-1.6.1/flink-1.6.1-bin-hadoop26-scala_2.11.tgz.asc
# Wed, 26 Sep 2018 09:19:42 GMT
COPY file:d9b980b40ddcfab2700a72e4088616452368e14c4f8fbee56f3258ac7f5dd913 in /KEYS 
# Sat, 29 Sep 2018 09:58:50 GMT
RUN set -ex;   apk add --no-cache --virtual .build-deps     ca-certificates     gnupg     openssl     tar   ;     wget -nv -O flink.tgz "$FLINK_TGZ_URL";   wget -nv -O flink.tgz.asc "$FLINK_ASC_URL";     export GNUPGHOME="$(mktemp -d)";   gpg --import /KEYS;   gpg --batch --verify flink.tgz.asc flink.tgz;   rm -rf "$GNUPGHOME" flink.tgz.asc;     tar -xf flink.tgz --strip-components=1;   rm flink.tgz;     apk del .build-deps;     chown -R flink:flink .;
# Thu, 18 Oct 2018 08:44:20 GMT
COPY file:15d049520a883d1b2d6ad6d561d06e3024278246670c49143dfdd98a0057a86a in / 
# Thu, 18 Oct 2018 08:44:29 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 18 Oct 2018 08:44:30 GMT
EXPOSE 6123/tcp 8081/tcp
# Thu, 18 Oct 2018 08:44:31 GMT
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
	-	`sha256:c05d430af100cf0140a25542c8239dff4d62ceffee301f20bad85a55e863e38a`  
		Last Modified: Sat, 15 Sep 2018 10:52:07 GMT  
		Size: 53.3 MB (53332573 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65c1f23188d8d5993b8c2287a1208f4578fbefdfc1379af59a525c461611e704`  
		Last Modified: Sat, 15 Sep 2018 15:36:36 GMT  
		Size: 1.2 MB (1161701 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ddc86d7c36b7868ab5353ba37f6661817a415a7f38d42f76077730d7a3c7be6a`  
		Last Modified: Sat, 29 Sep 2018 09:59:59 GMT  
		Size: 1.2 KB (1206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:968c6ddb784e4347a7855d7bbc7b28941205043b40c923986665291d19e74c3b`  
		Last Modified: Sat, 29 Sep 2018 09:59:59 GMT  
		Size: 114.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a835896860d6e8853e6ce6f08c34d932e29d4fd8374f4b4b0eff19b1a52dd75b`  
		Last Modified: Sat, 29 Sep 2018 09:59:59 GMT  
		Size: 59.3 KB (59336 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32f4b07536b927d87641ce07bff42fd5c5c84b308318057a4deab9e3e458dd25`  
		Last Modified: Sat, 29 Sep 2018 10:00:39 GMT  
		Size: 298.2 MB (298151416 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0491d1711e6008cbeeca22b8daf4c62452b90979a782cdaf7ac1341643486cc3`  
		Last Modified: Thu, 18 Oct 2018 08:59:46 GMT  
		Size: 1.1 KB (1101 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `flink:hadoop26-alpine` - linux; 386

```console
$ docker pull flink@sha256:552375636f562676873d94c146c25ba63e368bb628f39cad2dbc670248dcff90
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **357.2 MB (357178566 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cb252400ed24f29c9797c630dc6fa4eb45f0781e276f40adb0da0041c48e4c0c`
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
# Wed, 12 Sep 2018 12:26:54 GMT
ENV JAVA_VERSION=8u171
# Wed, 12 Sep 2018 12:26:54 GMT
ENV JAVA_ALPINE_VERSION=8.171.11-r0
# Wed, 12 Sep 2018 12:26:58 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 12 Sep 2018 17:44:53 GMT
RUN apk add --no-cache bash libc6-compat snappy 'su-exec>=0.2'
# Wed, 26 Sep 2018 11:11:13 GMT
ENV FLINK_VERSION=1.6.1 HADOOP_SCALA_VARIANT=hadoop26-scala_2.11
# Wed, 26 Sep 2018 11:11:14 GMT
ENV FLINK_HOME=/opt/flink
# Wed, 26 Sep 2018 11:11:14 GMT
ENV PATH=/opt/flink/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 26 Sep 2018 11:11:15 GMT
RUN addgroup -S -g 9999 flink &&     adduser -D -S -H -u 9999 -G flink -h $FLINK_HOME flink
# Wed, 26 Sep 2018 11:11:15 GMT
WORKDIR /opt/flink
# Wed, 26 Sep 2018 11:11:15 GMT
ENV FLINK_URL_FILE_PATH=flink/flink-1.6.1/flink-1.6.1-bin-hadoop26-scala_2.11.tgz
# Wed, 26 Sep 2018 11:11:15 GMT
ENV FLINK_TGZ_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=flink/flink-1.6.1/flink-1.6.1-bin-hadoop26-scala_2.11.tgz FLINK_ASC_URL=https://www.apache.org/dist/flink/flink-1.6.1/flink-1.6.1-bin-hadoop26-scala_2.11.tgz.asc
# Wed, 26 Sep 2018 11:11:15 GMT
COPY file:d9b980b40ddcfab2700a72e4088616452368e14c4f8fbee56f3258ac7f5dd913 in /KEYS 
# Wed, 26 Sep 2018 11:11:53 GMT
RUN set -ex;   apk add --no-cache --virtual .build-deps     ca-certificates     gnupg     openssl     tar   ;     wget -nv -O flink.tgz "$FLINK_TGZ_URL";   wget -nv -O flink.tgz.asc "$FLINK_ASC_URL";     export GNUPGHOME="$(mktemp -d)";   gpg --import /KEYS;   gpg --batch --verify flink.tgz.asc flink.tgz;   rm -rf "$GNUPGHOME" flink.tgz.asc;     tar -xf flink.tgz --strip-components=1;   rm flink.tgz;     apk del .build-deps;     chown -R flink:flink .;
# Fri, 05 Oct 2018 10:40:54 GMT
COPY file:7ede7182e493c895882f25b5790401fcaf01530da6bf0aa9a9db2d744286860f in / 
# Fri, 05 Oct 2018 10:40:54 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 05 Oct 2018 10:40:54 GMT
EXPOSE 6123/tcp 8081/tcp
# Fri, 05 Oct 2018 10:40:55 GMT
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
	-	`sha256:cf0bc2c419c6200a29885c7ecf0fe777349af7e4e5fa7fd308ef38606f009fbb`  
		Last Modified: Wed, 12 Sep 2018 12:29:10 GMT  
		Size: 55.4 MB (55428216 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09fa67fb1c1990f57a19a1775407e20bb0d5aa65e569d3bb200a1e5651b01bb6`  
		Last Modified: Wed, 12 Sep 2018 17:54:52 GMT  
		Size: 1.3 MB (1265537 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:279bd69cc6188ce1dac74003b5c6828fdce60c3f6dff40ee8744bd4653e3d38a`  
		Last Modified: Wed, 26 Sep 2018 11:28:11 GMT  
		Size: 1.2 KB (1205 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd65888ae4c097fe289a53fa1292a5d9915d498d90ac1b62837e0dfb5beca3fd`  
		Last Modified: Wed, 26 Sep 2018 11:28:11 GMT  
		Size: 114.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b42a47df0109a63164a75f1ee5c884b32a2d757112e77c76c4097451549fc119`  
		Last Modified: Wed, 26 Sep 2018 11:28:11 GMT  
		Size: 59.3 KB (59338 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff24fd55d47327cf6e09453f85a509fcc8f5b7aa0ea520b897f9be553f1f728c`  
		Last Modified: Wed, 26 Sep 2018 11:28:34 GMT  
		Size: 298.2 MB (298151190 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a403ec4d1da7186719676b4a67b4eb7b196e80274bf2c6a06994b652e0fdf998`  
		Last Modified: Fri, 05 Oct 2018 10:48:51 GMT  
		Size: 1.1 KB (1092 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `flink:hadoop26-alpine` - linux; ppc64le

```console
$ docker pull flink@sha256:aece27e6976654d24d4754bc338a9ec0bb77783d11eb4ba405851d493c29ad79
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **355.6 MB (355563067 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:66c67f26564b540e6305c602c16e64b5c0a8e9855379588d2ac05105b6ac7f24`
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
# Wed, 12 Sep 2018 10:43:23 GMT
ENV JAVA_VERSION=8u171
# Wed, 12 Sep 2018 10:43:23 GMT
ENV JAVA_ALPINE_VERSION=8.171.11-r0
# Wed, 12 Sep 2018 10:43:28 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 12 Sep 2018 14:05:36 GMT
RUN apk add --no-cache bash libc6-compat snappy 'su-exec>=0.2'
# Wed, 26 Sep 2018 11:14:15 GMT
ENV FLINK_VERSION=1.6.1 HADOOP_SCALA_VARIANT=hadoop26-scala_2.11
# Wed, 26 Sep 2018 11:14:17 GMT
ENV FLINK_HOME=/opt/flink
# Wed, 26 Sep 2018 11:14:21 GMT
ENV PATH=/opt/flink/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 26 Sep 2018 11:14:35 GMT
RUN addgroup -S -g 9999 flink &&     adduser -D -S -H -u 9999 -G flink -h $FLINK_HOME flink
# Wed, 26 Sep 2018 11:14:39 GMT
WORKDIR /opt/flink
# Wed, 26 Sep 2018 11:14:46 GMT
ENV FLINK_URL_FILE_PATH=flink/flink-1.6.1/flink-1.6.1-bin-hadoop26-scala_2.11.tgz
# Wed, 26 Sep 2018 11:14:51 GMT
ENV FLINK_TGZ_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=flink/flink-1.6.1/flink-1.6.1-bin-hadoop26-scala_2.11.tgz FLINK_ASC_URL=https://www.apache.org/dist/flink/flink-1.6.1/flink-1.6.1-bin-hadoop26-scala_2.11.tgz.asc
# Wed, 26 Sep 2018 11:14:57 GMT
COPY file:d9b980b40ddcfab2700a72e4088616452368e14c4f8fbee56f3258ac7f5dd913 in /KEYS 
# Wed, 26 Sep 2018 11:18:18 GMT
RUN set -ex;   apk add --no-cache --virtual .build-deps     ca-certificates     gnupg     openssl     tar   ;     wget -nv -O flink.tgz "$FLINK_TGZ_URL";   wget -nv -O flink.tgz.asc "$FLINK_ASC_URL";     export GNUPGHOME="$(mktemp -d)";   gpg --import /KEYS;   gpg --batch --verify flink.tgz.asc flink.tgz;   rm -rf "$GNUPGHOME" flink.tgz.asc;     tar -xf flink.tgz --strip-components=1;   rm flink.tgz;     apk del .build-deps;     chown -R flink:flink .;
# Thu, 18 Oct 2018 08:26:10 GMT
COPY file:15d049520a883d1b2d6ad6d561d06e3024278246670c49143dfdd98a0057a86a in / 
# Thu, 18 Oct 2018 08:26:11 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 18 Oct 2018 08:26:12 GMT
EXPOSE 6123/tcp 8081/tcp
# Thu, 18 Oct 2018 08:26:13 GMT
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
	-	`sha256:956ad3d77f401bdbb3c16f989361726bb8317c12614f54f6f6b2c2e70c472b30`  
		Last Modified: Wed, 12 Sep 2018 10:47:29 GMT  
		Size: 53.9 MB (53916835 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a37f02d2cbffafa7956699b0d4a5e24ed0155969ae7cc7989900cbfc31ef2549`  
		Last Modified: Wed, 12 Sep 2018 14:34:07 GMT  
		Size: 1.2 MB (1237035 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0333a49b6fd236b0385460cd6130460aa48a7d58462c9f75b915b64e21681742`  
		Last Modified: Wed, 26 Sep 2018 12:00:49 GMT  
		Size: 1.2 KB (1209 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce4c64fb7b55521aacd4cc8abaf4982a8f506b948021af1f870405443c5bf42d`  
		Last Modified: Wed, 26 Sep 2018 12:00:49 GMT  
		Size: 145.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:979fa949c42274175965d1fe7192ad579f34cb4344e3434034378aca9e96f27a`  
		Last Modified: Wed, 26 Sep 2018 12:00:49 GMT  
		Size: 59.3 KB (59336 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de278e80f80db123690722dd2f373a51c554b677a9093610ec61572311dfa0f7`  
		Last Modified: Wed, 26 Sep 2018 12:01:26 GMT  
		Size: 298.2 MB (298151765 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85dd562fdfa4a00bb509b85b737cbc88a93925083d5d690546c62c6a5e96b78a`  
		Last Modified: Thu, 18 Oct 2018 08:36:48 GMT  
		Size: 1.1 KB (1101 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `flink:hadoop26-alpine` - linux; s390x

```console
$ docker pull flink@sha256:f137dae8bdf0d48e40521eb3f6c7bb69e617b870c3f7001dfaef330542c5e1c6
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **355.4 MB (355370463 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3266f379b2e0b1dba10bf2e60540511d46ca7dea047a3fee3d9c3b50d36fb4ca`
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
# Wed, 12 Sep 2018 13:15:01 GMT
ENV JAVA_VERSION=8u171
# Wed, 12 Sep 2018 13:15:01 GMT
ENV JAVA_ALPINE_VERSION=8.171.11-r0
# Wed, 12 Sep 2018 13:15:03 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 12 Sep 2018 14:13:28 GMT
RUN apk add --no-cache bash libc6-compat snappy 'su-exec>=0.2'
# Wed, 26 Sep 2018 11:56:39 GMT
ENV FLINK_VERSION=1.6.1 HADOOP_SCALA_VARIANT=hadoop26-scala_2.11
# Wed, 26 Sep 2018 11:56:40 GMT
ENV FLINK_HOME=/opt/flink
# Wed, 26 Sep 2018 11:56:40 GMT
ENV PATH=/opt/flink/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 26 Sep 2018 11:56:41 GMT
RUN addgroup -S -g 9999 flink &&     adduser -D -S -H -u 9999 -G flink -h $FLINK_HOME flink
# Wed, 26 Sep 2018 11:56:41 GMT
WORKDIR /opt/flink
# Wed, 26 Sep 2018 11:56:41 GMT
ENV FLINK_URL_FILE_PATH=flink/flink-1.6.1/flink-1.6.1-bin-hadoop26-scala_2.11.tgz
# Wed, 26 Sep 2018 11:56:41 GMT
ENV FLINK_TGZ_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=flink/flink-1.6.1/flink-1.6.1-bin-hadoop26-scala_2.11.tgz FLINK_ASC_URL=https://www.apache.org/dist/flink/flink-1.6.1/flink-1.6.1-bin-hadoop26-scala_2.11.tgz.asc
# Wed, 26 Sep 2018 11:56:42 GMT
COPY file:d9b980b40ddcfab2700a72e4088616452368e14c4f8fbee56f3258ac7f5dd913 in /KEYS 
# Wed, 26 Sep 2018 11:57:43 GMT
RUN set -ex;   apk add --no-cache --virtual .build-deps     ca-certificates     gnupg     openssl     tar   ;     wget -nv -O flink.tgz "$FLINK_TGZ_URL";   wget -nv -O flink.tgz.asc "$FLINK_ASC_URL";     export GNUPGHOME="$(mktemp -d)";   gpg --import /KEYS;   gpg --batch --verify flink.tgz.asc flink.tgz;   rm -rf "$GNUPGHOME" flink.tgz.asc;     tar -xf flink.tgz --strip-components=1;   rm flink.tgz;     apk del .build-deps;     chown -R flink:flink .;
# Fri, 05 Oct 2018 11:49:20 GMT
COPY file:7ede7182e493c895882f25b5790401fcaf01530da6bf0aa9a9db2d744286860f in / 
# Fri, 05 Oct 2018 11:49:20 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 05 Oct 2018 11:49:21 GMT
EXPOSE 6123/tcp 8081/tcp
# Fri, 05 Oct 2018 11:49:21 GMT
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
	-	`sha256:45eab26f75317f15c0092e0699523c867e1d27201dbcd548832fd4021658f067`  
		Last Modified: Wed, 12 Sep 2018 13:17:25 GMT  
		Size: 53.6 MB (53581524 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a74d38aecdbb6982b1f93be8ab29f9107000baeff6e63f03fb335366cdb3c496`  
		Last Modified: Wed, 12 Sep 2018 14:25:01 GMT  
		Size: 1.3 MB (1267761 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1cb3613966272c266168aa368504d64486702d48b740e00c8279f741756966c5`  
		Last Modified: Wed, 26 Sep 2018 12:06:16 GMT  
		Size: 1.2 KB (1205 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:223e4d60a7fbea7f07aa7aa98c2998d967ce6d32f5b99cab3bbf51a036200cfe`  
		Last Modified: Wed, 26 Sep 2018 12:06:15 GMT  
		Size: 114.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ecf00697cb9135c1aa9c8c7810949afcc08f7c076f01d15a987135c3d3359f87`  
		Last Modified: Wed, 26 Sep 2018 12:06:15 GMT  
		Size: 59.3 KB (59338 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e232b16e6190e82135526b760bef59f90477c7760c33eeb8d038e8ce81488f9`  
		Last Modified: Wed, 26 Sep 2018 12:06:51 GMT  
		Size: 298.2 MB (298151268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:109e0131f021a404a4197e02a37f953df8c1f7aa37db722aeb1fc9c573c0a9ef`  
		Last Modified: Fri, 05 Oct 2018 11:54:18 GMT  
		Size: 1.1 KB (1092 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
