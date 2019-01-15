## `orientdb:latest`

```console
$ docker pull orientdb@sha256:85a2d2e5364c38c5d147fec9519e9e40f886e14d56e52ed8f7389ab368a5b3cb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `orientdb:latest` - linux; amd64

```console
$ docker pull orientdb@sha256:6f97cc56acd228663d12b0389422c3212df5c7cb5d5db9be388b912427fd985b
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **110.5 MB (110549329 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6ef526561c909b9a2b33ac08ae7b9156b77178e9f6e06474ac02138d9dd76c55`
-	Default Command: `["server.sh"]`

```dockerfile
# Fri, 21 Dec 2018 00:21:29 GMT
ADD file:2ff00caea4e83dfade726ca47e3c795a1e9acb8ac24e392785c474ecf9a621f2 in / 
# Fri, 21 Dec 2018 00:21:30 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 00:40:53 GMT
ENV LANG=C.UTF-8
# Fri, 21 Dec 2018 00:40:57 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 21 Dec 2018 00:40:58 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
# Fri, 21 Dec 2018 00:40:58 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Fri, 11 Jan 2019 00:26:01 GMT
ENV JAVA_VERSION=8u191
# Fri, 11 Jan 2019 00:26:01 GMT
ENV JAVA_ALPINE_VERSION=8.191.12-r0
# Fri, 11 Jan 2019 00:26:06 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Fri, 11 Jan 2019 02:05:42 GMT
MAINTAINER OrientDB LTD (info@orientdb.com)
# Fri, 11 Jan 2019 02:05:51 GMT
ARG ORIENTDB_DOWNLOAD_SERVER
# Fri, 11 Jan 2019 02:06:05 GMT
ENV ORIENTDB_VERSION=3.0.13
# Fri, 11 Jan 2019 02:06:06 GMT
ENV ORIENTDB_DOWNLOAD_MD5=12b955c069aeefd8697891d2310c7520
# Fri, 11 Jan 2019 02:06:06 GMT
ENV ORIENTDB_DOWNLOAD_SHA1=35bc1cdfa79d6aa133cdcdffe72a3ed9f7a39cde
# Fri, 11 Jan 2019 02:06:06 GMT
ENV ORIENTDB_DOWNLOAD_URL=http://central.maven.org/maven2/com/orientechnologies/orientdb-community/3.0.13/orientdb-community-3.0.13.tar.gz
# Fri, 11 Jan 2019 02:06:07 GMT
RUN apk add --update tar curl     && rm -rf /var/cache/apk/*
# Fri, 11 Jan 2019 02:06:11 GMT
RUN mkdir /orientdb &&   wget  $ORIENTDB_DOWNLOAD_URL   && echo "$ORIENTDB_DOWNLOAD_MD5 *orientdb-community-$ORIENTDB_VERSION.tar.gz" | md5sum -c -   && echo "$ORIENTDB_DOWNLOAD_SHA1 *orientdb-community-$ORIENTDB_VERSION.tar.gz" | sha1sum -c -   && tar -xvzf orientdb-community-$ORIENTDB_VERSION.tar.gz -C /orientdb --strip-components=1   && rm orientdb-community-$ORIENTDB_VERSION.tar.gz   && rm -rf /orientdb/databases/*
# Fri, 11 Jan 2019 02:06:11 GMT
ENV PATH=/orientdb/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Fri, 11 Jan 2019 02:06:11 GMT
VOLUME [/orientdb/backup /orientdb/databases /orientdb/config]
# Fri, 11 Jan 2019 02:06:11 GMT
WORKDIR /orientdb
# Fri, 11 Jan 2019 02:06:12 GMT
EXPOSE 2424
# Fri, 11 Jan 2019 02:06:12 GMT
EXPOSE 2480
# Fri, 11 Jan 2019 02:06:12 GMT
CMD ["server.sh"]
```

-	Layers:
	-	`sha256:cd784148e3483c2c86c50a48e535302ab0288bebd587accf40b714fffd0646b3`  
		Last Modified: Fri, 21 Dec 2018 00:23:44 GMT  
		Size: 2.2 MB (2207025 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35920a071f912ae4c16897610e8e2d514efcfd0e14ec76c4c73bf9aa7c2c55ea`  
		Last Modified: Fri, 21 Dec 2018 00:44:42 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88b05767cad1d214d47942193ae9397b177ebf5866fa7997ed3b59e9f4c52a38`  
		Last Modified: Fri, 11 Jan 2019 00:29:57 GMT  
		Size: 70.7 MB (70650933 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11453518f794592f4f25c53693144638824d917af337515c810303923d0cc352`  
		Last Modified: Fri, 11 Jan 2019 02:06:52 GMT  
		Size: 767.2 KB (767241 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66a79e5f52af12d989f530b78a37af590cd15ee57dc481e3c56d66a3043e0a23`  
		Last Modified: Fri, 11 Jan 2019 02:06:55 GMT  
		Size: 36.9 MB (36923893 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
