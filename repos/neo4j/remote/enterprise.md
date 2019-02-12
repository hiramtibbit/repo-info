## `neo4j:enterprise`

```console
$ docker pull neo4j@sha256:07d4da895db5424e3c773995fde061310eac76fa6d8ef0797e1718bb2c2799fb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `neo4j:enterprise` - linux; amd64

```console
$ docker pull neo4j@sha256:9abff7ef09c2b30845df731ee204e430c7e1bfafbbe95b1a4bb847623549e606
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **195.6 MB (195620587 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:84a987f38bc24672891c14c01f1a8344f3f0e0d1df986a2395beda449531ef21`
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
# Tue, 12 Feb 2019 21:30:28 GMT
ENV NEO4J_SHA256=f51acafccc162a312b590d430c5a08a8dab4ed3dcd50a40a6c989625e2b44807 NEO4J_TARBALL=neo4j-enterprise-3.5.3-unix.tar.gz NEO4J_EDITION=enterprise NEO4J_HOME=/var/lib/neo4j
# Tue, 12 Feb 2019 21:30:28 GMT
ARG NEO4J_URI=http://dist.neo4j.org/neo4j-enterprise-3.5.3-unix.tar.gz
# Tue, 12 Feb 2019 21:30:28 GMT
COPY file:696befc481f5ad55a590fa577c3d4ba04c9237326d85b95b729538f95702e110 in /tmp/ 
# Tue, 12 Feb 2019 21:30:49 GMT
# ARGS: NEO4J_URI=http://dist.neo4j.org/neo4j-enterprise-3.5.3-unix.tar.gz
RUN apk add --no-cache --quiet     bash     curl     tini     su-exec     && curl --fail --silent --show-error --location --remote-name ${NEO4J_URI}     && echo "${NEO4J_SHA256}  ${NEO4J_TARBALL}" | sha256sum -csw -     && tar --extract --file ${NEO4J_TARBALL} --directory /var/lib     && mv /var/lib/neo4j-* "${NEO4J_HOME}"     && rm ${NEO4J_TARBALL}     && mv "${NEO4J_HOME}"/data /data     && chown -R neo4j:neo4j /data     && chmod -R 777 /data     && mv "${NEO4J_HOME}"/logs /logs     && chown -R neo4j:neo4j /logs     && chmod -R 777 /logs     && chown -R neo4j:neo4j "${NEO4J_HOME}"     && chmod -R 777 "${NEO4J_HOME}"     && ln -s /data "${NEO4J_HOME}"/data     && ln -s /logs "${NEO4J_HOME}"/logs     && apk del curl
# Tue, 12 Feb 2019 21:30:49 GMT
ENV PATH=/var/lib/neo4j/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 12 Feb 2019 21:30:49 GMT
WORKDIR /var/lib/neo4j
# Tue, 12 Feb 2019 21:30:50 GMT
VOLUME [/data /logs]
# Tue, 12 Feb 2019 21:30:50 GMT
COPY file:caaa687300364ec073b2859cda1a928999551749ea28090fdbf21dade8822e35 in /docker-entrypoint.sh 
# Tue, 12 Feb 2019 21:30:50 GMT
EXPOSE 7473 7474 7687
# Tue, 12 Feb 2019 21:30:50 GMT
ENTRYPOINT ["/sbin/tini" "-g" "--" "/docker-entrypoint.sh"]
# Tue, 12 Feb 2019 21:30:50 GMT
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
	-	`sha256:7e5996e2cae0ffb39654378dd84cca1e4d803fe8ad97bea31f91d072d3c2cef9`  
		Last Modified: Tue, 12 Feb 2019 21:34:28 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e63be5e6ad1e35ffe6f46e887c75963b659c769dc09cacf42e5b82bc10c2cea8`  
		Last Modified: Tue, 12 Feb 2019 21:34:39 GMT  
		Size: 137.9 MB (137938255 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fdcfe9ef61a5a432a9e9cf30abfe89ee4841fd0cde72ce32209c5f360cfd64ff`  
		Last Modified: Tue, 12 Feb 2019 21:34:28 GMT  
		Size: 3.3 KB (3303 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
