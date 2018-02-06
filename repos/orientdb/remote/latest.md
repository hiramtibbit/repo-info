## `orientdb:latest`

```console
$ docker pull orientdb@sha256:1cf4b90b85448ebf13c1f176bfbab1d54d1305273d8b3a7591048c7a2e18f0ad
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `orientdb:latest` - linux; amd64

```console
$ docker pull orientdb@sha256:2147adc7331ff13f6191b50ed76e48bf86e439222c75755a532869b34385817d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **119.4 MB (119416473 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:461f24e52a91c1bf0091ecc19f875e4284b9207cc3d3daac77bf2f74659da271`
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
# Tue, 06 Feb 2018 17:36:57 GMT
ENV ORIENTDB_VERSION=2.2.32
# Tue, 06 Feb 2018 17:36:57 GMT
ENV ORIENTDB_DOWNLOAD_MD5=bcc9ebb507f614da691aaeb6b36f34a9
# Tue, 06 Feb 2018 17:36:57 GMT
ENV ORIENTDB_DOWNLOAD_SHA1=fc0e69e46f03bb024be36be5a76130ae3f8f217e
# Tue, 06 Feb 2018 17:36:57 GMT
ENV ORIENTDB_DOWNLOAD_URL=http://central.maven.org/maven2/com/orientechnologies/orientdb-community/2.2.32/orientdb-community-2.2.32.tar.gz
# Tue, 06 Feb 2018 17:37:02 GMT
RUN apk add --update tar curl     && rm -rf /var/cache/apk/*
# Tue, 06 Feb 2018 17:37:05 GMT
RUN mkdir /orientdb &&   wget  $ORIENTDB_DOWNLOAD_URL   && echo "$ORIENTDB_DOWNLOAD_MD5 *orientdb-community-$ORIENTDB_VERSION.tar.gz" | md5sum -c -   && echo "$ORIENTDB_DOWNLOAD_SHA1 *orientdb-community-$ORIENTDB_VERSION.tar.gz" | sha1sum -c -   && tar -xvzf orientdb-community-$ORIENTDB_VERSION.tar.gz -C /orientdb --strip-components=1   && rm orientdb-community-$ORIENTDB_VERSION.tar.gz   && rm -rf /orientdb/databases/*
# Tue, 06 Feb 2018 17:37:05 GMT
ENV PATH=/orientdb/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 06 Feb 2018 17:37:06 GMT
VOLUME [/orientdb/backup /orientdb/databases /orientdb/config]
# Tue, 06 Feb 2018 17:37:06 GMT
WORKDIR /orientdb
# Tue, 06 Feb 2018 17:37:07 GMT
EXPOSE 2424/tcp
# Tue, 06 Feb 2018 17:37:07 GMT
EXPOSE 2480/tcp
# Tue, 06 Feb 2018 17:37:07 GMT
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
	-	`sha256:eea05bad742ebf1998f638b92051301e7203ee692476b537001ef280c35b8ce2`  
		Last Modified: Tue, 06 Feb 2018 17:37:53 GMT  
		Size: 665.5 KB (665508 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cba883f9a7072d97bddcf414d77230defae408a14d85be4e210e96f3e13941ce`  
		Last Modified: Tue, 06 Feb 2018 17:37:56 GMT  
		Size: 46.5 MB (46457426 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
