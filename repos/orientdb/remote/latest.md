## `orientdb:latest`

```console
$ docker pull orientdb@sha256:f015ab80cedd2e781644ad76550b47b85a6bc03eed780b1ce850535de5dcb678
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `orientdb:latest` - linux; amd64

```console
$ docker pull orientdb@sha256:9ac727c627514f20eb0ddbffc550b8496af86cd645633abe2fc331d7170602e9
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **107.9 MB (107904774 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4b1b9650f2c19da5ed377ab08ec32e3eaef53d1c5d132ef948a5ee2fb836e640`
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
# Wed, 06 Jun 2018 01:57:39 GMT
ENV JAVA_VERSION=8u151
# Wed, 06 Jun 2018 01:57:40 GMT
ENV JAVA_ALPINE_VERSION=8.151.12-r0
# Wed, 06 Jun 2018 01:57:45 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 06 Jun 2018 06:08:00 GMT
MAINTAINER OrientDB LTD (info@orientdb.com)
# Wed, 06 Jun 2018 06:08:20 GMT
ARG ORIENTDB_DOWNLOAD_SERVER
# Wed, 06 Jun 2018 06:08:42 GMT
ENV ORIENTDB_VERSION=3.0.1
# Wed, 06 Jun 2018 06:08:42 GMT
ENV ORIENTDB_DOWNLOAD_MD5=14822052f6fdbd7e1c3a8331e2794e0f
# Wed, 06 Jun 2018 06:08:42 GMT
ENV ORIENTDB_DOWNLOAD_SHA1=22402e40030bcc821ec20b6259e407366ad85e35
# Wed, 06 Jun 2018 06:08:42 GMT
ENV ORIENTDB_DOWNLOAD_URL=http://central.maven.org/maven2/com/orientechnologies/orientdb-community/3.0.1/orientdb-community-3.0.1.tar.gz
# Wed, 06 Jun 2018 06:08:43 GMT
RUN apk add --update tar curl     && rm -rf /var/cache/apk/*
# Wed, 06 Jun 2018 06:08:53 GMT
RUN mkdir /orientdb &&   wget  $ORIENTDB_DOWNLOAD_URL   && echo "$ORIENTDB_DOWNLOAD_MD5 *orientdb-community-$ORIENTDB_VERSION.tar.gz" | md5sum -c -   && echo "$ORIENTDB_DOWNLOAD_SHA1 *orientdb-community-$ORIENTDB_VERSION.tar.gz" | sha1sum -c -   && tar -xvzf orientdb-community-$ORIENTDB_VERSION.tar.gz -C /orientdb --strip-components=1   && rm orientdb-community-$ORIENTDB_VERSION.tar.gz   && rm -rf /orientdb/databases/*
# Wed, 06 Jun 2018 06:08:53 GMT
ENV PATH=/orientdb/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 06 Jun 2018 06:08:53 GMT
VOLUME [/orientdb/backup /orientdb/databases /orientdb/config]
# Wed, 06 Jun 2018 06:08:53 GMT
WORKDIR /orientdb
# Wed, 06 Jun 2018 06:08:54 GMT
EXPOSE 2424/tcp
# Wed, 06 Jun 2018 06:08:54 GMT
EXPOSE 2480/tcp
# Wed, 06 Jun 2018 06:08:54 GMT
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
	-	`sha256:ae9db8d675e1fae91c193ff65ae84529aeb62d738d5bc5b09eb2fdc655edbffa`  
		Last Modified: Wed, 06 Jun 2018 02:19:31 GMT  
		Size: 70.2 MB (70227658 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f6e3aeb46e27d2396311b7fa61da9629c0fad1cb42ed0e27b1446681ef435e8`  
		Last Modified: Wed, 06 Jun 2018 06:10:29 GMT  
		Size: 673.3 KB (673319 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52f38b1b7a52c89047883a62c7aa9e528cae68efa16ff04eec67f451a17720b4`  
		Last Modified: Wed, 06 Jun 2018 06:10:41 GMT  
		Size: 34.9 MB (34938019 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
