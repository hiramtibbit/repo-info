## `orientdb:latest`

```console
$ docker pull orientdb@sha256:462c733557017d655852270e70c2b3ec7a235aab12e5d61d1d837c70f74ad7b0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `orientdb:latest` - linux; amd64

```console
$ docker pull orientdb@sha256:055c70e7b73a338d256a400969466a3a8956ab5952f7e80ee8e357ba95820ae0
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **110.0 MB (109962388 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7f2869d4fbffd7a74bef651f569396b1e277ea460523c3b6c4aa075adc8b657b`
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
# Fri, 03 Aug 2018 18:21:21 GMT
ENV ORIENTDB_VERSION=3.0.5
# Fri, 03 Aug 2018 18:21:22 GMT
ENV ORIENTDB_DOWNLOAD_MD5=9fb7bc9369c02ca68ddebf369d3dafa4
# Fri, 03 Aug 2018 18:21:22 GMT
ENV ORIENTDB_DOWNLOAD_SHA1=9ae52a791b1aa6467a467884222a394200d2c4a7
# Fri, 03 Aug 2018 18:21:22 GMT
ENV ORIENTDB_DOWNLOAD_URL=http://central.maven.org/maven2/com/orientechnologies/orientdb-community/3.0.5/orientdb-community-3.0.5.tar.gz
# Fri, 03 Aug 2018 18:21:24 GMT
RUN apk add --update tar curl     && rm -rf /var/cache/apk/*
# Fri, 03 Aug 2018 18:21:33 GMT
RUN mkdir /orientdb &&   wget  $ORIENTDB_DOWNLOAD_URL   && echo "$ORIENTDB_DOWNLOAD_MD5 *orientdb-community-$ORIENTDB_VERSION.tar.gz" | md5sum -c -   && echo "$ORIENTDB_DOWNLOAD_SHA1 *orientdb-community-$ORIENTDB_VERSION.tar.gz" | sha1sum -c -   && tar -xvzf orientdb-community-$ORIENTDB_VERSION.tar.gz -C /orientdb --strip-components=1   && rm orientdb-community-$ORIENTDB_VERSION.tar.gz   && rm -rf /orientdb/databases/*
# Fri, 03 Aug 2018 18:21:33 GMT
ENV PATH=/orientdb/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Fri, 03 Aug 2018 18:21:34 GMT
VOLUME [/orientdb/backup /orientdb/databases /orientdb/config]
# Fri, 03 Aug 2018 18:21:34 GMT
WORKDIR /orientdb
# Fri, 03 Aug 2018 18:21:35 GMT
EXPOSE 2424/tcp
# Fri, 03 Aug 2018 18:21:35 GMT
EXPOSE 2480/tcp
# Fri, 03 Aug 2018 18:21:35 GMT
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
	-	`sha256:90c468369941477f73bd93833f3bc25b97a21c7df0781de3d94ad6d3979af09c`  
		Last Modified: Fri, 03 Aug 2018 18:22:38 GMT  
		Size: 766.0 KB (765979 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:034c2d6b2bd04d01ebf7aa7275228abb91a3476dbe43dff6d0c1c1bf6b04d461`  
		Last Modified: Fri, 03 Aug 2018 18:23:27 GMT  
		Size: 36.4 MB (36408245 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
