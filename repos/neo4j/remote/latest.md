## `neo4j:latest`

```console
$ docker pull neo4j@sha256:c0fd7c61df9ca133f3d38c9e815a2a6b17dea821b477bc2ad6c381b588e304c7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `neo4j:latest` - linux; amd64

```console
$ docker pull neo4j@sha256:64d94ed585587084c132fce26c1fb2f439bec9d0039436fa167a64566dd27d9f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **160.4 MB (160355116 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7329e79f78dcde66a2126094bd71ba3696dfd37b3f7bb518910829bf64da0c5d`
-	Entrypoint: `["\/sbin\/tini","-g","--","\/docker-entrypoint.sh"]`
-	Default Command: `["neo4j"]`

```dockerfile
# Wed, 30 Jan 2019 22:19:46 GMT
ADD file:91fb97ea3549e52e7b6e22b93a6736cf915c756f3d13348406d8ad5f1a872680 in / 
# Wed, 30 Jan 2019 22:19:47 GMT
CMD ["/bin/sh"]
# Thu, 31 Jan 2019 02:42:14 GMT
ENV LANG=C.UTF-8
# Thu, 31 Jan 2019 02:42:14 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Thu, 31 Jan 2019 02:42:28 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Thu, 31 Jan 2019 02:42:28 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Thu, 31 Jan 2019 02:42:28 GMT
ENV JAVA_VERSION=8u191
# Thu, 31 Jan 2019 02:42:28 GMT
ENV JAVA_ALPINE_VERSION=8.191.12-r0
# Thu, 31 Jan 2019 02:42:31 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Thu, 31 Jan 2019 03:47:11 GMT
RUN addgroup -S neo4j && adduser -S -H -h /var/lib/neo4j -G neo4j neo4j
# Thu, 31 Jan 2019 03:47:11 GMT
ENV NEO4J_SHA256=c1dec66aaf4d97b2e538ec0068de172ef454de101cce37196c8b8865f4db6644 NEO4J_TARBALL=neo4j-community-3.5.2-unix.tar.gz NEO4J_EDITION=community
# Thu, 31 Jan 2019 03:47:11 GMT
ARG NEO4J_URI=http://dist.neo4j.org/neo4j-community-3.5.2-unix.tar.gz
# Thu, 31 Jan 2019 03:47:11 GMT
COPY file:696befc481f5ad55a590fa577c3d4ba04c9237326d85b95b729538f95702e110 in /tmp/ 
# Thu, 31 Jan 2019 03:47:19 GMT
# ARGS: NEO4J_URI=http://dist.neo4j.org/neo4j-community-3.5.2-unix.tar.gz
RUN apk add --no-cache --quiet     bash     curl     tini     su-exec     && curl --fail --silent --show-error --location --remote-name ${NEO4J_URI}     && echo "${NEO4J_SHA256}  ${NEO4J_TARBALL}" | sha256sum -csw -     && tar --extract --file ${NEO4J_TARBALL} --directory /var/lib     && mv /var/lib/neo4j-* /var/lib/neo4j     && rm ${NEO4J_TARBALL}     && mv /var/lib/neo4j/data /data     && chown -R neo4j:neo4j /data     && chmod -R 777 /data     && chown -R neo4j:neo4j /var/lib/neo4j     && chmod -R 777 /var/lib/neo4j     && ln -s /data /var/lib/neo4j/data     && apk del curl
# Thu, 31 Jan 2019 03:47:19 GMT
ENV PATH=/var/lib/neo4j/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Thu, 31 Jan 2019 03:47:19 GMT
WORKDIR /var/lib/neo4j
# Thu, 31 Jan 2019 03:47:19 GMT
VOLUME [/data]
# Thu, 31 Jan 2019 03:47:19 GMT
COPY file:43e3b27a58e2fb38e37f468e7c8da6b80f8bf4577e7e45b88fdaafc5e020bbfa in /docker-entrypoint.sh 
# Thu, 31 Jan 2019 03:47:20 GMT
EXPOSE 7473 7474 7687
# Thu, 31 Jan 2019 03:47:20 GMT
ENTRYPOINT ["/sbin/tini" "-g" "--" "/docker-entrypoint.sh"]
# Thu, 31 Jan 2019 03:47:20 GMT
CMD ["neo4j"]
```

-	Layers:
	-	`sha256:169185f82c45a6eb72e0ca4ee66152626e7ace92a0cbc53624fb46d0a553f0bd`  
		Last Modified: Wed, 30 Jan 2019 22:21:04 GMT  
		Size: 2.2 MB (2207038 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3bdc61458cffd62ac4c8b61e8c802e215f17f950e740aa6b7845f71784d7b615`  
		Last Modified: Thu, 31 Jan 2019 02:45:33 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b1903cd06e3555581ac819b268152f5200239a7f124567d55411d1dcf0ed4a4`  
		Last Modified: Thu, 31 Jan 2019 02:45:57 GMT  
		Size: 54.9 MB (54866663 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e9c4d5c46d16f12ffea2d00a232e5b56bcd3bf8daf22e41126c427bfbd3b04c`  
		Last Modified: Thu, 31 Jan 2019 04:12:44 GMT  
		Size: 1.2 KB (1206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d7619dc392c72248f83c465b1d2b0e1ec3638378089a1c0b818a80e9e991007b`  
		Last Modified: Thu, 31 Jan 2019 04:12:44 GMT  
		Size: 128.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44b1b779f759d50abde3c0434af47554447b48731c5b0fa2bc0fe2a0d44d7177`  
		Last Modified: Thu, 31 Jan 2019 04:12:52 GMT  
		Size: 103.3 MB (103276856 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c27b1a469d02cb8e22ef9113e1e23574bde631f255cb0b5aed1a353e60f4b0fe`  
		Last Modified: Thu, 31 Jan 2019 04:12:44 GMT  
		Size: 3.0 KB (2988 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
