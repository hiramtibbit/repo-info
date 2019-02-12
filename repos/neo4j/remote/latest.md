## `neo4j:latest`

```console
$ docker pull neo4j@sha256:9f341164ebc1de608423267af7e3ba89e3cca732756964fa5c50efbafaf9565e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `neo4j:latest` - linux; amd64

```console
$ docker pull neo4j@sha256:6b84aa8b014233e80ea2c6aa41338e5a7a72e155e214305753fa804f3aa0a424
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **160.9 MB (160893987 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f6e40b47cbd6161e2ddfc9b183dcef86f29905955871cd0937e1793709f89222`
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
# Tue, 12 Feb 2019 21:30:15 GMT
ENV NEO4J_SHA256=d4b6e48327d5283131e9a38db25d722119e21ef5420b3cc393b9263aa37313ea NEO4J_TARBALL=neo4j-community-3.5.3-unix.tar.gz NEO4J_EDITION=community NEO4J_HOME=/var/lib/neo4j
# Tue, 12 Feb 2019 21:30:16 GMT
ARG NEO4J_URI=http://dist.neo4j.org/neo4j-community-3.5.3-unix.tar.gz
# Tue, 12 Feb 2019 21:30:16 GMT
COPY file:696befc481f5ad55a590fa577c3d4ba04c9237326d85b95b729538f95702e110 in /tmp/ 
# Tue, 12 Feb 2019 21:30:23 GMT
# ARGS: NEO4J_URI=http://dist.neo4j.org/neo4j-community-3.5.3-unix.tar.gz
RUN apk add --no-cache --quiet     bash     curl     tini     su-exec     && curl --fail --silent --show-error --location --remote-name ${NEO4J_URI}     && echo "${NEO4J_SHA256}  ${NEO4J_TARBALL}" | sha256sum -csw -     && tar --extract --file ${NEO4J_TARBALL} --directory /var/lib     && mv /var/lib/neo4j-* "${NEO4J_HOME}"     && rm ${NEO4J_TARBALL}     && mv "${NEO4J_HOME}"/data /data     && chown -R neo4j:neo4j /data     && chmod -R 777 /data     && mv "${NEO4J_HOME}"/logs /logs     && chown -R neo4j:neo4j /logs     && chmod -R 777 /logs     && chown -R neo4j:neo4j "${NEO4J_HOME}"     && chmod -R 777 "${NEO4J_HOME}"     && ln -s /data "${NEO4J_HOME}"/data     && ln -s /logs "${NEO4J_HOME}"/logs     && apk del curl
# Tue, 12 Feb 2019 21:30:23 GMT
ENV PATH=/var/lib/neo4j/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 12 Feb 2019 21:30:24 GMT
WORKDIR /var/lib/neo4j
# Tue, 12 Feb 2019 21:30:24 GMT
VOLUME [/data /logs]
# Tue, 12 Feb 2019 21:30:24 GMT
COPY file:caaa687300364ec073b2859cda1a928999551749ea28090fdbf21dade8822e35 in /docker-entrypoint.sh 
# Tue, 12 Feb 2019 21:30:24 GMT
EXPOSE 7473 7474 7687
# Tue, 12 Feb 2019 21:30:24 GMT
ENTRYPOINT ["/sbin/tini" "-g" "--" "/docker-entrypoint.sh"]
# Tue, 12 Feb 2019 21:30:24 GMT
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
	-	`sha256:0a440440ebed2f2f4a07c0d8aef2dbc6906335ce666627aa7c13fc789220939d`  
		Last Modified: Tue, 12 Feb 2019 21:34:08 GMT  
		Size: 128.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e9046dd61dde086fb01a0b1d25644e94e81646cf68eae67a7f4b1897431d729`  
		Last Modified: Tue, 12 Feb 2019 21:34:18 GMT  
		Size: 103.2 MB (103211653 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55986077409782563a7669607c5b98b220e1a761744ee5a3f0b5f5bc6d15674b`  
		Last Modified: Tue, 12 Feb 2019 21:34:08 GMT  
		Size: 3.3 KB (3303 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
