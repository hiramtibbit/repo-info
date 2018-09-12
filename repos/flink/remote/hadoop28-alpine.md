## `flink:hadoop28-alpine`

```console
$ docker pull flink@sha256:d59aa07a917f365d794a1ecb26bc87e2f17f75d05b292894ac9e0f53b3f4751b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `flink:hadoop28-alpine` - linux; amd64

```console
$ docker pull flink@sha256:07794ec99d62145e3012293d9eb46ccfa440e24f288c42f1398dab4e0500f5dc
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **362.7 MB (362733460 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:062e6198f0ca72a42aa9d376752605ba427d0225c5703d103438ab19753a75a9`
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
# Wed, 12 Sep 2018 04:08:04 GMT
ENV FLINK_VERSION=1.6.0 HADOOP_SCALA_VARIANT=hadoop28-scala_2.11
# Wed, 12 Sep 2018 04:08:04 GMT
ENV FLINK_HOME=/opt/flink
# Wed, 12 Sep 2018 04:08:04 GMT
ENV PATH=/opt/flink/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 12 Sep 2018 04:08:05 GMT
RUN addgroup -S -g 9999 flink &&     adduser -D -S -H -u 9999 -G flink -h $FLINK_HOME flink
# Wed, 12 Sep 2018 04:08:05 GMT
WORKDIR /opt/flink
# Wed, 12 Sep 2018 04:08:05 GMT
ENV FLINK_URL_FILE_PATH=flink/flink-1.6.0/flink-1.6.0-bin-hadoop28-scala_2.11.tgz
# Wed, 12 Sep 2018 04:08:05 GMT
ENV FLINK_TGZ_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=flink/flink-1.6.0/flink-1.6.0-bin-hadoop28-scala_2.11.tgz FLINK_ASC_URL=https://www.apache.org/dist/flink/flink-1.6.0/flink-1.6.0-bin-hadoop28-scala_2.11.tgz.asc
# Wed, 12 Sep 2018 04:08:06 GMT
COPY file:d9b980b40ddcfab2700a72e4088616452368e14c4f8fbee56f3258ac7f5dd913 in /KEYS 
# Wed, 12 Sep 2018 04:08:24 GMT
RUN set -ex;   apk add --no-cache --virtual .build-deps     ca-certificates     gnupg     openssl     tar   ;     wget -nv -O flink.tgz "$FLINK_TGZ_URL";   wget -nv -O flink.tgz.asc "$FLINK_ASC_URL";     export GNUPGHOME="$(mktemp -d)";   gpg --import /KEYS;   gpg --batch --verify flink.tgz.asc flink.tgz;   rm -rf "$GNUPGHOME" flink.tgz.asc;     tar -xf flink.tgz --strip-components=1;   rm flink.tgz;     apk del .build-deps;     chown -R flink:flink .;
# Wed, 12 Sep 2018 04:08:24 GMT
COPY file:dd3a2212d5f0bbe552ac5e863e5fb1df12bcbb32cff887e6f4f3c81e2372b6c1 in / 
# Wed, 12 Sep 2018 04:08:24 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 12 Sep 2018 04:08:24 GMT
EXPOSE 6123/tcp 8081/tcp
# Wed, 12 Sep 2018 04:08:25 GMT
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
	-	`sha256:7e4aabab9f268bbde6abbefb93ace67a37b84fc1979d7dfe3a1fa8ebe4c99c2d`  
		Last Modified: Wed, 12 Sep 2018 04:19:17 GMT  
		Size: 1.2 KB (1207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26e0bd71d7777a36c3b1278370f8461360ee99c9aef1b6549d9a8067a2ff5773`  
		Last Modified: Wed, 12 Sep 2018 04:19:17 GMT  
		Size: 113.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d09f9eedbd727ec1df62de206db1401b512c7e011ca87d771e2089a87b19bcdf`  
		Last Modified: Wed, 12 Sep 2018 04:19:17 GMT  
		Size: 59.3 KB (59338 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7645dc0b61da4eb42b6f17e6ff54dcd062c723324dbc71c530f9bf5466a4c68a`  
		Last Modified: Wed, 12 Sep 2018 04:19:40 GMT  
		Size: 304.4 MB (304445681 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66d785757b28f2f74e7f4b7059b2ea7874f57f8613f7b7c224d1aa23ebc5b40d`  
		Last Modified: Wed, 12 Sep 2018 04:19:18 GMT  
		Size: 1.1 KB (1117 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `flink:hadoop28-alpine` - linux; arm variant v6

```console
$ docker pull flink@sha256:f4f4558171d19f3e1bc5481a92f73da32d70429ef796362921969cf963978c3d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **360.1 MB (360104826 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e32b67fef30c57540d5cc5e09c86f839e3e49c7e6198772e2bf59750a431b4f2`
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
# Wed, 12 Sep 2018 08:56:01 GMT
ENV FLINK_VERSION=1.6.0 HADOOP_SCALA_VARIANT=hadoop28-scala_2.11
# Wed, 12 Sep 2018 08:56:01 GMT
ENV FLINK_HOME=/opt/flink
# Wed, 12 Sep 2018 08:56:01 GMT
ENV PATH=/opt/flink/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 12 Sep 2018 08:56:02 GMT
RUN addgroup -S -g 9999 flink &&     adduser -D -S -H -u 9999 -G flink -h $FLINK_HOME flink
# Wed, 12 Sep 2018 08:56:02 GMT
WORKDIR /opt/flink
# Wed, 12 Sep 2018 08:56:03 GMT
ENV FLINK_URL_FILE_PATH=flink/flink-1.6.0/flink-1.6.0-bin-hadoop28-scala_2.11.tgz
# Wed, 12 Sep 2018 08:56:03 GMT
ENV FLINK_TGZ_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=flink/flink-1.6.0/flink-1.6.0-bin-hadoop28-scala_2.11.tgz FLINK_ASC_URL=https://www.apache.org/dist/flink/flink-1.6.0/flink-1.6.0-bin-hadoop28-scala_2.11.tgz.asc
# Wed, 12 Sep 2018 08:56:03 GMT
COPY file:d9b980b40ddcfab2700a72e4088616452368e14c4f8fbee56f3258ac7f5dd913 in /KEYS 
# Wed, 12 Sep 2018 08:56:53 GMT
RUN set -ex;   apk add --no-cache --virtual .build-deps     ca-certificates     gnupg     openssl     tar   ;     wget -nv -O flink.tgz "$FLINK_TGZ_URL";   wget -nv -O flink.tgz.asc "$FLINK_ASC_URL";     export GNUPGHOME="$(mktemp -d)";   gpg --import /KEYS;   gpg --batch --verify flink.tgz.asc flink.tgz;   rm -rf "$GNUPGHOME" flink.tgz.asc;     tar -xf flink.tgz --strip-components=1;   rm flink.tgz;     apk del .build-deps;     chown -R flink:flink .;
# Wed, 12 Sep 2018 08:56:54 GMT
COPY file:dd3a2212d5f0bbe552ac5e863e5fb1df12bcbb32cff887e6f4f3c81e2372b6c1 in / 
# Wed, 12 Sep 2018 08:56:54 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 12 Sep 2018 08:56:54 GMT
EXPOSE 6123/tcp 8081/tcp
# Wed, 12 Sep 2018 08:56:55 GMT
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
	-	`sha256:8cd1f9710eb3023a2aa8dec6abf776122136ded914c41cda9d8e30d0d90c07db`  
		Last Modified: Wed, 12 Sep 2018 09:05:21 GMT  
		Size: 1.2 KB (1206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28b4c72c0ef947dcc14ed831449c067bda7692cbaa6a7ca3adb209756c2ef871`  
		Last Modified: Wed, 12 Sep 2018 09:05:21 GMT  
		Size: 145.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52e918efd055d40ca218eaed87dd1508d6bf94b9b6c1e343d390482fba4a6c9a`  
		Last Modified: Wed, 12 Sep 2018 09:05:22 GMT  
		Size: 59.3 KB (59338 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:575854033b63b100373718e5222aa3537a2d85f031ca703b4185ac31f0a35d96`  
		Last Modified: Wed, 12 Sep 2018 09:05:56 GMT  
		Size: 304.4 MB (304445974 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f902840714951eafb2832aa9ec530eede3aa14355c8bac42ba3de8ba4f6486e6`  
		Last Modified: Wed, 12 Sep 2018 09:05:21 GMT  
		Size: 1.1 KB (1117 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `flink:hadoop28-alpine` - linux; arm64 variant v8

```console
$ docker pull flink@sha256:638611cfbdf426b6677c789749fb0664f2436e3bf072c61dcec2f68366e7d8a1
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **362.3 MB (362347609 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b7d7cf81604342a8ca4cf6b9bf1df09c811dee71dfd136a036a4c8effd47ea40`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["help"]`

```dockerfile
# Fri, 06 Jul 2018 08:41:03 GMT
ADD file:199a5a48bddabaf1f649f58f3b17c323a1aa1a50e939dfdea3542e4041e91b7b in / 
# Fri, 06 Jul 2018 08:41:03 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 06 Jul 2018 08:41:04 GMT
CMD ["/bin/sh"]
# Wed, 11 Jul 2018 08:42:59 GMT
ENV LANG=C.UTF-8
# Wed, 11 Jul 2018 08:43:02 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 11 Jul 2018 08:43:50 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Wed, 11 Jul 2018 08:43:51 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 11 Jul 2018 08:43:52 GMT
ENV JAVA_VERSION=8u171
# Wed, 11 Jul 2018 08:43:53 GMT
ENV JAVA_ALPINE_VERSION=8.171.11-r0
# Wed, 11 Jul 2018 08:44:00 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Thu, 12 Jul 2018 08:53:02 GMT
RUN apk add --no-cache bash libc6-compat snappy 'su-exec>=0.2'
# Tue, 14 Aug 2018 09:04:23 GMT
ENV FLINK_VERSION=1.6.0 HADOOP_SCALA_VARIANT=hadoop28-scala_2.11
# Tue, 14 Aug 2018 09:04:23 GMT
ENV FLINK_HOME=/opt/flink
# Tue, 14 Aug 2018 09:04:24 GMT
ENV PATH=/opt/flink/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 14 Aug 2018 09:04:26 GMT
RUN addgroup -S -g 9999 flink &&     adduser -D -S -H -u 9999 -G flink -h $FLINK_HOME flink
# Tue, 14 Aug 2018 09:04:27 GMT
WORKDIR /opt/flink
# Tue, 14 Aug 2018 09:04:28 GMT
ENV FLINK_URL_FILE_PATH=flink/flink-1.6.0/flink-1.6.0-bin-hadoop28-scala_2.11.tgz
# Tue, 14 Aug 2018 09:04:29 GMT
ENV FLINK_TGZ_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=flink/flink-1.6.0/flink-1.6.0-bin-hadoop28-scala_2.11.tgz FLINK_ASC_URL=https://www.apache.org/dist/flink/flink-1.6.0/flink-1.6.0-bin-hadoop28-scala_2.11.tgz.asc
# Tue, 14 Aug 2018 09:04:30 GMT
COPY file:d9b980b40ddcfab2700a72e4088616452368e14c4f8fbee56f3258ac7f5dd913 in /KEYS 
# Tue, 14 Aug 2018 09:06:13 GMT
RUN set -ex;   apk add --no-cache --virtual .build-deps     ca-certificates     gnupg     openssl     tar   ;     wget -nv -O flink.tgz "$FLINK_TGZ_URL";   wget -nv -O flink.tgz.asc "$FLINK_ASC_URL";     export GNUPGHOME="$(mktemp -d)";   gpg --import /KEYS;   gpg --batch --verify flink.tgz.asc flink.tgz;   rm -rf "$GNUPGHOME" flink.tgz.asc;     tar -xf flink.tgz --strip-components=1;   rm flink.tgz;     apk del .build-deps;     chown -R flink:flink .;
# Tue, 14 Aug 2018 09:06:14 GMT
COPY file:dd3a2212d5f0bbe552ac5e863e5fb1df12bcbb32cff887e6f4f3c81e2372b6c1 in / 
# Tue, 14 Aug 2018 09:06:15 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 14 Aug 2018 09:06:16 GMT
EXPOSE 6123/tcp 8081/tcp
# Tue, 14 Aug 2018 09:06:17 GMT
CMD ["help"]
```

-	Layers:
	-	`sha256:47e04371c99027fae42871b720fdc6cdddcb65062bfa05f0c3bb0a594cb5bbbd`  
		Last Modified: Wed, 27 Jun 2018 19:15:35 GMT  
		Size: 2.1 MB (2099514 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4103359e1ecd9a7253d8b8a041d4e81db1ff4a5e1950bc0e02305d221c9e6c2`  
		Last Modified: Fri, 06 Jul 2018 08:42:09 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db6021084a8eee491399113c29faf511efbb84b0299920f83c1bfbca669a70ee`  
		Last Modified: Wed, 11 Jul 2018 08:49:30 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:951cbfcd7f820b48a4b2a083946b4b1344b8a0c9322f8eb9471879df81b63d3d`  
		Last Modified: Wed, 11 Jul 2018 08:52:32 GMT  
		Size: 53.3 MB (53332872 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e232c0f567ebfb46b78452579793736cefb25d09ee20e187f083e76384c9fa80`  
		Last Modified: Thu, 12 Jul 2018 09:33:35 GMT  
		Size: 1.2 MB (1159779 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29a800e504e5226bdb6fee1d625014baefa87bb47f8298d5d1d56d97771d80b2`  
		Last Modified: Tue, 14 Aug 2018 09:33:33 GMT  
		Size: 1.2 KB (1206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71b3c7c76cb74a93bff76cdc7ae28133821f91b9772286bc80fdf032dc4bafd5`  
		Last Modified: Tue, 14 Aug 2018 09:33:31 GMT  
		Size: 113.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4230a68ff3b9d3a7b12dcd458163b52b178c1526723be57aad0fdd4ad01dd77`  
		Last Modified: Tue, 14 Aug 2018 09:33:31 GMT  
		Size: 59.3 KB (59338 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad21f8aef402adc1486e0dcd0546cfbc45650f936cbf6fc73a3548a525b910da`  
		Last Modified: Tue, 14 Aug 2018 09:34:13 GMT  
		Size: 305.7 MB (305693256 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe0616ab9c6d3ae2bc57ac05b5a76c1ac2b020560e4b88f64fa4177552b21da8`  
		Last Modified: Tue, 14 Aug 2018 09:33:31 GMT  
		Size: 1.1 KB (1118 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `flink:hadoop28-alpine` - linux; 386

```console
$ docker pull flink@sha256:fbdeb1048c71e1d121b204cb0f186548dd3de86e0a9e0a6dbccbe81ded0ad265
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **364.7 MB (364727845 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:653dc90f8a9f0d90f3d6358331f6b1d31b305a1c3e3935534cc1936d0b50590d`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["help"]`

```dockerfile
# Fri, 06 Jul 2018 15:02:06 GMT
ADD file:ebd40cda2f6087daf4d14e6dc1ee0b4a0fb5dc96c70129be8e07de0e5c628312 in / 
# Fri, 06 Jul 2018 15:02:07 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 06 Jul 2018 15:02:07 GMT
CMD ["/bin/sh"]
# Wed, 05 Sep 2018 12:59:25 GMT
ENV LANG=C.UTF-8
# Wed, 05 Sep 2018 12:59:26 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 05 Sep 2018 13:02:48 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Wed, 05 Sep 2018 13:02:48 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 05 Sep 2018 13:02:49 GMT
ENV JAVA_VERSION=8u171
# Wed, 05 Sep 2018 13:02:49 GMT
ENV JAVA_ALPINE_VERSION=8.171.11-r0
# Wed, 05 Sep 2018 13:02:56 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Fri, 07 Sep 2018 02:30:16 GMT
RUN apk add --no-cache bash libc6-compat snappy 'su-exec>=0.2'
# Fri, 07 Sep 2018 02:49:36 GMT
ENV FLINK_VERSION=1.6.0 HADOOP_SCALA_VARIANT=hadoop28-scala_2.11
# Fri, 07 Sep 2018 02:49:36 GMT
ENV FLINK_HOME=/opt/flink
# Fri, 07 Sep 2018 02:49:37 GMT
ENV PATH=/opt/flink/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Fri, 07 Sep 2018 02:49:37 GMT
RUN addgroup -S -g 9999 flink &&     adduser -D -S -H -u 9999 -G flink -h $FLINK_HOME flink
# Fri, 07 Sep 2018 02:49:38 GMT
WORKDIR /opt/flink
# Fri, 07 Sep 2018 02:49:38 GMT
ENV FLINK_URL_FILE_PATH=flink/flink-1.6.0/flink-1.6.0-bin-hadoop28-scala_2.11.tgz
# Fri, 07 Sep 2018 02:49:38 GMT
ENV FLINK_TGZ_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=flink/flink-1.6.0/flink-1.6.0-bin-hadoop28-scala_2.11.tgz FLINK_ASC_URL=https://www.apache.org/dist/flink/flink-1.6.0/flink-1.6.0-bin-hadoop28-scala_2.11.tgz.asc
# Fri, 07 Sep 2018 02:49:38 GMT
COPY file:d9b980b40ddcfab2700a72e4088616452368e14c4f8fbee56f3258ac7f5dd913 in /KEYS 
# Fri, 07 Sep 2018 02:50:44 GMT
RUN set -ex;   apk add --no-cache --virtual .build-deps     ca-certificates     gnupg     openssl     tar   ;     wget -nv -O flink.tgz "$FLINK_TGZ_URL";   wget -nv -O flink.tgz.asc "$FLINK_ASC_URL";     export GNUPGHOME="$(mktemp -d)";   gpg --import /KEYS;   gpg --batch --verify flink.tgz.asc flink.tgz;   rm -rf "$GNUPGHOME" flink.tgz.asc;     tar -xf flink.tgz --strip-components=1;   rm flink.tgz;     apk del .build-deps;     chown -R flink:flink .;
# Fri, 07 Sep 2018 02:50:44 GMT
COPY file:dd3a2212d5f0bbe552ac5e863e5fb1df12bcbb32cff887e6f4f3c81e2372b6c1 in / 
# Fri, 07 Sep 2018 02:50:44 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 07 Sep 2018 02:50:45 GMT
EXPOSE 6123/tcp 8081/tcp
# Fri, 07 Sep 2018 02:50:45 GMT
CMD ["help"]
```

-	Layers:
	-	`sha256:ef15772113129a5330876ce10683bbf6509a4c4c99b3a99894dcbc7560975052`  
		Last Modified: Fri, 06 Jul 2018 15:02:46 GMT  
		Size: 2.3 MB (2270920 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6df692b84cf35e6038d677f9ab7de2a3c671c57671043da1d20d99252e0d9c42`  
		Last Modified: Fri, 06 Jul 2018 15:02:43 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:edf08ad1a21ccfc6fc77d4ec7546706cea699ca0d86afc80106c79650cb258f0`  
		Last Modified: Wed, 05 Sep 2018 13:26:13 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4df637fbec1566b1f2e571b6ef8ecba3b64e8f5645e06ab48df84896d78e4261`  
		Last Modified: Wed, 05 Sep 2018 13:28:39 GMT  
		Size: 55.4 MB (55428205 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e21d5bbf8cfc615a08a9aa8094f08cdf3cee5526c24555f8ef3cf14b77aaa6f0`  
		Last Modified: Fri, 07 Sep 2018 02:55:11 GMT  
		Size: 1.3 MB (1265521 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14156c8d2c19946ea233a9cf826c617c09076a2ad92f4d6d461df92b97cb0873`  
		Last Modified: Fri, 07 Sep 2018 03:03:44 GMT  
		Size: 1.2 KB (1202 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6910d43b0be037e7c25090520e4c46e19c90be706b558c4e559a96d295c61a3a`  
		Last Modified: Fri, 07 Sep 2018 03:03:44 GMT  
		Size: 113.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cfa4366e56831ff18ba6a5ccd8078e356c87423bbeae962a529f4d76f38a3d45`  
		Last Modified: Fri, 07 Sep 2018 03:03:44 GMT  
		Size: 59.3 KB (59336 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b1c3938dbfd50272e473841faba4f1008ce9bf76009ce936b269187e9bedabc`  
		Last Modified: Fri, 07 Sep 2018 03:04:07 GMT  
		Size: 305.7 MB (305701019 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fbc48d46131db83b3b83b63b050ec4f56f6a5912dc1aff90018e48ed3e3ed644`  
		Last Modified: Fri, 07 Sep 2018 03:03:44 GMT  
		Size: 1.1 KB (1115 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `flink:hadoop28-alpine` - linux; ppc64le

```console
$ docker pull flink@sha256:845284ce1b8563126ce2e8930f44b77ec2dd2c360d4905ec27f261774e566e70
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **363.1 MB (363107089 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:77d708893935c65d99d846afbd4a260c796e0a846e475569f1c869e788540d9f`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["help"]`

```dockerfile
# Fri, 06 Jul 2018 08:18:09 GMT
ADD file:4ff20d593b16518d45b1b1d6efdab141199316dba7a53ce7459249f5de690dfd in / 
# Fri, 06 Jul 2018 08:18:10 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 06 Jul 2018 08:18:11 GMT
CMD ["/bin/sh"]
# Wed, 11 Jul 2018 09:30:08 GMT
ENV LANG=C.UTF-8
# Wed, 11 Jul 2018 09:30:19 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 11 Jul 2018 09:31:49 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Wed, 11 Jul 2018 09:32:00 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 11 Jul 2018 09:32:04 GMT
ENV JAVA_VERSION=8u171
# Wed, 11 Jul 2018 09:32:10 GMT
ENV JAVA_ALPINE_VERSION=8.171.11-r0
# Wed, 11 Jul 2018 09:32:45 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Fri, 20 Jul 2018 08:30:20 GMT
RUN apk add --no-cache bash libc6-compat snappy 'su-exec>=0.2'
# Tue, 14 Aug 2018 08:47:52 GMT
ENV FLINK_VERSION=1.6.0 HADOOP_SCALA_VARIANT=hadoop28-scala_2.11
# Tue, 14 Aug 2018 08:47:56 GMT
ENV FLINK_HOME=/opt/flink
# Tue, 14 Aug 2018 08:47:58 GMT
ENV PATH=/opt/flink/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 14 Aug 2018 08:48:04 GMT
RUN addgroup -S -g 9999 flink &&     adduser -D -S -H -u 9999 -G flink -h $FLINK_HOME flink
# Tue, 14 Aug 2018 08:48:05 GMT
WORKDIR /opt/flink
# Tue, 14 Aug 2018 08:48:07 GMT
ENV FLINK_URL_FILE_PATH=flink/flink-1.6.0/flink-1.6.0-bin-hadoop28-scala_2.11.tgz
# Tue, 14 Aug 2018 08:48:08 GMT
ENV FLINK_TGZ_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=flink/flink-1.6.0/flink-1.6.0-bin-hadoop28-scala_2.11.tgz FLINK_ASC_URL=https://www.apache.org/dist/flink/flink-1.6.0/flink-1.6.0-bin-hadoop28-scala_2.11.tgz.asc
# Tue, 14 Aug 2018 08:48:10 GMT
COPY file:d9b980b40ddcfab2700a72e4088616452368e14c4f8fbee56f3258ac7f5dd913 in /KEYS 
# Tue, 14 Aug 2018 08:49:36 GMT
RUN set -ex;   apk add --no-cache --virtual .build-deps     ca-certificates     gnupg     openssl     tar   ;     wget -nv -O flink.tgz "$FLINK_TGZ_URL";   wget -nv -O flink.tgz.asc "$FLINK_ASC_URL";     export GNUPGHOME="$(mktemp -d)";   gpg --import /KEYS;   gpg --batch --verify flink.tgz.asc flink.tgz;   rm -rf "$GNUPGHOME" flink.tgz.asc;     tar -xf flink.tgz --strip-components=1;   rm flink.tgz;     apk del .build-deps;     chown -R flink:flink .;
# Tue, 14 Aug 2018 08:49:39 GMT
COPY file:dd3a2212d5f0bbe552ac5e863e5fb1df12bcbb32cff887e6f4f3c81e2372b6c1 in / 
# Tue, 14 Aug 2018 08:49:40 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 14 Aug 2018 08:49:42 GMT
EXPOSE 6123/tcp 8081/tcp
# Tue, 14 Aug 2018 08:49:46 GMT
CMD ["help"]
```

-	Layers:
	-	`sha256:e642bcb5b1890a07dd2fc8be2bc35edf5e2b651d4993e71caef03b4b43ace970`  
		Last Modified: Fri, 06 Jul 2018 08:18:44 GMT  
		Size: 2.2 MB (2194861 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e09410b1fce4c4630b3bc57c6ee158ee9821ec415d0acaa1607b9e0bcf76d91`  
		Last Modified: Fri, 06 Jul 2018 08:18:43 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20211aade657f59a9c4f2a84c24b7c3c88fa58b2decb513c620ef1e6e74029f5`  
		Last Modified: Wed, 11 Jul 2018 09:54:28 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f943215fedd42494dbbd24b66b531dc1f19573de24e5a9ad381289d70355ba41`  
		Last Modified: Wed, 11 Jul 2018 09:56:59 GMT  
		Size: 53.9 MB (53916968 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:678b79bb7e1bdb83e7adc46b36d388a35928c0f39c41ba5feadaa2478cdc49a0`  
		Last Modified: Fri, 20 Jul 2018 09:20:40 GMT  
		Size: 1.2 MB (1235326 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:249ac2d864934260a4421c27077005c5502def90e2950783719da4c7943f8a7b`  
		Last Modified: Tue, 14 Aug 2018 09:13:02 GMT  
		Size: 1.2 KB (1207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b20cdcf2ad98f26c478352f69289dc6c9b077f263cde95a180332918230ee39`  
		Last Modified: Tue, 14 Aug 2018 09:13:03 GMT  
		Size: 145.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d0158423ae805f83ac181620c8156332d47a57487b34b1b4cd6cf8d77156cab`  
		Last Modified: Tue, 14 Aug 2018 09:13:03 GMT  
		Size: 59.3 KB (59337 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f0d5227ae3c523bbd7c83857b6b6ffe83cc3254ecdef5f3ddfe096a80b46d8e`  
		Last Modified: Tue, 14 Aug 2018 09:13:39 GMT  
		Size: 305.7 MB (305697713 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0cedd2b7f863867d867e467a6f90e2bfadc3365a7f808e87d9d38efc8c8337a1`  
		Last Modified: Tue, 14 Aug 2018 09:13:03 GMT  
		Size: 1.1 KB (1117 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `flink:hadoop28-alpine` - linux; s390x

```console
$ docker pull flink@sha256:a972c30927f0e5d9b38e56d1900e063d32087b4da1135b2540b0cbfd3654e6f9
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **362.9 MB (362874332 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fe5d5d221ab6211621af24291ec3d261af7aa908115b44bb6dd6e44871107dfc`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["help"]`

```dockerfile
# Fri, 06 Jul 2018 11:41:42 GMT
ADD file:376dd7fc34ad39570d2e20f3704305e788ae613c589445b3e8fb880147c3eb59 in / 
# Fri, 06 Jul 2018 11:41:43 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 06 Jul 2018 11:41:43 GMT
CMD ["/bin/sh"]
# Wed, 11 Jul 2018 11:48:07 GMT
ENV LANG=C.UTF-8
# Wed, 11 Jul 2018 11:48:08 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 11 Jul 2018 11:48:24 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Wed, 11 Jul 2018 11:48:25 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 11 Jul 2018 11:48:25 GMT
ENV JAVA_VERSION=8u171
# Wed, 11 Jul 2018 11:48:25 GMT
ENV JAVA_ALPINE_VERSION=8.171.11-r0
# Wed, 11 Jul 2018 11:48:27 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Fri, 20 Jul 2018 11:42:40 GMT
RUN apk add --no-cache bash libc6-compat snappy 'su-exec>=0.2'
# Tue, 14 Aug 2018 11:50:49 GMT
ENV FLINK_VERSION=1.6.0 HADOOP_SCALA_VARIANT=hadoop28-scala_2.11
# Tue, 14 Aug 2018 11:50:49 GMT
ENV FLINK_HOME=/opt/flink
# Tue, 14 Aug 2018 11:50:49 GMT
ENV PATH=/opt/flink/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 14 Aug 2018 11:50:51 GMT
RUN addgroup -S -g 9999 flink &&     adduser -D -S -H -u 9999 -G flink -h $FLINK_HOME flink
# Tue, 14 Aug 2018 11:50:51 GMT
WORKDIR /opt/flink
# Tue, 14 Aug 2018 11:50:51 GMT
ENV FLINK_URL_FILE_PATH=flink/flink-1.6.0/flink-1.6.0-bin-hadoop28-scala_2.11.tgz
# Tue, 14 Aug 2018 11:50:51 GMT
ENV FLINK_TGZ_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=flink/flink-1.6.0/flink-1.6.0-bin-hadoop28-scala_2.11.tgz FLINK_ASC_URL=https://www.apache.org/dist/flink/flink-1.6.0/flink-1.6.0-bin-hadoop28-scala_2.11.tgz.asc
# Tue, 14 Aug 2018 11:50:52 GMT
COPY file:d9b980b40ddcfab2700a72e4088616452368e14c4f8fbee56f3258ac7f5dd913 in /KEYS 
# Tue, 14 Aug 2018 11:52:40 GMT
RUN set -ex;   apk add --no-cache --virtual .build-deps     ca-certificates     gnupg     openssl     tar   ;     wget -nv -O flink.tgz "$FLINK_TGZ_URL";   wget -nv -O flink.tgz.asc "$FLINK_ASC_URL";     export GNUPGHOME="$(mktemp -d)";   gpg --import /KEYS;   gpg --batch --verify flink.tgz.asc flink.tgz;   rm -rf "$GNUPGHOME" flink.tgz.asc;     tar -xf flink.tgz --strip-components=1;   rm flink.tgz;     apk del .build-deps;     chown -R flink:flink .;
# Tue, 14 Aug 2018 11:52:40 GMT
COPY file:dd3a2212d5f0bbe552ac5e863e5fb1df12bcbb32cff887e6f4f3c81e2372b6c1 in / 
# Tue, 14 Aug 2018 11:52:40 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 14 Aug 2018 11:52:41 GMT
EXPOSE 6123/tcp 8081/tcp
# Tue, 14 Aug 2018 11:52:41 GMT
CMD ["help"]
```

-	Layers:
	-	`sha256:cdf21ace94188d512903eea53ea8559677e0e6ffd5d6a180a1d88c118abc96fc`  
		Last Modified: Fri, 06 Jul 2018 11:42:01 GMT  
		Size: 2.3 MB (2307471 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea178433f2f09080fbbf77f09da1b16d588b7ced380d495a2f2ad00d28468338`  
		Last Modified: Fri, 06 Jul 2018 11:42:00 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b948ae8f2138a45776e1be04e263eed4e16432ba2b82c7c0e4a71afc6f9c878c`  
		Last Modified: Wed, 11 Jul 2018 11:50:13 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc9396fcd85e93dd30a4c0955f72660d20054ddf603de33f3cb4140f52552ce7`  
		Last Modified: Wed, 11 Jul 2018 11:51:10 GMT  
		Size: 53.6 MB (53581351 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77bcd1a1ee9eee6fef7b1b2c8a7d52a8daaeb7507302839e36769a790bff5483`  
		Last Modified: Fri, 20 Jul 2018 11:48:19 GMT  
		Size: 1.3 MB (1265579 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a4f9aa193f2613018910f96a0e92194b96fa86ea3fa31b6ef4ba2b701f07314`  
		Last Modified: Tue, 14 Aug 2018 11:59:21 GMT  
		Size: 1.2 KB (1207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:041a263b57810ac598f848fbc5325d8c149aece79081a6e612b7d4f9ce92f31e`  
		Last Modified: Tue, 14 Aug 2018 11:59:21 GMT  
		Size: 114.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce437ca4715d53cba706feca987e2fccebaa5d8cc3f5ae2bddd027dc4b65e35f`  
		Last Modified: Tue, 14 Aug 2018 11:59:21 GMT  
		Size: 59.3 KB (59337 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f7e1437cd2c27f1d0c65d6b5627d33fd11b48e09d722ca14e2a3f3ed54eb6d2`  
		Last Modified: Tue, 14 Aug 2018 11:59:46 GMT  
		Size: 305.7 MB (305657741 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7bcec00f05f686d2226065d58c1acf00b65bb5cb43eacc6330647b4379c2c881`  
		Last Modified: Tue, 14 Aug 2018 11:59:21 GMT  
		Size: 1.1 KB (1117 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
