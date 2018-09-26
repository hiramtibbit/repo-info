## `flink:hadoop26-alpine`

```console
$ docker pull flink@sha256:3b8dfde81f97af066d3eba40f30241f65688adfe1ed24b934125f21ba375a501
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; 386

### `flink:hadoop26-alpine` - linux; amd64

```console
$ docker pull flink@sha256:63530c5be804fe6dae8c901c68719b4d96d3993bb5bbb201863ef232b2e1baef
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **356.4 MB (356439364 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f72189132da97b648b03d4bb3335592bc70cc43c529ddbdb6926b4a05010e0ea`
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
# Wed, 26 Sep 2018 00:38:51 GMT
COPY file:dd3a2212d5f0bbe552ac5e863e5fb1df12bcbb32cff887e6f4f3c81e2372b6c1 in / 
# Wed, 26 Sep 2018 00:38:51 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 26 Sep 2018 00:38:57 GMT
EXPOSE 6123/tcp 8081/tcp
# Wed, 26 Sep 2018 00:38:58 GMT
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
	-	`sha256:7638787c62008e3962225b28e2f203b2b53eb9f4725afe8fcc846ffb306cab43`  
		Last Modified: Wed, 26 Sep 2018 00:58:36 GMT  
		Size: 1.1 KB (1118 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `flink:hadoop26-alpine` - linux; arm variant v6

```console
$ docker pull flink@sha256:c271365a3b0ee133fd42ed77852bf240fef1403b7bc73d2df731b0516163e901
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **353.8 MB (353811017 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d603cb4b7dd887f78fa47ed9b491c59d09d4a182995290335e79ec46d89abe73`
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
# Wed, 26 Sep 2018 07:58:17 GMT
COPY file:dd3a2212d5f0bbe552ac5e863e5fb1df12bcbb32cff887e6f4f3c81e2372b6c1 in / 
# Wed, 26 Sep 2018 07:58:17 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 26 Sep 2018 07:58:18 GMT
EXPOSE 6123/tcp 8081/tcp
# Wed, 26 Sep 2018 07:58:18 GMT
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
	-	`sha256:73bc744cb5443f1a390f277caca10a20ad869034f267a4af5846f3aaee428580`  
		Last Modified: Wed, 26 Sep 2018 08:07:35 GMT  
		Size: 1.1 KB (1117 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `flink:hadoop26-alpine` - linux; 386

```console
$ docker pull flink@sha256:1d705bb630c834c657ab34ee4935497844fa0cc7776baa2e9cdf96fafccce24c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **357.2 MB (357178591 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6d285d9fcc666277c72be64cecc2b94c71ab31be24c7696f97714c993a21a308`
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
# Wed, 26 Sep 2018 11:11:53 GMT
COPY file:dd3a2212d5f0bbe552ac5e863e5fb1df12bcbb32cff887e6f4f3c81e2372b6c1 in / 
# Wed, 26 Sep 2018 11:11:53 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 26 Sep 2018 11:11:53 GMT
EXPOSE 6123/tcp 8081/tcp
# Wed, 26 Sep 2018 11:11:54 GMT
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
	-	`sha256:f0ab1d856c73cfaee59953f1c155d370112e81034b8049b9db8837dbe46aefbe`  
		Last Modified: Wed, 26 Sep 2018 11:28:11 GMT  
		Size: 1.1 KB (1117 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
