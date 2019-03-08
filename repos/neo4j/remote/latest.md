## `neo4j:latest`

```console
$ docker pull neo4j@sha256:4c73bd0824a3596dbd7e9e9b70163a8c73447443a76bc845682b7071c98b7a28
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `neo4j:latest` - linux; amd64

```console
$ docker pull neo4j@sha256:bdd66d1c53b60f235dfc1051c5a3ae22701e0d8049bcb307ef73a6f08c55e1cd
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **160.9 MB (160893968 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d8ed0ae3150a07d666744e3c499569f28de06b0f5f93282a1cb99f9b1f0b3b4f`
-	Entrypoint: `["\/sbin\/tini","-g","--","\/docker-entrypoint.sh"]`
-	Default Command: `["neo4j"]`

```dockerfile
# Thu, 07 Mar 2019 22:19:40 GMT
ADD file:88875982b0512a9d0ba001bfea19497ae9a9442c257b19c61bffc56e7201b0c3 in / 
# Thu, 07 Mar 2019 22:19:40 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 02:13:29 GMT
ENV LANG=C.UTF-8
# Fri, 08 Mar 2019 02:13:30 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 08 Mar 2019 02:13:42 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Fri, 08 Mar 2019 02:13:42 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Fri, 08 Mar 2019 02:13:43 GMT
ENV JAVA_VERSION=8u191
# Fri, 08 Mar 2019 02:13:43 GMT
ENV JAVA_ALPINE_VERSION=8.191.12-r0
# Fri, 08 Mar 2019 02:13:45 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Fri, 08 Mar 2019 05:01:52 GMT
RUN addgroup -S neo4j && adduser -S -H -h /var/lib/neo4j -G neo4j neo4j
# Fri, 08 Mar 2019 05:01:52 GMT
ENV NEO4J_SHA256=d4b6e48327d5283131e9a38db25d722119e21ef5420b3cc393b9263aa37313ea NEO4J_TARBALL=neo4j-community-3.5.3-unix.tar.gz NEO4J_EDITION=community NEO4J_HOME=/var/lib/neo4j
# Fri, 08 Mar 2019 05:01:52 GMT
ARG NEO4J_URI=http://dist.neo4j.org/neo4j-community-3.5.3-unix.tar.gz
# Fri, 08 Mar 2019 05:01:53 GMT
COPY file:696befc481f5ad55a590fa577c3d4ba04c9237326d85b95b729538f95702e110 in /tmp/ 
# Fri, 08 Mar 2019 05:02:04 GMT
# ARGS: NEO4J_URI=http://dist.neo4j.org/neo4j-community-3.5.3-unix.tar.gz
RUN apk add --no-cache --quiet     bash     curl     tini     su-exec     && curl --fail --silent --show-error --location --remote-name ${NEO4J_URI}     && echo "${NEO4J_SHA256}  ${NEO4J_TARBALL}" | sha256sum -csw -     && tar --extract --file ${NEO4J_TARBALL} --directory /var/lib     && mv /var/lib/neo4j-* "${NEO4J_HOME}"     && rm ${NEO4J_TARBALL}     && mv "${NEO4J_HOME}"/data /data     && chown -R neo4j:neo4j /data     && chmod -R 777 /data     && mv "${NEO4J_HOME}"/logs /logs     && chown -R neo4j:neo4j /logs     && chmod -R 777 /logs     && chown -R neo4j:neo4j "${NEO4J_HOME}"     && chmod -R 777 "${NEO4J_HOME}"     && ln -s /data "${NEO4J_HOME}"/data     && ln -s /logs "${NEO4J_HOME}"/logs     && apk del curl
# Fri, 08 Mar 2019 05:02:04 GMT
ENV PATH=/var/lib/neo4j/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Fri, 08 Mar 2019 05:02:04 GMT
WORKDIR /var/lib/neo4j
# Fri, 08 Mar 2019 05:02:04 GMT
VOLUME [/data /logs]
# Fri, 08 Mar 2019 05:02:05 GMT
COPY file:caaa687300364ec073b2859cda1a928999551749ea28090fdbf21dade8822e35 in /docker-entrypoint.sh 
# Fri, 08 Mar 2019 05:02:05 GMT
EXPOSE 7473 7474 7687
# Fri, 08 Mar 2019 05:02:05 GMT
ENTRYPOINT ["/sbin/tini" "-g" "--" "/docker-entrypoint.sh"]
# Fri, 08 Mar 2019 05:02:05 GMT
CMD ["neo4j"]
```

-	Layers:
	-	`sha256:8e402f1a9c577ded051c1ef10e9fe4492890459522089959988a4852dee8ab2c`  
		Last Modified: Tue, 05 Mar 2019 21:22:35 GMT  
		Size: 2.8 MB (2754729 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4866c822999cc5862e60f784434873bd291ef9a7ac6e9199a5d1d19eea22fe17`  
		Last Modified: Fri, 08 Mar 2019 02:15:56 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:205f26e90552395346c11a0738dab5f50b49f245b5aac539ad7845f6ea92d2d4`  
		Last Modified: Fri, 08 Mar 2019 02:16:18 GMT  
		Size: 54.9 MB (54922705 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c19bb02be9d9b79e3320ca9863e37344af3c9d685ab15fca92a21a1294941723`  
		Last Modified: Fri, 08 Mar 2019 05:30:36 GMT  
		Size: 1.2 KB (1213 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce5d5ed075478089acbadd0d665e8dc20ff4abac7ce79dd577600360e5bb6bbc`  
		Last Modified: Fri, 08 Mar 2019 05:30:36 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46b4a5551ca40aa6b32e4e939fed32a03a7ae0e0722809f3453ea4514696adbf`  
		Last Modified: Fri, 08 Mar 2019 05:30:50 GMT  
		Size: 103.2 MB (103211649 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a6647a02e37e02c0a51aca817b04044e26d8fa354389821d27745b5a7d742b0`  
		Last Modified: Fri, 08 Mar 2019 05:30:36 GMT  
		Size: 3.3 KB (3303 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
