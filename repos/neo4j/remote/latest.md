## `neo4j:latest`

```console
$ docker pull neo4j@sha256:8fb2dc734045b5300ab0d0020da22d9eb3749b9aad6f8ffe30643bd2443994dc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `neo4j:latest` - linux; amd64

```console
$ docker pull neo4j@sha256:d891faa60154ea399f15c072c2dc4416817a8b0788ccc7a31114dd6a884bc75b
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **161.0 MB (160967443 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dceacf67789ab91a19b777edc6eb6a3bf46c040cb898e13a62c3a4a060646c7a`
-	Entrypoint: `["\/sbin\/tini","-g","--","\/docker-entrypoint.sh"]`
-	Default Command: `["neo4j"]`

```dockerfile
# Wed, 30 Jan 2019 22:19:52 GMT
ADD file:2a1fc9351afe35698918545b2d466d9805c2e8afcec52f916785ee65bbafeced in / 
# Wed, 30 Jan 2019 22:19:52 GMT
CMD ["/bin/sh"]
# Tue, 05 Feb 2019 20:39:38 GMT
ENV LANG=C.UTF-8
# Tue, 05 Feb 2019 20:39:40 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 05 Feb 2019 20:39:59 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Tue, 05 Feb 2019 20:39:59 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 05 Feb 2019 20:39:59 GMT
ENV JAVA_VERSION=8u191
# Tue, 05 Feb 2019 20:39:59 GMT
ENV JAVA_ALPINE_VERSION=8.191.12-r0
# Tue, 05 Feb 2019 20:40:03 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 05 Feb 2019 22:31:31 GMT
RUN addgroup -S neo4j && adduser -S -H -h /var/lib/neo4j -G neo4j neo4j
# Tue, 05 Feb 2019 22:31:31 GMT
ENV NEO4J_SHA256=c1dec66aaf4d97b2e538ec0068de172ef454de101cce37196c8b8865f4db6644 NEO4J_TARBALL=neo4j-community-3.5.2-unix.tar.gz NEO4J_EDITION=community
# Tue, 05 Feb 2019 22:31:31 GMT
ARG NEO4J_URI=http://dist.neo4j.org/neo4j-community-3.5.2-unix.tar.gz
# Tue, 05 Feb 2019 22:31:32 GMT
COPY file:696befc481f5ad55a590fa577c3d4ba04c9237326d85b95b729538f95702e110 in /tmp/ 
# Tue, 05 Feb 2019 22:31:40 GMT
# ARGS: NEO4J_URI=http://dist.neo4j.org/neo4j-community-3.5.2-unix.tar.gz
RUN apk add --no-cache --quiet     bash     curl     tini     su-exec     && curl --fail --silent --show-error --location --remote-name ${NEO4J_URI}     && echo "${NEO4J_SHA256}  ${NEO4J_TARBALL}" | sha256sum -csw -     && tar --extract --file ${NEO4J_TARBALL} --directory /var/lib     && mv /var/lib/neo4j-* /var/lib/neo4j     && rm ${NEO4J_TARBALL}     && mv /var/lib/neo4j/data /data     && chown -R neo4j:neo4j /data     && chmod -R 777 /data     && chown -R neo4j:neo4j /var/lib/neo4j     && chmod -R 777 /var/lib/neo4j     && ln -s /data /var/lib/neo4j/data     && apk del curl
# Tue, 05 Feb 2019 22:31:40 GMT
ENV PATH=/var/lib/neo4j/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 05 Feb 2019 22:31:40 GMT
WORKDIR /var/lib/neo4j
# Tue, 05 Feb 2019 22:31:40 GMT
VOLUME [/data]
# Tue, 05 Feb 2019 22:31:41 GMT
COPY file:43e3b27a58e2fb38e37f468e7c8da6b80f8bf4577e7e45b88fdaafc5e020bbfa in /docker-entrypoint.sh 
# Tue, 05 Feb 2019 22:31:41 GMT
EXPOSE 7473 7474 7687
# Tue, 05 Feb 2019 22:31:41 GMT
ENTRYPOINT ["/sbin/tini" "-g" "--" "/docker-entrypoint.sh"]
# Tue, 05 Feb 2019 22:31:41 GMT
CMD ["neo4j"]
```

-	Layers:
	-	`sha256:6c40cc604d8e4c121adcb6b0bfe8bb038815c350980090e74aa5a6423f8f82c0`  
		Last Modified: Wed, 30 Jan 2019 22:21:08 GMT  
		Size: 2.8 MB (2754728 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e78b803852394d2b9aaa3ce93b0f2502b0bf8e063b1fa79734de0fc8ee55ee6e`  
		Last Modified: Tue, 05 Feb 2019 20:45:24 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f41fe1b6eee3555498a7e15b3bf048a7ec274302a92d0c8b34fda111c780fdcf`  
		Last Modified: Tue, 05 Feb 2019 20:45:56 GMT  
		Size: 54.9 MB (54922733 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5be67fca14d1ec0d3d012eaa80e4027287ba2a4a90d13c13040edcd8b3546e03`  
		Last Modified: Tue, 05 Feb 2019 22:55:29 GMT  
		Size: 1.2 KB (1203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b09b1c3ea6d721a50678e535d0a1940423121a10e9f7afd4befd4092ce2de37d`  
		Last Modified: Tue, 05 Feb 2019 22:55:29 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f43289a4fe182d55ac03bcabbd8c5fc6b809515a63e2fe83d6bd51a50f7b5e6a`  
		Last Modified: Tue, 05 Feb 2019 22:55:37 GMT  
		Size: 103.3 MB (103285423 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9e9bc690b1cfc3079bd19a09ed45404e299cd09f7a114b8ab88fd7f8a687670`  
		Last Modified: Tue, 05 Feb 2019 22:55:29 GMT  
		Size: 3.0 KB (2987 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
