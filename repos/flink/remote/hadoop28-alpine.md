## `flink:hadoop28-alpine`

```console
$ docker pull flink@sha256:803f6a0923824d277ee1b292a2a46093c6616fd633bffbbfdbcb1f0c38ef636b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `flink:hadoop28-alpine` - linux; amd64

```console
$ docker pull flink@sha256:7ec1b4b19122eb50ea8b201fd45897c9baa1cedf664dabba057879fda3f96b85
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **361.8 MB (361793167 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f072986fcba25223a41ffb5924194080abddf1715dfb0799793c4ecead11e320`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["help"]`

```dockerfile
# Tue, 09 Jan 2018 21:10:58 GMT
ADD file:093f0723fa46f6cdbd6f7bd146448bb70ecce54254c35701feeceb956414622f in / 
# Tue, 09 Jan 2018 21:10:58 GMT
CMD ["/bin/sh"]
# Wed, 06 Jun 2018 01:55:39 GMT
ENV LANG=C.UTF-8
# Wed, 06 Jun 2018 01:55:40 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 06 Jun 2018 01:55:40 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Wed, 06 Jun 2018 01:55:40 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 06 Jun 2018 01:55:40 GMT
ENV JAVA_VERSION=8u151
# Wed, 06 Jun 2018 01:55:41 GMT
ENV JAVA_ALPINE_VERSION=8.151.12-r0
# Wed, 06 Jun 2018 01:55:47 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 06 Jun 2018 04:16:29 GMT
RUN apk add --no-cache bash libc6-compat snappy 'su-exec>=0.2'
# Wed, 06 Jun 2018 04:28:11 GMT
ENV FLINK_VERSION=1.5.0 HADOOP_SCALA_VARIANT=hadoop28-scala_2.11
# Wed, 06 Jun 2018 04:28:11 GMT
ENV FLINK_HOME=/opt/flink
# Wed, 06 Jun 2018 04:28:11 GMT
ENV PATH=/opt/flink/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 06 Jun 2018 04:28:12 GMT
RUN addgroup -S -g 9999 flink &&     adduser -D -S -H -u 9999 -G flink -h $FLINK_HOME flink
# Wed, 06 Jun 2018 04:28:12 GMT
WORKDIR /opt/flink
# Wed, 06 Jun 2018 04:28:13 GMT
ENV FLINK_URL_FILE_PATH=flink/flink-1.5.0/flink-1.5.0-bin-hadoop28-scala_2.11.tgz
# Wed, 06 Jun 2018 04:28:13 GMT
ENV FLINK_TGZ_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=flink/flink-1.5.0/flink-1.5.0-bin-hadoop28-scala_2.11.tgz FLINK_ASC_URL=https://www.apache.org/dist/flink/flink-1.5.0/flink-1.5.0-bin-hadoop28-scala_2.11.tgz.asc
# Wed, 06 Jun 2018 04:28:13 GMT
COPY file:d9b980b40ddcfab2700a72e4088616452368e14c4f8fbee56f3258ac7f5dd913 in /KEYS 
# Wed, 06 Jun 2018 04:28:55 GMT
RUN set -ex;   apk add --no-cache --virtual .build-deps     ca-certificates     gnupg     openssl     tar   ;     wget -nv -O flink.tgz "$FLINK_TGZ_URL";   wget -nv -O flink.tgz.asc "$FLINK_ASC_URL";     export GNUPGHOME="$(mktemp -d)";   gpg --import /KEYS;   gpg --batch --verify flink.tgz.asc flink.tgz;   rm -rf "$GNUPGHOME" flink.tgz.asc;     tar -xf flink.tgz --strip-components=1;   rm flink.tgz;     apk del .build-deps;     chown -R flink:flink .;
# Wed, 06 Jun 2018 04:28:56 GMT
COPY file:dd3a2212d5f0bbe552ac5e863e5fb1df12bcbb32cff887e6f4f3c81e2372b6c1 in / 
# Wed, 06 Jun 2018 04:28:56 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 06 Jun 2018 04:28:56 GMT
EXPOSE 6123/tcp 8081/tcp
# Wed, 06 Jun 2018 04:28:57 GMT
CMD ["help"]
```

-	Layers:
	-	`sha256:ff3a5c916c92643ff77519ffa742d3ec61b7f591b6b7504599d95a4a41134e28`  
		Last Modified: Tue, 09 Jan 2018 21:13:34 GMT  
		Size: 2.1 MB (2065537 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8906544047d741c82ab8e4f6b3a698cdc37170b9afe8006a7c2aee85bc78618`  
		Last Modified: Wed, 06 Jun 2018 02:15:28 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a790ae7377b003b4c5f694a197f9f92de583b71838a02f66e8db9498e1c548d8`  
		Last Modified: Wed, 06 Jun 2018 02:15:45 GMT  
		Size: 54.5 MB (54454083 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e50583e8a13c15c50d2e336c68d519369ecc5abeb4473a9c3920cb8a7d70a92b`  
		Last Modified: Wed, 06 Jun 2018 04:36:12 GMT  
		Size: 1.7 MB (1703685 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2479ffa9512a50c9e04fd9ac19dce3d0ef26cf3d53f27b2ebb2229f96777bbfc`  
		Last Modified: Wed, 06 Jun 2018 04:50:31 GMT  
		Size: 1.2 KB (1208 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1bfa9da91f39343b1e5304cf3371ce2334fe446f33419fd1d166e31a120f9622`  
		Last Modified: Wed, 06 Jun 2018 04:50:31 GMT  
		Size: 113.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aeb318bea4aed33f3a95a8b4a242b0b25057b7dce240d6b74dd4134f29dc4380`  
		Last Modified: Wed, 06 Jun 2018 04:50:31 GMT  
		Size: 59.3 KB (59338 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75f2409e92078234288d30e295d5426eb308652988736660b72a46283372960e`  
		Last Modified: Wed, 06 Jun 2018 04:50:51 GMT  
		Size: 303.5 MB (303507846 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3abb307af3db61368e153f0023d6a64c615c99b61c99d456ca3c4a3d8a6a5ebf`  
		Last Modified: Wed, 06 Jun 2018 04:50:31 GMT  
		Size: 1.1 KB (1116 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
