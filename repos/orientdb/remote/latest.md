## `orientdb:latest`

```console
$ docker pull orientdb@sha256:a99bb39b1e71c01ad5e689a6f2d81afdbf8eadc07f1e7f8f59f26cf2cea837e8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `orientdb:latest` - linux; amd64

```console
$ docker pull orientdb@sha256:62f72e4136272fdbdab0c749dca5179af2d6a044a7a6e1fa9d58370803487dd2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **110.4 MB (110426914 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:625da5bc28b52415211d4ac202b313d90a7a87a10710336fc62bfea4d80bbeee`
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
# Wed, 12 Sep 2018 00:06:55 GMT
ENV JAVA_VERSION=8u171
# Wed, 12 Sep 2018 00:06:56 GMT
ENV JAVA_ALPINE_VERSION=8.171.11-r0
# Wed, 12 Sep 2018 00:06:59 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 12 Sep 2018 04:43:20 GMT
MAINTAINER OrientDB LTD (info@orientdb.com)
# Wed, 12 Sep 2018 04:43:37 GMT
ARG ORIENTDB_DOWNLOAD_SERVER
# Tue, 16 Oct 2018 21:43:46 GMT
ENV ORIENTDB_VERSION=3.0.9
# Tue, 16 Oct 2018 21:43:46 GMT
ENV ORIENTDB_DOWNLOAD_MD5=ec4fc051c8d7f01e2490cfa10c0a9d5a
# Tue, 16 Oct 2018 21:43:47 GMT
ENV ORIENTDB_DOWNLOAD_SHA1=129d0f2eb9db3d611c7347361a0db7f6307ea20d
# Tue, 16 Oct 2018 21:43:47 GMT
ENV ORIENTDB_DOWNLOAD_URL=http://central.maven.org/maven2/com/orientechnologies/orientdb-community/3.0.9/orientdb-community-3.0.9.tar.gz
# Tue, 16 Oct 2018 21:43:49 GMT
RUN apk add --update tar curl     && rm -rf /var/cache/apk/*
# Tue, 16 Oct 2018 21:43:54 GMT
RUN mkdir /orientdb &&   wget  $ORIENTDB_DOWNLOAD_URL   && echo "$ORIENTDB_DOWNLOAD_MD5 *orientdb-community-$ORIENTDB_VERSION.tar.gz" | md5sum -c -   && echo "$ORIENTDB_DOWNLOAD_SHA1 *orientdb-community-$ORIENTDB_VERSION.tar.gz" | sha1sum -c -   && tar -xvzf orientdb-community-$ORIENTDB_VERSION.tar.gz -C /orientdb --strip-components=1   && rm orientdb-community-$ORIENTDB_VERSION.tar.gz   && rm -rf /orientdb/databases/*
# Tue, 16 Oct 2018 21:43:54 GMT
ENV PATH=/orientdb/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 16 Oct 2018 21:43:55 GMT
VOLUME [/orientdb/backup /orientdb/databases /orientdb/config]
# Tue, 16 Oct 2018 21:43:56 GMT
WORKDIR /orientdb
# Tue, 16 Oct 2018 21:43:56 GMT
EXPOSE 2424/tcp
# Tue, 16 Oct 2018 21:43:57 GMT
EXPOSE 2480/tcp
# Tue, 16 Oct 2018 21:43:57 GMT
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
	-	`sha256:fe815adf554b18a057fade5a6b9498765d20c055f80d8d2facfb3a9cb00b66d0`  
		Last Modified: Wed, 12 Sep 2018 00:09:10 GMT  
		Size: 70.6 MB (70581326 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4bd8c5c4599f60e3d7e6656fae05be156557be56da3f57849a71bc32f52f8669`  
		Last Modified: Tue, 16 Oct 2018 21:44:49 GMT  
		Size: 767.3 KB (767265 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92e416e3b0f61cacc5fd10bfca31665eec92e85fb34d317966880ea8b69d7adb`  
		Last Modified: Tue, 16 Oct 2018 21:44:52 GMT  
		Size: 36.9 MB (36871154 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
