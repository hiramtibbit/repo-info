## `orientdb:latest`

```console
$ docker pull orientdb@sha256:1577a38253fa84f9556c24eca2c70db8d8730a9dd9942bd8d1c8154e9a866d94
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `orientdb:latest` - linux; amd64

```console
$ docker pull orientdb@sha256:3e35668ae9c0a657b622b5fe658524b37241ee58c212f5264a5992ed7b3ac99a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **111.1 MB (111088933 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:43330a2a5ea4d0c6cdca8eae01e057bbeccc9994556ee12549c3b75a347555d6`
-	Default Command: `["server.sh"]`

```dockerfile
# Thu, 07 Mar 2019 22:19:40 GMT
ADD file:88875982b0512a9d0ba001bfea19497ae9a9442c257b19c61bffc56e7201b0c3 in / 
# Thu, 07 Mar 2019 22:19:40 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 02:13:29 GMT
ENV LANG=C.UTF-8
# Fri, 08 Mar 2019 02:13:30 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 08 Mar 2019 02:13:30 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
# Fri, 08 Mar 2019 02:13:30 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 27 Mar 2019 23:27:19 GMT
ENV JAVA_VERSION=8u201
# Tue, 02 Apr 2019 23:45:30 GMT
ENV JAVA_ALPINE_VERSION=8.201.08-r1
# Tue, 02 Apr 2019 23:45:33 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 03 Apr 2019 00:13:50 GMT
MAINTAINER OrientDB LTD (info@orientdb.com)
# Wed, 03 Apr 2019 00:14:01 GMT
ARG ORIENTDB_DOWNLOAD_SERVER
# Wed, 03 Apr 2019 00:14:14 GMT
ENV ORIENTDB_VERSION=3.0.18
# Wed, 03 Apr 2019 00:14:14 GMT
ENV ORIENTDB_DOWNLOAD_MD5=7cd3b9cd476db4ceadf5203b361ccd9c
# Wed, 03 Apr 2019 00:14:14 GMT
ENV ORIENTDB_DOWNLOAD_SHA1=4a3a208530972b4230fbd9515614003d61273135
# Wed, 03 Apr 2019 00:14:14 GMT
ENV ORIENTDB_DOWNLOAD_URL=http://central.maven.org/maven2/com/orientechnologies/orientdb-community/3.0.18/orientdb-community-3.0.18.tar.gz
# Wed, 03 Apr 2019 00:14:16 GMT
RUN apk add --update tar curl     && rm -rf /var/cache/apk/*
# Wed, 03 Apr 2019 00:14:20 GMT
RUN mkdir /orientdb &&   wget  $ORIENTDB_DOWNLOAD_URL   && echo "$ORIENTDB_DOWNLOAD_MD5 *orientdb-community-$ORIENTDB_VERSION.tar.gz" | md5sum -c -   && echo "$ORIENTDB_DOWNLOAD_SHA1 *orientdb-community-$ORIENTDB_VERSION.tar.gz" | sha1sum -c -   && tar -xvzf orientdb-community-$ORIENTDB_VERSION.tar.gz -C /orientdb --strip-components=1   && rm orientdb-community-$ORIENTDB_VERSION.tar.gz   && rm -rf /orientdb/databases/*
# Wed, 03 Apr 2019 00:14:20 GMT
ENV PATH=/orientdb/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 03 Apr 2019 00:14:20 GMT
VOLUME [/orientdb/backup /orientdb/databases /orientdb/config]
# Wed, 03 Apr 2019 00:14:21 GMT
WORKDIR /orientdb
# Wed, 03 Apr 2019 00:14:21 GMT
EXPOSE 2424
# Wed, 03 Apr 2019 00:14:21 GMT
EXPOSE 2480
# Wed, 03 Apr 2019 00:14:21 GMT
CMD ["server.sh"]
```

-	Layers:
	-	`sha256:8e402f1a9c577ded051c1ef10e9fe4492890459522089959988a4852dee8ab2c`  
		Last Modified: Tue, 05 Mar 2019 21:22:35 GMT  
		Size: 2.8 MB (2754729 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4866c822999cc5862e60f784434873bd291ef9a7ac6e9199a5d1d19eea22fe17`  
		Last Modified: Fri, 08 Mar 2019 02:15:56 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec484ea07ed1e4b3d2c8bb6ffb98d668fc1602607ced25e40a0d3649c875af12`  
		Last Modified: Tue, 02 Apr 2019 23:47:15 GMT  
		Size: 70.7 MB (70716050 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1b8082f214f998630d3a1b2b83ce4d7ea327b949882c0210bf54767d561401c`  
		Last Modified: Wed, 03 Apr 2019 00:15:02 GMT  
		Size: 784.0 KB (783987 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d94488307f1dd773be5468fe91b7fdee7584b70b4d595ce8a8fb9cbcae6fad00`  
		Last Modified: Wed, 03 Apr 2019 00:15:05 GMT  
		Size: 36.8 MB (36833928 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
