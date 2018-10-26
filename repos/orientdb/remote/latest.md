## `orientdb:latest`

```console
$ docker pull orientdb@sha256:a30a5229066033bc9517b49383ee696b9deb93998018b70f5719c0be14f8c0c7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `orientdb:latest` - linux; amd64

```console
$ docker pull orientdb@sha256:9d7d072a7dee2de195b1c7f49fc444298bc2ae69143802d8e5bafc7d5ea4cbee
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **110.5 MB (110452382 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:48e01121d269e51b0d082a407c0477384d8b33a06a056c74c07411de33bf479b`
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
# Fri, 26 Oct 2018 22:31:34 GMT
ENV ORIENTDB_VERSION=3.0.10
# Fri, 26 Oct 2018 22:31:34 GMT
ENV ORIENTDB_DOWNLOAD_MD5=e6afdbe678b01a82e03601e58ff46bc7
# Fri, 26 Oct 2018 22:31:34 GMT
ENV ORIENTDB_DOWNLOAD_SHA1=9be4cf0e052d5c0fd48665cda3e13ab378ed6994
# Fri, 26 Oct 2018 22:31:34 GMT
ENV ORIENTDB_DOWNLOAD_URL=http://central.maven.org/maven2/com/orientechnologies/orientdb-community/3.0.10/orientdb-community-3.0.10.tar.gz
# Fri, 26 Oct 2018 22:31:35 GMT
RUN apk add --update tar curl     && rm -rf /var/cache/apk/*
# Fri, 26 Oct 2018 22:31:38 GMT
RUN mkdir /orientdb &&   wget  $ORIENTDB_DOWNLOAD_URL   && echo "$ORIENTDB_DOWNLOAD_MD5 *orientdb-community-$ORIENTDB_VERSION.tar.gz" | md5sum -c -   && echo "$ORIENTDB_DOWNLOAD_SHA1 *orientdb-community-$ORIENTDB_VERSION.tar.gz" | sha1sum -c -   && tar -xvzf orientdb-community-$ORIENTDB_VERSION.tar.gz -C /orientdb --strip-components=1   && rm orientdb-community-$ORIENTDB_VERSION.tar.gz   && rm -rf /orientdb/databases/*
# Fri, 26 Oct 2018 22:31:47 GMT
ENV PATH=/orientdb/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Fri, 26 Oct 2018 22:31:47 GMT
VOLUME [/orientdb/backup /orientdb/databases /orientdb/config]
# Fri, 26 Oct 2018 22:31:47 GMT
WORKDIR /orientdb
# Fri, 26 Oct 2018 22:31:48 GMT
EXPOSE 2424/tcp
# Fri, 26 Oct 2018 22:31:48 GMT
EXPOSE 2480/tcp
# Fri, 26 Oct 2018 22:31:48 GMT
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
	-	`sha256:61bf0ca70319b631304f35ccb02765d8cbc547121665a7a6945c75724aca1f78`  
		Last Modified: Fri, 26 Oct 2018 22:33:31 GMT  
		Size: 767.3 KB (767281 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d516c9ef77ca8ddce0ac02b61920761dd0e4e14759e47d4e7e0c27819c2c1c92`  
		Last Modified: Fri, 26 Oct 2018 22:33:34 GMT  
		Size: 36.9 MB (36867407 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
