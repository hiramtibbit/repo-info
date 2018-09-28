## `orientdb:latest`

```console
$ docker pull orientdb@sha256:ae4c7370458cc732e01ed679696a926ade6bfa167b6c9653cf8b5b2bab6c71ac
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `orientdb:latest` - linux; amd64

```console
$ docker pull orientdb@sha256:a9b96a07ff4fee244e93693f364bcceb7e8b6d52577d0a2b622bcfeb1f0bd75c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **110.0 MB (110002484 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:20cd91c9f2333e1f8b61e0de4160124f1b3e55dc27f4aac1d7a0bf30c64fb5ee`
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
# Fri, 28 Sep 2018 18:22:40 GMT
ENV ORIENTDB_VERSION=3.0.8
# Fri, 28 Sep 2018 18:22:41 GMT
ENV ORIENTDB_DOWNLOAD_MD5=19b17071fdff11d3674d5809d15244a5
# Fri, 28 Sep 2018 18:22:41 GMT
ENV ORIENTDB_DOWNLOAD_SHA1=2175eb61874c67150bc52b213aa90e20db942f6a
# Fri, 28 Sep 2018 18:22:41 GMT
ENV ORIENTDB_DOWNLOAD_URL=http://central.maven.org/maven2/com/orientechnologies/orientdb-community/3.0.8/orientdb-community-3.0.8.tar.gz
# Fri, 28 Sep 2018 18:22:42 GMT
RUN apk add --update tar curl     && rm -rf /var/cache/apk/*
# Fri, 28 Sep 2018 18:22:45 GMT
RUN mkdir /orientdb &&   wget  $ORIENTDB_DOWNLOAD_URL   && echo "$ORIENTDB_DOWNLOAD_MD5 *orientdb-community-$ORIENTDB_VERSION.tar.gz" | md5sum -c -   && echo "$ORIENTDB_DOWNLOAD_SHA1 *orientdb-community-$ORIENTDB_VERSION.tar.gz" | sha1sum -c -   && tar -xvzf orientdb-community-$ORIENTDB_VERSION.tar.gz -C /orientdb --strip-components=1   && rm orientdb-community-$ORIENTDB_VERSION.tar.gz   && rm -rf /orientdb/databases/*
# Fri, 28 Sep 2018 18:22:45 GMT
ENV PATH=/orientdb/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Fri, 28 Sep 2018 18:22:46 GMT
VOLUME [/orientdb/backup /orientdb/databases /orientdb/config]
# Fri, 28 Sep 2018 18:22:46 GMT
WORKDIR /orientdb
# Fri, 28 Sep 2018 18:22:46 GMT
EXPOSE 2424/tcp
# Fri, 28 Sep 2018 18:22:47 GMT
EXPOSE 2480/tcp
# Fri, 28 Sep 2018 18:22:47 GMT
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
	-	`sha256:d60d975d9d485c4c486e8efb323c3ab23dd0488b4a41fdf6e4863cf4a1c8c574`  
		Last Modified: Fri, 28 Sep 2018 18:23:17 GMT  
		Size: 767.3 KB (767272 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c25d25bf374586cc89a6300bb5e5b7fadffc0fdafd2b6dc3ae54494b789764a`  
		Last Modified: Fri, 28 Sep 2018 18:23:20 GMT  
		Size: 36.4 MB (36446717 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
