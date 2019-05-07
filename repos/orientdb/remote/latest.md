## `orientdb:latest`

```console
$ docker pull orientdb@sha256:00ea22fc6af47e3a6ae2d4e625e8c96ed61dfa82f14693deb9523a7547e5523d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `orientdb:latest` - linux; amd64

```console
$ docker pull orientdb@sha256:845f8f0e0d2e3a618682f78e8de5ef15beb5859d973bcd2fe6cbb61ec6cc15f8
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **111.1 MB (111108062 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e5337f258058cf0fd68fe5570a0857d31a18fee3011d53c2ca51b739bc4fbad1`
-	Default Command: `["server.sh"]`

```dockerfile
# Tue, 09 Apr 2019 23:20:18 GMT
ADD file:2e3a37883f56a4a278bec2931fc9f91fb9ebdaa9047540fe8fde419b84a1701b in / 
# Tue, 09 Apr 2019 23:20:18 GMT
CMD ["/bin/sh"]
# Wed, 10 Apr 2019 01:52:32 GMT
ENV LANG=C.UTF-8
# Wed, 10 Apr 2019 01:52:33 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 10 Apr 2019 01:52:33 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
# Wed, 10 Apr 2019 01:52:34 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 07 May 2019 00:21:32 GMT
ENV JAVA_VERSION=8u212
# Tue, 07 May 2019 00:21:32 GMT
ENV JAVA_ALPINE_VERSION=8.212.04-r0
# Tue, 07 May 2019 00:21:35 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 07 May 2019 00:48:21 GMT
MAINTAINER OrientDB LTD (info@orientdb.com)
# Tue, 07 May 2019 00:48:32 GMT
ARG ORIENTDB_DOWNLOAD_SERVER
# Tue, 07 May 2019 00:48:48 GMT
ENV ORIENTDB_VERSION=3.0.18
# Tue, 07 May 2019 00:48:48 GMT
ENV ORIENTDB_DOWNLOAD_MD5=7cd3b9cd476db4ceadf5203b361ccd9c
# Tue, 07 May 2019 00:48:49 GMT
ENV ORIENTDB_DOWNLOAD_SHA1=4a3a208530972b4230fbd9515614003d61273135
# Tue, 07 May 2019 00:48:49 GMT
ENV ORIENTDB_DOWNLOAD_URL=http://central.maven.org/maven2/com/orientechnologies/orientdb-community/3.0.18/orientdb-community-3.0.18.tar.gz
# Tue, 07 May 2019 00:48:50 GMT
RUN apk add --update tar curl     && rm -rf /var/cache/apk/*
# Tue, 07 May 2019 00:48:54 GMT
RUN mkdir /orientdb &&   wget  $ORIENTDB_DOWNLOAD_URL   && echo "$ORIENTDB_DOWNLOAD_MD5 *orientdb-community-$ORIENTDB_VERSION.tar.gz" | md5sum -c -   && echo "$ORIENTDB_DOWNLOAD_SHA1 *orientdb-community-$ORIENTDB_VERSION.tar.gz" | sha1sum -c -   && tar -xvzf orientdb-community-$ORIENTDB_VERSION.tar.gz -C /orientdb --strip-components=1   && rm orientdb-community-$ORIENTDB_VERSION.tar.gz   && rm -rf /orientdb/databases/*
# Tue, 07 May 2019 00:48:54 GMT
ENV PATH=/orientdb/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 07 May 2019 00:48:54 GMT
VOLUME [/orientdb/backup /orientdb/databases /orientdb/config]
# Tue, 07 May 2019 00:48:54 GMT
WORKDIR /orientdb
# Tue, 07 May 2019 00:48:55 GMT
EXPOSE 2424
# Tue, 07 May 2019 00:48:55 GMT
EXPOSE 2480
# Tue, 07 May 2019 00:48:55 GMT
CMD ["server.sh"]
```

-	Layers:
	-	`sha256:bdf0201b3a056acc4d6062cc88cd8a4ad5979983bfb640f15a145e09ed985f92`  
		Last Modified: Tue, 09 Apr 2019 10:24:14 GMT  
		Size: 2.8 MB (2757009 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e12771959adeb3408e625492accf845401aa66bcca638859a6b34176d753d62`  
		Last Modified: Wed, 10 Apr 2019 01:57:16 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:018b76c3c533954c0a7fbd9e90e85f48d7240c14898e0a3b822bdc8c38ca7b50`  
		Last Modified: Tue, 07 May 2019 00:23:15 GMT  
		Size: 70.7 MB (70732830 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0fe8b0326bab342ced485e1af78a0a85ad4a2ec67b1bb33c4970de66fcd40c31`  
		Last Modified: Tue, 07 May 2019 00:49:44 GMT  
		Size: 784.1 KB (784077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:327ad0ba0b6390e7204a0dce5b1eeef805e6ff23035288949b22acfdb2bac7f2`  
		Last Modified: Tue, 07 May 2019 00:49:47 GMT  
		Size: 36.8 MB (36833909 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
