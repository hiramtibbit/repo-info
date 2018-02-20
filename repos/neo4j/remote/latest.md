## `neo4j:latest`

```console
$ docker pull neo4j@sha256:f45a39c91208e0485cdc4bf457699dd401db442335c0a4f98d0e6932b02101c7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `neo4j:latest` - linux; amd64

```console
$ docker pull neo4j@sha256:0a8582407a4862bdba1e8a29ec5c4fed57361acb9eab2b9a1fa4000fe0d3d518
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **148.9 MB (148939258 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:425c1aec606d61d9fc0134772dd6111a3fe921e17fff14d267d322bec8b86ed9`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["neo4j"]`

```dockerfile
# Tue, 09 Jan 2018 21:10:58 GMT
ADD file:093f0723fa46f6cdbd6f7bd146448bb70ecce54254c35701feeceb956414622f in / 
# Tue, 09 Jan 2018 21:10:58 GMT
CMD ["/bin/sh"]
# Wed, 10 Jan 2018 04:48:24 GMT
ENV LANG=C.UTF-8
# Wed, 10 Jan 2018 04:48:25 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 10 Jan 2018 04:51:56 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Wed, 10 Jan 2018 04:51:57 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 10 Jan 2018 04:51:57 GMT
ENV JAVA_VERSION=8u151
# Wed, 10 Jan 2018 04:51:57 GMT
ENV JAVA_ALPINE_VERSION=8.151.12-r0
# Wed, 10 Jan 2018 04:52:04 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 10 Jan 2018 08:41:39 GMT
RUN apk add --no-cache --quiet     bash     curl
# Tue, 20 Feb 2018 03:20:12 GMT
ENV NEO4J_SHA256=a57be049906cc871b59d7a8283d265485b2c31de47b208ef18636901859232f9 NEO4J_TARBALL=neo4j-community-3.3.3-unix.tar.gz NEO4J_EDITION=community
# Tue, 20 Feb 2018 03:20:13 GMT
ARG NEO4J_URI=http://dist.neo4j.org/neo4j-community-3.3.3-unix.tar.gz
# Tue, 20 Feb 2018 03:20:13 GMT
COPY file:2e411d607fa15f91ae6f4b515dde6bf3e158d34c0036556e00553ed1c50cd63d in /tmp/ 
# Tue, 20 Feb 2018 18:38:12 GMT
# ARGS: NEO4J_URI=http://dist.neo4j.org/neo4j-community-3.3.3-unix.tar.gz
RUN curl --fail --silent --show-error --location --remote-name ${NEO4J_URI}     && echo "${NEO4J_SHA256}  ${NEO4J_TARBALL}" | sha256sum -csw -     && tar --extract --file ${NEO4J_TARBALL} --directory /var/lib     && mv /var/lib/neo4j-* /var/lib/neo4j     && rm ${NEO4J_TARBALL}     && mv /var/lib/neo4j/data /data     && ln -s /data /var/lib/neo4j/data     && apk del curl
# Tue, 20 Feb 2018 18:38:12 GMT
ENV PATH=/var/lib/neo4j/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 20 Feb 2018 18:38:12 GMT
WORKDIR /var/lib/neo4j
# Tue, 20 Feb 2018 18:38:13 GMT
VOLUME [/data]
# Tue, 20 Feb 2018 18:38:13 GMT
COPY file:b1f08b121281604fe08edf206463959271aee1f21c800af2c0f2a52d70db0f3e in /docker-entrypoint.sh 
# Tue, 20 Feb 2018 18:38:14 GMT
EXPOSE 7473/tcp 7474/tcp 7687/tcp
# Tue, 20 Feb 2018 18:38:14 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 20 Feb 2018 18:38:14 GMT
CMD ["neo4j"]
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
	-	`sha256:fa7536dd895ade2421a9a0fcf6e16485323f9e2e45e917b1ff18b0f648974626`  
		Last Modified: Wed, 10 Jan 2018 04:59:33 GMT  
		Size: 54.5 MB (54453948 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d58d533cf95026ab735f3e7683b1c3ed8fcb49358044c179adf20595beb7ba71`  
		Last Modified: Wed, 10 Jan 2018 09:29:33 GMT  
		Size: 1.7 MB (1689224 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ff75ac182b4479ef73a267cd0e12ae77a27374964ad9036401ad55ebe2b31d6`  
		Last Modified: Tue, 20 Feb 2018 18:42:49 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10cb27bb9463aa12b052c02aa76169b0ee32f2c47e91baadb5958707c34e374d`  
		Last Modified: Tue, 20 Feb 2018 18:42:56 GMT  
		Size: 90.7 MB (90727905 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b6a46af96b01a778de4af80cc9a92659d3ae99d7f4707333f2dba184c53e941`  
		Last Modified: Tue, 20 Feb 2018 18:42:48 GMT  
		Size: 2.3 KB (2276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
