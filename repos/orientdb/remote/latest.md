## `orientdb:latest`

```console
$ docker pull orientdb@sha256:77d3630bbc348954b6074a9da83ea763d4886dc2a81340e8c8b15f1e57294a43
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `orientdb:latest` - linux; amd64

```console
$ docker pull orientdb@sha256:a950c9b1679b0e380959ef89dac631df9031ec20c43ed664a98680dc052d4f26
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **110.5 MB (110497288 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2bb8204058b15a620436620df53feda4f895b3bbfff6d4a6f7cb3cf9f20db09a`
-	Default Command: `["server.sh"]`

```dockerfile
# Tue, 11 Sep 2018 22:19:50 GMT
ADD file:25c10b1d1b41d46a1827ad0b0d2389c24df6d31430005ff4e9a2d84ea23ebd42 in / 
# Tue, 11 Sep 2018 22:19:50 GMT
CMD ["/bin/sh"]
# Wed, 12 Sep 2018 00:06:51 GMT
ENV LANG=C.UTF-8
# Wed, 12 Sep 2018 00:06:51 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 12 Sep 2018 00:06:55 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
# Wed, 12 Sep 2018 00:06:55 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 24 Oct 2018 22:31:47 GMT
ENV JAVA_VERSION=8u181
# Wed, 24 Oct 2018 22:31:47 GMT
ENV JAVA_ALPINE_VERSION=8.181.13-r0
# Wed, 24 Oct 2018 22:31:51 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Thu, 25 Oct 2018 00:07:24 GMT
MAINTAINER OrientDB LTD (info@orientdb.com)
# Thu, 25 Oct 2018 00:07:44 GMT
ARG ORIENTDB_DOWNLOAD_SERVER
# Tue, 11 Dec 2018 22:20:52 GMT
ENV ORIENTDB_VERSION=3.0.12
# Tue, 11 Dec 2018 22:20:53 GMT
ENV ORIENTDB_DOWNLOAD_MD5=ca2379a58d7312430595d120afb27222
# Tue, 11 Dec 2018 22:20:53 GMT
ENV ORIENTDB_DOWNLOAD_SHA1=2241ccfe843ef5f8fad703d8f9bafcf814d8f918
# Tue, 11 Dec 2018 22:20:53 GMT
ENV ORIENTDB_DOWNLOAD_URL=http://central.maven.org/maven2/com/orientechnologies/orientdb-community/3.0.12/orientdb-community-3.0.12.tar.gz
# Tue, 11 Dec 2018 22:20:54 GMT
RUN apk add --update tar curl     && rm -rf /var/cache/apk/*
# Tue, 11 Dec 2018 22:20:58 GMT
RUN mkdir /orientdb &&   wget  $ORIENTDB_DOWNLOAD_URL   && echo "$ORIENTDB_DOWNLOAD_MD5 *orientdb-community-$ORIENTDB_VERSION.tar.gz" | md5sum -c -   && echo "$ORIENTDB_DOWNLOAD_SHA1 *orientdb-community-$ORIENTDB_VERSION.tar.gz" | sha1sum -c -   && tar -xvzf orientdb-community-$ORIENTDB_VERSION.tar.gz -C /orientdb --strip-components=1   && rm orientdb-community-$ORIENTDB_VERSION.tar.gz   && rm -rf /orientdb/databases/*
# Tue, 11 Dec 2018 22:20:59 GMT
ENV PATH=/orientdb/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 11 Dec 2018 22:20:59 GMT
VOLUME [/orientdb/backup /orientdb/databases /orientdb/config]
# Tue, 11 Dec 2018 22:20:59 GMT
WORKDIR /orientdb
# Tue, 11 Dec 2018 22:21:00 GMT
EXPOSE 2424/tcp
# Tue, 11 Dec 2018 22:21:00 GMT
EXPOSE 2480/tcp
# Tue, 11 Dec 2018 22:21:01 GMT
CMD ["server.sh"]
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
	-	`sha256:ef87ded15917facc562d84e802d02ded848ae802cc04194400ba4cb8798dd4f7`  
		Last Modified: Wed, 24 Oct 2018 22:43:46 GMT  
		Size: 70.6 MB (70610525 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33032a1c879e2e0d5d375f460032cf9f014996c0e680613e87181228e23ea0b2`  
		Last Modified: Tue, 11 Dec 2018 22:22:43 GMT  
		Size: 767.3 KB (767252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5dd1be916be0b0a4d7e3211df3c57e8c7b25ed1ac2e553981f9b41c07ae57fe0`  
		Last Modified: Tue, 11 Dec 2018 22:22:46 GMT  
		Size: 36.9 MB (36912342 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
