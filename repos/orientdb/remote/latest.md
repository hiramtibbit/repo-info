## `orientdb:latest`

```console
$ docker pull orientdb@sha256:736752bdda96b953f036130a3643f808c14a1a2368d6dbb8bbbd60e1afd463c0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `orientdb:latest` - linux; amd64

```console
$ docker pull orientdb@sha256:d965a7f0fa64ea099772f64ee556146b373acc7501da86b1a892bb8021f62a8a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **111.3 MB (111290649 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:072c0ff7fe9d37fd852a72dc2c50c23e7e501c7f3c0a9071dc0d2b6bc6087037`
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
# Wed, 13 Feb 2019 22:20:07 GMT
ENV ORIENTDB_VERSION=3.0.15
# Wed, 13 Feb 2019 22:20:07 GMT
ENV ORIENTDB_DOWNLOAD_MD5=ae67b025b5799b55248078cd80b8c9be
# Wed, 13 Feb 2019 22:20:07 GMT
ENV ORIENTDB_DOWNLOAD_SHA1=93c97ea94c3c9beff8fa075011374be34c6e5c2b
# Wed, 13 Feb 2019 22:20:07 GMT
ENV ORIENTDB_DOWNLOAD_URL=http://central.maven.org/maven2/com/orientechnologies/orientdb-community/3.0.15/orientdb-community-3.0.15.tar.gz
# Wed, 13 Feb 2019 22:20:08 GMT
RUN apk add --update tar curl     && rm -rf /var/cache/apk/*
# Wed, 13 Feb 2019 22:20:12 GMT
RUN mkdir /orientdb &&   wget  $ORIENTDB_DOWNLOAD_URL   && echo "$ORIENTDB_DOWNLOAD_MD5 *orientdb-community-$ORIENTDB_VERSION.tar.gz" | md5sum -c -   && echo "$ORIENTDB_DOWNLOAD_SHA1 *orientdb-community-$ORIENTDB_VERSION.tar.gz" | sha1sum -c -   && tar -xvzf orientdb-community-$ORIENTDB_VERSION.tar.gz -C /orientdb --strip-components=1   && rm orientdb-community-$ORIENTDB_VERSION.tar.gz   && rm -rf /orientdb/databases/*
# Wed, 13 Feb 2019 22:20:12 GMT
ENV PATH=/orientdb/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 13 Feb 2019 22:20:12 GMT
VOLUME [/orientdb/backup /orientdb/databases /orientdb/config]
# Wed, 13 Feb 2019 22:20:12 GMT
WORKDIR /orientdb
# Wed, 13 Feb 2019 22:20:13 GMT
EXPOSE 2424
# Wed, 13 Feb 2019 22:20:13 GMT
EXPOSE 2480
# Wed, 13 Feb 2019 22:20:13 GMT
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
	-	`sha256:611d28371486ced71136f777d585b7c30a5c980d76fad872892a1355c53a5205`  
		Last Modified: Wed, 13 Feb 2019 22:20:32 GMT  
		Size: 781.5 KB (781471 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b14e5bb75bd30add86c4b2a34ff283e6c037d81cdae43c055d4c14af7f340f8a`  
		Last Modified: Wed, 13 Feb 2019 22:20:35 GMT  
		Size: 37.0 MB (37042008 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
