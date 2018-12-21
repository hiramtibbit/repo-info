## `flink:scala_2.11-alpine`

```console
$ docker pull flink@sha256:793fe24268e6d0f039afbcae6025df3bcf062f61771000a446716eb40081b4db
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `flink:scala_2.11-alpine` - linux; amd64

```console
$ docker pull flink@sha256:003c983ce996d92662baa3ddbab703878ba2f601739e125b2114dc4a60a46a62
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **309.8 MB (309842234 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4d661bb853e360fc2b662b71bc0e535cd8398d4ac6e019088e92e91771b342f6`
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
# Fri, 21 Dec 2018 05:23:13 GMT
ENV FLINK_VERSION=1.7.0 HADOOP_SCALA_VARIANT=scala_2.11
# Fri, 21 Dec 2018 05:23:13 GMT
ENV FLINK_HOME=/opt/flink
# Fri, 21 Dec 2018 05:23:13 GMT
ENV PATH=/opt/flink/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Fri, 21 Dec 2018 05:23:14 GMT
RUN addgroup -S -g 9999 flink &&     adduser -D -S -H -u 9999 -G flink -h $FLINK_HOME flink
# Fri, 21 Dec 2018 05:23:14 GMT
WORKDIR /opt/flink
# Fri, 21 Dec 2018 05:23:14 GMT
ENV FLINK_URL_FILE_PATH=flink/flink-1.7.0/flink-1.7.0-bin-scala_2.11.tgz
# Fri, 21 Dec 2018 05:23:14 GMT
ENV FLINK_TGZ_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=flink/flink-1.7.0/flink-1.7.0-bin-scala_2.11.tgz FLINK_ASC_URL=https://www.apache.org/dist/flink/flink-1.7.0/flink-1.7.0-bin-scala_2.11.tgz.asc
# Fri, 21 Dec 2018 05:23:14 GMT
COPY file:15546826afab2956317f0af1256cbe1a9d599e70f81fe94d5d72cc8a2be4cbb2 in /KEYS 
# Fri, 21 Dec 2018 05:23:37 GMT
RUN set -ex;   apk add --no-cache --virtual .build-deps     ca-certificates     gnupg     openssl     tar   ;     wget -nv -O flink.tgz "$FLINK_TGZ_URL";   wget -nv -O flink.tgz.asc "$FLINK_ASC_URL";     export GNUPGHOME="$(mktemp -d)";   gpg --batch --import /KEYS;   gpg --batch --verify flink.tgz.asc flink.tgz;   gpgconf --kill all;   rm -rf "$GNUPGHOME" flink.tgz.asc;     tar -xf flink.tgz --strip-components=1;   rm flink.tgz;     apk del .build-deps;     chown -R flink:flink .;
# Fri, 21 Dec 2018 05:23:37 GMT
COPY file:32c6488d6beeaf64fa93d8e2829a44e98f034c72595380c30670d97807b6f9b0 in / 
# Fri, 21 Dec 2018 05:23:37 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 21 Dec 2018 05:23:37 GMT
EXPOSE 6123 8081
# Fri, 21 Dec 2018 05:23:37 GMT
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
	-	`sha256:4b220e84b32d2c7d9410761381837e2995fd677a25cdad6134c92a264b649f6c`  
		Last Modified: Fri, 21 Dec 2018 05:30:31 GMT  
		Size: 1.2 KB (1206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:970e74310917b5c79097495112f02ffdae44367baca46a3382a12500a0b0c1b5`  
		Last Modified: Fri, 21 Dec 2018 05:30:31 GMT  
		Size: 114.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fbd4624ffa415088a861f1eea11cfc98e10abdf39c0c4f1c6e6feb2347de8f74`  
		Last Modified: Fri, 21 Dec 2018 05:30:31 GMT  
		Size: 59.3 KB (59336 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eacf22e6cedbcb9285f1c269f7415a1b3c9799842c998b78340bea686704eba4`  
		Last Modified: Fri, 21 Dec 2018 05:30:46 GMT  
		Size: 251.5 MB (251522811 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:543da3b6b6b54feb4bd46e0706a66948679653f67945dd0fe112f8403b14ec92`  
		Last Modified: Fri, 21 Dec 2018 05:30:31 GMT  
		Size: 1.1 KB (1099 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `flink:scala_2.11-alpine` - linux; arm variant v6

```console
$ docker pull flink@sha256:4332985d0ccaa6334671485893a66b8130c51a414d096d114fdf1f49325738c4
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **307.2 MB (307194828 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d95efbf73764887661010672fca996b2519a28667448af6c8bfef3cb88e7b9f9`
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
# Fri, 21 Dec 2018 11:06:23 GMT
ENV FLINK_VERSION=1.7.0 HADOOP_SCALA_VARIANT=scala_2.11
# Fri, 21 Dec 2018 11:06:24 GMT
ENV FLINK_HOME=/opt/flink
# Fri, 21 Dec 2018 11:06:24 GMT
ENV PATH=/opt/flink/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Fri, 21 Dec 2018 11:06:25 GMT
RUN addgroup -S -g 9999 flink &&     adduser -D -S -H -u 9999 -G flink -h $FLINK_HOME flink
# Fri, 21 Dec 2018 11:06:26 GMT
WORKDIR /opt/flink
# Fri, 21 Dec 2018 11:06:26 GMT
ENV FLINK_URL_FILE_PATH=flink/flink-1.7.0/flink-1.7.0-bin-scala_2.11.tgz
# Fri, 21 Dec 2018 11:06:27 GMT
ENV FLINK_TGZ_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=flink/flink-1.7.0/flink-1.7.0-bin-scala_2.11.tgz FLINK_ASC_URL=https://www.apache.org/dist/flink/flink-1.7.0/flink-1.7.0-bin-scala_2.11.tgz.asc
# Fri, 21 Dec 2018 11:06:27 GMT
COPY file:15546826afab2956317f0af1256cbe1a9d599e70f81fe94d5d72cc8a2be4cbb2 in /KEYS 
# Fri, 21 Dec 2018 11:06:49 GMT
RUN set -ex;   apk add --no-cache --virtual .build-deps     ca-certificates     gnupg     openssl     tar   ;     wget -nv -O flink.tgz "$FLINK_TGZ_URL";   wget -nv -O flink.tgz.asc "$FLINK_ASC_URL";     export GNUPGHOME="$(mktemp -d)";   gpg --batch --import /KEYS;   gpg --batch --verify flink.tgz.asc flink.tgz;   gpgconf --kill all;   rm -rf "$GNUPGHOME" flink.tgz.asc;     tar -xf flink.tgz --strip-components=1;   rm flink.tgz;     apk del .build-deps;     chown -R flink:flink .;
# Fri, 21 Dec 2018 11:06:50 GMT
COPY file:32c6488d6beeaf64fa93d8e2829a44e98f034c72595380c30670d97807b6f9b0 in / 
# Fri, 21 Dec 2018 11:06:51 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 21 Dec 2018 11:06:51 GMT
EXPOSE 6123 8081
# Fri, 21 Dec 2018 11:06:51 GMT
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
	-	`sha256:2a554ad2ef5d4512f653cd3c82fdf0638a7609351679157333172fc9211b1594`  
		Last Modified: Fri, 21 Dec 2018 11:18:19 GMT  
		Size: 1.2 KB (1208 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6ce0ddf7a2b6fbe4eb63a06051ea478c7a86f008a9b8d93f3d585f2071ce483`  
		Last Modified: Fri, 21 Dec 2018 11:18:19 GMT  
		Size: 145.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a68f385e83c9e17bbf3d8f761d8ea6220ccddab548baa848c815c85cf3064e7`  
		Last Modified: Fri, 21 Dec 2018 11:18:19 GMT  
		Size: 59.3 KB (59338 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2cb3f16e12da39d891c4f69e96dc649358fdf2c0e95eefd41f3a2f8d9ddbeeb`  
		Last Modified: Fri, 21 Dec 2018 11:18:55 GMT  
		Size: 251.5 MB (251522721 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d850ca5268b35c1c8c9c10b016f4709bddfa486db71b164dbd955ce8f01c0c08`  
		Last Modified: Fri, 21 Dec 2018 11:18:19 GMT  
		Size: 1.1 KB (1101 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `flink:scala_2.11-alpine` - linux; arm64 variant v8

```console
$ docker pull flink@sha256:bf1e1f0bde0293b87c81cd84c5d3023a2851185e5ded6c0b0c91344536e6ca46
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **308.2 MB (308191550 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f29898a13cad2e83f1ad58266b6af63a23529c20b8208cd963b775a818f952f4`
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
# Fri, 21 Dec 2018 17:03:36 GMT
ENV FLINK_VERSION=1.7.0 HADOOP_SCALA_VARIANT=scala_2.11
# Fri, 21 Dec 2018 17:03:37 GMT
ENV FLINK_HOME=/opt/flink
# Fri, 21 Dec 2018 17:03:38 GMT
ENV PATH=/opt/flink/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Fri, 21 Dec 2018 17:03:40 GMT
RUN addgroup -S -g 9999 flink &&     adduser -D -S -H -u 9999 -G flink -h $FLINK_HOME flink
# Fri, 21 Dec 2018 17:03:40 GMT
WORKDIR /opt/flink
# Fri, 21 Dec 2018 17:03:41 GMT
ENV FLINK_URL_FILE_PATH=flink/flink-1.7.0/flink-1.7.0-bin-scala_2.11.tgz
# Fri, 21 Dec 2018 17:03:41 GMT
ENV FLINK_TGZ_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=flink/flink-1.7.0/flink-1.7.0-bin-scala_2.11.tgz FLINK_ASC_URL=https://www.apache.org/dist/flink/flink-1.7.0/flink-1.7.0-bin-scala_2.11.tgz.asc
# Fri, 21 Dec 2018 17:03:42 GMT
COPY file:15546826afab2956317f0af1256cbe1a9d599e70f81fe94d5d72cc8a2be4cbb2 in /KEYS 
# Fri, 21 Dec 2018 17:04:38 GMT
RUN set -ex;   apk add --no-cache --virtual .build-deps     ca-certificates     gnupg     openssl     tar   ;     wget -nv -O flink.tgz "$FLINK_TGZ_URL";   wget -nv -O flink.tgz.asc "$FLINK_ASC_URL";     export GNUPGHOME="$(mktemp -d)";   gpg --batch --import /KEYS;   gpg --batch --verify flink.tgz.asc flink.tgz;   gpgconf --kill all;   rm -rf "$GNUPGHOME" flink.tgz.asc;     tar -xf flink.tgz --strip-components=1;   rm flink.tgz;     apk del .build-deps;     chown -R flink:flink .;
# Fri, 21 Dec 2018 17:04:40 GMT
COPY file:32c6488d6beeaf64fa93d8e2829a44e98f034c72595380c30670d97807b6f9b0 in / 
# Fri, 21 Dec 2018 17:04:41 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 21 Dec 2018 17:04:41 GMT
EXPOSE 6123 8081
# Fri, 21 Dec 2018 17:04:42 GMT
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
	-	`sha256:0b5c36fab934dbf31d999f5cd5f23f1223a4eddfe1c01ff8fc8e0b190de3c9ea`  
		Last Modified: Fri, 21 Dec 2018 17:21:57 GMT  
		Size: 1.2 KB (1208 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59004b32931bdb84a1db5d82614644debe736dc2deb39247ddc8bd9286b6b0bf`  
		Last Modified: Fri, 21 Dec 2018 17:21:56 GMT  
		Size: 114.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:607400447e7dd47cfd5839ef29a09b0b99f0c7da522fb53ec209f8d609090099`  
		Last Modified: Fri, 21 Dec 2018 17:21:57 GMT  
		Size: 59.3 KB (59338 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46ec760f8cbda0b776f464f2da3087fb2930fe3f0cb2923136b4e30e6af63748`  
		Last Modified: Fri, 21 Dec 2018 17:22:33 GMT  
		Size: 251.5 MB (251522004 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb905514541f97be490ba5710cd9564169d409575808784301e1b133fc332968`  
		Last Modified: Fri, 21 Dec 2018 17:21:57 GMT  
		Size: 1.1 KB (1101 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `flink:scala_2.11-alpine` - linux; 386

```console
$ docker pull flink@sha256:f9e8726258c4fce32575fc85da063c7f50a6d4c1347d988c619a1e923f6186f5
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **310.6 MB (310580271 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bf9fcbc5d919f7d3a17855d48eb30a2eaa4db0d3df7bf7f50ca93d6161cd80c5`
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
# Tue, 04 Dec 2018 12:42:15 GMT
ENV FLINK_VERSION=1.7.0 HADOOP_SCALA_VARIANT=scala_2.11
# Tue, 04 Dec 2018 12:42:15 GMT
ENV FLINK_HOME=/opt/flink
# Tue, 04 Dec 2018 12:42:16 GMT
ENV PATH=/opt/flink/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 04 Dec 2018 12:42:16 GMT
RUN addgroup -S -g 9999 flink &&     adduser -D -S -H -u 9999 -G flink -h $FLINK_HOME flink
# Tue, 04 Dec 2018 12:42:17 GMT
WORKDIR /opt/flink
# Tue, 04 Dec 2018 12:42:17 GMT
ENV FLINK_URL_FILE_PATH=flink/flink-1.7.0/flink-1.7.0-bin-scala_2.11.tgz
# Tue, 04 Dec 2018 12:42:17 GMT
ENV FLINK_TGZ_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=flink/flink-1.7.0/flink-1.7.0-bin-scala_2.11.tgz FLINK_ASC_URL=https://www.apache.org/dist/flink/flink-1.7.0/flink-1.7.0-bin-scala_2.11.tgz.asc
# Tue, 04 Dec 2018 12:42:17 GMT
COPY file:d9b980b40ddcfab2700a72e4088616452368e14c4f8fbee56f3258ac7f5dd913 in /KEYS 
# Tue, 04 Dec 2018 12:42:34 GMT
RUN set -ex;   apk add --no-cache --virtual .build-deps     ca-certificates     gnupg     openssl     tar   ;     wget -nv -O flink.tgz "$FLINK_TGZ_URL";   wget -nv -O flink.tgz.asc "$FLINK_ASC_URL";     export GNUPGHOME="$(mktemp -d)";   gpg --batch --import /KEYS;   gpg --batch --verify flink.tgz.asc flink.tgz;   gpgconf --kill all;   rm -rf "$GNUPGHOME" flink.tgz.asc;     tar -xf flink.tgz --strip-components=1;   rm flink.tgz;     apk del .build-deps;     chown -R flink:flink .;
# Tue, 04 Dec 2018 12:42:35 GMT
COPY file:15d049520a883d1b2d6ad6d561d06e3024278246670c49143dfdd98a0057a86a in / 
# Tue, 04 Dec 2018 12:42:35 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 04 Dec 2018 12:42:35 GMT
EXPOSE 6123/tcp 8081/tcp
# Tue, 04 Dec 2018 12:42:35 GMT
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
	-	`sha256:a5f724d2a716abb26fa2ff421d1d704e7fc758461a799dafdf8a5329588ce879`  
		Last Modified: Tue, 04 Dec 2018 13:17:46 GMT  
		Size: 1.2 KB (1207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:840bb8e51bf3ec3b49439ce54f7d255c9d6a96eb019721712834e8711ce28b9e`  
		Last Modified: Tue, 04 Dec 2018 13:17:46 GMT  
		Size: 113.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d37b11737bf2e971056a5a6c603f461a365f4a4fe6e75a302fb78cb113c8815`  
		Last Modified: Tue, 04 Dec 2018 13:17:46 GMT  
		Size: 59.3 KB (59338 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2da3f43d6baee240644d7116f3222e649c8a5cc23c7397553d4e90a453f100af`  
		Last Modified: Tue, 04 Dec 2018 13:18:08 GMT  
		Size: 251.5 MB (251522134 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0f201e33d7176353d77829c826e862b60122e182971a42129fe7c930ca653e0`  
		Last Modified: Tue, 04 Dec 2018 13:17:46 GMT  
		Size: 1.1 KB (1101 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `flink:scala_2.11-alpine` - linux; ppc64le

```console
$ docker pull flink@sha256:baf8cf5aaaa164517771a76d16be6f169f815cfabb90f8c6389d78713bfaa5fa
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **308.9 MB (308948312 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7909383f135a3711df65a0f6c619e6e8fa01ef8f1a0ced170093f436e735f657`
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
# Fri, 21 Dec 2018 13:43:21 GMT
ENV FLINK_VERSION=1.7.0 HADOOP_SCALA_VARIANT=scala_2.11
# Fri, 21 Dec 2018 13:43:23 GMT
ENV FLINK_HOME=/opt/flink
# Fri, 21 Dec 2018 13:43:26 GMT
ENV PATH=/opt/flink/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Fri, 21 Dec 2018 13:43:33 GMT
RUN addgroup -S -g 9999 flink &&     adduser -D -S -H -u 9999 -G flink -h $FLINK_HOME flink
# Fri, 21 Dec 2018 13:43:36 GMT
WORKDIR /opt/flink
# Fri, 21 Dec 2018 13:43:42 GMT
ENV FLINK_URL_FILE_PATH=flink/flink-1.7.0/flink-1.7.0-bin-scala_2.11.tgz
# Fri, 21 Dec 2018 13:43:45 GMT
ENV FLINK_TGZ_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=flink/flink-1.7.0/flink-1.7.0-bin-scala_2.11.tgz FLINK_ASC_URL=https://www.apache.org/dist/flink/flink-1.7.0/flink-1.7.0-bin-scala_2.11.tgz.asc
# Fri, 21 Dec 2018 13:43:48 GMT
COPY file:15546826afab2956317f0af1256cbe1a9d599e70f81fe94d5d72cc8a2be4cbb2 in /KEYS 
# Fri, 21 Dec 2018 13:44:24 GMT
RUN set -ex;   apk add --no-cache --virtual .build-deps     ca-certificates     gnupg     openssl     tar   ;     wget -nv -O flink.tgz "$FLINK_TGZ_URL";   wget -nv -O flink.tgz.asc "$FLINK_ASC_URL";     export GNUPGHOME="$(mktemp -d)";   gpg --batch --import /KEYS;   gpg --batch --verify flink.tgz.asc flink.tgz;   gpgconf --kill all;   rm -rf "$GNUPGHOME" flink.tgz.asc;     tar -xf flink.tgz --strip-components=1;   rm flink.tgz;     apk del .build-deps;     chown -R flink:flink .;
# Fri, 21 Dec 2018 13:44:27 GMT
COPY file:32c6488d6beeaf64fa93d8e2829a44e98f034c72595380c30670d97807b6f9b0 in / 
# Fri, 21 Dec 2018 13:44:28 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 21 Dec 2018 13:44:31 GMT
EXPOSE 6123 8081
# Fri, 21 Dec 2018 13:44:33 GMT
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
	-	`sha256:948432d1d28a72dc5575db75a28088ab37dc5cf9aca6d9747721b03d7f97b043`  
		Last Modified: Fri, 21 Dec 2018 14:01:19 GMT  
		Size: 1.2 KB (1209 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b03b431eb78284d697a16da9f7daa97935adac663c1dbe97b4698de7cca8aec6`  
		Last Modified: Fri, 21 Dec 2018 14:01:24 GMT  
		Size: 145.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:486c5b5bcb64b4f1f116b155043e0b74dadf1937ad326be94c4797fab59aa7c4`  
		Last Modified: Fri, 21 Dec 2018 14:01:20 GMT  
		Size: 59.3 KB (59338 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f122a3d185005ea0f92d855c76f19977f1369f8cc44e2864697b0ada824b44d9`  
		Last Modified: Fri, 21 Dec 2018 14:01:46 GMT  
		Size: 251.5 MB (251522817 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70fa2fb8b2e9372dc41a3e2fc9c78f8ef2d29044285ade41f605a61cd05aee52`  
		Last Modified: Fri, 21 Dec 2018 14:01:19 GMT  
		Size: 1.1 KB (1101 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `flink:scala_2.11-alpine` - linux; s390x

```console
$ docker pull flink@sha256:1f56845812fed0aa4237c91db8969a08e9725f50fb97a3baee6f75b4962f5cbb
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **308.8 MB (308761394 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7e9fe25ac8c56fdd8c95a2e35719eac20f23efe979801e8cde2ad491ad791b9f`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["help"]`

```dockerfile
# Fri, 21 Dec 2018 12:42:37 GMT
ADD file:1a22c7b9e0997dd22f616aaab8281f257d34f6f684cf60e256faed91dd22b7a5 in / 
# Fri, 21 Dec 2018 12:42:37 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Fri, 21 Dec 2018 12:42:38 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 13:28:45 GMT
ENV LANG=C.UTF-8
# Fri, 21 Dec 2018 13:28:47 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 21 Dec 2018 13:29:09 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Fri, 21 Dec 2018 13:29:09 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Fri, 21 Dec 2018 13:29:09 GMT
ENV JAVA_VERSION=8u181
# Fri, 21 Dec 2018 13:29:09 GMT
ENV JAVA_ALPINE_VERSION=8.181.13-r0
# Fri, 21 Dec 2018 13:29:12 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Fri, 21 Dec 2018 14:39:14 GMT
RUN apk add --no-cache bash libc6-compat snappy 'su-exec>=0.2'
# Fri, 21 Dec 2018 14:54:14 GMT
ENV FLINK_VERSION=1.7.0 HADOOP_SCALA_VARIANT=scala_2.11
# Fri, 21 Dec 2018 14:54:14 GMT
ENV FLINK_HOME=/opt/flink
# Fri, 21 Dec 2018 14:54:14 GMT
ENV PATH=/opt/flink/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Fri, 21 Dec 2018 14:54:15 GMT
RUN addgroup -S -g 9999 flink &&     adduser -D -S -H -u 9999 -G flink -h $FLINK_HOME flink
# Fri, 21 Dec 2018 14:54:15 GMT
WORKDIR /opt/flink
# Fri, 21 Dec 2018 14:54:15 GMT
ENV FLINK_URL_FILE_PATH=flink/flink-1.7.0/flink-1.7.0-bin-scala_2.11.tgz
# Fri, 21 Dec 2018 14:54:15 GMT
ENV FLINK_TGZ_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=flink/flink-1.7.0/flink-1.7.0-bin-scala_2.11.tgz FLINK_ASC_URL=https://www.apache.org/dist/flink/flink-1.7.0/flink-1.7.0-bin-scala_2.11.tgz.asc
# Fri, 21 Dec 2018 14:54:16 GMT
COPY file:15546826afab2956317f0af1256cbe1a9d599e70f81fe94d5d72cc8a2be4cbb2 in /KEYS 
# Fri, 21 Dec 2018 14:54:28 GMT
RUN set -ex;   apk add --no-cache --virtual .build-deps     ca-certificates     gnupg     openssl     tar   ;     wget -nv -O flink.tgz "$FLINK_TGZ_URL";   wget -nv -O flink.tgz.asc "$FLINK_ASC_URL";     export GNUPGHOME="$(mktemp -d)";   gpg --batch --import /KEYS;   gpg --batch --verify flink.tgz.asc flink.tgz;   gpgconf --kill all;   rm -rf "$GNUPGHOME" flink.tgz.asc;     tar -xf flink.tgz --strip-components=1;   rm flink.tgz;     apk del .build-deps;     chown -R flink:flink .;
# Fri, 21 Dec 2018 14:54:28 GMT
COPY file:32c6488d6beeaf64fa93d8e2829a44e98f034c72595380c30670d97807b6f9b0 in / 
# Fri, 21 Dec 2018 14:54:28 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 21 Dec 2018 14:54:29 GMT
EXPOSE 6123 8081
# Fri, 21 Dec 2018 14:54:29 GMT
CMD ["help"]
```

-	Layers:
	-	`sha256:15104e3bedebb091b5b7a84edf7fdd60a8c1564c514db2cd2280365c6545b489`  
		Last Modified: Fri, 21 Dec 2018 12:43:02 GMT  
		Size: 2.3 MB (2307849 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b6c2e18bbe3b8455119e6724bd63ad7bf07637d1ea3be59615766903e0bfb9a`  
		Last Modified: Fri, 21 Dec 2018 12:43:02 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:834a618d8a86ef384988744d20f6cca1936684bdbeb27cf0dd33b0c95965cfd9`  
		Last Modified: Fri, 21 Dec 2018 13:31:20 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e5edb63e870c2c6ae2ebb5debe04cf7a62d2dfb16960f77aa4f6ae1c5a2541a`  
		Last Modified: Fri, 21 Dec 2018 13:31:51 GMT  
		Size: 53.6 MB (53601544 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:832a323074285f6f0b7a0e493052a349fb447cb93319544b02a70b91c0c5391e`  
		Last Modified: Fri, 21 Dec 2018 14:55:18 GMT  
		Size: 1.3 MB (1267786 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c8e0254b534be6eba5bf068ce26761e25fb44fd3504417c633614e9ca7c0caf`  
		Last Modified: Fri, 21 Dec 2018 15:01:06 GMT  
		Size: 1.2 KB (1209 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f8e135b050a974c620588ecba993f280b9b5804793aa9fccb28bc382ffc7fe1`  
		Last Modified: Fri, 21 Dec 2018 15:01:05 GMT  
		Size: 114.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:705193e2c2258a0ebe2b8041088784cd8f53e7d94369c1efa7916ddb85ad9daf`  
		Last Modified: Fri, 21 Dec 2018 15:01:05 GMT  
		Size: 59.3 KB (59338 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ad631a2529988e4922f91189716287354172fd6d941538838b8099178ce0808`  
		Last Modified: Fri, 21 Dec 2018 15:01:23 GMT  
		Size: 251.5 MB (251522042 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62c510a9750a5f1b8e8cf2e943457e4315ca69ad451764b1a5a831dbd969dd6d`  
		Last Modified: Fri, 21 Dec 2018 15:01:06 GMT  
		Size: 1.1 KB (1100 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
