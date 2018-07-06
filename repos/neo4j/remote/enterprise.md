## `neo4j:enterprise`

```console
$ docker pull neo4j@sha256:b395d8be446241ae4f5d78f7dae6ce748bb0caaca036fc676beb2495420505a9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `neo4j:enterprise` - linux; amd64

```console
$ docker pull neo4j@sha256:bc02974ffcf854e0a9f995efc3d7c589f28284d21034d857c4dff255c427df28
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **166.8 MB (166817226 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c1175f4ec25e7693602ec1868eef3cada42727728fd591b53a324a1ed5b52ca1`
-	Entrypoint: `["\/sbin\/tini","-g","--","\/docker-entrypoint.sh"]`
-	Default Command: `["neo4j"]`

```dockerfile
# Fri, 06 Jul 2018 14:13:45 GMT
ADD file:6ee19b92d5cb1bf143947fe2e2481cb3b353d42e1e54888a8ba48c03dd4155f2 in / 
# Fri, 06 Jul 2018 14:13:45 GMT
CMD ["/bin/sh"]
# Fri, 06 Jul 2018 15:51:15 GMT
ENV LANG=C.UTF-8
# Fri, 06 Jul 2018 15:51:15 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 06 Jul 2018 15:51:43 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Fri, 06 Jul 2018 15:51:43 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Fri, 06 Jul 2018 15:51:44 GMT
ENV JAVA_VERSION=8u171
# Fri, 06 Jul 2018 15:51:44 GMT
ENV JAVA_ALPINE_VERSION=8.171.11-r0
# Fri, 06 Jul 2018 15:51:48 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Fri, 06 Jul 2018 20:00:29 GMT
RUN addgroup -S neo4j && adduser -S -H -h /var/lib/neo4j -G neo4j neo4j
# Fri, 06 Jul 2018 20:01:08 GMT
ENV NEO4J_SHA256=ec73bc50bba0afe002f72ef422872625eaee5fd3cce6df8f7eeea5c6bd3395a6 NEO4J_TARBALL=neo4j-enterprise-3.4.1-unix.tar.gz NEO4J_EDITION=enterprise
# Fri, 06 Jul 2018 20:01:09 GMT
ARG NEO4J_URI=http://dist.neo4j.org/neo4j-enterprise-3.4.1-unix.tar.gz
# Fri, 06 Jul 2018 20:01:09 GMT
COPY file:2e411d607fa15f91ae6f4b515dde6bf3e158d34c0036556e00553ed1c50cd63d in /tmp/ 
# Fri, 06 Jul 2018 20:01:26 GMT
# ARGS: NEO4J_URI=http://dist.neo4j.org/neo4j-enterprise-3.4.1-unix.tar.gz
RUN apk add --no-cache --quiet     bash     curl     tini     su-exec     && curl --fail --silent --show-error --location --remote-name ${NEO4J_URI}     && echo "${NEO4J_SHA256}  ${NEO4J_TARBALL}" | sha256sum -csw -     && tar --extract --file ${NEO4J_TARBALL} --directory /var/lib     && mv /var/lib/neo4j-* /var/lib/neo4j     && rm ${NEO4J_TARBALL}     && mv /var/lib/neo4j/data /data     && chown -R neo4j:neo4j /data     && chmod -R 777 /data     && chown -R neo4j:neo4j /var/lib/neo4j     && chmod -R 777 /var/lib/neo4j     && ln -s /data /var/lib/neo4j/data     && apk del curl
# Fri, 06 Jul 2018 20:01:37 GMT
ENV PATH=/var/lib/neo4j/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Fri, 06 Jul 2018 20:01:37 GMT
WORKDIR /var/lib/neo4j
# Fri, 06 Jul 2018 20:01:38 GMT
VOLUME [/data]
# Fri, 06 Jul 2018 20:01:38 GMT
COPY file:603d5e7c50609263b4aac8c7285d2a3c8bfe2a39a24083aa5800e14bcc944c16 in /docker-entrypoint.sh 
# Fri, 06 Jul 2018 20:01:39 GMT
EXPOSE 7473/tcp 7474/tcp 7687/tcp
# Fri, 06 Jul 2018 20:01:39 GMT
ENTRYPOINT ["/sbin/tini" "-g" "--" "/docker-entrypoint.sh"]
# Fri, 06 Jul 2018 20:01:39 GMT
CMD ["neo4j"]
```

-	Layers:
	-	`sha256:911c6d0c7995e5d9763c1864d54fb6deccda04a55d7955123a8e22dd9d44c497`  
		Last Modified: Fri, 06 Jul 2018 14:16:43 GMT  
		Size: 2.1 MB (2103553 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4001add52a901363833fa030b1451162d380a5423906a45f64e090a5ee9efb74`  
		Last Modified: Fri, 06 Jul 2018 15:54:00 GMT  
		Size: 236.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:820acf8d3a4c2009dd9f6524e24509df597b6979c253fb6844d205c90a39c38a`  
		Last Modified: Fri, 06 Jul 2018 15:56:33 GMT  
		Size: 54.5 MB (54537341 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b695eaecab56b5c0373075300a047e4b8720bc5a0aadc6d9b328a074db190b29`  
		Last Modified: Fri, 06 Jul 2018 20:47:58 GMT  
		Size: 1.2 KB (1208 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:276d1bf708d38dcc528043b282794ca0a0089c024974cb0f03cd84c978a56b69`  
		Last Modified: Fri, 06 Jul 2018 20:49:09 GMT  
		Size: 128.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3ee9024eb4b9ac7bfd3790179d8df45746bb4c0bb7161f575213d9a39e7ceb2`  
		Last Modified: Fri, 06 Jul 2018 20:49:24 GMT  
		Size: 110.2 MB (110171772 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f35fcfc94019948965a90fa408436874bd89cf9526a44ce3c5ef45cf5e2203d`  
		Last Modified: Fri, 06 Jul 2018 20:49:09 GMT  
		Size: 3.0 KB (2988 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
