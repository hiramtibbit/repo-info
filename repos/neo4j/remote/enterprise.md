## `neo4j:enterprise`

```console
$ docker pull neo4j@sha256:1fcca3f6f91c9c2f8998777dfb6e0a3db87c8f7dfe2ab57c9e5bd5c9ac3dcf41
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `neo4j:enterprise` - linux; amd64

```console
$ docker pull neo4j@sha256:6a44d57a26d5d5eef53b3fd3d67925125edae51aac8944e44fe749d2d8a5bc08
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **195.1 MB (195073464 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:359a3ebf7e93f58518ea904e8311630579064b9dcddd8df250d915943b10e8e8`
-	Entrypoint: `["\/sbin\/tini","-g","--","\/docker-entrypoint.sh"]`
-	Default Command: `["neo4j"]`

```dockerfile
# Fri, 21 Dec 2018 00:21:29 GMT
ADD file:2ff00caea4e83dfade726ca47e3c795a1e9acb8ac24e392785c474ecf9a621f2 in / 
# Fri, 21 Dec 2018 00:21:30 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 00:40:53 GMT
ENV LANG=C.UTF-8
# Fri, 21 Dec 2018 00:40:57 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 21 Dec 2018 00:41:18 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Fri, 21 Dec 2018 00:41:18 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Fri, 11 Jan 2019 00:26:19 GMT
ENV JAVA_VERSION=8u191
# Fri, 11 Jan 2019 00:26:19 GMT
ENV JAVA_ALPINE_VERSION=8.191.12-r0
# Fri, 11 Jan 2019 00:26:23 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Fri, 11 Jan 2019 01:59:23 GMT
RUN addgroup -S neo4j && adduser -S -H -h /var/lib/neo4j -G neo4j neo4j
# Mon, 21 Jan 2019 19:20:43 GMT
ENV NEO4J_SHA256=2c4a08356debb22df2a3f7072d30191e8462d3c45ed5ee446d3f756b2202c3c8 NEO4J_TARBALL=neo4j-enterprise-3.5.2-unix.tar.gz NEO4J_EDITION=enterprise
# Mon, 21 Jan 2019 19:20:43 GMT
ARG NEO4J_URI=http://dist.neo4j.org/neo4j-enterprise-3.5.2-unix.tar.gz
# Mon, 21 Jan 2019 19:20:43 GMT
COPY file:696befc481f5ad55a590fa577c3d4ba04c9237326d85b95b729538f95702e110 in /tmp/ 
# Mon, 21 Jan 2019 19:21:07 GMT
# ARGS: NEO4J_URI=http://dist.neo4j.org/neo4j-enterprise-3.5.2-unix.tar.gz
RUN apk add --no-cache --quiet     bash     curl     tini     su-exec     && curl --fail --silent --show-error --location --remote-name ${NEO4J_URI}     && echo "${NEO4J_SHA256}  ${NEO4J_TARBALL}" | sha256sum -csw -     && tar --extract --file ${NEO4J_TARBALL} --directory /var/lib     && mv /var/lib/neo4j-* /var/lib/neo4j     && rm ${NEO4J_TARBALL}     && mv /var/lib/neo4j/data /data     && chown -R neo4j:neo4j /data     && chmod -R 777 /data     && chown -R neo4j:neo4j /var/lib/neo4j     && chmod -R 777 /var/lib/neo4j     && ln -s /data /var/lib/neo4j/data     && apk del curl
# Mon, 21 Jan 2019 19:21:07 GMT
ENV PATH=/var/lib/neo4j/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Mon, 21 Jan 2019 19:21:07 GMT
WORKDIR /var/lib/neo4j
# Mon, 21 Jan 2019 19:21:07 GMT
VOLUME [/data]
# Mon, 21 Jan 2019 19:21:08 GMT
COPY file:43e3b27a58e2fb38e37f468e7c8da6b80f8bf4577e7e45b88fdaafc5e020bbfa in /docker-entrypoint.sh 
# Mon, 21 Jan 2019 19:21:08 GMT
EXPOSE 7473 7474 7687
# Mon, 21 Jan 2019 19:21:08 GMT
ENTRYPOINT ["/sbin/tini" "-g" "--" "/docker-entrypoint.sh"]
# Mon, 21 Jan 2019 19:21:08 GMT
CMD ["neo4j"]
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
	-	`sha256:1a5149a464dd4b435dd529c6420b1a5c12b1076cdb94d3e0c41cdcc78f9582a5`  
		Last Modified: Fri, 11 Jan 2019 00:30:16 GMT  
		Size: 54.9 MB (54866597 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15bb04bfc35a43d99347bd13a4871f641555fde2cc6a34f20307d9a941c309cb`  
		Last Modified: Fri, 11 Jan 2019 02:18:59 GMT  
		Size: 1.2 KB (1206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0388fc68653760950030055d800b12fc68776fd95c02f957b2348ff65b516b84`  
		Last Modified: Mon, 21 Jan 2019 19:24:57 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1f7fd04b4ae9e56e3be716da0b4e8ff9964366aa55f6f398c1d44f6923cdd5a`  
		Last Modified: Mon, 21 Jan 2019 19:25:07 GMT  
		Size: 138.0 MB (137995281 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f31a52c103358cdb57b183bd2eede4b63a235606679258c3d134a5cad1d1e713`  
		Last Modified: Mon, 21 Jan 2019 19:24:57 GMT  
		Size: 3.0 KB (2988 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
