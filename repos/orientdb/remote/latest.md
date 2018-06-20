## `orientdb:latest`

```console
$ docker pull orientdb@sha256:8fe8c5d0930f92c51f701eb138a7181ce50dbc169ff9a54af1a2881a015b05e2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `orientdb:latest` - linux; amd64

```console
$ docker pull orientdb@sha256:b9cb21aefe78ddfced5692128663d64524a388ac244490133ad755480b6a158f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **109.1 MB (109144626 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:52f7fac38da5eee4502235d35e7c9a7027924a430436c1155e047f6fd726c64d`
-	Default Command: `["server.sh"]`

```dockerfile
# Tue, 09 Jan 2018 21:10:58 GMT
ADD file:093f0723fa46f6cdbd6f7bd146448bb70ecce54254c35701feeceb956414622f in / 
# Tue, 09 Jan 2018 21:10:58 GMT
CMD ["/bin/sh"]
# Wed, 06 Jun 2018 01:55:39 GMT
ENV LANG=C.UTF-8
# Wed, 06 Jun 2018 01:55:40 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 06 Jun 2018 01:57:39 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
# Wed, 06 Jun 2018 01:57:39 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Sat, 16 Jun 2018 07:22:40 GMT
ENV JAVA_VERSION=8u171
# Sat, 16 Jun 2018 07:22:40 GMT
ENV JAVA_ALPINE_VERSION=8.171.11-r0
# Sat, 16 Jun 2018 07:22:49 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Sat, 16 Jun 2018 09:31:01 GMT
MAINTAINER OrientDB LTD (info@orientdb.com)
# Sat, 16 Jun 2018 09:31:19 GMT
ARG ORIENTDB_DOWNLOAD_SERVER
# Wed, 20 Jun 2018 17:20:00 GMT
ENV ORIENTDB_VERSION=3.0.2
# Wed, 20 Jun 2018 17:20:00 GMT
ENV ORIENTDB_DOWNLOAD_MD5=145e4836a3066783f0d2545af17b9e56
# Wed, 20 Jun 2018 17:20:01 GMT
ENV ORIENTDB_DOWNLOAD_SHA1=9aae978d9943af6e82fb4707519239e60054f652
# Wed, 20 Jun 2018 17:20:01 GMT
ENV ORIENTDB_DOWNLOAD_URL=http://central.maven.org/maven2/com/orientechnologies/orientdb-community/3.0.2/orientdb-community-3.0.2.tar.gz
# Wed, 20 Jun 2018 17:20:02 GMT
RUN apk add --update tar curl     && rm -rf /var/cache/apk/*
# Wed, 20 Jun 2018 17:20:09 GMT
RUN mkdir /orientdb &&   wget  $ORIENTDB_DOWNLOAD_URL   && echo "$ORIENTDB_DOWNLOAD_MD5 *orientdb-community-$ORIENTDB_VERSION.tar.gz" | md5sum -c -   && echo "$ORIENTDB_DOWNLOAD_SHA1 *orientdb-community-$ORIENTDB_VERSION.tar.gz" | sha1sum -c -   && tar -xvzf orientdb-community-$ORIENTDB_VERSION.tar.gz -C /orientdb --strip-components=1   && rm orientdb-community-$ORIENTDB_VERSION.tar.gz   && rm -rf /orientdb/databases/*
# Wed, 20 Jun 2018 17:20:09 GMT
ENV PATH=/orientdb/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 20 Jun 2018 17:20:09 GMT
VOLUME [/orientdb/backup /orientdb/databases /orientdb/config]
# Wed, 20 Jun 2018 17:20:09 GMT
WORKDIR /orientdb
# Wed, 20 Jun 2018 17:20:10 GMT
EXPOSE 2424/tcp
# Wed, 20 Jun 2018 17:20:10 GMT
EXPOSE 2480/tcp
# Wed, 20 Jun 2018 17:20:10 GMT
CMD ["server.sh"]
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
	-	`sha256:7120596ce621571aded381ea153b8cb4916c306331648b2e6f3d09a93c3967e4`  
		Last Modified: Sat, 16 Jun 2018 07:30:42 GMT  
		Size: 70.3 MB (70318307 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df97a4277ba1e4161b5a79ee6bd927e8213417fc8eb2ffabbdf10bb5a3a4d1f4`  
		Last Modified: Wed, 20 Jun 2018 17:20:47 GMT  
		Size: 673.4 KB (673353 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4487821890798b332d5c00c7db56219e20f3a903f78e35fdb775bf8842c0ddeb`  
		Last Modified: Wed, 20 Jun 2018 17:20:57 GMT  
		Size: 36.1 MB (36087188 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
