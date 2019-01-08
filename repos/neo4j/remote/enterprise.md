## `neo4j:enterprise`

```console
$ docker pull neo4j@sha256:8abee73e884451bdf3a40ed787e3efda1f0daace732bac2f7df8bec236ea349f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `neo4j:enterprise` - linux; amd64

```console
$ docker pull neo4j@sha256:4518b8361aaf60f9ba11f459e2d0d9d82eaade756b97e75b874685f3a4da3c97
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **194.9 MB (194915228 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f9a8cbd01777c77f82786dcbfdf062d42062771c8ee79850d20de59d613153b9`
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
# Fri, 21 Dec 2018 00:41:18 GMT
ENV JAVA_VERSION=8u181
# Fri, 21 Dec 2018 00:41:19 GMT
ENV JAVA_ALPINE_VERSION=8.181.13-r0
# Fri, 21 Dec 2018 00:41:23 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Fri, 21 Dec 2018 05:35:08 GMT
RUN addgroup -S neo4j && adduser -S -H -h /var/lib/neo4j -G neo4j neo4j
# Mon, 07 Jan 2019 21:23:42 GMT
ENV NEO4J_SHA256=376a32e3835de3dfe0592912893ca7a5c14cab9a8cb0072fa268931f686c1ddf NEO4J_TARBALL=neo4j-enterprise-3.5.1-unix.tar.gz NEO4J_EDITION=enterprise
# Mon, 07 Jan 2019 21:23:44 GMT
ARG NEO4J_URI=http://dist.neo4j.org/neo4j-enterprise-3.5.1-unix.tar.gz
# Mon, 07 Jan 2019 21:23:45 GMT
COPY file:696befc481f5ad55a590fa577c3d4ba04c9237326d85b95b729538f95702e110 in /tmp/ 
# Mon, 07 Jan 2019 21:24:23 GMT
# ARGS: NEO4J_URI=http://dist.neo4j.org/neo4j-enterprise-3.5.1-unix.tar.gz
RUN apk add --no-cache --quiet     bash     curl     tini     su-exec     && curl --fail --silent --show-error --location --remote-name ${NEO4J_URI}     && echo "${NEO4J_SHA256}  ${NEO4J_TARBALL}" | sha256sum -csw -     && tar --extract --file ${NEO4J_TARBALL} --directory /var/lib     && mv /var/lib/neo4j-* /var/lib/neo4j     && rm ${NEO4J_TARBALL}     && mv /var/lib/neo4j/data /data     && chown -R neo4j:neo4j /data     && chmod -R 777 /data     && chown -R neo4j:neo4j /var/lib/neo4j     && chmod -R 777 /var/lib/neo4j     && ln -s /data /var/lib/neo4j/data     && apk del curl
# Mon, 07 Jan 2019 21:24:24 GMT
ENV PATH=/var/lib/neo4j/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Mon, 07 Jan 2019 21:24:24 GMT
WORKDIR /var/lib/neo4j
# Mon, 07 Jan 2019 21:24:24 GMT
VOLUME [/data]
# Mon, 07 Jan 2019 21:24:24 GMT
COPY file:43e3b27a58e2fb38e37f468e7c8da6b80f8bf4577e7e45b88fdaafc5e020bbfa in /docker-entrypoint.sh 
# Mon, 07 Jan 2019 21:24:24 GMT
EXPOSE 7473 7474 7687
# Mon, 07 Jan 2019 21:24:25 GMT
ENTRYPOINT ["/sbin/tini" "-g" "--" "/docker-entrypoint.sh"]
# Mon, 07 Jan 2019 21:24:25 GMT
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
	-	`sha256:92e4d568ad31b18826f29fce2a8e1643f8237b9adfbbbe1bd8073c5edfcced3b`  
		Last Modified: Fri, 21 Dec 2018 00:45:09 GMT  
		Size: 54.8 MB (54829758 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4b205917d2a9f00f28fda50099d8cb35bc092cbe9edcae9d45464a5add75d10`  
		Last Modified: Fri, 21 Dec 2018 05:51:47 GMT  
		Size: 1.2 KB (1206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b91c8608637555fc8e32c15261ad5b7a7d82fff79295a74245f020effa23144`  
		Last Modified: Mon, 07 Jan 2019 21:27:52 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:181310dad7d6a7df7deeb25d9f91be4b8fa2e3f907be1b7bf300bdef55ad82ba`  
		Last Modified: Mon, 07 Jan 2019 21:28:03 GMT  
		Size: 137.9 MB (137873884 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:374f77e23d7cb90ea97697e1e37559756194a9cc81d3377241341382850471dd`  
		Last Modified: Mon, 07 Jan 2019 21:27:52 GMT  
		Size: 3.0 KB (2988 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
