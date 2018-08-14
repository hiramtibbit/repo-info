## `orientdb:latest`

```console
$ docker pull orientdb@sha256:e122d8f3ce9fd259a324314337317646afee327191c30518c1bc864ac70cc1f6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `orientdb:latest` - linux; amd64

```console
$ docker pull orientdb@sha256:d56c2a2c5058a0510e8984015c8722abc0a74cbab636541e9a047b76281a18ad
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **110.0 MB (109966167 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:353a74b2c5e4b2dffa1b6e7c45ed3704b4f43799ee766428d34c7476cd365fae`
-	Default Command: `["server.sh"]`

```dockerfile
# Fri, 06 Jul 2018 14:14:06 GMT
ADD file:25f61d70254b9807a40cd3e8d820f6a5ec0e1e596de04e325f6a33810393e95a in / 
# Fri, 06 Jul 2018 14:14:06 GMT
CMD ["/bin/sh"]
# Wed, 11 Jul 2018 00:34:53 GMT
ENV LANG=C.UTF-8
# Wed, 11 Jul 2018 00:34:54 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 11 Jul 2018 00:34:54 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
# Wed, 11 Jul 2018 00:34:54 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 11 Jul 2018 00:34:54 GMT
ENV JAVA_VERSION=8u171
# Wed, 11 Jul 2018 00:34:55 GMT
ENV JAVA_ALPINE_VERSION=8.171.11-r0
# Wed, 11 Jul 2018 00:35:00 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 11 Jul 2018 02:09:35 GMT
MAINTAINER OrientDB LTD (info@orientdb.com)
# Wed, 11 Jul 2018 02:10:01 GMT
ARG ORIENTDB_DOWNLOAD_SERVER
# Tue, 14 Aug 2018 17:24:42 GMT
ENV ORIENTDB_VERSION=3.0.6
# Tue, 14 Aug 2018 17:24:43 GMT
ENV ORIENTDB_DOWNLOAD_MD5=90d88e4d3e3932c1a99ba7155ec52b09
# Tue, 14 Aug 2018 17:24:43 GMT
ENV ORIENTDB_DOWNLOAD_SHA1=7b0b6a07638b93cbaf53c7dafb2a9e6c451dc135
# Tue, 14 Aug 2018 17:24:43 GMT
ENV ORIENTDB_DOWNLOAD_URL=http://central.maven.org/maven2/com/orientechnologies/orientdb-community/3.0.6/orientdb-community-3.0.6.tar.gz
# Tue, 14 Aug 2018 17:24:45 GMT
RUN apk add --update tar curl     && rm -rf /var/cache/apk/*
# Tue, 14 Aug 2018 17:24:49 GMT
RUN mkdir /orientdb &&   wget  $ORIENTDB_DOWNLOAD_URL   && echo "$ORIENTDB_DOWNLOAD_MD5 *orientdb-community-$ORIENTDB_VERSION.tar.gz" | md5sum -c -   && echo "$ORIENTDB_DOWNLOAD_SHA1 *orientdb-community-$ORIENTDB_VERSION.tar.gz" | sha1sum -c -   && tar -xvzf orientdb-community-$ORIENTDB_VERSION.tar.gz -C /orientdb --strip-components=1   && rm orientdb-community-$ORIENTDB_VERSION.tar.gz   && rm -rf /orientdb/databases/*
# Tue, 14 Aug 2018 17:24:50 GMT
ENV PATH=/orientdb/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 14 Aug 2018 17:24:50 GMT
VOLUME [/orientdb/backup /orientdb/databases /orientdb/config]
# Tue, 14 Aug 2018 17:24:51 GMT
WORKDIR /orientdb
# Tue, 14 Aug 2018 17:24:51 GMT
EXPOSE 2424/tcp
# Tue, 14 Aug 2018 17:24:52 GMT
EXPOSE 2480/tcp
# Tue, 14 Aug 2018 17:24:52 GMT
CMD ["server.sh"]
```

-	Layers:
	-	`sha256:8e3ba11ec2a2b39ab372c60c16b421536e50e5ce64a0bc81765c2e38381bcff6`  
		Last Modified: Fri, 06 Jul 2018 04:15:58 GMT  
		Size: 2.2 MB (2206542 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:311ad0da45338842480bf25c6e6b7bb133b7b8cf709c3470db171ec370da5539`  
		Last Modified: Wed, 11 Jul 2018 00:37:45 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df312c74ce16f20eeb87b5640db9b1579a53534bd3e9f3de1e916fc62744bcf4`  
		Last Modified: Wed, 11 Jul 2018 00:38:02 GMT  
		Size: 70.6 MB (70581383 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:680bd0afa0cc903df47e37f4ea00f73c1f57849dbb55bed3847eb00fdf29c325`  
		Last Modified: Tue, 14 Aug 2018 17:26:23 GMT  
		Size: 766.0 KB (765982 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47b8f2ef59bc6a04e6902deb0b1340c38c2669fa7088f48f66954d6272ebfa7e`  
		Last Modified: Tue, 14 Aug 2018 17:26:30 GMT  
		Size: 36.4 MB (36412021 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
