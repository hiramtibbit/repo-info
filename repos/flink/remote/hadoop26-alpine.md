## `flink:hadoop26-alpine`

```console
$ docker pull flink@sha256:2a751bb5100a997c9afe1f69765c520d4fcc2f6f8e907cb4348a67227fa7b8f4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `flink:hadoop26-alpine` - linux; amd64

```console
$ docker pull flink@sha256:2350189730a1213f87c864c5059827dfa847d9e2f61173c7f135921a7660ed3a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **355.5 MB (355496285 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5291ae3c72264add9a9d194781e47aefd6eebed9ab1da245624df9ae94b80fd3`
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
# Sat, 16 Jun 2018 09:05:20 GMT
ENV FLINK_VERSION=1.5.0 HADOOP_SCALA_VARIANT=hadoop26-scala_2.11
# Sat, 16 Jun 2018 09:05:20 GMT
ENV FLINK_HOME=/opt/flink
# Sat, 16 Jun 2018 09:05:20 GMT
ENV PATH=/opt/flink/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Sat, 16 Jun 2018 09:05:21 GMT
RUN addgroup -S -g 9999 flink &&     adduser -D -S -H -u 9999 -G flink -h $FLINK_HOME flink
# Sat, 16 Jun 2018 09:05:21 GMT
WORKDIR /opt/flink
# Sat, 16 Jun 2018 09:05:21 GMT
ENV FLINK_URL_FILE_PATH=flink/flink-1.5.0/flink-1.5.0-bin-hadoop26-scala_2.11.tgz
# Sat, 16 Jun 2018 09:05:21 GMT
ENV FLINK_TGZ_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=flink/flink-1.5.0/flink-1.5.0-bin-hadoop26-scala_2.11.tgz FLINK_ASC_URL=https://www.apache.org/dist/flink/flink-1.5.0/flink-1.5.0-bin-hadoop26-scala_2.11.tgz.asc
# Sat, 16 Jun 2018 09:05:22 GMT
COPY file:d9b980b40ddcfab2700a72e4088616452368e14c4f8fbee56f3258ac7f5dd913 in /KEYS 
# Sat, 16 Jun 2018 09:11:02 GMT
RUN set -ex;   apk add --no-cache --virtual .build-deps     ca-certificates     gnupg     openssl     tar   ;     wget -nv -O flink.tgz "$FLINK_TGZ_URL";   wget -nv -O flink.tgz.asc "$FLINK_ASC_URL";     export GNUPGHOME="$(mktemp -d)";   gpg --import /KEYS;   gpg --batch --verify flink.tgz.asc flink.tgz;   rm -rf "$GNUPGHOME" flink.tgz.asc;     tar -xf flink.tgz --strip-components=1;   rm flink.tgz;     apk del .build-deps;     chown -R flink:flink .;
# Sat, 16 Jun 2018 09:11:02 GMT
COPY file:dd3a2212d5f0bbe552ac5e863e5fb1df12bcbb32cff887e6f4f3c81e2372b6c1 in / 
# Sat, 16 Jun 2018 09:11:02 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 16 Jun 2018 09:11:02 GMT
EXPOSE 6123/tcp 8081/tcp
# Sat, 16 Jun 2018 09:11:03 GMT
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
	-	`sha256:b05b85d303adb38c0bebdee34d94e0ec2c442992228225934d25f79b9823c073`  
		Last Modified: Sat, 16 Jun 2018 09:44:33 GMT  
		Size: 1.2 KB (1209 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2908753dabcb85d701ded2789543b07e91a113aa7a3ecc1a50e243fd843e476e`  
		Last Modified: Sat, 16 Jun 2018 09:44:33 GMT  
		Size: 114.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e1ef882f42afeb4c70a4159b91347025ebfd5295d2c0447683cb0ad81c94ffd`  
		Last Modified: Sat, 16 Jun 2018 09:44:33 GMT  
		Size: 59.3 KB (59338 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70e1a86afb684514e8ba7b60c7eea8546797d59d5e11021c54e7eab31c1f9b7d`  
		Last Modified: Sat, 16 Jun 2018 09:45:20 GMT  
		Size: 297.1 MB (297128122 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:045764219f4c387f83682b8a0eb8670b815815c4f6fbca597f8256199400bbf2`  
		Last Modified: Sat, 16 Jun 2018 09:44:33 GMT  
		Size: 1.1 KB (1117 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
