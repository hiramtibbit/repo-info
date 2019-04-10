## `orientdb:latest`

```console
$ docker pull orientdb@sha256:2dc857d098c3f640401c8aefc59192b8a8953d6d756bbd6f0300c84c615fe0de
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `orientdb:latest` - linux; amd64

```console
$ docker pull orientdb@sha256:5ec0de1c73554a936d738cc1615161d05daa8666bfd4c0f5acbf6aff9aa8ae58
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **111.1 MB (111091544 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d5567e7bd2616aa6d2ec4b3a0cc914f1af755e97b661e5ac4bed828ba26e11f0`
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
# Wed, 10 Apr 2019 01:52:34 GMT
ENV JAVA_VERSION=8u201
# Wed, 10 Apr 2019 01:52:34 GMT
ENV JAVA_ALPINE_VERSION=8.201.08-r1
# Wed, 10 Apr 2019 01:52:39 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 10 Apr 2019 03:32:41 GMT
MAINTAINER OrientDB LTD (info@orientdb.com)
# Wed, 10 Apr 2019 03:32:52 GMT
ARG ORIENTDB_DOWNLOAD_SERVER
# Wed, 10 Apr 2019 03:33:07 GMT
ENV ORIENTDB_VERSION=3.0.18
# Wed, 10 Apr 2019 03:33:07 GMT
ENV ORIENTDB_DOWNLOAD_MD5=7cd3b9cd476db4ceadf5203b361ccd9c
# Wed, 10 Apr 2019 03:33:07 GMT
ENV ORIENTDB_DOWNLOAD_SHA1=4a3a208530972b4230fbd9515614003d61273135
# Wed, 10 Apr 2019 03:33:07 GMT
ENV ORIENTDB_DOWNLOAD_URL=http://central.maven.org/maven2/com/orientechnologies/orientdb-community/3.0.18/orientdb-community-3.0.18.tar.gz
# Wed, 10 Apr 2019 03:33:08 GMT
RUN apk add --update tar curl     && rm -rf /var/cache/apk/*
# Wed, 10 Apr 2019 03:33:13 GMT
RUN mkdir /orientdb &&   wget  $ORIENTDB_DOWNLOAD_URL   && echo "$ORIENTDB_DOWNLOAD_MD5 *orientdb-community-$ORIENTDB_VERSION.tar.gz" | md5sum -c -   && echo "$ORIENTDB_DOWNLOAD_SHA1 *orientdb-community-$ORIENTDB_VERSION.tar.gz" | sha1sum -c -   && tar -xvzf orientdb-community-$ORIENTDB_VERSION.tar.gz -C /orientdb --strip-components=1   && rm orientdb-community-$ORIENTDB_VERSION.tar.gz   && rm -rf /orientdb/databases/*
# Wed, 10 Apr 2019 03:33:13 GMT
ENV PATH=/orientdb/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 10 Apr 2019 03:33:13 GMT
VOLUME [/orientdb/backup /orientdb/databases /orientdb/config]
# Wed, 10 Apr 2019 03:33:13 GMT
WORKDIR /orientdb
# Wed, 10 Apr 2019 03:33:14 GMT
EXPOSE 2424
# Wed, 10 Apr 2019 03:33:14 GMT
EXPOSE 2480
# Wed, 10 Apr 2019 03:33:14 GMT
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
	-	`sha256:c4efe34cda6efe267747e87c1a4ab6e449a94b46df121175cc6e45c6f37c68c9`  
		Last Modified: Wed, 10 Apr 2019 01:57:26 GMT  
		Size: 70.7 MB (70716388 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19cd495136d72d781ceb608ed98ea84c288f80f46a70eae420d8274c087f0f1b`  
		Last Modified: Wed, 10 Apr 2019 03:33:50 GMT  
		Size: 784.0 KB (783983 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3430510cfb1871a22dca137a52bbb5438869ee1de29cad9a0978e056758d8229`  
		Last Modified: Wed, 10 Apr 2019 03:33:53 GMT  
		Size: 36.8 MB (36833927 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
