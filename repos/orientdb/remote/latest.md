## `orientdb:latest`

```console
$ docker pull orientdb@sha256:6a058205db1fa2b5a86595989703bdd842bebca70c60908d114a61daa3c680b2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `orientdb:latest` - linux; amd64

```console
$ docker pull orientdb@sha256:53d2ab19a34de5186acada22a3cecc7c877d600df3cf592af28164f80f6714c3
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **110.6 MB (110554124 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1be06e0326fc09ec171af1c12dba45c39a2f318581a44002610a4e587ab0928e`
-	Default Command: `["server.sh"]`

```dockerfile
# Wed, 30 Jan 2019 22:19:46 GMT
ADD file:91fb97ea3549e52e7b6e22b93a6736cf915c756f3d13348406d8ad5f1a872680 in / 
# Wed, 30 Jan 2019 22:19:47 GMT
CMD ["/bin/sh"]
# Thu, 31 Jan 2019 02:42:14 GMT
ENV LANG=C.UTF-8
# Thu, 31 Jan 2019 02:42:14 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Thu, 31 Jan 2019 02:42:14 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
# Thu, 31 Jan 2019 02:42:15 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Thu, 31 Jan 2019 02:42:15 GMT
ENV JAVA_VERSION=8u191
# Thu, 31 Jan 2019 02:42:15 GMT
ENV JAVA_ALPINE_VERSION=8.191.12-r0
# Thu, 31 Jan 2019 02:42:18 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Thu, 31 Jan 2019 04:03:48 GMT
MAINTAINER OrientDB LTD (info@orientdb.com)
# Thu, 31 Jan 2019 04:03:57 GMT
ARG ORIENTDB_DOWNLOAD_SERVER
# Thu, 31 Jan 2019 04:04:10 GMT
ENV ORIENTDB_VERSION=3.0.13
# Thu, 31 Jan 2019 04:04:10 GMT
ENV ORIENTDB_DOWNLOAD_MD5=12b955c069aeefd8697891d2310c7520
# Thu, 31 Jan 2019 04:04:10 GMT
ENV ORIENTDB_DOWNLOAD_SHA1=35bc1cdfa79d6aa133cdcdffe72a3ed9f7a39cde
# Thu, 31 Jan 2019 04:04:11 GMT
ENV ORIENTDB_DOWNLOAD_URL=http://central.maven.org/maven2/com/orientechnologies/orientdb-community/3.0.13/orientdb-community-3.0.13.tar.gz
# Thu, 31 Jan 2019 04:04:11 GMT
RUN apk add --update tar curl     && rm -rf /var/cache/apk/*
# Thu, 31 Jan 2019 04:04:15 GMT
RUN mkdir /orientdb &&   wget  $ORIENTDB_DOWNLOAD_URL   && echo "$ORIENTDB_DOWNLOAD_MD5 *orientdb-community-$ORIENTDB_VERSION.tar.gz" | md5sum -c -   && echo "$ORIENTDB_DOWNLOAD_SHA1 *orientdb-community-$ORIENTDB_VERSION.tar.gz" | sha1sum -c -   && tar -xvzf orientdb-community-$ORIENTDB_VERSION.tar.gz -C /orientdb --strip-components=1   && rm orientdb-community-$ORIENTDB_VERSION.tar.gz   && rm -rf /orientdb/databases/*
# Thu, 31 Jan 2019 04:04:15 GMT
ENV PATH=/orientdb/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Thu, 31 Jan 2019 04:04:15 GMT
VOLUME [/orientdb/backup /orientdb/databases /orientdb/config]
# Thu, 31 Jan 2019 04:04:15 GMT
WORKDIR /orientdb
# Thu, 31 Jan 2019 04:04:16 GMT
EXPOSE 2424
# Thu, 31 Jan 2019 04:04:16 GMT
EXPOSE 2480
# Thu, 31 Jan 2019 04:04:16 GMT
CMD ["server.sh"]
```

-	Layers:
	-	`sha256:169185f82c45a6eb72e0ca4ee66152626e7ace92a0cbc53624fb46d0a553f0bd`  
		Last Modified: Wed, 30 Jan 2019 22:21:04 GMT  
		Size: 2.2 MB (2207038 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3bdc61458cffd62ac4c8b61e8c802e215f17f950e740aa6b7845f71784d7b615`  
		Last Modified: Thu, 31 Jan 2019 02:45:33 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:daa7fce0c25feb9b2bdcdc9df4516fa9572442ce9f92838af4f35bf82b847e3e`  
		Last Modified: Thu, 31 Jan 2019 02:45:41 GMT  
		Size: 70.7 MB (70650950 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c2da3561aa992e0fd3beebed12d27b9b1d72c17614a196982740621bc26bafd`  
		Last Modified: Thu, 31 Jan 2019 04:04:52 GMT  
		Size: 772.0 KB (771976 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b54aee186dea4062b399b6dbef850ccca101aa8d85bd55e832323b98398f21d4`  
		Last Modified: Thu, 31 Jan 2019 04:04:54 GMT  
		Size: 36.9 MB (36923923 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
