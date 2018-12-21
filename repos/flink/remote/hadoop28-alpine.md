## `flink:hadoop28-alpine`

```console
$ docker pull flink@sha256:f458c1054345b4b36b65160d7ade03728efe43639211b7aa42cab6d345f9899c
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
$ docker pull flink@sha256:f37d9aa00104268fac748545f5e4b8ab8d0b8fe431a7ccaed601a6b9cb3866ff
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **337.6 MB (337569760 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2895c5aa3de7c143eacbb4a7a5bc6dcf5e662a80b42eb19d0e7ff773b4e9386a`
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
# Fri, 21 Dec 2018 05:22:49 GMT
ENV FLINK_VERSION=1.7.0 HADOOP_SCALA_VARIANT=hadoop28-scala_2.12
# Fri, 21 Dec 2018 05:22:50 GMT
ENV FLINK_HOME=/opt/flink
# Fri, 21 Dec 2018 05:22:50 GMT
ENV PATH=/opt/flink/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Fri, 21 Dec 2018 05:22:50 GMT
RUN addgroup -S -g 9999 flink &&     adduser -D -S -H -u 9999 -G flink -h $FLINK_HOME flink
# Fri, 21 Dec 2018 05:22:51 GMT
WORKDIR /opt/flink
# Fri, 21 Dec 2018 05:22:51 GMT
ENV FLINK_URL_FILE_PATH=flink/flink-1.7.0/flink-1.7.0-bin-hadoop28-scala_2.12.tgz
# Fri, 21 Dec 2018 05:22:51 GMT
ENV FLINK_TGZ_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=flink/flink-1.7.0/flink-1.7.0-bin-hadoop28-scala_2.12.tgz FLINK_ASC_URL=https://www.apache.org/dist/flink/flink-1.7.0/flink-1.7.0-bin-hadoop28-scala_2.12.tgz.asc
# Fri, 21 Dec 2018 05:22:51 GMT
COPY file:15546826afab2956317f0af1256cbe1a9d599e70f81fe94d5d72cc8a2be4cbb2 in /KEYS 
# Fri, 21 Dec 2018 05:23:08 GMT
RUN set -ex;   apk add --no-cache --virtual .build-deps     ca-certificates     gnupg     openssl     tar   ;     wget -nv -O flink.tgz "$FLINK_TGZ_URL";   wget -nv -O flink.tgz.asc "$FLINK_ASC_URL";     export GNUPGHOME="$(mktemp -d)";   gpg --batch --import /KEYS;   gpg --batch --verify flink.tgz.asc flink.tgz;   gpgconf --kill all;   rm -rf "$GNUPGHOME" flink.tgz.asc;     tar -xf flink.tgz --strip-components=1;   rm flink.tgz;     apk del .build-deps;     chown -R flink:flink .;
# Fri, 21 Dec 2018 05:23:09 GMT
COPY file:32c6488d6beeaf64fa93d8e2829a44e98f034c72595380c30670d97807b6f9b0 in / 
# Fri, 21 Dec 2018 05:23:09 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 21 Dec 2018 05:23:09 GMT
EXPOSE 6123 8081
# Fri, 21 Dec 2018 05:23:09 GMT
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
	-	`sha256:cebe542f73e0b478a5936c26ed79ba6848b9e89e25c93c41e8811cef75553533`  
		Last Modified: Fri, 21 Dec 2018 05:30:02 GMT  
		Size: 1.2 KB (1205 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf03c6e258ad5b24780d2721344ebd1e74867c7ad856a43ae7aecfcaf5f4b016`  
		Last Modified: Fri, 21 Dec 2018 05:30:02 GMT  
		Size: 114.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d969137dd6e11f61ac823d4763b34399b3c686b62dab7aaa26cfde840a9a6eb6`  
		Last Modified: Fri, 21 Dec 2018 05:30:03 GMT  
		Size: 59.3 KB (59338 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0e4fd34851b96599845cd809e823c1cb425f0bbfe5b812c85ae4f2da0fe8670`  
		Last Modified: Fri, 21 Dec 2018 05:30:22 GMT  
		Size: 279.3 MB (279250334 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18ec0a8381ea600ed4c2dc881c0b17d09aa5d49f385a633c7296696ff64078cc`  
		Last Modified: Fri, 21 Dec 2018 05:30:03 GMT  
		Size: 1.1 KB (1101 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `flink:hadoop28-alpine` - linux; arm variant v6

```console
$ docker pull flink@sha256:01396f81a89d33c203d990489c3f75b2f4daa17a21b7b6a165d62d5e450a9cfe
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **334.9 MB (334922136 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ce7534a2ac1be888947891eadab56ce9ba2b40d455eee73b58390c4c9557c0ef`
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
# Fri, 21 Dec 2018 11:04:39 GMT
ENV FLINK_VERSION=1.7.0 HADOOP_SCALA_VARIANT=hadoop28-scala_2.12
# Fri, 21 Dec 2018 11:04:40 GMT
ENV FLINK_HOME=/opt/flink
# Fri, 21 Dec 2018 11:04:40 GMT
ENV PATH=/opt/flink/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Fri, 21 Dec 2018 11:04:41 GMT
RUN addgroup -S -g 9999 flink &&     adduser -D -S -H -u 9999 -G flink -h $FLINK_HOME flink
# Fri, 21 Dec 2018 11:04:42 GMT
WORKDIR /opt/flink
# Fri, 21 Dec 2018 11:04:42 GMT
ENV FLINK_URL_FILE_PATH=flink/flink-1.7.0/flink-1.7.0-bin-hadoop28-scala_2.12.tgz
# Fri, 21 Dec 2018 11:04:43 GMT
ENV FLINK_TGZ_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=flink/flink-1.7.0/flink-1.7.0-bin-hadoop28-scala_2.12.tgz FLINK_ASC_URL=https://www.apache.org/dist/flink/flink-1.7.0/flink-1.7.0-bin-hadoop28-scala_2.12.tgz.asc
# Fri, 21 Dec 2018 11:04:43 GMT
COPY file:15546826afab2956317f0af1256cbe1a9d599e70f81fe94d5d72cc8a2be4cbb2 in /KEYS 
# Fri, 21 Dec 2018 11:06:05 GMT
RUN set -ex;   apk add --no-cache --virtual .build-deps     ca-certificates     gnupg     openssl     tar   ;     wget -nv -O flink.tgz "$FLINK_TGZ_URL";   wget -nv -O flink.tgz.asc "$FLINK_ASC_URL";     export GNUPGHOME="$(mktemp -d)";   gpg --batch --import /KEYS;   gpg --batch --verify flink.tgz.asc flink.tgz;   gpgconf --kill all;   rm -rf "$GNUPGHOME" flink.tgz.asc;     tar -xf flink.tgz --strip-components=1;   rm flink.tgz;     apk del .build-deps;     chown -R flink:flink .;
# Fri, 21 Dec 2018 11:06:06 GMT
COPY file:32c6488d6beeaf64fa93d8e2829a44e98f034c72595380c30670d97807b6f9b0 in / 
# Fri, 21 Dec 2018 11:06:06 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 21 Dec 2018 11:06:07 GMT
EXPOSE 6123 8081
# Fri, 21 Dec 2018 11:06:07 GMT
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
	-	`sha256:1d8c80ff1ebf80f2e8ceac54e50a9669894f8f096e2fbaa59a666697b3ffa296`  
		Last Modified: Fri, 21 Dec 2018 11:17:29 GMT  
		Size: 1.2 KB (1208 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a76b01352cc9a992a3113fa8ed3003188891fa70bbd2f766d870a87e6bfdc62`  
		Last Modified: Fri, 21 Dec 2018 11:17:29 GMT  
		Size: 145.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:618124f9338077774bbd52a7c76968a85eab158cb63258ff1be8b25d6d40a947`  
		Last Modified: Fri, 21 Dec 2018 11:17:29 GMT  
		Size: 59.3 KB (59338 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21b3bda3188bf27efd3d6579139d7e587970dc487bf0e75dc7964ea3b6ddcd5a`  
		Last Modified: Fri, 21 Dec 2018 11:18:08 GMT  
		Size: 279.3 MB (279250029 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af947bcc8e6f33fb03635ac839468e1e8905b06239e797e352c5bd35f965f705`  
		Last Modified: Fri, 21 Dec 2018 11:17:29 GMT  
		Size: 1.1 KB (1101 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `flink:hadoop28-alpine` - linux; arm64 variant v8

```console
$ docker pull flink@sha256:1fde3506975e24c0585050674048971dd2502e8ab6cea319536a5252666380e9
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **335.9 MB (335919012 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:105e33c1a29bc6a70a966ed5ad41b1fecf88afb2fce494c835b8e0bfee3656b4`
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
# Tue, 04 Dec 2018 10:40:03 GMT
ENV FLINK_VERSION=1.7.0 HADOOP_SCALA_VARIANT=hadoop28-scala_2.12
# Tue, 04 Dec 2018 10:40:03 GMT
ENV FLINK_HOME=/opt/flink
# Tue, 04 Dec 2018 10:40:04 GMT
ENV PATH=/opt/flink/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 04 Dec 2018 10:40:05 GMT
RUN addgroup -S -g 9999 flink &&     adduser -D -S -H -u 9999 -G flink -h $FLINK_HOME flink
# Tue, 04 Dec 2018 10:40:06 GMT
WORKDIR /opt/flink
# Tue, 04 Dec 2018 10:40:08 GMT
ENV FLINK_URL_FILE_PATH=flink/flink-1.7.0/flink-1.7.0-bin-hadoop28-scala_2.12.tgz
# Tue, 04 Dec 2018 10:40:09 GMT
ENV FLINK_TGZ_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=flink/flink-1.7.0/flink-1.7.0-bin-hadoop28-scala_2.12.tgz FLINK_ASC_URL=https://www.apache.org/dist/flink/flink-1.7.0/flink-1.7.0-bin-hadoop28-scala_2.12.tgz.asc
# Tue, 04 Dec 2018 10:40:09 GMT
COPY file:d9b980b40ddcfab2700a72e4088616452368e14c4f8fbee56f3258ac7f5dd913 in /KEYS 
# Tue, 04 Dec 2018 10:40:42 GMT
RUN set -ex;   apk add --no-cache --virtual .build-deps     ca-certificates     gnupg     openssl     tar   ;     wget -nv -O flink.tgz "$FLINK_TGZ_URL";   wget -nv -O flink.tgz.asc "$FLINK_ASC_URL";     export GNUPGHOME="$(mktemp -d)";   gpg --batch --import /KEYS;   gpg --batch --verify flink.tgz.asc flink.tgz;   gpgconf --kill all;   rm -rf "$GNUPGHOME" flink.tgz.asc;     tar -xf flink.tgz --strip-components=1;   rm flink.tgz;     apk del .build-deps;     chown -R flink:flink .;
# Tue, 04 Dec 2018 10:40:43 GMT
COPY file:15d049520a883d1b2d6ad6d561d06e3024278246670c49143dfdd98a0057a86a in / 
# Tue, 04 Dec 2018 10:40:44 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 04 Dec 2018 10:40:44 GMT
EXPOSE 6123/tcp 8081/tcp
# Tue, 04 Dec 2018 10:40:45 GMT
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
	-	`sha256:37b79b9d96bdac3f3a4cf99c7b6341b02003a907a50a6138668761709ce96631`  
		Last Modified: Tue, 04 Dec 2018 11:18:30 GMT  
		Size: 1.2 KB (1209 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ff019df6a6eefacdf461fdc115f1be4dd58a73255836dd6cc061724ed68481b`  
		Last Modified: Tue, 04 Dec 2018 11:18:30 GMT  
		Size: 114.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4cd36080ff57fa3bc187061748f069daac37f3d3d0c677664572d5db1157805`  
		Last Modified: Tue, 04 Dec 2018 11:18:30 GMT  
		Size: 59.3 KB (59338 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d68efd3d176978b525d2bbf847316924724e0056f7b1a0a5fabe3a47cc64b595`  
		Last Modified: Tue, 04 Dec 2018 11:19:06 GMT  
		Size: 279.2 MB (279249691 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:565bef4822f75afd3726677d3c6c2fdc852a8c84765fbb64e2261b734db62948`  
		Last Modified: Tue, 04 Dec 2018 11:18:30 GMT  
		Size: 1.1 KB (1100 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `flink:hadoop28-alpine` - linux; 386

```console
$ docker pull flink@sha256:6a7924b1b26fa817ff5cc3c0c20da59c0a6662cfabc14fbfad5ec5c89013db33
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **338.3 MB (338307689 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:87df1e62db260a751e36351a3da6bb76275cb379f28d7368745b22c82c1681b8`
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
# Tue, 04 Dec 2018 12:41:37 GMT
ENV FLINK_VERSION=1.7.0 HADOOP_SCALA_VARIANT=hadoop28-scala_2.12
# Tue, 04 Dec 2018 12:41:38 GMT
ENV FLINK_HOME=/opt/flink
# Tue, 04 Dec 2018 12:41:38 GMT
ENV PATH=/opt/flink/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 04 Dec 2018 12:41:38 GMT
RUN addgroup -S -g 9999 flink &&     adduser -D -S -H -u 9999 -G flink -h $FLINK_HOME flink
# Tue, 04 Dec 2018 12:41:39 GMT
WORKDIR /opt/flink
# Tue, 04 Dec 2018 12:41:39 GMT
ENV FLINK_URL_FILE_PATH=flink/flink-1.7.0/flink-1.7.0-bin-hadoop28-scala_2.12.tgz
# Tue, 04 Dec 2018 12:41:39 GMT
ENV FLINK_TGZ_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=flink/flink-1.7.0/flink-1.7.0-bin-hadoop28-scala_2.12.tgz FLINK_ASC_URL=https://www.apache.org/dist/flink/flink-1.7.0/flink-1.7.0-bin-hadoop28-scala_2.12.tgz.asc
# Tue, 04 Dec 2018 12:41:39 GMT
COPY file:d9b980b40ddcfab2700a72e4088616452368e14c4f8fbee56f3258ac7f5dd913 in /KEYS 
# Tue, 04 Dec 2018 12:41:58 GMT
RUN set -ex;   apk add --no-cache --virtual .build-deps     ca-certificates     gnupg     openssl     tar   ;     wget -nv -O flink.tgz "$FLINK_TGZ_URL";   wget -nv -O flink.tgz.asc "$FLINK_ASC_URL";     export GNUPGHOME="$(mktemp -d)";   gpg --batch --import /KEYS;   gpg --batch --verify flink.tgz.asc flink.tgz;   gpgconf --kill all;   rm -rf "$GNUPGHOME" flink.tgz.asc;     tar -xf flink.tgz --strip-components=1;   rm flink.tgz;     apk del .build-deps;     chown -R flink:flink .;
# Tue, 04 Dec 2018 12:41:58 GMT
COPY file:15d049520a883d1b2d6ad6d561d06e3024278246670c49143dfdd98a0057a86a in / 
# Tue, 04 Dec 2018 12:41:58 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 04 Dec 2018 12:41:58 GMT
EXPOSE 6123/tcp 8081/tcp
# Tue, 04 Dec 2018 12:41:59 GMT
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
	-	`sha256:9f1fae4f49cc716e1f04af2d27038a0556a3da00d621a456fc8696c05a672eb2`  
		Last Modified: Tue, 04 Dec 2018 13:16:23 GMT  
		Size: 1.2 KB (1206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6848da975b05f19bf323922e153acf8d1106300ced64c8821e331fba83c13c23`  
		Last Modified: Tue, 04 Dec 2018 13:16:24 GMT  
		Size: 113.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11c0eb3b5a022b2039075957873d16ed07ead42235cae8dee02ab568eec4b8cf`  
		Last Modified: Tue, 04 Dec 2018 13:16:24 GMT  
		Size: 59.3 KB (59338 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d04209a51b557d727a09bf4f236fdcdfee4ffdd96836c5c17e8124cca39d5cf0`  
		Last Modified: Tue, 04 Dec 2018 13:16:45 GMT  
		Size: 279.2 MB (279249554 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b623b62f547ad7a92f9eef8d0037dc4349ea1abf3fa34adc054462d9fbcdccb`  
		Last Modified: Tue, 04 Dec 2018 13:16:24 GMT  
		Size: 1.1 KB (1100 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `flink:hadoop28-alpine` - linux; ppc64le

```console
$ docker pull flink@sha256:3da8da93900c568cb1023bd85d611a4d735322b4b057ca67075fd921d871794d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **336.7 MB (336675645 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:34e7a97564531ccf868ab9d7e0be8e9af757213504b87a487d0864acfcfb79c5`
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
# Fri, 21 Dec 2018 13:40:11 GMT
ENV FLINK_VERSION=1.7.0 HADOOP_SCALA_VARIANT=hadoop28-scala_2.12
# Fri, 21 Dec 2018 13:40:13 GMT
ENV FLINK_HOME=/opt/flink
# Fri, 21 Dec 2018 13:40:14 GMT
ENV PATH=/opt/flink/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Fri, 21 Dec 2018 13:40:19 GMT
RUN addgroup -S -g 9999 flink &&     adduser -D -S -H -u 9999 -G flink -h $FLINK_HOME flink
# Fri, 21 Dec 2018 13:40:20 GMT
WORKDIR /opt/flink
# Fri, 21 Dec 2018 13:40:22 GMT
ENV FLINK_URL_FILE_PATH=flink/flink-1.7.0/flink-1.7.0-bin-hadoop28-scala_2.12.tgz
# Fri, 21 Dec 2018 13:40:24 GMT
ENV FLINK_TGZ_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=flink/flink-1.7.0/flink-1.7.0-bin-hadoop28-scala_2.12.tgz FLINK_ASC_URL=https://www.apache.org/dist/flink/flink-1.7.0/flink-1.7.0-bin-hadoop28-scala_2.12.tgz.asc
# Fri, 21 Dec 2018 13:40:24 GMT
COPY file:15546826afab2956317f0af1256cbe1a9d599e70f81fe94d5d72cc8a2be4cbb2 in /KEYS 
# Fri, 21 Dec 2018 13:42:55 GMT
RUN set -ex;   apk add --no-cache --virtual .build-deps     ca-certificates     gnupg     openssl     tar   ;     wget -nv -O flink.tgz "$FLINK_TGZ_URL";   wget -nv -O flink.tgz.asc "$FLINK_ASC_URL";     export GNUPGHOME="$(mktemp -d)";   gpg --batch --import /KEYS;   gpg --batch --verify flink.tgz.asc flink.tgz;   gpgconf --kill all;   rm -rf "$GNUPGHOME" flink.tgz.asc;     tar -xf flink.tgz --strip-components=1;   rm flink.tgz;     apk del .build-deps;     chown -R flink:flink .;
# Fri, 21 Dec 2018 13:42:59 GMT
COPY file:32c6488d6beeaf64fa93d8e2829a44e98f034c72595380c30670d97807b6f9b0 in / 
# Fri, 21 Dec 2018 13:43:00 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 21 Dec 2018 13:43:03 GMT
EXPOSE 6123 8081
# Fri, 21 Dec 2018 13:43:05 GMT
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
	-	`sha256:e87b03fe55ad82358ba34010d4c92ef96e0a9e53b3bb58b2c9dd4106ff3aec34`  
		Last Modified: Fri, 21 Dec 2018 14:00:19 GMT  
		Size: 1.2 KB (1208 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a711058edad27a972082a036313b0376aba383a001b34e02e51abc234c515f5f`  
		Last Modified: Fri, 21 Dec 2018 14:00:19 GMT  
		Size: 145.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1cf961c73edac0a4804544d2d38f2394611a2283bfb1ac66a3a58f1979bfbca6`  
		Last Modified: Fri, 21 Dec 2018 14:00:19 GMT  
		Size: 59.3 KB (59338 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb7b66f2d24954ed663ebf7937cb937233e754b00945d3a8db268e3612c77324`  
		Last Modified: Fri, 21 Dec 2018 14:00:49 GMT  
		Size: 279.3 MB (279250151 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:613b354b2f59519b3c26691610053f4173c3ea50599803bb62dfdcf5388661c3`  
		Last Modified: Fri, 21 Dec 2018 14:00:19 GMT  
		Size: 1.1 KB (1101 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `flink:hadoop28-alpine` - linux; s390x

```console
$ docker pull flink@sha256:84d6c45ca9235408dd19290fe33ca29e4879334fdd8b71d3863c5d0cc4902f7e
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **336.5 MB (336488724 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:68f9fd5dccf9330247f25bace45fcc99c4af2cd2e7456cc50ead77d00884ed09`
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
# Fri, 21 Dec 2018 14:53:49 GMT
ENV FLINK_VERSION=1.7.0 HADOOP_SCALA_VARIANT=hadoop28-scala_2.12
# Fri, 21 Dec 2018 14:53:50 GMT
ENV FLINK_HOME=/opt/flink
# Fri, 21 Dec 2018 14:53:50 GMT
ENV PATH=/opt/flink/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Fri, 21 Dec 2018 14:53:51 GMT
RUN addgroup -S -g 9999 flink &&     adduser -D -S -H -u 9999 -G flink -h $FLINK_HOME flink
# Fri, 21 Dec 2018 14:53:51 GMT
WORKDIR /opt/flink
# Fri, 21 Dec 2018 14:53:51 GMT
ENV FLINK_URL_FILE_PATH=flink/flink-1.7.0/flink-1.7.0-bin-hadoop28-scala_2.12.tgz
# Fri, 21 Dec 2018 14:53:51 GMT
ENV FLINK_TGZ_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=flink/flink-1.7.0/flink-1.7.0-bin-hadoop28-scala_2.12.tgz FLINK_ASC_URL=https://www.apache.org/dist/flink/flink-1.7.0/flink-1.7.0-bin-hadoop28-scala_2.12.tgz.asc
# Fri, 21 Dec 2018 14:53:51 GMT
COPY file:15546826afab2956317f0af1256cbe1a9d599e70f81fe94d5d72cc8a2be4cbb2 in /KEYS 
# Fri, 21 Dec 2018 14:54:06 GMT
RUN set -ex;   apk add --no-cache --virtual .build-deps     ca-certificates     gnupg     openssl     tar   ;     wget -nv -O flink.tgz "$FLINK_TGZ_URL";   wget -nv -O flink.tgz.asc "$FLINK_ASC_URL";     export GNUPGHOME="$(mktemp -d)";   gpg --batch --import /KEYS;   gpg --batch --verify flink.tgz.asc flink.tgz;   gpgconf --kill all;   rm -rf "$GNUPGHOME" flink.tgz.asc;     tar -xf flink.tgz --strip-components=1;   rm flink.tgz;     apk del .build-deps;     chown -R flink:flink .;
# Fri, 21 Dec 2018 14:54:06 GMT
COPY file:32c6488d6beeaf64fa93d8e2829a44e98f034c72595380c30670d97807b6f9b0 in / 
# Fri, 21 Dec 2018 14:54:06 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 21 Dec 2018 14:54:06 GMT
EXPOSE 6123 8081
# Fri, 21 Dec 2018 14:54:06 GMT
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
	-	`sha256:005e65010ea73a2410965297ae8da0158eeacbb4701beed51517808cc7c4a3a2`  
		Last Modified: Fri, 21 Dec 2018 15:00:24 GMT  
		Size: 1.2 KB (1207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8b22698608e3b0a3881bd2fe8d0c00fb0025384779b932e4633983c05c51d1b`  
		Last Modified: Fri, 21 Dec 2018 15:00:24 GMT  
		Size: 111.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0009b468d09d9e82319d85d6b032fad9e2bda66443bec5351d53fae01e2447d`  
		Last Modified: Fri, 21 Dec 2018 15:00:24 GMT  
		Size: 59.3 KB (59338 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e2416bf04951a78cea9e01e6fe0017b8b65a01e0e43f7a5e16c6529e736d000`  
		Last Modified: Fri, 21 Dec 2018 15:00:53 GMT  
		Size: 279.2 MB (279249379 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31972dadd294f231c335134344961f43ff78d1916170d43bf2233eb0b70b0551`  
		Last Modified: Fri, 21 Dec 2018 15:00:24 GMT  
		Size: 1.1 KB (1098 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
