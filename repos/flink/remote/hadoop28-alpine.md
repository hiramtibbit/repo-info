## `flink:hadoop28-alpine`

```console
$ docker pull flink@sha256:e5318be487ad45f256cfb977c6cb523f4d846e25a049cfbf03f900fc7f11ce19
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

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
