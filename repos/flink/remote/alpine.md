## `flink:alpine`

```console
$ docker pull flink@sha256:531c0aca1e4cf8cac2a0fc40f40e90dcbe912a2ef8090213cd325abdcad60bca
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `flink:alpine` - linux; amd64

```console
$ docker pull flink@sha256:a60219cc3cb387c5117b07a3202da533804c958581be2a8d6d38e49ba215db7a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **323.2 MB (323237272 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f23fd3b12a4103b7c7ea881b46085cc5e35077bf981083cf1d41b1fc1e42644d`
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
# Sat, 16 Jun 2018 07:23:07 GMT
ENV JAVA_VERSION=8u171
# Sat, 16 Jun 2018 07:23:07 GMT
ENV JAVA_ALPINE_VERSION=8.171.11-r0
# Sat, 16 Jun 2018 07:23:11 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Sat, 16 Jun 2018 08:09:03 GMT
RUN apk add --no-cache bash libc6-compat snappy 'su-exec>=0.2'
# Sat, 16 Jun 2018 09:15:00 GMT
ENV FLINK_VERSION=1.5.0 HADOOP_SCALA_VARIANT=scala_2.11
# Sat, 16 Jun 2018 09:15:00 GMT
ENV FLINK_HOME=/opt/flink
# Sat, 16 Jun 2018 09:15:00 GMT
ENV PATH=/opt/flink/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Sat, 16 Jun 2018 09:15:01 GMT
RUN addgroup -S -g 9999 flink &&     adduser -D -S -H -u 9999 -G flink -h $FLINK_HOME flink
# Sat, 16 Jun 2018 09:15:01 GMT
WORKDIR /opt/flink
# Sat, 16 Jun 2018 09:15:01 GMT
ENV FLINK_URL_FILE_PATH=flink/flink-1.5.0/flink-1.5.0-bin-scala_2.11.tgz
# Sat, 16 Jun 2018 09:15:01 GMT
ENV FLINK_TGZ_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=flink/flink-1.5.0/flink-1.5.0-bin-scala_2.11.tgz FLINK_ASC_URL=https://www.apache.org/dist/flink/flink-1.5.0/flink-1.5.0-bin-scala_2.11.tgz.asc
# Sat, 16 Jun 2018 09:15:02 GMT
COPY file:d9b980b40ddcfab2700a72e4088616452368e14c4f8fbee56f3258ac7f5dd913 in /KEYS 
# Sat, 16 Jun 2018 09:22:52 GMT
RUN set -ex;   apk add --no-cache --virtual .build-deps     ca-certificates     gnupg     openssl     tar   ;     wget -nv -O flink.tgz "$FLINK_TGZ_URL";   wget -nv -O flink.tgz.asc "$FLINK_ASC_URL";     export GNUPGHOME="$(mktemp -d)";   gpg --import /KEYS;   gpg --batch --verify flink.tgz.asc flink.tgz;   rm -rf "$GNUPGHOME" flink.tgz.asc;     tar -xf flink.tgz --strip-components=1;   rm flink.tgz;     apk del .build-deps;     chown -R flink:flink .;
# Sat, 16 Jun 2018 09:22:53 GMT
COPY file:dd3a2212d5f0bbe552ac5e863e5fb1df12bcbb32cff887e6f4f3c81e2372b6c1 in / 
# Sat, 16 Jun 2018 09:22:53 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 16 Jun 2018 09:22:53 GMT
EXPOSE 6123/tcp 8081/tcp
# Sat, 16 Jun 2018 09:22:53 GMT
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
	-	`sha256:590b87a38029f9f6e54117d1917b23bbae8dd69885c9edf171799fd02390df9d`  
		Last Modified: Sat, 16 Jun 2018 07:33:41 GMT  
		Size: 54.5 MB (54536909 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24a2432b0c5b4eb363e71e6ba15a6907d55f7f95cca2073307271a64270cd877`  
		Last Modified: Sat, 16 Jun 2018 09:29:50 GMT  
		Size: 1.7 MB (1703698 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a47f3b57741a254439ef610343ff98d7a5548237d9d89e08c2afa95240e193f`  
		Last Modified: Sat, 16 Jun 2018 09:49:53 GMT  
		Size: 1.2 KB (1211 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1d655edc6acca9a037e565296a89dacafe9a78a06335c0423604b43f99f714b`  
		Last Modified: Sat, 16 Jun 2018 09:49:53 GMT  
		Size: 111.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:501ac9fe3864523f2e5c8d18bfcdd91092248f48b85da427e3e6f913fb94751c`  
		Last Modified: Sat, 16 Jun 2018 09:49:53 GMT  
		Size: 59.3 KB (59336 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3b8cf85187a44586ba2a0c557d1f498d157114ac362ae6b2e593f4afb7555c7`  
		Last Modified: Sat, 16 Jun 2018 09:50:24 GMT  
		Size: 264.9 MB (264869112 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9569e04394ffe3ca0e4ff783f6e30bab43f3bb594a2e8352cf7b3c42f95680ba`  
		Last Modified: Sat, 16 Jun 2018 09:49:53 GMT  
		Size: 1.1 KB (1117 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
