## `flink:hadoop28-alpine`

```console
$ docker pull flink@sha256:ac2c5027affd15a3bc158e8ee1d3e063cf2862d34c5a17ab5d5fe2c44a44f823
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8
	-	linux; 386

### `flink:hadoop28-alpine` - linux; amd64

```console
$ docker pull flink@sha256:4f30cad0d1f07445592b9f627ad79b4535e47d0aa980d9a724b22ca0f42652a8
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **362.8 MB (362818726 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8edc6026c99ad1d347037d24f453bd29154d967455cf55e3348a17797e5f8369`
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
# Wed, 26 Sep 2018 00:39:55 GMT
ENV FLINK_VERSION=1.6.1 HADOOP_SCALA_VARIANT=hadoop28-scala_2.11
# Wed, 26 Sep 2018 00:39:55 GMT
ENV FLINK_HOME=/opt/flink
# Wed, 26 Sep 2018 00:39:55 GMT
ENV PATH=/opt/flink/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 26 Sep 2018 00:39:56 GMT
RUN addgroup -S -g 9999 flink &&     adduser -D -S -H -u 9999 -G flink -h $FLINK_HOME flink
# Wed, 26 Sep 2018 00:39:56 GMT
WORKDIR /opt/flink
# Wed, 26 Sep 2018 00:39:56 GMT
ENV FLINK_URL_FILE_PATH=flink/flink-1.6.1/flink-1.6.1-bin-hadoop28-scala_2.11.tgz
# Wed, 26 Sep 2018 00:39:56 GMT
ENV FLINK_TGZ_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=flink/flink-1.6.1/flink-1.6.1-bin-hadoop28-scala_2.11.tgz FLINK_ASC_URL=https://www.apache.org/dist/flink/flink-1.6.1/flink-1.6.1-bin-hadoop28-scala_2.11.tgz.asc
# Wed, 26 Sep 2018 00:39:57 GMT
COPY file:d9b980b40ddcfab2700a72e4088616452368e14c4f8fbee56f3258ac7f5dd913 in /KEYS 
# Wed, 26 Sep 2018 00:40:14 GMT
RUN set -ex;   apk add --no-cache --virtual .build-deps     ca-certificates     gnupg     openssl     tar   ;     wget -nv -O flink.tgz "$FLINK_TGZ_URL";   wget -nv -O flink.tgz.asc "$FLINK_ASC_URL";     export GNUPGHOME="$(mktemp -d)";   gpg --import /KEYS;   gpg --batch --verify flink.tgz.asc flink.tgz;   rm -rf "$GNUPGHOME" flink.tgz.asc;     tar -xf flink.tgz --strip-components=1;   rm flink.tgz;     apk del .build-deps;     chown -R flink:flink .;
# Wed, 26 Sep 2018 00:40:15 GMT
COPY file:dd3a2212d5f0bbe552ac5e863e5fb1df12bcbb32cff887e6f4f3c81e2372b6c1 in / 
# Wed, 26 Sep 2018 00:40:15 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 26 Sep 2018 00:40:15 GMT
EXPOSE 6123/tcp 8081/tcp
# Wed, 26 Sep 2018 00:40:16 GMT
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
	-	`sha256:6abdb188e2984a80f8eaa213365014e31ea8bce38686ff243e40502fb2d884d4`  
		Last Modified: Wed, 26 Sep 2018 01:00:17 GMT  
		Size: 1.2 KB (1205 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87404477f623f452395cd0796ac18560ce609aa212b2b2150c79c57b5883683f`  
		Last Modified: Wed, 26 Sep 2018 01:00:17 GMT  
		Size: 114.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8b1b443a536d3c9ae51530db4c8c185a2c42763bd06b8b2eef596b8e8845d49`  
		Last Modified: Wed, 26 Sep 2018 01:00:17 GMT  
		Size: 59.3 KB (59336 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8770022844beb709e99b9c6f6b033135e5496ddb6eacc1f7fa313cb6dcd530a`  
		Last Modified: Wed, 26 Sep 2018 01:00:35 GMT  
		Size: 304.5 MB (304530949 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce822598ad37b7632835be2c19d1e6a071a3ba271afc4cf2524563d304ca3dc9`  
		Last Modified: Wed, 26 Sep 2018 01:00:17 GMT  
		Size: 1.1 KB (1118 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `flink:hadoop28-alpine` - linux; arm variant v6

```console
$ docker pull flink@sha256:86ca39e1840b86b3ecf21f5d02756e2a618270cec85888d32c42848693925130
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **360.2 MB (360189674 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bc197201ef2e0e9062c114660379bcfa32407d26fdead6ce9ebf57326b40145f`
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
# Wed, 26 Sep 2018 07:59:11 GMT
ENV FLINK_VERSION=1.6.1 HADOOP_SCALA_VARIANT=hadoop28-scala_2.11
# Wed, 26 Sep 2018 07:59:11 GMT
ENV FLINK_HOME=/opt/flink
# Wed, 26 Sep 2018 07:59:11 GMT
ENV PATH=/opt/flink/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 26 Sep 2018 07:59:12 GMT
RUN addgroup -S -g 9999 flink &&     adduser -D -S -H -u 9999 -G flink -h $FLINK_HOME flink
# Wed, 26 Sep 2018 07:59:13 GMT
WORKDIR /opt/flink
# Wed, 26 Sep 2018 07:59:13 GMT
ENV FLINK_URL_FILE_PATH=flink/flink-1.6.1/flink-1.6.1-bin-hadoop28-scala_2.11.tgz
# Wed, 26 Sep 2018 07:59:13 GMT
ENV FLINK_TGZ_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=flink/flink-1.6.1/flink-1.6.1-bin-hadoop28-scala_2.11.tgz FLINK_ASC_URL=https://www.apache.org/dist/flink/flink-1.6.1/flink-1.6.1-bin-hadoop28-scala_2.11.tgz.asc
# Wed, 26 Sep 2018 07:59:14 GMT
COPY file:d9b980b40ddcfab2700a72e4088616452368e14c4f8fbee56f3258ac7f5dd913 in /KEYS 
# Wed, 26 Sep 2018 08:00:39 GMT
RUN set -ex;   apk add --no-cache --virtual .build-deps     ca-certificates     gnupg     openssl     tar   ;     wget -nv -O flink.tgz "$FLINK_TGZ_URL";   wget -nv -O flink.tgz.asc "$FLINK_ASC_URL";     export GNUPGHOME="$(mktemp -d)";   gpg --import /KEYS;   gpg --batch --verify flink.tgz.asc flink.tgz;   rm -rf "$GNUPGHOME" flink.tgz.asc;     tar -xf flink.tgz --strip-components=1;   rm flink.tgz;     apk del .build-deps;     chown -R flink:flink .;
# Wed, 26 Sep 2018 08:00:41 GMT
COPY file:dd3a2212d5f0bbe552ac5e863e5fb1df12bcbb32cff887e6f4f3c81e2372b6c1 in / 
# Wed, 26 Sep 2018 08:00:41 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 26 Sep 2018 08:00:42 GMT
EXPOSE 6123/tcp 8081/tcp
# Wed, 26 Sep 2018 08:00:42 GMT
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
	-	`sha256:a56bb1d58bd7c156b16d8a5bb4e403121c370539c83cbe19ef382a10900245cc`  
		Last Modified: Wed, 26 Sep 2018 08:09:33 GMT  
		Size: 1.2 KB (1207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8753975f3e9d2b84e7c772651672b411d3f820e255eaa2b73a81a8f4cea9f8be`  
		Last Modified: Wed, 26 Sep 2018 08:09:33 GMT  
		Size: 145.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37f57ec9c06c6ded017489b743f3d3d270b4f7b2e5048470399617ff91ef7783`  
		Last Modified: Wed, 26 Sep 2018 08:09:33 GMT  
		Size: 59.3 KB (59338 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4cd0e3370ab038264e0a5c6f4a3f72468063d16cc6b2a3f9088f8c17e04b219d`  
		Last Modified: Wed, 26 Sep 2018 08:10:28 GMT  
		Size: 304.5 MB (304530821 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f90cd152a0dc2e135a5026c6e2ea6581cfc1e1cb0e80a116e82381a340965807`  
		Last Modified: Wed, 26 Sep 2018 08:09:33 GMT  
		Size: 1.1 KB (1117 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `flink:hadoop28-alpine` - linux; arm64 variant v8

```console
$ docker pull flink@sha256:97089165168a61b82256997f440080fe6fb7cc6d29939dc23ed5f2a4ab730e34
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **361.2 MB (361186136 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9859b8d4ba402542f54079f7b4bf440359dbf388955f2b68897b5df2a9e244f6`
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
# Wed, 26 Sep 2018 09:33:07 GMT
ENV FLINK_VERSION=1.6.1 HADOOP_SCALA_VARIANT=hadoop28-scala_2.11
# Wed, 26 Sep 2018 09:33:07 GMT
ENV FLINK_HOME=/opt/flink
# Wed, 26 Sep 2018 09:33:08 GMT
ENV PATH=/opt/flink/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 26 Sep 2018 09:33:10 GMT
RUN addgroup -S -g 9999 flink &&     adduser -D -S -H -u 9999 -G flink -h $FLINK_HOME flink
# Wed, 26 Sep 2018 09:33:11 GMT
WORKDIR /opt/flink
# Wed, 26 Sep 2018 09:33:12 GMT
ENV FLINK_URL_FILE_PATH=flink/flink-1.6.1/flink-1.6.1-bin-hadoop28-scala_2.11.tgz
# Wed, 26 Sep 2018 09:33:12 GMT
ENV FLINK_TGZ_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=flink/flink-1.6.1/flink-1.6.1-bin-hadoop28-scala_2.11.tgz FLINK_ASC_URL=https://www.apache.org/dist/flink/flink-1.6.1/flink-1.6.1-bin-hadoop28-scala_2.11.tgz.asc
# Wed, 26 Sep 2018 09:33:14 GMT
COPY file:d9b980b40ddcfab2700a72e4088616452368e14c4f8fbee56f3258ac7f5dd913 in /KEYS 
# Wed, 26 Sep 2018 09:34:00 GMT
RUN set -ex;   apk add --no-cache --virtual .build-deps     ca-certificates     gnupg     openssl     tar   ;     wget -nv -O flink.tgz "$FLINK_TGZ_URL";   wget -nv -O flink.tgz.asc "$FLINK_ASC_URL";     export GNUPGHOME="$(mktemp -d)";   gpg --import /KEYS;   gpg --batch --verify flink.tgz.asc flink.tgz;   rm -rf "$GNUPGHOME" flink.tgz.asc;     tar -xf flink.tgz --strip-components=1;   rm flink.tgz;     apk del .build-deps;     chown -R flink:flink .;
# Wed, 26 Sep 2018 09:34:02 GMT
COPY file:dd3a2212d5f0bbe552ac5e863e5fb1df12bcbb32cff887e6f4f3c81e2372b6c1 in / 
# Wed, 26 Sep 2018 09:34:02 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 26 Sep 2018 09:34:03 GMT
EXPOSE 6123/tcp 8081/tcp
# Wed, 26 Sep 2018 09:34:04 GMT
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
	-	`sha256:8ac7f02f518a25d89de4754fb5ceff79bcb0a2f37ce6cb184cb2750f4de34af2`  
		Last Modified: Wed, 26 Sep 2018 10:09:40 GMT  
		Size: 1.2 KB (1207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74fe633746472fe8427df479c2e1ddaa025f23f73a547e2af5e9052716030052`  
		Last Modified: Wed, 26 Sep 2018 10:09:41 GMT  
		Size: 114.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc27c645595bf303dbda23b1a8e38c539a30ba90edffa85711150123d5d11cbb`  
		Last Modified: Wed, 26 Sep 2018 10:09:41 GMT  
		Size: 59.3 KB (59338 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b9cabc316dfbd785216cc70013e34ae8006fe359e5f4b16175804c43648e2b4`  
		Last Modified: Wed, 26 Sep 2018 10:10:23 GMT  
		Size: 304.5 MB (304529910 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:416ad7f553a4d3c7bcedbb828d53eba5a8ea0b6d5c61a75104e8f68e84b22182`  
		Last Modified: Wed, 26 Sep 2018 10:09:42 GMT  
		Size: 1.1 KB (1117 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `flink:hadoop28-alpine` - linux; 386

```console
$ docker pull flink@sha256:469228dfeba828c08982730581a04140e18ce6d1620f50912c80261b3536660a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **363.6 MB (363557705 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4ed7ec4f0e8faf26b7238b9fe849204014f5d1cb5aecd9ea7592eee8b8c4cd42`
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
# Wed, 26 Sep 2018 11:12:34 GMT
ENV FLINK_VERSION=1.6.1 HADOOP_SCALA_VARIANT=hadoop28-scala_2.11
# Wed, 26 Sep 2018 11:12:34 GMT
ENV FLINK_HOME=/opt/flink
# Wed, 26 Sep 2018 11:12:35 GMT
ENV PATH=/opt/flink/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 26 Sep 2018 11:12:35 GMT
RUN addgroup -S -g 9999 flink &&     adduser -D -S -H -u 9999 -G flink -h $FLINK_HOME flink
# Wed, 26 Sep 2018 11:12:35 GMT
WORKDIR /opt/flink
# Wed, 26 Sep 2018 11:12:36 GMT
ENV FLINK_URL_FILE_PATH=flink/flink-1.6.1/flink-1.6.1-bin-hadoop28-scala_2.11.tgz
# Wed, 26 Sep 2018 11:12:36 GMT
ENV FLINK_TGZ_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=flink/flink-1.6.1/flink-1.6.1-bin-hadoop28-scala_2.11.tgz FLINK_ASC_URL=https://www.apache.org/dist/flink/flink-1.6.1/flink-1.6.1-bin-hadoop28-scala_2.11.tgz.asc
# Wed, 26 Sep 2018 11:12:36 GMT
COPY file:d9b980b40ddcfab2700a72e4088616452368e14c4f8fbee56f3258ac7f5dd913 in /KEYS 
# Wed, 26 Sep 2018 11:13:09 GMT
RUN set -ex;   apk add --no-cache --virtual .build-deps     ca-certificates     gnupg     openssl     tar   ;     wget -nv -O flink.tgz "$FLINK_TGZ_URL";   wget -nv -O flink.tgz.asc "$FLINK_ASC_URL";     export GNUPGHOME="$(mktemp -d)";   gpg --import /KEYS;   gpg --batch --verify flink.tgz.asc flink.tgz;   rm -rf "$GNUPGHOME" flink.tgz.asc;     tar -xf flink.tgz --strip-components=1;   rm flink.tgz;     apk del .build-deps;     chown -R flink:flink .;
# Wed, 26 Sep 2018 11:13:09 GMT
COPY file:dd3a2212d5f0bbe552ac5e863e5fb1df12bcbb32cff887e6f4f3c81e2372b6c1 in / 
# Wed, 26 Sep 2018 11:13:09 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 26 Sep 2018 11:13:10 GMT
EXPOSE 6123/tcp 8081/tcp
# Wed, 26 Sep 2018 11:13:10 GMT
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
	-	`sha256:226ef485e0e4ff71c6544218cad5737026deb940a729b137ad0608d8723ce8fc`  
		Last Modified: Wed, 26 Sep 2018 11:29:56 GMT  
		Size: 1.2 KB (1205 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4394c03bc935df2ae70122b95f1e06dd6a7e2418c1139dbc779b6d00f5692a9c`  
		Last Modified: Wed, 26 Sep 2018 11:29:56 GMT  
		Size: 114.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1903fe15dd99d95dc8d69e1f46e9c7e784338c33e9283d26471ad915ab644f65`  
		Last Modified: Wed, 26 Sep 2018 11:29:56 GMT  
		Size: 59.3 KB (59338 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a9f2d36e7ad20045e4881ebbc07df17d5f6aa718dc88a906e85659ea8d6cd7c`  
		Last Modified: Wed, 26 Sep 2018 11:30:20 GMT  
		Size: 304.5 MB (304530304 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0dff19bb21ad45f2c41f92a831e7014739d18b03c56abc9dcb3ec6c7b1135ef`  
		Last Modified: Wed, 26 Sep 2018 11:29:56 GMT  
		Size: 1.1 KB (1117 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
