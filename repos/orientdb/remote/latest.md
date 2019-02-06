## `orientdb:latest`

```console
$ docker pull orientdb@sha256:18a6c004398f52372edfb3a2bae0151dac8a5fc9dfa1569f229bc81dcabc3072
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `orientdb:latest` - linux; amd64

```console
$ docker pull orientdb@sha256:6a8090585d8a72188075f008ef03bc8ee4b5f076325f7ad7a5c0adff57545f68
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **111.2 MB (111172541 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:113fd8e00de6b921ec4492bba07a838c7317adea6cc5c1ea2ec5d047c8b5b09a`
-	Default Command: `["server.sh"]`

```dockerfile
# Wed, 30 Jan 2019 22:19:52 GMT
ADD file:2a1fc9351afe35698918545b2d466d9805c2e8afcec52f916785ee65bbafeced in / 
# Wed, 30 Jan 2019 22:19:52 GMT
CMD ["/bin/sh"]
# Tue, 05 Feb 2019 20:39:38 GMT
ENV LANG=C.UTF-8
# Tue, 05 Feb 2019 20:39:40 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 05 Feb 2019 20:39:40 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
# Tue, 05 Feb 2019 20:39:40 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 05 Feb 2019 20:39:40 GMT
ENV JAVA_VERSION=8u191
# Tue, 05 Feb 2019 20:39:40 GMT
ENV JAVA_ALPINE_VERSION=8.191.12-r0
# Tue, 05 Feb 2019 20:39:49 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 05 Feb 2019 23:18:18 GMT
MAINTAINER OrientDB LTD (info@orientdb.com)
# Tue, 05 Feb 2019 23:18:28 GMT
ARG ORIENTDB_DOWNLOAD_SERVER
# Tue, 05 Feb 2019 23:18:46 GMT
ENV ORIENTDB_VERSION=3.0.13
# Tue, 05 Feb 2019 23:18:46 GMT
ENV ORIENTDB_DOWNLOAD_MD5=12b955c069aeefd8697891d2310c7520
# Tue, 05 Feb 2019 23:18:46 GMT
ENV ORIENTDB_DOWNLOAD_SHA1=35bc1cdfa79d6aa133cdcdffe72a3ed9f7a39cde
# Tue, 05 Feb 2019 23:18:46 GMT
ENV ORIENTDB_DOWNLOAD_URL=http://central.maven.org/maven2/com/orientechnologies/orientdb-community/3.0.13/orientdb-community-3.0.13.tar.gz
# Tue, 05 Feb 2019 23:18:48 GMT
RUN apk add --update tar curl     && rm -rf /var/cache/apk/*
# Tue, 05 Feb 2019 23:18:53 GMT
RUN mkdir /orientdb &&   wget  $ORIENTDB_DOWNLOAD_URL   && echo "$ORIENTDB_DOWNLOAD_MD5 *orientdb-community-$ORIENTDB_VERSION.tar.gz" | md5sum -c -   && echo "$ORIENTDB_DOWNLOAD_SHA1 *orientdb-community-$ORIENTDB_VERSION.tar.gz" | sha1sum -c -   && tar -xvzf orientdb-community-$ORIENTDB_VERSION.tar.gz -C /orientdb --strip-components=1   && rm orientdb-community-$ORIENTDB_VERSION.tar.gz   && rm -rf /orientdb/databases/*
# Tue, 05 Feb 2019 23:18:53 GMT
ENV PATH=/orientdb/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 05 Feb 2019 23:18:53 GMT
VOLUME [/orientdb/backup /orientdb/databases /orientdb/config]
# Tue, 05 Feb 2019 23:18:53 GMT
WORKDIR /orientdb
# Tue, 05 Feb 2019 23:18:54 GMT
EXPOSE 2424
# Tue, 05 Feb 2019 23:18:54 GMT
EXPOSE 2480
# Tue, 05 Feb 2019 23:18:54 GMT
CMD ["server.sh"]
```

-	Layers:
	-	`sha256:6c40cc604d8e4c121adcb6b0bfe8bb038815c350980090e74aa5a6423f8f82c0`  
		Last Modified: Wed, 30 Jan 2019 22:21:08 GMT  
		Size: 2.8 MB (2754728 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e78b803852394d2b9aaa3ce93b0f2502b0bf8e063b1fa79734de0fc8ee55ee6e`  
		Last Modified: Tue, 05 Feb 2019 20:45:24 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47317d99e629d0943f97c8ec0e76e877a744ccbaf98e46603289bc856765c95a`  
		Last Modified: Tue, 05 Feb 2019 20:45:33 GMT  
		Size: 70.7 MB (70712203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e13a15b4a4e44a6c4bc26a5484084bb760b67bfb27e26ed69e932666fc0ba82`  
		Last Modified: Tue, 05 Feb 2019 23:20:11 GMT  
		Size: 781.5 KB (781471 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de2dfd477d05eb9b2d49eb86b35d756e7cc9475eb80f32ef5af26cc34cfffc1d`  
		Last Modified: Tue, 05 Feb 2019 23:20:15 GMT  
		Size: 36.9 MB (36923900 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
