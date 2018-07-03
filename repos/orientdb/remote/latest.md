## `orientdb:latest`

```console
$ docker pull orientdb@sha256:ffb0d3e7f1ffee25ae0065cd4b06ee080cc2693a4a6cd11a0905ef3701f5115b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `orientdb:latest` - linux; amd64

```console
$ docker pull orientdb@sha256:3d3fbac50f0cf925d508a18260327311da1e82c8ae7d2d1f6b6da2384245e2bd
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **109.4 MB (109447512 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c9b75c50bd2ba8f56febf66218f4c0c95ac85a9c5db87009a62301185a22cc65`
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
# Tue, 03 Jul 2018 21:21:12 GMT
ENV ORIENTDB_VERSION=3.0.3
# Tue, 03 Jul 2018 21:21:12 GMT
ENV ORIENTDB_DOWNLOAD_MD5=d272811a06bb415cb6dc206162fd798a
# Tue, 03 Jul 2018 21:21:12 GMT
ENV ORIENTDB_DOWNLOAD_SHA1=ac109b1f23fd2c5824c95b82c3326789bde128a8
# Tue, 03 Jul 2018 21:21:13 GMT
ENV ORIENTDB_DOWNLOAD_URL=http://central.maven.org/maven2/com/orientechnologies/orientdb-community/3.0.3/orientdb-community-3.0.3.tar.gz
# Tue, 03 Jul 2018 21:21:15 GMT
RUN apk add --update tar curl     && rm -rf /var/cache/apk/*
# Tue, 03 Jul 2018 21:21:22 GMT
RUN mkdir /orientdb &&   wget  $ORIENTDB_DOWNLOAD_URL   && echo "$ORIENTDB_DOWNLOAD_MD5 *orientdb-community-$ORIENTDB_VERSION.tar.gz" | md5sum -c -   && echo "$ORIENTDB_DOWNLOAD_SHA1 *orientdb-community-$ORIENTDB_VERSION.tar.gz" | sha1sum -c -   && tar -xvzf orientdb-community-$ORIENTDB_VERSION.tar.gz -C /orientdb --strip-components=1   && rm orientdb-community-$ORIENTDB_VERSION.tar.gz   && rm -rf /orientdb/databases/*
# Tue, 03 Jul 2018 21:21:22 GMT
ENV PATH=/orientdb/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 03 Jul 2018 21:21:22 GMT
VOLUME [/orientdb/backup /orientdb/databases /orientdb/config]
# Tue, 03 Jul 2018 21:21:22 GMT
WORKDIR /orientdb
# Tue, 03 Jul 2018 21:21:23 GMT
EXPOSE 2424/tcp
# Tue, 03 Jul 2018 21:21:23 GMT
EXPOSE 2480/tcp
# Tue, 03 Jul 2018 21:21:23 GMT
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
	-	`sha256:c894443786e95747a80fe1e08418cdc8d98181ce1061ffc1f02dd2748c93f736`  
		Last Modified: Tue, 03 Jul 2018 21:22:21 GMT  
		Size: 673.4 KB (673353 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a993534b93a2555318c5f4010c334cf01f5f650f64aeda80eb4eb469a12bcac`  
		Last Modified: Tue, 03 Jul 2018 21:22:25 GMT  
		Size: 36.4 MB (36390074 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
