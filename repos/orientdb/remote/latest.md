## `orientdb:latest`

```console
$ docker pull orientdb@sha256:4e5305d089aa1a1c2c9934f4110a6ded38b26ba89c75975e75043e2b88594aee
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `orientdb:latest` - linux; amd64

```console
$ docker pull orientdb@sha256:8bf48f9bc62ec077f8154087c8c93a7fef6a4c17f57203baf79b7c91b0642ef2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **119.4 MB (119423930 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:af5449828468b103b52ff882fb84a425c2f4e3339fa316ee362e48629a379443`
-	Default Command: `["server.sh"]`

```dockerfile
# Tue, 09 Jan 2018 21:10:58 GMT
ADD file:093f0723fa46f6cdbd6f7bd146448bb70ecce54254c35701feeceb956414622f in / 
# Tue, 09 Jan 2018 21:10:58 GMT
CMD ["/bin/sh"]
# Wed, 10 Jan 2018 04:48:24 GMT
ENV LANG=C.UTF-8
# Wed, 10 Jan 2018 04:48:25 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 10 Jan 2018 04:50:19 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
# Wed, 10 Jan 2018 04:50:19 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 10 Jan 2018 04:50:19 GMT
ENV JAVA_VERSION=8u151
# Wed, 10 Jan 2018 04:50:19 GMT
ENV JAVA_ALPINE_VERSION=8.151.12-r0
# Wed, 10 Jan 2018 04:51:20 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 10 Jan 2018 09:22:07 GMT
MAINTAINER OrientDB LTD (info@orientdb.com)
# Wed, 10 Jan 2018 09:22:36 GMT
ARG ORIENTDB_DOWNLOAD_SERVER
# Thu, 08 Mar 2018 18:37:07 GMT
ENV ORIENTDB_VERSION=2.2.33
# Thu, 08 Mar 2018 18:37:07 GMT
ENV ORIENTDB_DOWNLOAD_MD5=163fc4f24c7b7d7a8179a7d10f49903e
# Thu, 08 Mar 2018 18:37:08 GMT
ENV ORIENTDB_DOWNLOAD_SHA1=ddf34eda1d03484a2e1ace0cbc4abc3100c86400
# Thu, 08 Mar 2018 18:37:08 GMT
ENV ORIENTDB_DOWNLOAD_URL=http://central.maven.org/maven2/com/orientechnologies/orientdb-community/2.2.33/orientdb-community-2.2.33.tar.gz
# Thu, 08 Mar 2018 18:37:11 GMT
RUN apk add --update tar curl     && rm -rf /var/cache/apk/*
# Thu, 08 Mar 2018 18:37:15 GMT
RUN mkdir /orientdb &&   wget  $ORIENTDB_DOWNLOAD_URL   && echo "$ORIENTDB_DOWNLOAD_MD5 *orientdb-community-$ORIENTDB_VERSION.tar.gz" | md5sum -c -   && echo "$ORIENTDB_DOWNLOAD_SHA1 *orientdb-community-$ORIENTDB_VERSION.tar.gz" | sha1sum -c -   && tar -xvzf orientdb-community-$ORIENTDB_VERSION.tar.gz -C /orientdb --strip-components=1   && rm orientdb-community-$ORIENTDB_VERSION.tar.gz   && rm -rf /orientdb/databases/*
# Thu, 08 Mar 2018 18:37:15 GMT
ENV PATH=/orientdb/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Thu, 08 Mar 2018 18:37:15 GMT
VOLUME [/orientdb/backup /orientdb/databases /orientdb/config]
# Thu, 08 Mar 2018 18:37:16 GMT
WORKDIR /orientdb
# Thu, 08 Mar 2018 18:37:16 GMT
EXPOSE 2424/tcp
# Thu, 08 Mar 2018 18:37:16 GMT
EXPOSE 2480/tcp
# Thu, 08 Mar 2018 18:37:17 GMT
CMD ["server.sh"]
```

-	Layers:
	-	`sha256:ff3a5c916c92643ff77519ffa742d3ec61b7f591b6b7504599d95a4a41134e28`  
		Last Modified: Tue, 09 Jan 2018 21:13:34 GMT  
		Size: 2.1 MB (2065537 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5de5f69f42d765af6ffb6753242b18dd4a33602ad7d76df52064833e5c527cb4`  
		Last Modified: Wed, 10 Jan 2018 04:53:02 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd869c8b9b592f2fcb5ed4d6055d651ae18d5c2cce22f56896f0ff96cdcbcbf7`  
		Last Modified: Wed, 10 Jan 2018 04:56:54 GMT  
		Size: 70.2 MB (70227764 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d10461246947f87c89c008ba246b5e7b8111bb4d1247bcb0fa56e574c0af1fb7`  
		Last Modified: Thu, 08 Mar 2018 18:37:55 GMT  
		Size: 668.3 KB (668349 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:050c08f4b9d30bb04f8e8c797de4d647800b230111e37b21c43754058ab43373`  
		Last Modified: Thu, 08 Mar 2018 18:37:58 GMT  
		Size: 46.5 MB (46462042 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
