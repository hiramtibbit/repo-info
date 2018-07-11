## `orientdb:latest`

```console
$ docker pull orientdb@sha256:7e15b3723faa2e014e6dc2af30cfaf31321cf69f7ebef2d889b6f9de9712dd20
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `orientdb:latest` - linux; amd64

```console
$ docker pull orientdb@sha256:f3019aad8edf5d50a303d6682926e424c124a160177c87ebf82cbdfd6e6b5de6
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **109.9 MB (109944218 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:545b9b48cf4612c4269802c013204c6a8c5df2b8719094d1ffd2fcd1c7497249`
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
# Wed, 11 Jul 2018 02:10:51 GMT
ENV ORIENTDB_VERSION=3.0.3
# Wed, 11 Jul 2018 02:10:51 GMT
ENV ORIENTDB_DOWNLOAD_MD5=d272811a06bb415cb6dc206162fd798a
# Wed, 11 Jul 2018 02:10:51 GMT
ENV ORIENTDB_DOWNLOAD_SHA1=ac109b1f23fd2c5824c95b82c3326789bde128a8
# Wed, 11 Jul 2018 02:10:52 GMT
ENV ORIENTDB_DOWNLOAD_URL=http://central.maven.org/maven2/com/orientechnologies/orientdb-community/3.0.3/orientdb-community-3.0.3.tar.gz
# Wed, 11 Jul 2018 02:10:53 GMT
RUN apk add --update tar curl     && rm -rf /var/cache/apk/*
# Wed, 11 Jul 2018 02:10:59 GMT
RUN mkdir /orientdb &&   wget  $ORIENTDB_DOWNLOAD_URL   && echo "$ORIENTDB_DOWNLOAD_MD5 *orientdb-community-$ORIENTDB_VERSION.tar.gz" | md5sum -c -   && echo "$ORIENTDB_DOWNLOAD_SHA1 *orientdb-community-$ORIENTDB_VERSION.tar.gz" | sha1sum -c -   && tar -xvzf orientdb-community-$ORIENTDB_VERSION.tar.gz -C /orientdb --strip-components=1   && rm orientdb-community-$ORIENTDB_VERSION.tar.gz   && rm -rf /orientdb/databases/*
# Wed, 11 Jul 2018 02:11:07 GMT
ENV PATH=/orientdb/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 11 Jul 2018 02:11:07 GMT
VOLUME [/orientdb/backup /orientdb/databases /orientdb/config]
# Wed, 11 Jul 2018 02:11:08 GMT
WORKDIR /orientdb
# Wed, 11 Jul 2018 02:11:08 GMT
EXPOSE 2424/tcp
# Wed, 11 Jul 2018 02:11:09 GMT
EXPOSE 2480/tcp
# Wed, 11 Jul 2018 02:11:09 GMT
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
	-	`sha256:e0335624c8307a5f69bc0c851c4e499136940bce44320a1332efd84406b69fc4`  
		Last Modified: Wed, 11 Jul 2018 02:13:27 GMT  
		Size: 766.0 KB (765982 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a0d7c10d06c9c1a0ac5864b6005dfaf19e5ff2a0f13eb9954dd32355201f3d9`  
		Last Modified: Wed, 11 Jul 2018 02:13:32 GMT  
		Size: 36.4 MB (36390072 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
