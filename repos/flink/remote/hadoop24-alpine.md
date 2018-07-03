## `flink:hadoop24-alpine`

```console
$ docker pull flink@sha256:075ad26cc72e5cb2faf3c3e3f4bda5a769ed2e166f24983126d02cabe1d0d7a7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `flink:hadoop24-alpine` - linux; amd64

```console
$ docker pull flink@sha256:6615205711653ecdbc9f0cf1ad713e932b60785441890cf836da3334b3756a80
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **350.0 MB (350005742 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7657a5c84a783dc9105d390e58ce290d511f7eef25a1e9e3a08fc2906b2fe92c`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["help"]`

```dockerfile
# Tue, 09 Jan 2018 21:10:58 GMT
ADD file:093f0723fa46f6cdbd6f7bd146448bb70ecce54254c35701feeceb956414622f in / 
# Tue, 09 Jan 2018 21:10:58 GMT
CMD ["/bin/sh"]
# Wed, 10 Jan 2018 04:48:24 GMT
ENV LANG=C.UTF-8
# Wed, 10 Jan 2018 04:48:25 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 10 Jan 2018 04:51:56 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Wed, 10 Jan 2018 04:51:57 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 03 Jul 2018 00:02:48 GMT
ENV JAVA_VERSION=8u171
# Tue, 03 Jul 2018 00:02:48 GMT
ENV JAVA_ALPINE_VERSION=8.171.11-r0
# Tue, 03 Jul 2018 00:02:51 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 03 Jul 2018 01:19:25 GMT
RUN apk add --no-cache bash libc6-compat snappy 'su-exec>=0.2'
# Tue, 03 Jul 2018 01:33:05 GMT
ENV FLINK_VERSION=1.5.0 HADOOP_SCALA_VARIANT=hadoop24-scala_2.11
# Tue, 03 Jul 2018 01:33:05 GMT
ENV FLINK_HOME=/opt/flink
# Tue, 03 Jul 2018 01:33:06 GMT
ENV PATH=/opt/flink/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 03 Jul 2018 01:33:06 GMT
RUN addgroup -S -g 9999 flink &&     adduser -D -S -H -u 9999 -G flink -h $FLINK_HOME flink
# Tue, 03 Jul 2018 01:33:07 GMT
WORKDIR /opt/flink
# Tue, 03 Jul 2018 01:33:07 GMT
ENV FLINK_URL_FILE_PATH=flink/flink-1.5.0/flink-1.5.0-bin-hadoop24-scala_2.11.tgz
# Tue, 03 Jul 2018 01:33:07 GMT
ENV FLINK_TGZ_URL=https://www.apache.org/dyn/closer.cgi?action=download&filename=flink/flink-1.5.0/flink-1.5.0-bin-hadoop24-scala_2.11.tgz FLINK_ASC_URL=https://www.apache.org/dist/flink/flink-1.5.0/flink-1.5.0-bin-hadoop24-scala_2.11.tgz.asc
# Tue, 03 Jul 2018 01:33:08 GMT
COPY file:d9b980b40ddcfab2700a72e4088616452368e14c4f8fbee56f3258ac7f5dd913 in /KEYS 
# Tue, 03 Jul 2018 01:34:35 GMT
RUN set -ex;   apk add --no-cache --virtual .build-deps     ca-certificates     gnupg     openssl     tar   ;     wget -nv -O flink.tgz "$FLINK_TGZ_URL";   wget -nv -O flink.tgz.asc "$FLINK_ASC_URL";     export GNUPGHOME="$(mktemp -d)";   gpg --import /KEYS;   gpg --batch --verify flink.tgz.asc flink.tgz;   rm -rf "$GNUPGHOME" flink.tgz.asc;     tar -xf flink.tgz --strip-components=1;   rm flink.tgz;     apk del .build-deps;     chown -R flink:flink .;
# Tue, 03 Jul 2018 01:34:36 GMT
COPY file:dd3a2212d5f0bbe552ac5e863e5fb1df12bcbb32cff887e6f4f3c81e2372b6c1 in / 
# Tue, 03 Jul 2018 01:34:36 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 03 Jul 2018 01:34:36 GMT
EXPOSE 6123/tcp 8081/tcp
# Tue, 03 Jul 2018 01:34:36 GMT
CMD ["help"]
```

-	Layers:
	-	`sha256:ff3a5c916c92643ff77519ffa742d3ec61b7f591b6b7504599d95a4a41134e28`  
		Last Modified: Tue, 09 Jan 2018 21:13:34 GMT  
		Size: 2.1 MB (2065537 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5de5f69f42d765af6ffb6753242b18dd4a33602ad7d76df52064833e5c527cb4`  
		Last Modified: Wed, 10 Jan 2018 04:53:02 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c68ecbd4abe7853e771b8673e2fd08897c98b23b07ac4b640a2ac28954167516`  
		Last Modified: Tue, 03 Jul 2018 00:44:13 GMT  
		Size: 54.5 MB (54536928 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c4ff908e3fdb516e392390a90c23467672211e28a6e167dfb0f6f23fe923e50`  
		Last Modified: Tue, 03 Jul 2018 01:44:47 GMT  
		Size: 1.7 MB (1703698 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f787fe62450fc277dec39473643522881e572c31bacdbc592448d68f7797029a`  
		Last Modified: Tue, 03 Jul 2018 01:58:08 GMT  
		Size: 1.2 KB (1209 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72b16c687ba537d185d1b1a3a04c0124cf784c9045058c3adcb11d1382d73967`  
		Last Modified: Tue, 03 Jul 2018 01:58:08 GMT  
		Size: 114.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8f71f9fa885a6a97ed8c204487c7fc8b3760769d4ef17c2080dafd8168755ef`  
		Last Modified: Tue, 03 Jul 2018 01:58:08 GMT  
		Size: 59.3 KB (59338 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3a239ab7c9eb5943b8d97b466a6bb5fe1a3f26108b7108a988b6f0cdc90b129`  
		Last Modified: Tue, 03 Jul 2018 01:58:26 GMT  
		Size: 291.6 MB (291637563 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1e3c665ca36023a5b0423c704a7d9c640ebbf05291985e6b6f83f5ca7f8b7e6`  
		Last Modified: Tue, 03 Jul 2018 01:58:08 GMT  
		Size: 1.1 KB (1117 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
