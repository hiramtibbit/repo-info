## `neo4j:enterprise`

```console
$ docker pull neo4j@sha256:dfc955dab3159496719d11fdc07af04c5e40de4da81b877daf32eea87c2879b6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `neo4j:enterprise` - linux; amd64

```console
$ docker pull neo4j@sha256:7d86318e159637fd4020363d0a5862d2ea8ed31b205d63405baafc459b25ba46
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **166.3 MB (166266930 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0055e0334c7c70563c3d78aeb04d4e2e29f790f94de67f55d7b54f812e9589bd`
-	Entrypoint: `["\/sbin\/tini","-g","--","\/docker-entrypoint.sh"]`
-	Default Command: `["neo4j"]`

```dockerfile
# Tue, 09 Jan 2018 21:10:58 GMT
ADD file:093f0723fa46f6cdbd6f7bd146448bb70ecce54254c35701feeceb956414622f in / 
# Tue, 09 Jan 2018 21:10:58 GMT
CMD ["/bin/sh"]
# Wed, 06 Jun 2018 01:55:39 GMT
ENV LANG=C.UTF-8
# Wed, 06 Jun 2018 01:55:40 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 06 Jun 2018 01:55:40 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Wed, 06 Jun 2018 01:55:40 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 06 Jun 2018 01:55:40 GMT
ENV JAVA_VERSION=8u151
# Wed, 06 Jun 2018 01:55:41 GMT
ENV JAVA_ALPINE_VERSION=8.151.12-r0
# Wed, 06 Jun 2018 01:55:47 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 06 Jun 2018 04:53:17 GMT
RUN addgroup -S neo4j && adduser -S -H -h /var/lib/neo4j -G neo4j neo4j
# Wed, 06 Jun 2018 04:53:56 GMT
ENV NEO4J_SHA256=d000f1b6afb1cec3cf1cde99c75555d38f579b58e467eebe32e2353fdf9effa3 NEO4J_TARBALL=neo4j-enterprise-3.4.0-unix.tar.gz NEO4J_EDITION=enterprise
# Wed, 06 Jun 2018 04:53:56 GMT
ARG NEO4J_URI=http://dist.neo4j.org/neo4j-enterprise-3.4.0-unix.tar.gz
# Wed, 06 Jun 2018 04:53:57 GMT
COPY file:2e411d607fa15f91ae6f4b515dde6bf3e158d34c0036556e00553ed1c50cd63d in /tmp/ 
# Wed, 06 Jun 2018 04:54:14 GMT
# ARGS: NEO4J_URI=http://dist.neo4j.org/neo4j-enterprise-3.4.0-unix.tar.gz
RUN apk add --no-cache --quiet     bash     curl     tini     su-exec     && curl --fail --silent --show-error --location --remote-name ${NEO4J_URI}     && echo "${NEO4J_SHA256}  ${NEO4J_TARBALL}" | sha256sum -csw -     && tar --extract --file ${NEO4J_TARBALL} --directory /var/lib     && mv /var/lib/neo4j-* /var/lib/neo4j     && rm ${NEO4J_TARBALL}     && mv /var/lib/neo4j/data /data     && chown -R neo4j:neo4j /data     && chmod -R 777 /data     && chown -R neo4j:neo4j /var/lib/neo4j     && chmod -R 777 /var/lib/neo4j     && ln -s /data /var/lib/neo4j/data     && apk del curl
# Wed, 06 Jun 2018 04:54:14 GMT
ENV PATH=/var/lib/neo4j/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 06 Jun 2018 04:54:15 GMT
WORKDIR /var/lib/neo4j
# Wed, 06 Jun 2018 04:54:15 GMT
VOLUME [/data]
# Wed, 06 Jun 2018 04:54:15 GMT
COPY file:857a91b80d32eec54d0993fca903999f565811fcf4b106691dfcd5cdc4db8e4d in /docker-entrypoint.sh 
# Wed, 06 Jun 2018 04:54:16 GMT
EXPOSE 7473/tcp 7474/tcp 7687/tcp
# Wed, 06 Jun 2018 04:54:16 GMT
ENTRYPOINT ["/sbin/tini" "-g" "--" "/docker-entrypoint.sh"]
# Wed, 06 Jun 2018 04:54:16 GMT
CMD ["neo4j"]
```

-	Layers:
	-	`sha256:ff3a5c916c92643ff77519ffa742d3ec61b7f591b6b7504599d95a4a41134e28`  
		Last Modified: Tue, 09 Jan 2018 21:13:34 GMT  
		Size: 2.1 MB (2065537 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8906544047d741c82ab8e4f6b3a698cdc37170b9afe8006a7c2aee85bc78618`  
		Last Modified: Wed, 06 Jun 2018 02:15:28 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a790ae7377b003b4c5f694a197f9f92de583b71838a02f66e8db9498e1c548d8`  
		Last Modified: Wed, 06 Jun 2018 02:15:45 GMT  
		Size: 54.5 MB (54454083 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:298a388bbc87a1c7505efb5ae0622135da1d4924b684a81e147c6021d548f8a6`  
		Last Modified: Wed, 06 Jun 2018 05:44:35 GMT  
		Size: 1.2 KB (1208 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4cf30a5f89a73273f54608cc70ef3bfcab042feafa4d2dc62ff993326de59a5`  
		Last Modified: Wed, 06 Jun 2018 05:45:16 GMT  
		Size: 129.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c681dbb3ff65e5c51dfda2b88e0a6a037ca63fa7e29eb57d883adfed2af2a11`  
		Last Modified: Wed, 06 Jun 2018 05:45:28 GMT  
		Size: 109.7 MB (109742882 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24e62da7ad8cde08066b04f5b2cce1510daa2aa1425aa900ca68dcf5b84efdd7`  
		Last Modified: Wed, 06 Jun 2018 05:45:16 GMT  
		Size: 2.9 KB (2850 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
