## `flink:scala_2.11-alpine`

```console
$ docker pull flink@sha256:e91724c870f6f9f91414440f19a0f472d2178cfec59589015ed1ceb0ece4c3ae
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8
	-	linux; ppc64le

### `flink:scala_2.11-alpine` - linux; amd64

```console
$ docker pull flink@sha256:06f8adba3ca97af18e7703a65cf83da5c41181fd0e5573a43c096bee1cd48125
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **317.4 MB (317402710 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4bdbb365e57a7f77e82edc3584ac7418d34966aa1c302885140bb5a44072179b`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["help"]`

```dockerfile
# Fri, 21 Dec 2018 00:21:29 GMT
ADD file:2ff00caea4e83dfade726ca47e3c795a1e9acb8ac24e392785c474ecf9a621f2 in / 
# Fri, 21 Dec 2018 00:21:30 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 00:40:53 GMT
ENV LANG=C.UTF-8
# Fri, 21 Dec 2018 00:40:57 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 21 Dec 2018 00:41:18 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Fri, 21 Dec 2018 00:41:18 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Fri, 21 Dec 2018 00:41:18 GMT
ENV JAVA_VERSION=8u181
# Fri, 21 Dec 2018 00:41:19 GMT
ENV JAVA_ALPINE_VERSION=8.181.13-r0
# Fri, 21 Dec 2018 00:41:23 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Fri, 21 Dec 2018 05:13:27 GMT
RUN apk add --no-cache bash libc6-compat snappy 'su-exec>=0.2'
# Tue, 01 Jan 2019 00:35:37 GMT
ENV FLINK_VERSION=1.7.1 HADOOP_SCALA_VARIANT=scala_2.11
# Tue, 01 Jan 2019 00:35:37 GMT
ENV FLINK_HOME=/opt/flink
# Tue, 01 Jan 2019 00:35:37 GMT
ENV PATH=/opt/flink/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 01 Jan 2019 00:35:38 GMT
RUN addgroup -S -g 9999 flink &&     adduser -D -S -H -u 9999 -G flink -h $FLINK_HOME flink
# Tue, 01 Jan 2019 00:35:38 GMT
WORKDIR /opt/flink
# Tue, 01 Jan 2019 00:35:38 GMT
ENV FLINK_URL_FILE_PATH=flink/flink-1.7.1/flink-1.7.1-bin-scala_2.11.tgz
# Tue, 01 Jan 2019 00:35:38 GMT
ENV FLINK_TGZ_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=flink/flink-1.7.1/flink-1.7.1-bin-scala_2.11.tgz FLINK_ASC_URL=https://www.apache.org/dist/flink/flink-1.7.1/flink-1.7.1-bin-scala_2.11.tgz.asc
# Tue, 01 Jan 2019 00:35:38 GMT
COPY file:48bb6014c3e97895005a1862074377ac24cf0d91f0034129ec7f3c4dd3e96a38 in /KEYS 
# Tue, 01 Jan 2019 00:35:52 GMT
RUN set -ex;   apk add --no-cache --virtual .build-deps     ca-certificates     gnupg     openssl     tar   ;     wget -nv -O flink.tgz "$FLINK_TGZ_URL";   wget -nv -O flink.tgz.asc "$FLINK_ASC_URL";     export GNUPGHOME="$(mktemp -d)";   gpg --batch --import /KEYS;   gpg --batch --verify flink.tgz.asc flink.tgz;   gpgconf --kill all;   rm -rf "$GNUPGHOME" flink.tgz.asc;     tar -xf flink.tgz --strip-components=1;   rm flink.tgz;     apk del .build-deps;     chown -R flink:flink .;
# Tue, 01 Jan 2019 00:35:52 GMT
COPY file:32c6488d6beeaf64fa93d8e2829a44e98f034c72595380c30670d97807b6f9b0 in / 
# Tue, 01 Jan 2019 00:35:52 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 01 Jan 2019 00:35:53 GMT
EXPOSE 6123 8081
# Tue, 01 Jan 2019 00:35:53 GMT
CMD ["help"]
```

-	Layers:
	-	`sha256:cd784148e3483c2c86c50a48e535302ab0288bebd587accf40b714fffd0646b3`  
		Last Modified: Fri, 21 Dec 2018 00:23:44 GMT  
		Size: 2.2 MB (2207025 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35920a071f912ae4c16897610e8e2d514efcfd0e14ec76c4c73bf9aa7c2c55ea`  
		Last Modified: Fri, 21 Dec 2018 00:44:42 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92e4d568ad31b18826f29fce2a8e1643f8237b9adfbbbe1bd8073c5edfcced3b`  
		Last Modified: Fri, 21 Dec 2018 00:45:09 GMT  
		Size: 54.8 MB (54829758 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:060476fae668b17db64319337b3af342950849576d21a099ab9ead308e38c631`  
		Last Modified: Fri, 21 Dec 2018 05:25:07 GMT  
		Size: 1.2 MB (1220648 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a915e182768694886a1831ac866143ff34818e799b5d2ac4b0422c566d07c921`  
		Last Modified: Tue, 01 Jan 2019 00:47:54 GMT  
		Size: 1.2 KB (1206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9064c23b7f3cf10d20dc2fe75bd0df39e36f3719c6025a34e5aa04e6ad83e7ca`  
		Last Modified: Tue, 01 Jan 2019 00:47:54 GMT  
		Size: 114.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77b48fdf7e6a2fa4d0ba8211d0d76d720127a332956110bdbb6e6956afdf0a7b`  
		Last Modified: Tue, 01 Jan 2019 00:47:54 GMT  
		Size: 61.6 KB (61620 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8194047e0e0b4e51b6e9f1dd1f2661d5c00ac650b56a48ea16bb521bcde51f3b`  
		Last Modified: Tue, 01 Jan 2019 00:48:09 GMT  
		Size: 259.1 MB (259081001 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d83d878ef47db66324fbb6e9f1eb13fb273f2c121f052b9fd2e86ead022c195`  
		Last Modified: Tue, 01 Jan 2019 00:47:54 GMT  
		Size: 1.1 KB (1101 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `flink:scala_2.11-alpine` - linux; arm variant v6

```console
$ docker pull flink@sha256:2d633f08265105413db7a124ce3ae3c8b3d283adb4267ace50137c5c40244b6f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **314.8 MB (314754986 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b42dd495bbffe430cf592e7747363705d8267d7aad8fc9c9bb36985bbddddb3b`
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
# Fri, 21 Dec 2018 09:54:27 GMT
ENV JAVA_VERSION=8u181
# Fri, 21 Dec 2018 09:54:27 GMT
ENV JAVA_ALPINE_VERSION=8.181.13-r0
# Fri, 21 Dec 2018 09:54:32 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Fri, 21 Dec 2018 10:51:56 GMT
RUN apk add --no-cache bash libc6-compat snappy 'su-exec>=0.2'
# Tue, 01 Jan 2019 09:05:31 GMT
ENV FLINK_VERSION=1.7.1 HADOOP_SCALA_VARIANT=scala_2.11
# Tue, 01 Jan 2019 09:05:32 GMT
ENV FLINK_HOME=/opt/flink
# Tue, 01 Jan 2019 09:05:32 GMT
ENV PATH=/opt/flink/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 01 Jan 2019 09:05:33 GMT
RUN addgroup -S -g 9999 flink &&     adduser -D -S -H -u 9999 -G flink -h $FLINK_HOME flink
# Tue, 01 Jan 2019 09:05:34 GMT
WORKDIR /opt/flink
# Tue, 01 Jan 2019 09:05:34 GMT
ENV FLINK_URL_FILE_PATH=flink/flink-1.7.1/flink-1.7.1-bin-scala_2.11.tgz
# Tue, 01 Jan 2019 09:05:34 GMT
ENV FLINK_TGZ_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=flink/flink-1.7.1/flink-1.7.1-bin-scala_2.11.tgz FLINK_ASC_URL=https://www.apache.org/dist/flink/flink-1.7.1/flink-1.7.1-bin-scala_2.11.tgz.asc
# Tue, 01 Jan 2019 09:05:35 GMT
COPY file:48bb6014c3e97895005a1862074377ac24cf0d91f0034129ec7f3c4dd3e96a38 in /KEYS 
# Tue, 01 Jan 2019 09:05:58 GMT
RUN set -ex;   apk add --no-cache --virtual .build-deps     ca-certificates     gnupg     openssl     tar   ;     wget -nv -O flink.tgz "$FLINK_TGZ_URL";   wget -nv -O flink.tgz.asc "$FLINK_ASC_URL";     export GNUPGHOME="$(mktemp -d)";   gpg --batch --import /KEYS;   gpg --batch --verify flink.tgz.asc flink.tgz;   gpgconf --kill all;   rm -rf "$GNUPGHOME" flink.tgz.asc;     tar -xf flink.tgz --strip-components=1;   rm flink.tgz;     apk del .build-deps;     chown -R flink:flink .;
# Tue, 01 Jan 2019 09:05:59 GMT
COPY file:32c6488d6beeaf64fa93d8e2829a44e98f034c72595380c30670d97807b6f9b0 in / 
# Tue, 01 Jan 2019 09:06:00 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 01 Jan 2019 09:06:00 GMT
EXPOSE 6123 8081
# Tue, 01 Jan 2019 09:06:00 GMT
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
	-	`sha256:b76a59078f796fad1ed4f70f0ac5ee828f05452c042c5a60640a4cab9a81a54f`  
		Last Modified: Fri, 21 Dec 2018 09:56:07 GMT  
		Size: 52.3 MB (52291552 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e03506172aa94698de951e30000ece1fee2c88e2492d0447da9337f86bd8b835`  
		Last Modified: Fri, 21 Dec 2018 11:08:09 GMT  
		Size: 1.2 MB (1172568 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c47d1ef83d7cebc258d3282d2887542064090df01b4fe1ab5ef09dc92718bf58`  
		Last Modified: Tue, 01 Jan 2019 09:18:05 GMT  
		Size: 1.2 KB (1208 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2b848984e609f68735e6a6c6149af3f49d418d9322827fcf13fdfbe7357f238`  
		Last Modified: Tue, 01 Jan 2019 09:18:05 GMT  
		Size: 145.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30b6ccea18223e09958767cc8671a70dd11e61313a5aa7a5b71eaa95c0236fd8`  
		Last Modified: Tue, 01 Jan 2019 09:18:05 GMT  
		Size: 61.6 KB (61621 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:136a7a6170f6486cd340694cc0d67109165dbe4fafe7ddf1c6838d58cfc6b1f1`  
		Last Modified: Tue, 01 Jan 2019 09:18:40 GMT  
		Size: 259.1 MB (259080595 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf438e76ca09f2339d0464e7174210af4a788599d98e49168057ae2116333cb9`  
		Last Modified: Tue, 01 Jan 2019 09:18:05 GMT  
		Size: 1.1 KB (1102 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `flink:scala_2.11-alpine` - linux; arm64 variant v8

```console
$ docker pull flink@sha256:38bc957fd3fae52bf33197fefee453e694fff8ad1e5e8e03559960be4a5c1ace
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **315.8 MB (315752188 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:74253d36d2badbc7575ae44f80ede620c613e2f7f6de808789a431a1a5063c2a`
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
# Fri, 21 Dec 2018 13:06:37 GMT
ENV JAVA_VERSION=8u181
# Fri, 21 Dec 2018 13:06:38 GMT
ENV JAVA_ALPINE_VERSION=8.181.13-r0
# Fri, 21 Dec 2018 13:06:50 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Fri, 21 Dec 2018 16:36:48 GMT
RUN apk add --no-cache bash libc6-compat snappy 'su-exec>=0.2'
# Tue, 01 Jan 2019 10:34:06 GMT
ENV FLINK_VERSION=1.7.1 HADOOP_SCALA_VARIANT=scala_2.11
# Tue, 01 Jan 2019 10:34:06 GMT
ENV FLINK_HOME=/opt/flink
# Tue, 01 Jan 2019 10:34:07 GMT
ENV PATH=/opt/flink/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 01 Jan 2019 10:34:09 GMT
RUN addgroup -S -g 9999 flink &&     adduser -D -S -H -u 9999 -G flink -h $FLINK_HOME flink
# Tue, 01 Jan 2019 10:34:09 GMT
WORKDIR /opt/flink
# Tue, 01 Jan 2019 10:34:10 GMT
ENV FLINK_URL_FILE_PATH=flink/flink-1.7.1/flink-1.7.1-bin-scala_2.11.tgz
# Tue, 01 Jan 2019 10:34:10 GMT
ENV FLINK_TGZ_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=flink/flink-1.7.1/flink-1.7.1-bin-scala_2.11.tgz FLINK_ASC_URL=https://www.apache.org/dist/flink/flink-1.7.1/flink-1.7.1-bin-scala_2.11.tgz.asc
# Tue, 01 Jan 2019 10:34:11 GMT
COPY file:48bb6014c3e97895005a1862074377ac24cf0d91f0034129ec7f3c4dd3e96a38 in /KEYS 
# Tue, 01 Jan 2019 10:35:02 GMT
RUN set -ex;   apk add --no-cache --virtual .build-deps     ca-certificates     gnupg     openssl     tar   ;     wget -nv -O flink.tgz "$FLINK_TGZ_URL";   wget -nv -O flink.tgz.asc "$FLINK_ASC_URL";     export GNUPGHOME="$(mktemp -d)";   gpg --batch --import /KEYS;   gpg --batch --verify flink.tgz.asc flink.tgz;   gpgconf --kill all;   rm -rf "$GNUPGHOME" flink.tgz.asc;     tar -xf flink.tgz --strip-components=1;   rm flink.tgz;     apk del .build-deps;     chown -R flink:flink .;
# Tue, 01 Jan 2019 10:35:03 GMT
COPY file:32c6488d6beeaf64fa93d8e2829a44e98f034c72595380c30670d97807b6f9b0 in / 
# Tue, 01 Jan 2019 10:35:03 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 01 Jan 2019 10:35:04 GMT
EXPOSE 6123 8081
# Tue, 01 Jan 2019 10:35:04 GMT
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
	-	`sha256:0ca65efb0684ca6d94b21ffe318a864419f84e648f059afac5439c1ca971f3ef`  
		Last Modified: Fri, 21 Dec 2018 13:10:23 GMT  
		Size: 53.3 MB (53345808 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6f53af2037194451cd4613c406a914985d665eaf972ff8a4d06cb83cca9d348`  
		Last Modified: Fri, 21 Dec 2018 17:08:51 GMT  
		Size: 1.2 MB (1161725 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06bab393b29a05eb85adf7858a6b178f1f08480c378a010d99107d00faa2e387`  
		Last Modified: Tue, 01 Jan 2019 11:19:50 GMT  
		Size: 1.2 KB (1208 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af1f2c834ba17c117a3d003cdbb58a029d2be1a43f23d7a05de0aea58e238443`  
		Last Modified: Tue, 01 Jan 2019 11:19:48 GMT  
		Size: 114.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52836a464bcad4d56460820104b7e9079c5819b96086e53b1a95d8179a341b80`  
		Last Modified: Tue, 01 Jan 2019 11:19:48 GMT  
		Size: 61.6 KB (61621 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad9c122cdbd4ab57deeeb723d7fdd07911d56064ca1b76d071044a12ff1b7d45`  
		Last Modified: Tue, 01 Jan 2019 11:20:31 GMT  
		Size: 259.1 MB (259080359 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:226489ae6eebed3c95bb8e9925c58865b00837304c93d6167eb16ef80ccaea21`  
		Last Modified: Tue, 01 Jan 2019 11:19:48 GMT  
		Size: 1.1 KB (1101 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `flink:scala_2.11-alpine` - linux; ppc64le

```console
$ docker pull flink@sha256:62566f9c7453a29ad80aa63320021e490560a8de3e2cbe848ff1f7b469c1e7d7
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **316.5 MB (316508819 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f55842b21a283536aa53a711ebc4d487e94d63191066a8e79ce87bae4a2240cb`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["help"]`

```dockerfile
# Fri, 21 Dec 2018 09:44:05 GMT
ADD file:81f8badc2215d9ccd8f5406b89b63bf0b407b3e877f6232bd11153780c551392 in / 
# Fri, 21 Dec 2018 09:44:06 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Fri, 21 Dec 2018 09:44:10 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 11:27:06 GMT
ENV LANG=C.UTF-8
# Fri, 21 Dec 2018 11:27:11 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 21 Dec 2018 11:27:47 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Fri, 21 Dec 2018 11:27:48 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Fri, 21 Dec 2018 11:27:50 GMT
ENV JAVA_VERSION=8u181
# Fri, 21 Dec 2018 11:27:51 GMT
ENV JAVA_ALPINE_VERSION=8.181.13-r0
# Fri, 21 Dec 2018 11:27:58 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Fri, 21 Dec 2018 12:58:59 GMT
RUN apk add --no-cache bash libc6-compat snappy 'su-exec>=0.2'
# Tue, 01 Jan 2019 10:33:55 GMT
ENV FLINK_VERSION=1.7.1 HADOOP_SCALA_VARIANT=scala_2.11
# Tue, 01 Jan 2019 10:33:59 GMT
ENV FLINK_HOME=/opt/flink
# Tue, 01 Jan 2019 10:34:01 GMT
ENV PATH=/opt/flink/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 01 Jan 2019 10:34:07 GMT
RUN addgroup -S -g 9999 flink &&     adduser -D -S -H -u 9999 -G flink -h $FLINK_HOME flink
# Tue, 01 Jan 2019 10:34:08 GMT
WORKDIR /opt/flink
# Tue, 01 Jan 2019 10:34:10 GMT
ENV FLINK_URL_FILE_PATH=flink/flink-1.7.1/flink-1.7.1-bin-scala_2.11.tgz
# Tue, 01 Jan 2019 10:34:13 GMT
ENV FLINK_TGZ_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=flink/flink-1.7.1/flink-1.7.1-bin-scala_2.11.tgz FLINK_ASC_URL=https://www.apache.org/dist/flink/flink-1.7.1/flink-1.7.1-bin-scala_2.11.tgz.asc
# Tue, 01 Jan 2019 10:34:14 GMT
COPY file:48bb6014c3e97895005a1862074377ac24cf0d91f0034129ec7f3c4dd3e96a38 in /KEYS 
# Tue, 01 Jan 2019 10:34:59 GMT
RUN set -ex;   apk add --no-cache --virtual .build-deps     ca-certificates     gnupg     openssl     tar   ;     wget -nv -O flink.tgz "$FLINK_TGZ_URL";   wget -nv -O flink.tgz.asc "$FLINK_ASC_URL";     export GNUPGHOME="$(mktemp -d)";   gpg --batch --import /KEYS;   gpg --batch --verify flink.tgz.asc flink.tgz;   gpgconf --kill all;   rm -rf "$GNUPGHOME" flink.tgz.asc;     tar -xf flink.tgz --strip-components=1;   rm flink.tgz;     apk del .build-deps;     chown -R flink:flink .;
# Tue, 01 Jan 2019 10:35:02 GMT
COPY file:32c6488d6beeaf64fa93d8e2829a44e98f034c72595380c30670d97807b6f9b0 in / 
# Tue, 01 Jan 2019 10:35:05 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 01 Jan 2019 10:35:08 GMT
EXPOSE 6123 8081
# Tue, 01 Jan 2019 10:35:10 GMT
CMD ["help"]
```

-	Layers:
	-	`sha256:5fac6f91a5114ca7e803950377d1db527386361cdf48b205eed63d8ab99820c3`  
		Last Modified: Fri, 21 Dec 2018 09:45:58 GMT  
		Size: 2.2 MB (2194772 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c21fc409a1bc2fd1e54e11e2bd2beb4251b1c6d49aee187e7d28df20b2004b1`  
		Last Modified: Fri, 21 Dec 2018 09:45:56 GMT  
		Size: 177.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0c68a7687c05687b556f4161aa0149bd285ea670773baee7d2eb53c9b5cb242`  
		Last Modified: Fri, 21 Dec 2018 11:30:53 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d221d8692ce08d3558649143be6b70220a650ba08abb73a3d6a8ffd22406b0b8`  
		Last Modified: Fri, 21 Dec 2018 11:31:34 GMT  
		Size: 53.9 MB (53931459 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc2c0fc36c1f8d57fc5dc8594060553d116d91d2c6099b4668a8b2a2211a11fb`  
		Last Modified: Fri, 21 Dec 2018 13:49:13 GMT  
		Size: 1.2 MB (1237057 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1331246bdd941ef7e2696efa62fd0e9e2d766071c0366f21454fe01d696ce04`  
		Last Modified: Tue, 01 Jan 2019 11:00:26 GMT  
		Size: 1.2 KB (1208 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:714f842d4e687e63f7fd5c2284248a8198d0c6a32ab7ed631607ddada0127dd4`  
		Last Modified: Tue, 01 Jan 2019 11:00:26 GMT  
		Size: 145.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ddd08f9523de40a3fbc30248ba6fdf2e127b0b9d95b9c15eb5a3c0ca59f4d94d`  
		Last Modified: Tue, 01 Jan 2019 11:00:26 GMT  
		Size: 61.6 KB (61621 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62d468514b8db28ff678f87b09a2878763148f9ed254b83d0b03894c7c0d5620`  
		Last Modified: Tue, 01 Jan 2019 11:00:49 GMT  
		Size: 259.1 MB (259081043 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd59ce4874714691d02f4ee4c5c52ddd43f0b614a3b6433b14c66f51bd198c34`  
		Last Modified: Tue, 01 Jan 2019 11:00:26 GMT  
		Size: 1.1 KB (1100 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
