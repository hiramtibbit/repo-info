## `flink:hadoop28-alpine`

```console
$ docker pull flink@sha256:0e1b6e21410d8cac2a9ef906dd924184e4dfcfb3102aac65d9656f9a2540e7ad
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
$ docker pull flink@sha256:e6410ecc685b4bdd20e0e2977062bf5bcd833632548cd4e102eacabfd56d9e38
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **337.6 MB (337569508 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7ef924942a391f17ecea619adaaa30a0972972b5220abe459bcf33bc30f5d58b`
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
# Tue, 04 Dec 2018 01:59:58 GMT
ENV FLINK_VERSION=1.7.0 HADOOP_SCALA_VARIANT=hadoop28-scala_2.12
# Tue, 04 Dec 2018 01:59:58 GMT
ENV FLINK_HOME=/opt/flink
# Tue, 04 Dec 2018 01:59:58 GMT
ENV PATH=/opt/flink/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 04 Dec 2018 01:59:59 GMT
RUN addgroup -S -g 9999 flink &&     adduser -D -S -H -u 9999 -G flink -h $FLINK_HOME flink
# Tue, 04 Dec 2018 01:59:59 GMT
WORKDIR /opt/flink
# Tue, 04 Dec 2018 01:59:59 GMT
ENV FLINK_URL_FILE_PATH=flink/flink-1.7.0/flink-1.7.0-bin-hadoop28-scala_2.12.tgz
# Tue, 04 Dec 2018 02:00:00 GMT
ENV FLINK_TGZ_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=flink/flink-1.7.0/flink-1.7.0-bin-hadoop28-scala_2.12.tgz FLINK_ASC_URL=https://www.apache.org/dist/flink/flink-1.7.0/flink-1.7.0-bin-hadoop28-scala_2.12.tgz.asc
# Tue, 04 Dec 2018 02:00:00 GMT
COPY file:d9b980b40ddcfab2700a72e4088616452368e14c4f8fbee56f3258ac7f5dd913 in /KEYS 
# Tue, 04 Dec 2018 02:02:20 GMT
RUN set -ex;   apk add --no-cache --virtual .build-deps     ca-certificates     gnupg     openssl     tar   ;     wget -nv -O flink.tgz "$FLINK_TGZ_URL";   wget -nv -O flink.tgz.asc "$FLINK_ASC_URL";     export GNUPGHOME="$(mktemp -d)";   gpg --batch --import /KEYS;   gpg --batch --verify flink.tgz.asc flink.tgz;   gpgconf --kill all;   rm -rf "$GNUPGHOME" flink.tgz.asc;     tar -xf flink.tgz --strip-components=1;   rm flink.tgz;     apk del .build-deps;     chown -R flink:flink .;
# Tue, 04 Dec 2018 02:02:21 GMT
COPY file:15d049520a883d1b2d6ad6d561d06e3024278246670c49143dfdd98a0057a86a in / 
# Tue, 04 Dec 2018 02:02:21 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 04 Dec 2018 02:02:21 GMT
EXPOSE 6123/tcp 8081/tcp
# Tue, 04 Dec 2018 02:02:21 GMT
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
	-	`sha256:710de69a709ac9f066eecd11eba3831f0681d996a3f554da4c0dca001ee4ad6c`  
		Last Modified: Tue, 04 Dec 2018 02:39:58 GMT  
		Size: 1.2 KB (1206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07ba2f839cb7214924854449b7e543d243c4b3e048863d9ca678e1bb3da98782`  
		Last Modified: Tue, 04 Dec 2018 02:39:58 GMT  
		Size: 114.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da312e7ca21f75d7fe8eb47996ebaf1bb65186d4683be236ffa123b55b1cf1f7`  
		Last Modified: Tue, 04 Dec 2018 02:39:58 GMT  
		Size: 59.3 KB (59338 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9598e97d59a2b78af41caab610d25e6e355207c64c0417966683b8230b93675e`  
		Last Modified: Tue, 04 Dec 2018 02:40:15 GMT  
		Size: 279.3 MB (279250336 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:184cfff4ce55ae2fb3fd2997abe8014ab99370cd01ef869e4ae746c52e21b69c`  
		Last Modified: Tue, 04 Dec 2018 02:39:58 GMT  
		Size: 1.1 KB (1100 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `flink:hadoop28-alpine` - linux; arm variant v6

```console
$ docker pull flink@sha256:4107bcdca2aeedf4ca8c291bce76f70f382ac4a4e5d6d87445334f6a53530b27
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **334.9 MB (334922452 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8fbe29c70f89626535cbf303f4053ed7c525badabdcd8117273ffcf80fe66bb9`
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
# Tue, 04 Dec 2018 09:13:04 GMT
ENV FLINK_VERSION=1.7.0 HADOOP_SCALA_VARIANT=hadoop28-scala_2.12
# Tue, 04 Dec 2018 09:13:05 GMT
ENV FLINK_HOME=/opt/flink
# Tue, 04 Dec 2018 09:13:05 GMT
ENV PATH=/opt/flink/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 04 Dec 2018 09:13:06 GMT
RUN addgroup -S -g 9999 flink &&     adduser -D -S -H -u 9999 -G flink -h $FLINK_HOME flink
# Tue, 04 Dec 2018 09:13:06 GMT
WORKDIR /opt/flink
# Tue, 04 Dec 2018 09:13:07 GMT
ENV FLINK_URL_FILE_PATH=flink/flink-1.7.0/flink-1.7.0-bin-hadoop28-scala_2.12.tgz
# Tue, 04 Dec 2018 09:13:07 GMT
ENV FLINK_TGZ_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=flink/flink-1.7.0/flink-1.7.0-bin-hadoop28-scala_2.12.tgz FLINK_ASC_URL=https://www.apache.org/dist/flink/flink-1.7.0/flink-1.7.0-bin-hadoop28-scala_2.12.tgz.asc
# Tue, 04 Dec 2018 09:13:07 GMT
COPY file:d9b980b40ddcfab2700a72e4088616452368e14c4f8fbee56f3258ac7f5dd913 in /KEYS 
# Tue, 04 Dec 2018 09:13:34 GMT
RUN set -ex;   apk add --no-cache --virtual .build-deps     ca-certificates     gnupg     openssl     tar   ;     wget -nv -O flink.tgz "$FLINK_TGZ_URL";   wget -nv -O flink.tgz.asc "$FLINK_ASC_URL";     export GNUPGHOME="$(mktemp -d)";   gpg --batch --import /KEYS;   gpg --batch --verify flink.tgz.asc flink.tgz;   gpgconf --kill all;   rm -rf "$GNUPGHOME" flink.tgz.asc;     tar -xf flink.tgz --strip-components=1;   rm flink.tgz;     apk del .build-deps;     chown -R flink:flink .;
# Tue, 04 Dec 2018 09:13:35 GMT
COPY file:15d049520a883d1b2d6ad6d561d06e3024278246670c49143dfdd98a0057a86a in / 
# Tue, 04 Dec 2018 09:13:36 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 04 Dec 2018 09:13:36 GMT
EXPOSE 6123/tcp 8081/tcp
# Tue, 04 Dec 2018 09:13:36 GMT
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
	-	`sha256:34e134909fe836e36f17f704176ca2b392f29ed51528b6ff57bc8698b9501bcd`  
		Last Modified: Tue, 04 Dec 2018 09:31:11 GMT  
		Size: 1.2 KB (1207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a597ec85e8cd277c0ef9cdea5a0e0ae5a7ab7f31c45eb00a1bc42f60610c731b`  
		Last Modified: Tue, 04 Dec 2018 09:31:10 GMT  
		Size: 145.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d86751148b0b62245b4e47473d876b600adfde3bf0098ec6b88b5f287c7bb028`  
		Last Modified: Tue, 04 Dec 2018 09:31:11 GMT  
		Size: 59.3 KB (59337 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d3697644a18c02921361bb704c68643aaddbb4ca8c7b28c8c043b83730f57e5`  
		Last Modified: Tue, 04 Dec 2018 09:31:41 GMT  
		Size: 279.2 MB (279249970 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec3831a10dff9ab44f807f4a24f9917aa3ca4bbb244fd58836fd2d2419f737c9`  
		Last Modified: Tue, 04 Dec 2018 09:31:10 GMT  
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
$ docker pull flink@sha256:7e36a780f3815d405738e696ca94489ced6256354580273894f8b0eafc8be1fc
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **336.7 MB (336676193 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6b13ae95e9bb376cd65d7c708838f407afdbe43573c511a79e229e47f52318e6`
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
# Tue, 04 Dec 2018 11:23:17 GMT
ENV FLINK_VERSION=1.7.0 HADOOP_SCALA_VARIANT=hadoop28-scala_2.12
# Tue, 04 Dec 2018 11:23:19 GMT
ENV FLINK_HOME=/opt/flink
# Tue, 04 Dec 2018 11:23:19 GMT
ENV PATH=/opt/flink/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 04 Dec 2018 11:23:38 GMT
RUN addgroup -S -g 9999 flink &&     adduser -D -S -H -u 9999 -G flink -h $FLINK_HOME flink
# Tue, 04 Dec 2018 11:23:39 GMT
WORKDIR /opt/flink
# Tue, 04 Dec 2018 11:23:41 GMT
ENV FLINK_URL_FILE_PATH=flink/flink-1.7.0/flink-1.7.0-bin-hadoop28-scala_2.12.tgz
# Tue, 04 Dec 2018 11:23:42 GMT
ENV FLINK_TGZ_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=flink/flink-1.7.0/flink-1.7.0-bin-hadoop28-scala_2.12.tgz FLINK_ASC_URL=https://www.apache.org/dist/flink/flink-1.7.0/flink-1.7.0-bin-hadoop28-scala_2.12.tgz.asc
# Tue, 04 Dec 2018 11:23:44 GMT
COPY file:d9b980b40ddcfab2700a72e4088616452368e14c4f8fbee56f3258ac7f5dd913 in /KEYS 
# Tue, 04 Dec 2018 11:26:34 GMT
RUN set -ex;   apk add --no-cache --virtual .build-deps     ca-certificates     gnupg     openssl     tar   ;     wget -nv -O flink.tgz "$FLINK_TGZ_URL";   wget -nv -O flink.tgz.asc "$FLINK_ASC_URL";     export GNUPGHOME="$(mktemp -d)";   gpg --batch --import /KEYS;   gpg --batch --verify flink.tgz.asc flink.tgz;   gpgconf --kill all;   rm -rf "$GNUPGHOME" flink.tgz.asc;     tar -xf flink.tgz --strip-components=1;   rm flink.tgz;     apk del .build-deps;     chown -R flink:flink .;
# Tue, 04 Dec 2018 11:26:37 GMT
COPY file:15d049520a883d1b2d6ad6d561d06e3024278246670c49143dfdd98a0057a86a in / 
# Tue, 04 Dec 2018 11:26:39 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 04 Dec 2018 11:26:55 GMT
EXPOSE 6123/tcp 8081/tcp
# Tue, 04 Dec 2018 11:27:08 GMT
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
	-	`sha256:ef54dfe10d3ed892812174ae8089c06ea2b3629a776221971ca369dd6525c733`  
		Last Modified: Tue, 04 Dec 2018 12:37:25 GMT  
		Size: 1.2 KB (1211 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b13ab11ca01159e443ef3e9b29581ed74ac8a00ce23c4bcf2b192346d381e84`  
		Last Modified: Tue, 04 Dec 2018 12:37:26 GMT  
		Size: 145.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9bdb9341f1b7dcd9cad66e40e912667e472204b1b689e813f339f652f02c2ce8`  
		Last Modified: Tue, 04 Dec 2018 12:37:26 GMT  
		Size: 59.3 KB (59338 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bfa324b9b25df701868f0cb8d67914c1d286eb016371eafd50d9a5ea203a9ac7`  
		Last Modified: Tue, 04 Dec 2018 12:38:21 GMT  
		Size: 279.3 MB (279250242 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7810b44d1047d0b05c9b1fa78075f199b032db11407e5f184be4b203300ec6d7`  
		Last Modified: Tue, 04 Dec 2018 12:37:25 GMT  
		Size: 1.1 KB (1101 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `flink:hadoop28-alpine` - linux; s390x

```console
$ docker pull flink@sha256:db32c9bb2f568b74452730c0f56a00a5f158a23bddc547339ef4237473e8b422
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **336.5 MB (336488327 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7cb42914767c7df2ae4d9bd202f77a2c4721875abf05b426f7e1531a9696a879`
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
# Tue, 04 Dec 2018 12:58:06 GMT
ENV FLINK_VERSION=1.7.0 HADOOP_SCALA_VARIANT=hadoop28-scala_2.12
# Tue, 04 Dec 2018 12:58:06 GMT
ENV FLINK_HOME=/opt/flink
# Tue, 04 Dec 2018 12:58:06 GMT
ENV PATH=/opt/flink/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 04 Dec 2018 12:58:07 GMT
RUN addgroup -S -g 9999 flink &&     adduser -D -S -H -u 9999 -G flink -h $FLINK_HOME flink
# Tue, 04 Dec 2018 12:58:07 GMT
WORKDIR /opt/flink
# Tue, 04 Dec 2018 12:58:07 GMT
ENV FLINK_URL_FILE_PATH=flink/flink-1.7.0/flink-1.7.0-bin-hadoop28-scala_2.12.tgz
# Tue, 04 Dec 2018 12:58:07 GMT
ENV FLINK_TGZ_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=flink/flink-1.7.0/flink-1.7.0-bin-hadoop28-scala_2.12.tgz FLINK_ASC_URL=https://www.apache.org/dist/flink/flink-1.7.0/flink-1.7.0-bin-hadoop28-scala_2.12.tgz.asc
# Tue, 04 Dec 2018 12:58:08 GMT
COPY file:d9b980b40ddcfab2700a72e4088616452368e14c4f8fbee56f3258ac7f5dd913 in /KEYS 
# Tue, 04 Dec 2018 12:58:44 GMT
RUN set -ex;   apk add --no-cache --virtual .build-deps     ca-certificates     gnupg     openssl     tar   ;     wget -nv -O flink.tgz "$FLINK_TGZ_URL";   wget -nv -O flink.tgz.asc "$FLINK_ASC_URL";     export GNUPGHOME="$(mktemp -d)";   gpg --batch --import /KEYS;   gpg --batch --verify flink.tgz.asc flink.tgz;   gpgconf --kill all;   rm -rf "$GNUPGHOME" flink.tgz.asc;     tar -xf flink.tgz --strip-components=1;   rm flink.tgz;     apk del .build-deps;     chown -R flink:flink .;
# Tue, 04 Dec 2018 12:58:44 GMT
COPY file:15d049520a883d1b2d6ad6d561d06e3024278246670c49143dfdd98a0057a86a in / 
# Tue, 04 Dec 2018 12:58:44 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 04 Dec 2018 12:58:44 GMT
EXPOSE 6123/tcp 8081/tcp
# Tue, 04 Dec 2018 12:58:44 GMT
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
	-	`sha256:b383b916735621fc5e88eb5556929b706efc4ff4a5e86c301bbd5b7ea4efc95e`  
		Last Modified: Tue, 04 Dec 2018 13:07:07 GMT  
		Size: 1.2 KB (1209 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4130b657524fc3e6a25ab8faf3f9f04d2eca48b1d3b7fb813361254183aad841`  
		Last Modified: Tue, 04 Dec 2018 13:07:07 GMT  
		Size: 114.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02223ee1dedd11fe7d475fc30127301f7d149b8663679b9a4510ff8bf0cedb47`  
		Last Modified: Tue, 04 Dec 2018 13:07:07 GMT  
		Size: 59.3 KB (59338 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f6f14f3a81b25971ecd3166f42465177bc99ced1847aa3a2879a27385111282`  
		Last Modified: Tue, 04 Dec 2018 13:07:23 GMT  
		Size: 279.2 MB (279249463 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5099c17382e887407fecef154a08698b3e9b73bdda0ec9dc10bbdea280a0a45c`  
		Last Modified: Tue, 04 Dec 2018 13:07:07 GMT  
		Size: 1.1 KB (1101 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
