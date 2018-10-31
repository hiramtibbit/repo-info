## `flink:hadoop27-alpine`

```console
$ docker pull flink@sha256:eae58aad7c882910e7fa2fb56fa6db495befa3b668b31850f707604acd63ad41
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8
	-	linux; ppc64le

### `flink:hadoop27-alpine` - linux; amd64

```console
$ docker pull flink@sha256:39399a4880da0c3f3c83211599d3416e4649f7ca79031f53b6ad23bc9d42a9dc
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **361.0 MB (361013354 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cd272aca27c267fd321333a8519ac61246f4259b6aa7003276c87f1309b00ff3`
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
# Wed, 31 Oct 2018 00:39:12 GMT
ENV FLINK_VERSION=1.6.2 HADOOP_SCALA_VARIANT=hadoop27-scala_2.11
# Wed, 31 Oct 2018 00:39:13 GMT
ENV FLINK_HOME=/opt/flink
# Wed, 31 Oct 2018 00:39:13 GMT
ENV PATH=/opt/flink/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 31 Oct 2018 00:39:13 GMT
RUN addgroup -S -g 9999 flink &&     adduser -D -S -H -u 9999 -G flink -h $FLINK_HOME flink
# Wed, 31 Oct 2018 00:39:14 GMT
WORKDIR /opt/flink
# Wed, 31 Oct 2018 00:39:14 GMT
ENV FLINK_URL_FILE_PATH=flink/flink-1.6.2/flink-1.6.2-bin-hadoop27-scala_2.11.tgz
# Wed, 31 Oct 2018 00:39:14 GMT
ENV FLINK_TGZ_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=flink/flink-1.6.2/flink-1.6.2-bin-hadoop27-scala_2.11.tgz FLINK_ASC_URL=https://www.apache.org/dist/flink/flink-1.6.2/flink-1.6.2-bin-hadoop27-scala_2.11.tgz.asc
# Wed, 31 Oct 2018 00:39:15 GMT
COPY file:d9b980b40ddcfab2700a72e4088616452368e14c4f8fbee56f3258ac7f5dd913 in /KEYS 
# Wed, 31 Oct 2018 00:39:58 GMT
RUN set -ex;   apk add --no-cache --virtual .build-deps     ca-certificates     gnupg     openssl     tar   ;     wget -nv -O flink.tgz "$FLINK_TGZ_URL";   wget -nv -O flink.tgz.asc "$FLINK_ASC_URL";     export GNUPGHOME="$(mktemp -d)";   gpg --import /KEYS;   gpg --batch --verify flink.tgz.asc flink.tgz;   rm -rf "$GNUPGHOME" flink.tgz.asc;     tar -xf flink.tgz --strip-components=1;   rm flink.tgz;     apk del .build-deps;     chown -R flink:flink .;
# Wed, 31 Oct 2018 00:39:59 GMT
COPY file:15d049520a883d1b2d6ad6d561d06e3024278246670c49143dfdd98a0057a86a in / 
# Wed, 31 Oct 2018 00:39:59 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 31 Oct 2018 00:39:59 GMT
EXPOSE 6123/tcp 8081/tcp
# Wed, 31 Oct 2018 00:40:00 GMT
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
	-	`sha256:94bf0e5fb9eb8587b643d21d4229b393d9ab7b3c73240c11bed68a8312594912`  
		Last Modified: Wed, 31 Oct 2018 01:02:53 GMT  
		Size: 1.2 KB (1203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26c7cd05bd038c7ca689692bfe8e612aecb677b8d066006a9019772ce6d14d0b`  
		Last Modified: Wed, 31 Oct 2018 01:02:52 GMT  
		Size: 114.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fbbe40c65be41b04bfeb18739dacbaf2e344410993db8c204a0d1736c1d4f771`  
		Last Modified: Wed, 31 Oct 2018 01:02:52 GMT  
		Size: 59.3 KB (59337 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:301b52f9999dfafc7e769f2c65aba57532ddb1edfaa1a55bec6a7a434e5126ea`  
		Last Modified: Wed, 31 Oct 2018 01:03:10 GMT  
		Size: 302.7 MB (302694185 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e502b7c3b2e9283097b645e9697fc5ebb64fc938b7a54bdfea431d9b5b8de56c`  
		Last Modified: Wed, 31 Oct 2018 01:02:51 GMT  
		Size: 1.1 KB (1101 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `flink:hadoop27-alpine` - linux; arm variant v6

```console
$ docker pull flink@sha256:3b7389a623bfb2fef9bc3cfb0d8a987552b67b619609a86f5071fe81af228582
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **358.4 MB (358366882 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f45213ffd731e71ea043f4b08780ea6af05f13671c730f26dbe63cb329ed1c7f`
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
# Wed, 31 Oct 2018 07:59:01 GMT
ENV FLINK_VERSION=1.6.2 HADOOP_SCALA_VARIANT=hadoop27-scala_2.11
# Wed, 31 Oct 2018 07:59:01 GMT
ENV FLINK_HOME=/opt/flink
# Wed, 31 Oct 2018 07:59:01 GMT
ENV PATH=/opt/flink/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 31 Oct 2018 07:59:02 GMT
RUN addgroup -S -g 9999 flink &&     adduser -D -S -H -u 9999 -G flink -h $FLINK_HOME flink
# Wed, 31 Oct 2018 07:59:03 GMT
WORKDIR /opt/flink
# Wed, 31 Oct 2018 07:59:03 GMT
ENV FLINK_URL_FILE_PATH=flink/flink-1.6.2/flink-1.6.2-bin-hadoop27-scala_2.11.tgz
# Wed, 31 Oct 2018 07:59:03 GMT
ENV FLINK_TGZ_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=flink/flink-1.6.2/flink-1.6.2-bin-hadoop27-scala_2.11.tgz FLINK_ASC_URL=https://www.apache.org/dist/flink/flink-1.6.2/flink-1.6.2-bin-hadoop27-scala_2.11.tgz.asc
# Wed, 31 Oct 2018 07:59:04 GMT
COPY file:d9b980b40ddcfab2700a72e4088616452368e14c4f8fbee56f3258ac7f5dd913 in /KEYS 
# Wed, 31 Oct 2018 07:59:34 GMT
RUN set -ex;   apk add --no-cache --virtual .build-deps     ca-certificates     gnupg     openssl     tar   ;     wget -nv -O flink.tgz "$FLINK_TGZ_URL";   wget -nv -O flink.tgz.asc "$FLINK_ASC_URL";     export GNUPGHOME="$(mktemp -d)";   gpg --import /KEYS;   gpg --batch --verify flink.tgz.asc flink.tgz;   rm -rf "$GNUPGHOME" flink.tgz.asc;     tar -xf flink.tgz --strip-components=1;   rm flink.tgz;     apk del .build-deps;     chown -R flink:flink .;
# Wed, 31 Oct 2018 07:59:36 GMT
COPY file:15d049520a883d1b2d6ad6d561d06e3024278246670c49143dfdd98a0057a86a in / 
# Wed, 31 Oct 2018 07:59:36 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 31 Oct 2018 07:59:37 GMT
EXPOSE 6123/tcp 8081/tcp
# Wed, 31 Oct 2018 07:59:37 GMT
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
	-	`sha256:ba5bfa165dbeb6d28b2d29ecd2c486bbcd01705e3084d73b17aee4af7bed6895`  
		Last Modified: Wed, 31 Oct 2018 08:07:49 GMT  
		Size: 1.2 KB (1207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0c399bfef7058e393aa7f669e05e04d2ba61db5d02958ce55f77608e9df3146`  
		Last Modified: Wed, 31 Oct 2018 08:07:49 GMT  
		Size: 145.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b89c77c06a0a470e7ab18c2659b7a8d0e30d578a206ce00cb649187d9980ca7`  
		Last Modified: Wed, 31 Oct 2018 08:07:49 GMT  
		Size: 59.3 KB (59336 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67e10f9572f9c3e37a29820929f4bea3b777dd7837fae347257ae2d05386fc12`  
		Last Modified: Wed, 31 Oct 2018 08:08:22 GMT  
		Size: 302.7 MB (302694401 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c4cfaa0a8370166872ace5c67b150ee0d85a4922c32ebfc2006ae0f5c2e494e`  
		Last Modified: Wed, 31 Oct 2018 08:07:49 GMT  
		Size: 1.1 KB (1101 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `flink:hadoop27-alpine` - linux; arm64 variant v8

```console
$ docker pull flink@sha256:c665fe1970946a98f9f42bdcb9faa7520b7146d4e6754451b359082aec5667b3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **359.4 MB (359363133 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1013d8738714cbd1ff139f819033d3afc22db6ffed2bbe12813f1881670b66e0`
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
# Wed, 31 Oct 2018 09:24:01 GMT
ENV FLINK_VERSION=1.6.2 HADOOP_SCALA_VARIANT=hadoop27-scala_2.11
# Wed, 31 Oct 2018 09:24:02 GMT
ENV FLINK_HOME=/opt/flink
# Wed, 31 Oct 2018 09:24:02 GMT
ENV PATH=/opt/flink/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 31 Oct 2018 09:24:04 GMT
RUN addgroup -S -g 9999 flink &&     adduser -D -S -H -u 9999 -G flink -h $FLINK_HOME flink
# Wed, 31 Oct 2018 09:24:05 GMT
WORKDIR /opt/flink
# Wed, 31 Oct 2018 09:24:05 GMT
ENV FLINK_URL_FILE_PATH=flink/flink-1.6.2/flink-1.6.2-bin-hadoop27-scala_2.11.tgz
# Wed, 31 Oct 2018 09:24:06 GMT
ENV FLINK_TGZ_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=flink/flink-1.6.2/flink-1.6.2-bin-hadoop27-scala_2.11.tgz FLINK_ASC_URL=https://www.apache.org/dist/flink/flink-1.6.2/flink-1.6.2-bin-hadoop27-scala_2.11.tgz.asc
# Wed, 31 Oct 2018 09:24:07 GMT
COPY file:d9b980b40ddcfab2700a72e4088616452368e14c4f8fbee56f3258ac7f5dd913 in /KEYS 
# Wed, 31 Oct 2018 09:28:33 GMT
RUN set -ex;   apk add --no-cache --virtual .build-deps     ca-certificates     gnupg     openssl     tar   ;     wget -nv -O flink.tgz "$FLINK_TGZ_URL";   wget -nv -O flink.tgz.asc "$FLINK_ASC_URL";     export GNUPGHOME="$(mktemp -d)";   gpg --import /KEYS;   gpg --batch --verify flink.tgz.asc flink.tgz;   rm -rf "$GNUPGHOME" flink.tgz.asc;     tar -xf flink.tgz --strip-components=1;   rm flink.tgz;     apk del .build-deps;     chown -R flink:flink .;
# Wed, 31 Oct 2018 09:28:35 GMT
COPY file:15d049520a883d1b2d6ad6d561d06e3024278246670c49143dfdd98a0057a86a in / 
# Wed, 31 Oct 2018 09:28:35 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 31 Oct 2018 09:28:36 GMT
EXPOSE 6123/tcp 8081/tcp
# Wed, 31 Oct 2018 09:28:37 GMT
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
	-	`sha256:98d14fe865fc801bc5c75be05a338a3a721cf07b7f401d01f551cf869c588a4e`  
		Last Modified: Wed, 31 Oct 2018 10:00:56 GMT  
		Size: 1.2 KB (1208 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bba21b88f4db4b4da79695e789a168949dd223873fa0f8d9c9741687c1e1f281`  
		Last Modified: Wed, 31 Oct 2018 10:00:57 GMT  
		Size: 114.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c87e41092f1736a9ceeb6ecf6b3c65004172c0cbf2b4ee641407f4b1d3dae2a`  
		Last Modified: Wed, 31 Oct 2018 10:00:56 GMT  
		Size: 59.3 KB (59338 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:599c7f14cd7241d01fe6e2826d20d62b74801902a775cc2da1aa4abda5dbf844`  
		Last Modified: Wed, 31 Oct 2018 10:01:39 GMT  
		Size: 302.7 MB (302693813 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0dac89f18559fa1e50f1cdf22d3a29556b9a25f8733fe58376c572afb88df38`  
		Last Modified: Wed, 31 Oct 2018 10:00:56 GMT  
		Size: 1.1 KB (1100 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `flink:hadoop27-alpine` - linux; ppc64le

```console
$ docker pull flink@sha256:9030907b99780794ad48a066bca9c65dcdd8f470af14a1731f40ec2bd03a7d45
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **360.1 MB (360120345 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:de2f4454a9603e662b01959e4d3289f722bb32f9cc03c0c798c757944d66a735`
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
# Wed, 31 Oct 2018 09:02:45 GMT
ENV FLINK_VERSION=1.6.2 HADOOP_SCALA_VARIANT=hadoop27-scala_2.11
# Wed, 31 Oct 2018 09:02:51 GMT
ENV FLINK_HOME=/opt/flink
# Wed, 31 Oct 2018 09:02:55 GMT
ENV PATH=/opt/flink/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 31 Oct 2018 09:03:00 GMT
RUN addgroup -S -g 9999 flink &&     adduser -D -S -H -u 9999 -G flink -h $FLINK_HOME flink
# Wed, 31 Oct 2018 09:03:01 GMT
WORKDIR /opt/flink
# Wed, 31 Oct 2018 09:03:02 GMT
ENV FLINK_URL_FILE_PATH=flink/flink-1.6.2/flink-1.6.2-bin-hadoop27-scala_2.11.tgz
# Wed, 31 Oct 2018 09:03:03 GMT
ENV FLINK_TGZ_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=flink/flink-1.6.2/flink-1.6.2-bin-hadoop27-scala_2.11.tgz FLINK_ASC_URL=https://www.apache.org/dist/flink/flink-1.6.2/flink-1.6.2-bin-hadoop27-scala_2.11.tgz.asc
# Wed, 31 Oct 2018 09:03:03 GMT
COPY file:d9b980b40ddcfab2700a72e4088616452368e14c4f8fbee56f3258ac7f5dd913 in /KEYS 
# Wed, 31 Oct 2018 09:05:31 GMT
RUN set -ex;   apk add --no-cache --virtual .build-deps     ca-certificates     gnupg     openssl     tar   ;     wget -nv -O flink.tgz "$FLINK_TGZ_URL";   wget -nv -O flink.tgz.asc "$FLINK_ASC_URL";     export GNUPGHOME="$(mktemp -d)";   gpg --import /KEYS;   gpg --batch --verify flink.tgz.asc flink.tgz;   rm -rf "$GNUPGHOME" flink.tgz.asc;     tar -xf flink.tgz --strip-components=1;   rm flink.tgz;     apk del .build-deps;     chown -R flink:flink .;
# Wed, 31 Oct 2018 09:05:33 GMT
COPY file:15d049520a883d1b2d6ad6d561d06e3024278246670c49143dfdd98a0057a86a in / 
# Wed, 31 Oct 2018 09:05:33 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 31 Oct 2018 09:05:34 GMT
EXPOSE 6123/tcp 8081/tcp
# Wed, 31 Oct 2018 09:05:35 GMT
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
	-	`sha256:a6b0edeb89435d3a67bde8d35b572d84fb6f0b3db6f86add0ace267bc9be3cc4`  
		Last Modified: Wed, 31 Oct 2018 09:34:11 GMT  
		Size: 1.2 KB (1205 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94791575d505780a2e94e715504d4ef5bb1d24618412a47146a439d1acf4d98f`  
		Last Modified: Wed, 31 Oct 2018 09:34:11 GMT  
		Size: 145.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab1ac0b34dbe5230bc328dfdfea4f0b744c795d668461831f09d3db761e33b38`  
		Last Modified: Wed, 31 Oct 2018 09:34:11 GMT  
		Size: 59.3 KB (59338 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b86f517c7c2843dc7670f0c136d9f07f9fa048480581d24830b010f892e72870`  
		Last Modified: Wed, 31 Oct 2018 09:34:48 GMT  
		Size: 302.7 MB (302694401 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39a3fcb46abfb16cec373f8a40009bf3ed6b35ecaea566f7139374ffbb7b5911`  
		Last Modified: Wed, 31 Oct 2018 09:34:11 GMT  
		Size: 1.1 KB (1100 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
